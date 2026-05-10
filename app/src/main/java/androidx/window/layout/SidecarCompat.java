package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.window.core.Version;
import androidx.window.layout.ExtensionInterfaceCompat;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarProvider;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class SidecarCompat implements ExtensionInterfaceCompat {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f4125f = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SidecarInterface f4126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SidecarAdapter f4127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f4128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f4129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExtensionInterfaceCompat.ExtensionCallbackInterface f4130e;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IBinder a(Activity activity) {
            Window window;
            WindowManager.LayoutParams attributes;
            if (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) {
                return null;
            }
            return attributes.token;
        }

        public final SidecarInterface b(Context context) {
            r.e(context, "context");
            return SidecarProvider.getSidecarImpl(context.getApplicationContext());
        }

        public final Version c() {
            try {
                String apiVersion = SidecarProvider.getApiVersion();
                if (TextUtils.isEmpty(apiVersion)) {
                    return null;
                }
                return Version.f4031i.b(apiVersion);
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return null;
            }
        }

        private Companion() {
        }
    }

    private static final class DistinctElementCallback implements ExtensionInterfaceCompat.ExtensionCallbackInterface {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ExtensionInterfaceCompat.ExtensionCallbackInterface f4131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ReentrantLock f4132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WeakHashMap f4133c;

        public DistinctElementCallback(ExtensionInterfaceCompat.ExtensionCallbackInterface callbackInterface) {
            r.e(callbackInterface, "callbackInterface");
            this.f4131a = callbackInterface;
            this.f4132b = new ReentrantLock();
            this.f4133c = new WeakHashMap();
        }

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        public void a(Activity activity, WindowLayoutInfo newLayout) {
            r.e(activity, "activity");
            r.e(newLayout, "newLayout");
            ReentrantLock reentrantLock = this.f4132b;
            reentrantLock.lock();
            try {
                if (r.a(newLayout, (WindowLayoutInfo) this.f4133c.get(activity))) {
                    return;
                }
                reentrantLock.unlock();
                this.f4131a.a(activity, newLayout);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    private static final class DistinctSidecarElementCallback implements SidecarInterface.SidecarCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SidecarAdapter f4134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final SidecarInterface.SidecarCallback f4135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ReentrantLock f4136c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SidecarDeviceState f4137d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final WeakHashMap f4138e;

        public DistinctSidecarElementCallback(SidecarAdapter sidecarAdapter, SidecarInterface.SidecarCallback callbackInterface) {
            r.e(sidecarAdapter, "sidecarAdapter");
            r.e(callbackInterface, "callbackInterface");
            this.f4134a = sidecarAdapter;
            this.f4135b = callbackInterface;
            this.f4136c = new ReentrantLock();
            this.f4138e = new WeakHashMap();
        }

        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            r.e(newDeviceState, "newDeviceState");
            ReentrantLock reentrantLock = this.f4136c;
            reentrantLock.lock();
            try {
                if (this.f4134a.a(this.f4137d, newDeviceState)) {
                    return;
                }
                this.f4137d = newDeviceState;
                this.f4135b.onDeviceStateChanged(newDeviceState);
                h0 h0Var = h0.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }

        public void onWindowLayoutChanged(IBinder token, SidecarWindowLayoutInfo newLayout) {
            r.e(token, "token");
            r.e(newLayout, "newLayout");
            synchronized (this.f4136c) {
                if (this.f4134a.d((SidecarWindowLayoutInfo) this.f4138e.get(token), newLayout)) {
                    return;
                }
                this.f4135b.onWindowLayoutChanged(token, newLayout);
            }
        }
    }

    private static final class FirstAttachAdapter implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SidecarCompat f4139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f4140b;

        public FirstAttachAdapter(SidecarCompat sidecarCompat, Activity activity) {
            r.e(sidecarCompat, "sidecarCompat");
            r.e(activity, "activity");
            this.f4139a = sidecarCompat;
            this.f4140b = new WeakReference(activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            r.e(view, "view");
            view.removeOnAttachStateChangeListener(this);
            Activity activity = (Activity) this.f4140b.get();
            IBinder iBinderA = SidecarCompat.f4125f.a(activity);
            if (activity == null || iBinderA == null) {
                return;
            }
            this.f4139a.i(iBinderA, activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            r.e(view, "view");
        }
    }

    public final class TranslatingCallback implements SidecarInterface.SidecarCallback {
        public TranslatingCallback() {
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            SidecarInterface sidecarInterfaceG;
            r.e(newDeviceState, "newDeviceState");
            Collection<Activity> collectionValues = SidecarCompat.this.f4128c.values();
            SidecarCompat sidecarCompat = SidecarCompat.this;
            for (Activity activity : collectionValues) {
                IBinder iBinderA = SidecarCompat.f4125f.a(activity);
                SidecarWindowLayoutInfo windowLayoutInfo = null;
                if (iBinderA != null && (sidecarInterfaceG = sidecarCompat.g()) != null) {
                    windowLayoutInfo = sidecarInterfaceG.getWindowLayoutInfo(iBinderA);
                }
                ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = sidecarCompat.f4130e;
                if (extensionCallbackInterface != null) {
                    extensionCallbackInterface.a(activity, sidecarCompat.f4127b.e(windowLayoutInfo, newDeviceState));
                }
            }
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onWindowLayoutChanged(IBinder windowToken, SidecarWindowLayoutInfo newLayout) {
            SidecarDeviceState sidecarDeviceState;
            r.e(windowToken, "windowToken");
            r.e(newLayout, "newLayout");
            Activity activity = (Activity) SidecarCompat.this.f4128c.get(windowToken);
            if (activity == null) {
                Log.w("SidecarCompat", "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?");
                return;
            }
            SidecarAdapter sidecarAdapter = SidecarCompat.this.f4127b;
            SidecarInterface sidecarInterfaceG = SidecarCompat.this.g();
            if (sidecarInterfaceG == null || (sidecarDeviceState = sidecarInterfaceG.getDeviceState()) == null) {
                sidecarDeviceState = new SidecarDeviceState();
            }
            WindowLayoutInfo windowLayoutInfoE = sidecarAdapter.e(newLayout, sidecarDeviceState);
            ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = SidecarCompat.this.f4130e;
            if (extensionCallbackInterface != null) {
                extensionCallbackInterface.a(activity, windowLayoutInfoE);
            }
        }
    }

    public SidecarCompat(SidecarInterface sidecarInterface, SidecarAdapter sidecarAdapter) {
        r.e(sidecarAdapter, "sidecarAdapter");
        this.f4126a = sidecarInterface;
        this.f4127b = sidecarAdapter;
        this.f4128c = new LinkedHashMap();
        this.f4129d = new LinkedHashMap();
    }

    private final void j(final Activity activity) {
        if (this.f4129d.get(activity) == null) {
            ComponentCallbacks componentCallbacks = new ComponentCallbacks() { // from class: androidx.window.layout.SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration newConfig) {
                    r.e(newConfig, "newConfig");
                    ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.f4142a.f4130e;
                    if (extensionCallbackInterface != null) {
                        Activity activity2 = activity;
                        extensionCallbackInterface.a(activity2, this.f4142a.h(activity2));
                    }
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }
            };
            this.f4129d.put(activity, componentCallbacks);
            activity.registerComponentCallbacks(componentCallbacks);
        }
    }

    private final void k(Activity activity) {
        activity.unregisterComponentCallbacks((ComponentCallbacks) this.f4129d.get(activity));
        this.f4129d.remove(activity);
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void a(Activity activity) {
        r.e(activity, "activity");
        IBinder iBinderA = f4125f.a(activity);
        if (iBinderA != null) {
            i(iBinderA, activity);
        } else {
            activity.getWindow().getDecorView().addOnAttachStateChangeListener(new FirstAttachAdapter(this, activity));
        }
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void b(ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallback) {
        r.e(extensionCallback, "extensionCallback");
        this.f4130e = new DistinctElementCallback(extensionCallback);
        SidecarInterface sidecarInterface = this.f4126a;
        if (sidecarInterface != null) {
            sidecarInterface.setSidecarCallback(new DistinctSidecarElementCallback(this.f4127b, new TranslatingCallback()));
        }
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void c(Activity activity) {
        SidecarInterface sidecarInterface;
        r.e(activity, "activity");
        IBinder iBinderA = f4125f.a(activity);
        if (iBinderA == null) {
            return;
        }
        SidecarInterface sidecarInterface2 = this.f4126a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerRemoved(iBinderA);
        }
        k(activity);
        boolean z10 = this.f4128c.size() == 1;
        this.f4128c.remove(iBinderA);
        if (!z10 || (sidecarInterface = this.f4126a) == null) {
            return;
        }
        sidecarInterface.onDeviceStateListenersChanged(true);
    }

    public final SidecarInterface g() {
        return this.f4126a;
    }

    public final WindowLayoutInfo h(Activity activity) {
        SidecarDeviceState sidecarDeviceState;
        r.e(activity, "activity");
        IBinder iBinderA = f4125f.a(activity);
        if (iBinderA == null) {
            return new WindowLayoutInfo(o.h());
        }
        SidecarInterface sidecarInterface = this.f4126a;
        SidecarWindowLayoutInfo windowLayoutInfo = sidecarInterface != null ? sidecarInterface.getWindowLayoutInfo(iBinderA) : null;
        SidecarAdapter sidecarAdapter = this.f4127b;
        SidecarInterface sidecarInterface2 = this.f4126a;
        if (sidecarInterface2 == null || (sidecarDeviceState = sidecarInterface2.getDeviceState()) == null) {
            sidecarDeviceState = new SidecarDeviceState();
        }
        return sidecarAdapter.e(windowLayoutInfo, sidecarDeviceState);
    }

    public final void i(IBinder windowToken, Activity activity) {
        SidecarInterface sidecarInterface;
        r.e(windowToken, "windowToken");
        r.e(activity, "activity");
        this.f4128c.put(windowToken, activity);
        SidecarInterface sidecarInterface2 = this.f4126a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerAdded(windowToken);
        }
        if (this.f4128c.size() == 1 && (sidecarInterface = this.f4126a) != null) {
            sidecarInterface.onDeviceStateListenersChanged(false);
        }
        ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.f4130e;
        if (extensionCallbackInterface != null) {
            extensionCallbackInterface.a(activity, h(activity));
        }
        j(activity);
    }

    public boolean l() {
        Class<?> cls;
        Class<?> cls2;
        Class<?> cls3;
        Class<?> cls4;
        try {
            SidecarInterface sidecarInterface = this.f4126a;
            Method method = (sidecarInterface == null || (cls4 = sidecarInterface.getClass()) == null) ? null : cls4.getMethod("setSidecarCallback", SidecarInterface.SidecarCallback.class);
            Class<?> returnType = method != null ? method.getReturnType() : null;
            Class cls5 = Void.TYPE;
            if (!r.a(returnType, cls5)) {
                throw new NoSuchMethodException("Illegal return type for 'setSidecarCallback': " + returnType);
            }
            SidecarInterface sidecarInterface2 = this.f4126a;
            if (sidecarInterface2 != null) {
                sidecarInterface2.getDeviceState();
            }
            SidecarInterface sidecarInterface3 = this.f4126a;
            if (sidecarInterface3 != null) {
                sidecarInterface3.onDeviceStateListenersChanged(true);
            }
            SidecarInterface sidecarInterface4 = this.f4126a;
            Method method2 = (sidecarInterface4 == null || (cls3 = sidecarInterface4.getClass()) == null) ? null : cls3.getMethod("getWindowLayoutInfo", IBinder.class);
            Class<?> returnType2 = method2 != null ? method2.getReturnType() : null;
            if (!r.a(returnType2, SidecarWindowLayoutInfo.class)) {
                throw new NoSuchMethodException("Illegal return type for 'getWindowLayoutInfo': " + returnType2);
            }
            SidecarInterface sidecarInterface5 = this.f4126a;
            Method method3 = (sidecarInterface5 == null || (cls2 = sidecarInterface5.getClass()) == null) ? null : cls2.getMethod("onWindowLayoutChangeListenerAdded", IBinder.class);
            Class<?> returnType3 = method3 != null ? method3.getReturnType() : null;
            if (!r.a(returnType3, cls5)) {
                throw new NoSuchMethodException("Illegal return type for 'onWindowLayoutChangeListenerAdded': " + returnType3);
            }
            SidecarInterface sidecarInterface6 = this.f4126a;
            Method method4 = (sidecarInterface6 == null || (cls = sidecarInterface6.getClass()) == null) ? null : cls.getMethod("onWindowLayoutChangeListenerRemoved", IBinder.class);
            Class<?> returnType4 = method4 != null ? method4.getReturnType() : null;
            if (!r.a(returnType4, cls5)) {
                throw new NoSuchMethodException("Illegal return type for 'onWindowLayoutChangeListenerRemoved': " + returnType4);
            }
            SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
            try {
                sidecarDeviceState.posture = 3;
            } catch (NoSuchFieldError unused) {
                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, 3);
                Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                if (objInvoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
                if (((Integer) objInvoke).intValue() != 3) {
                    throw new Exception("Invalid device posture getter/setter");
                }
            }
            SidecarDisplayFeature sidecarDisplayFeature = new SidecarDisplayFeature();
            Rect rect = sidecarDisplayFeature.getRect();
            r.d(rect, "displayFeature.rect");
            sidecarDisplayFeature.setRect(rect);
            sidecarDisplayFeature.getType();
            sidecarDisplayFeature.setType(1);
            SidecarWindowLayoutInfo sidecarWindowLayoutInfo = new SidecarWindowLayoutInfo();
            try {
                List list = sidecarWindowLayoutInfo.displayFeatures;
                return true;
            } catch (NoSuchFieldError unused2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(sidecarDisplayFeature);
                SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(sidecarWindowLayoutInfo, arrayList);
                Object objInvoke2 = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(sidecarWindowLayoutInfo, null);
                if (objInvoke2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                }
                if (r.a(arrayList, (List) objInvoke2)) {
                    return true;
                }
                throw new Exception("Invalid display feature getter/setter");
            }
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SidecarCompat(Context context) {
        this(f4125f.b(context), new SidecarAdapter(null, 1, 0 == true ? 1 : 0));
        r.e(context, "context");
    }
}
