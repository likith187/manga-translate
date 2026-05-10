package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.window.core.Version;
import androidx.window.layout.ExtensionInterfaceCompat;
import androidx.window.layout.SidecarWindowBackend;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class SidecarWindowBackend implements WindowBackend {

    /* JADX INFO: renamed from: d */
    private static volatile SidecarWindowBackend f4145d;

    /* JADX INFO: renamed from: a */
    private ExtensionInterfaceCompat f4147a;

    /* JADX INFO: renamed from: b */
    private final CopyOnWriteArrayList f4148b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c */
    public static final Companion f4144c = new Companion(null);

    /* JADX INFO: renamed from: e */
    private static final ReentrantLock f4146e = new ReentrantLock();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SidecarWindowBackend a(Context context) {
            r.e(context, "context");
            if (SidecarWindowBackend.f4145d == null) {
                ReentrantLock reentrantLock = SidecarWindowBackend.f4146e;
                reentrantLock.lock();
                try {
                    if (SidecarWindowBackend.f4145d == null) {
                        SidecarWindowBackend.f4145d = new SidecarWindowBackend(SidecarWindowBackend.f4144c.b(context));
                    }
                    h0 h0Var = h0.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            SidecarWindowBackend sidecarWindowBackend = SidecarWindowBackend.f4145d;
            r.b(sidecarWindowBackend);
            return sidecarWindowBackend;
        }

        public final ExtensionInterfaceCompat b(Context context) {
            r.e(context, "context");
            try {
                if (!c(SidecarCompat.f4125f.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.l()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean c(Version version) {
            return version != null && version.compareTo(Version.f4031i.a()) >= 0;
        }

        private Companion() {
        }
    }

    public final class ExtensionListenerImpl implements ExtensionInterfaceCompat.ExtensionCallbackInterface {
        public ExtensionListenerImpl() {
        }

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        public void a(Activity activity, WindowLayoutInfo newLayout) {
            r.e(activity, "activity");
            r.e(newLayout, "newLayout");
            for (WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper : SidecarWindowBackend.this.g()) {
                if (r.a(windowLayoutChangeCallbackWrapper.d(), activity)) {
                    windowLayoutChangeCallbackWrapper.b(newLayout);
                }
            }
        }
    }

    public static final class WindowLayoutChangeCallbackWrapper {

        /* JADX INFO: renamed from: a */
        private final Activity f4150a;

        /* JADX INFO: renamed from: b */
        private final Executor f4151b;

        /* JADX INFO: renamed from: c */
        private final c0.a f4152c;

        /* JADX INFO: renamed from: d */
        private WindowLayoutInfo f4153d;

        public WindowLayoutChangeCallbackWrapper(Activity activity, Executor executor, c0.a callback) {
            r.e(activity, "activity");
            r.e(executor, "executor");
            r.e(callback, "callback");
            this.f4150a = activity;
            this.f4151b = executor;
            this.f4152c = callback;
        }

        public static final void c(WindowLayoutChangeCallbackWrapper this$0, WindowLayoutInfo newLayoutInfo) {
            r.e(this$0, "this$0");
            r.e(newLayoutInfo, "$newLayoutInfo");
            this$0.f4152c.accept(newLayoutInfo);
        }

        public final void b(final WindowLayoutInfo newLayoutInfo) {
            r.e(newLayoutInfo, "newLayoutInfo");
            this.f4153d = newLayoutInfo;
            this.f4151b.execute(new Runnable() { // from class: androidx.window.layout.a
                @Override // java.lang.Runnable
                public final void run() {
                    SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.c(this.f4168a, newLayoutInfo);
                }
            });
        }

        public final Activity d() {
            return this.f4150a;
        }

        public final c0.a e() {
            return this.f4152c;
        }

        public final WindowLayoutInfo f() {
            return this.f4153d;
        }
    }

    public SidecarWindowBackend(ExtensionInterfaceCompat extensionInterfaceCompat) {
        this.f4147a = extensionInterfaceCompat;
        ExtensionInterfaceCompat extensionInterfaceCompat2 = this.f4147a;
        if (extensionInterfaceCompat2 != null) {
            extensionInterfaceCompat2.b(new ExtensionListenerImpl());
        }
    }

    private final void f(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f4148b;
        if (copyOnWriteArrayList == null || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (r.a(((WindowLayoutChangeCallbackWrapper) it.next()).d(), activity)) {
                    return;
                }
            }
        }
        ExtensionInterfaceCompat extensionInterfaceCompat = this.f4147a;
        if (extensionInterfaceCompat != null) {
            extensionInterfaceCompat.c(activity);
        }
    }

    private final boolean h(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f4148b;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (r.a(((WindowLayoutChangeCallbackWrapper) it.next()).d(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.window.layout.WindowBackend
    public void a(Activity activity, Executor executor, c0.a callback) {
        Object next;
        r.e(activity, "activity");
        r.e(executor, "executor");
        r.e(callback, "callback");
        ReentrantLock reentrantLock = f4146e;
        reentrantLock.lock();
        try {
            ExtensionInterfaceCompat extensionInterfaceCompat = this.f4147a;
            if (extensionInterfaceCompat == null) {
                callback.accept(new WindowLayoutInfo(o.h()));
                return;
            }
            boolean zH = h(activity);
            WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = new WindowLayoutChangeCallbackWrapper(activity, executor, callback);
            this.f4148b.add(windowLayoutChangeCallbackWrapper);
            if (zH) {
                Iterator it = this.f4148b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (r.a(activity, ((WindowLayoutChangeCallbackWrapper) next).d())) {
                            break;
                        }
                    }
                }
                WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper2 = (WindowLayoutChangeCallbackWrapper) next;
                WindowLayoutInfo windowLayoutInfoF = windowLayoutChangeCallbackWrapper2 != null ? windowLayoutChangeCallbackWrapper2.f() : null;
                if (windowLayoutInfoF != null) {
                    windowLayoutChangeCallbackWrapper.b(windowLayoutInfoF);
                }
            } else {
                extensionInterfaceCompat.a(activity);
            }
            h0 h0Var = h0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void b(c0.a callback) {
        r.e(callback, "callback");
        synchronized (f4146e) {
            try {
                if (this.f4147a == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (WindowLayoutChangeCallbackWrapper callbackWrapper : this.f4148b) {
                    if (callbackWrapper.e() == callback) {
                        r.d(callbackWrapper, "callbackWrapper");
                        arrayList.add(callbackWrapper);
                    }
                }
                this.f4148b.removeAll(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    f(((WindowLayoutChangeCallbackWrapper) it.next()).d());
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CopyOnWriteArrayList g() {
        return this.f4148b;
    }
}
