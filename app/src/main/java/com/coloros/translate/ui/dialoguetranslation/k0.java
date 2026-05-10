package com.coloros.translate.ui.dialoguetranslation;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.display.DisplayManager;
import android.provider.Settings;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.coloros.translate.R;
import com.coloros.translate.utils.c0;
import com.oplus.os.OplusBuild;
import java.lang.reflect.Constructor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class k0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6320h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f6321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f6323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f6324d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private w8.p f6326f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n8.j f6325e = n8.k.b(c.INSTANCE);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f6327g = new b();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements SensorEventListener {
        b() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i10) {
            kotlin.jvm.internal.r.e(sensor, "sensor");
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent event) {
            Object objM59constructorimpl;
            boolean z10;
            boolean z11;
            kotlin.jvm.internal.r.e(event, "event");
            k0 k0Var = k0.this;
            try {
                r.a aVar = n8.r.Companion;
                z10 = true;
                z11 = false;
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            if (k0Var.f6321a == null) {
                k0Var.f6322b = (int) event.values[0];
                int i10 = k0Var.f6322b;
                if (45 > i10 || i10 >= 150) {
                    z10 = false;
                }
                k0Var.f6321a = Boolean.valueOf(z10);
                com.coloros.translate.utils.c0.f7098a.d("DoubleScreenManager", "onSensorChanged isHoverMode:" + k0Var.f6321a);
                w8.p pVar = k0Var.f6326f;
                if (pVar != null) {
                    Boolean bool = k0Var.f6321a;
                    kotlin.jvm.internal.r.b(bool);
                    pVar.invoke(bool, Boolean.TRUE);
                    return;
                }
                return;
            }
            if (Math.abs(event.values[0] - k0Var.f6322b) > 5.0f) {
                k0Var.f6322b = (int) event.values[0];
                int i11 = k0Var.f6322b;
                if (45 <= i11 && i11 < 150) {
                    z11 = true;
                }
                if (!kotlin.jvm.internal.r.a(Boolean.valueOf(z11), k0Var.f6321a)) {
                    com.coloros.translate.utils.c0.f7098a.d("DoubleScreenManager", "onSensorChanged isHoverMode:" + k0Var.f6321a);
                    Boolean bool2 = k0Var.f6321a;
                    kotlin.jvm.internal.r.b(bool2);
                    k0Var.f6321a = Boolean.valueOf(bool2.booleanValue() ^ true);
                    w8.p pVar2 = k0Var.f6326f;
                    if (pVar2 != null) {
                        Boolean bool3 = k0Var.f6321a;
                        kotlin.jvm.internal.r.b(bool3);
                        pVar2.invoke(bool3, Boolean.FALSE);
                    }
                }
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "onSensorChanged exception:" + thM62exceptionOrNullimpl);
            }
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final WindowManager.LayoutParams mo8invoke() {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2037;
            layoutParams.width = -1;
            layoutParams.height = -1;
            layoutParams.screenOrientation = 0;
            return layoutParams;
        }
    }

    private final int h(Context context) {
        if (com.coloros.translate.utils.z.b(null, 1, null)) {
            return Settings.Global.getInt(context.getContentResolver(), "oplus_system_device_state", -1);
        }
        return -1;
    }

    private final WindowManager.LayoutParams i() {
        return (WindowManager.LayoutParams) this.f6325e.getValue();
    }

    private final Display j(Activity activity) {
        Object systemService = activity.getSystemService("display");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
        DisplayManager displayManager = (DisplayManager) systemService;
        Display display = displayManager.getDisplay(0);
        kotlin.jvm.internal.r.d(display, "getDisplay(...)");
        Display[] displays = displayManager.getDisplays("android.hardware.display.category.ALL_INCLUDING_DISABLED");
        kotlin.jvm.internal.r.d(displays, "getDisplays(...)");
        for (Display display2 : displays) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.i("DoubleScreenManager", "getSecondaryDisplay  0 " + display.getName() + " " + display2.getDisplayId() + " " + display2.getName() + " " + activity.getDisplay());
            if (display2.getDisplayId() != 0 && display2.getName().equals(display.getName())) {
                aVar.i("DoubleScreenManager", "getSecondaryDisplay return " + activity.getDisplay());
                return display2;
            }
        }
        return null;
    }

    private final void o() {
        Object objM59constructorimpl;
        View view = this.f6324d;
        if ((view != null ? view.getParent() : null) != null) {
            try {
                r.a aVar = n8.r.Companion;
                Context context = this.f6323c;
                Object systemService = context != null ? context.getSystemService("window") : null;
                WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
                if (windowManager != null) {
                    windowManager.removeView(this.f6324d);
                }
                this.f6324d = null;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.d("DoubleScreenManager", "removeWindow onFailure:" + thM62exceptionOrNullimpl);
            }
        }
    }

    public final boolean f(Activity context, View view) {
        kotlin.jvm.internal.r.e(context, "context");
        if (view == null) {
            com.coloros.translate.utils.c0.f7098a.q("DoubleScreenManager", "contentView is null");
            return false;
        }
        Display displayJ = j(context);
        if (displayJ == null) {
            com.coloros.translate.utils.c0.f7098a.q("DoubleScreenManager", "secondDisplay is null");
            return false;
        }
        Context contextCreateDisplayContext = context.createDisplayContext(displayJ);
        this.f6323c = contextCreateDisplayContext;
        if (contextCreateDisplayContext == null) {
            com.coloros.translate.utils.c0.f7098a.i("DoubleScreenManager", "displayContext is null");
            return false;
        }
        if (view.getParent() != null) {
            Context context2 = this.f6323c;
            Object systemService = context2 != null ? context2.getSystemService("window") : null;
            WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
            if (windowManager != null) {
                windowManager.removeView(view);
            }
        }
        if (this.f6324d == null) {
            this.f6324d = LayoutInflater.from(this.f6323c).inflate(R.layout.fragment_external_screen_empty, (ViewGroup) null);
        }
        try {
            r.a aVar = n8.r.Companion;
            Context context3 = this.f6323c;
            Object systemService2 = context3 != null ? context3.getSystemService("window") : null;
            WindowManager windowManager2 = systemService2 instanceof WindowManager ? (WindowManager) systemService2 : null;
            View view2 = this.f6324d;
            kotlin.jvm.internal.r.b(view2);
            if (view2.getParent() == null && windowManager2 != null) {
                windowManager2.addView(this.f6324d, i());
            }
            com.coloros.translate.utils.c0.f7098a.i("DoubleScreenManager", "addWindow secondDisplayId:" + displayJ.getDisplayId() + " layoutParams:" + i());
            if (windowManager2 != null) {
                windowManager2.addView(view, i());
            }
            if (windowManager2 == null) {
                return true;
            }
            windowManager2.removeView(this.f6324d);
            return true;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "addWindow:" + thM62exceptionOrNullimpl);
            }
            return false;
        }
    }

    public final boolean g() {
        o();
        try {
            r.a aVar = n8.r.Companion;
            Class<?> cls = Class.forName("com.oplus.devicestate.OplusDeviceStateManager");
            Constructor<?> constructor = cls.getConstructor(null);
            constructor.setAccessible(true);
            Object objInvoke = cls.getMethod("cancelDeviceStateRequest", Integer.TYPE).invoke(constructor.newInstance(null), 99);
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "cancelDeviceStateALL   result:" + objInvoke);
            return kotlin.jvm.internal.r.a(objInvoke, 1);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return false;
            }
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "cancelDeviceStateALL   error:" + thM62exceptionOrNullimpl);
            return false;
        }
    }

    public final boolean k() {
        return kotlin.jvm.internal.r.a(this.f6321a, Boolean.TRUE);
    }

    public final boolean l() {
        if (OplusBuild.getOplusOSVERSION() < 35) {
            com.coloros.translate.utils.c0.f7098a.q("DoubleScreenManager", "isOutScreenControllable   version(" + OplusBuild.getOplusOSVERSION() + ") is too low");
            return false;
        }
        try {
            r.a aVar = n8.r.Companion;
            Class.forName("com.oplus.devicestate.OplusDeviceStateManager").getMethod("requestDeviceState", Integer.TYPE);
            return true;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "isOutScreenControllable   error:" + thM62exceptionOrNullimpl);
            }
            return false;
        }
    }

    public final boolean m() {
        try {
            r.a aVar = n8.r.Companion;
            Class<?> cls = Class.forName("com.oplus.devicestate.OplusDeviceStateManager");
            Constructor<?> constructor = cls.getConstructor(null);
            constructor.setAccessible(true);
            Object objInvoke = cls.getMethod("requestDeviceState", Integer.TYPE).invoke(constructor.newInstance(null), 99);
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "openDeviceStateALL   result:" + objInvoke);
            return kotlin.jvm.internal.r.a(objInvoke, 1);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return false;
            }
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "openDeviceStateALL   error:" + thM62exceptionOrNullimpl);
            return false;
        }
    }

    public final void n(Context context, w8.p pVar) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        w8.p pVar2 = this.f6326f;
        if (pVar2 != null) {
            return;
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("DoubleScreenManager", "registerHoverModeChangeListener:" + pVar2 + "   eventListener:" + this.f6327g);
        this.f6326f = pVar;
        this.f6321a = null;
        this.f6322b = 0;
        try {
            r.a aVar2 = n8.r.Companion;
            aVar.i("DoubleScreenManager", "registerAngleWindowListener");
            Object systemService = context.getSystemService("sensor");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
            SensorManager sensorManager = (SensorManager) systemService;
            Sensor defaultSensor = sensorManager.getDefaultSensor(36);
            Boolean boolValueOf = Boolean.valueOf(h(context) == 2);
            this.f6321a = boolValueOf;
            aVar.d("DoubleScreenManager", "registerHoverModeChangeListener isHoverMode:" + boolValueOf);
            w8.p pVar3 = this.f6326f;
            if (pVar3 != null) {
                Boolean bool = this.f6321a;
                kotlin.jvm.internal.r.b(bool);
                pVar3.invoke(bool, Boolean.TRUE);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(sensorManager.registerListener(this.f6327g, defaultSensor, 0)));
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "registerAngleWindowListener error : " + thM62exceptionOrNullimpl);
        }
    }

    public final void p(View view) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("DoubleScreenManager", "removeWindow displayContext:" + this.f6323c + "   mExternalScreenContentView:" + view);
        if (view != null) {
            try {
                r.a aVar = n8.r.Companion;
                if (view.getParent() != null) {
                    Context context = this.f6323c;
                    Object systemService = context != null ? context.getSystemService("window") : null;
                    WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
                    if (windowManager != null) {
                        windowManager.addView(this.f6324d, i());
                    }
                    if (windowManager != null) {
                        windowManager.removeView(view);
                    }
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.d("DoubleScreenManager", "removeWindow onFailure:" + thM62exceptionOrNullimpl);
            }
            n8.r.m58boximpl(objM59constructorimpl);
        }
    }

    public final void q(Context context) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        com.coloros.translate.utils.c0.f7098a.i("DoubleScreenManager", "unregisterHoverModeChangeListener:" + this.f6326f + "   eventListener:" + this.f6327g);
        this.f6326f = null;
        try {
            r.a aVar = n8.r.Companion;
            Object systemService = context.getSystemService("sensor");
            kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
            ((SensorManager) systemService).unregisterListener(this.f6327g);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("DoubleScreenManager", "unregisterHoverModeChangeListener error : " + thM62exceptionOrNullimpl);
        }
    }
}
