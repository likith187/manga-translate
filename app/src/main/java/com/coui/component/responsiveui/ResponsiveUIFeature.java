package com.coui.component.responsiveui;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.util.Log;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.a0;
import androidx.lifecycle.f;
import androidx.lifecycle.s;
import com.coui.component.responsiveui.ResponsiveUIFeature;
import com.coui.component.responsiveui.status.FoldingState;
import com.coui.component.responsiveui.status.FoldingStateUtil;
import com.coui.component.responsiveui.status.WindowFeature;
import com.coui.component.responsiveui.status.WindowFeatureUtil;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ResponsiveUIFeature implements IResponsiveUIFeature {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f7399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ConcurrentHashMap f7400d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f7401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0 f7402b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FoldingState getFoldingState(Context context) {
            r.e(context, "context");
            return FoldingStateUtil.getFoldingState(context);
        }

        public final IResponsiveUIFeature getOrCreate(ComponentActivity activity) {
            r.e(activity, "activity");
            int iHashCode = activity.hashCode();
            IResponsiveUIFeature iResponsiveUIFeature = (IResponsiveUIFeature) ResponsiveUIFeature.f7400d.get(Integer.valueOf(iHashCode));
            if (iResponsiveUIFeature != null) {
                return iResponsiveUIFeature;
            }
            ResponsiveUIFeature responsiveUIFeature = new ResponsiveUIFeature(activity, null);
            ResponsiveUIFeature.f7400d.put(Integer.valueOf(iHashCode), responsiveUIFeature);
            return responsiveUIFeature;
        }

        public final boolean isSupportWindowFeature() {
            return WindowFeatureUtil.isSupportWindowFeature();
        }

        private Companion() {
        }
    }

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7399c = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("ResponsiveUIFeature", 3);
        f7400d = new ConcurrentHashMap();
    }

    public /* synthetic */ ResponsiveUIFeature(ComponentActivity componentActivity, DefaultConstructorMarker defaultConstructorMarker) {
        this(componentActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(ResponsiveUIFeature this$0, WindowFeature windowFeature) {
        r.e(this$0, "this$0");
        r.e(windowFeature, "windowFeature");
        this$0.c(this$0.f7402b, windowFeature);
    }

    private final void c(a0 a0Var, Object obj) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            a0Var.n(obj);
        } else {
            a0Var.k(obj);
        }
    }

    public static final FoldingState getFoldingState(Context context) {
        return Companion.getFoldingState(context);
    }

    public static final IResponsiveUIFeature getOrCreate(ComponentActivity componentActivity) {
        return Companion.getOrCreate(componentActivity);
    }

    public static final boolean isSupportWindowFeature() {
        return Companion.isSupportWindowFeature();
    }

    @Override // com.coui.component.responsiveui.IResponsiveUIFeature
    public a0 getWindowFeatureLiveData() {
        return this.f7402b;
    }

    private ResponsiveUIFeature(ComponentActivity componentActivity) {
        this.f7401a = new WeakReference(componentActivity);
        this.f7402b = new a0();
        if (WindowFeatureUtil.isSupportWindowFeature()) {
            WindowFeatureUtil.INSTANCE.trackWindowFeature(componentActivity, new Consumer() { // from class: s2.a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ResponsiveUIFeature.b(this.f15531a, (WindowFeature) obj);
                }
            });
        } else if (f7399c) {
            Log.w("ResponsiveUIFeature", "[init.isSupportWindowFeature] false");
        }
        componentActivity.getLifecycle().a(new f() { // from class: com.coui.component.responsiveui.ResponsiveUIFeature.2
            @Override // androidx.lifecycle.f
            public /* bridge */ /* synthetic */ void onCreate(s sVar) {
                super.onCreate(sVar);
            }

            @Override // androidx.lifecycle.f
            public void onDestroy(s owner) {
                r.e(owner, "owner");
                super.onDestroy(owner);
                Activity activity = (Activity) ResponsiveUIFeature.this.f7401a.get();
                if (activity != null) {
                    ResponsiveUIFeature.f7400d.remove(Integer.valueOf(activity.hashCode()));
                }
            }

            @Override // androidx.lifecycle.f
            public /* bridge */ /* synthetic */ void onPause(s sVar) {
                super.onPause(sVar);
            }

            @Override // androidx.lifecycle.f
            public /* bridge */ /* synthetic */ void onResume(s sVar) {
                super.onResume(sVar);
            }

            @Override // androidx.lifecycle.f
            public /* bridge */ /* synthetic */ void onStart(s sVar) {
                super.onStart(sVar);
            }

            @Override // androidx.lifecycle.f
            public /* bridge */ /* synthetic */ void onStop(s sVar) {
                super.onStop(sVar);
            }
        });
    }
}
