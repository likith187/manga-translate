package com.coloros.translate.screen.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.IOplusExInputCallBack;
import android.os.IOplusExService;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.OplusWindowManager;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.Keep;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.R$style;
import com.coloros.translate.screen.ScreenTranslationService;
import com.coloros.translate.screen.translate.business.e;
import com.coloros.translate.screen.translate.engine.language.j;
import com.coloros.translate.screen.translate.engine.picker.e;
import com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView;
import com.coloros.translate.screen.widget.w;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.j;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.app.OplusWindowInfo;
import com.oplus.wrapper.os.ServiceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationTranslationView implements com.coloros.translate.screen.translate.business.f, ScreenTranslationFloatFrameView.a, com.coloros.translate.screen.widget.h, e.c {
    private static final a J = new a(null);
    private boolean A;
    private boolean B;
    private boolean C;
    private int[] D;
    private int E;
    private com.coloros.translate.screen.utils.m F;
    private boolean G;
    private com.coloros.translate.screen.translate.engine.panel.e H;
    private final Runnable I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ContextThemeWrapper f5926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WindowManager f5927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.coloros.translate.screen.translate.engine.language.j f5928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ScreenTranslationRootView f5929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ScreenTranslationScanHolderView f5930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ScreenTranslationFloatFrameView f5931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private v f5932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n8.j f5933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile com.coloros.translate.screen.translate.engine.picker.e f5934j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ScreenTranslationFullImageHolder f5935k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.coloros.translate.screen.translate.business.k f5936l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f5937m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.coloros.translate.screen.translate.business.m f5938n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile com.coloros.translate.screen.translate.business.l f5939o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile IOplusExInputCallBack f5940p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private IOplusExInputCallBack f5941q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private IOplusExInputCallBack f5942r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f5943s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f5944t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final n8.j f5945u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final n8.j f5946v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final BroadcastReceiver f5947w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f5948x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f5949y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f5950z;

    /* JADX INFO: Access modifiers changed from: private */
    static final class ExInputCallBack extends IOplusExInputCallBack.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final IOplusExService f5951a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f5952b = new ArrayList();

        public ExInputCallBack(IOplusExService iOplusExService) {
            this.f5951a = iOplusExService;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0035 A[Catch: all -> 0x0016, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0006, B:8:0x000e, B:10:0x0012, B:16:0x0035, B:15:0x0019), top: B:21:0x0006, inners: #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(android.os.IOplusExInputCallBack r7) {
            /*
                r6 = this;
                if (r7 != 0) goto L3
                return
            L3:
                java.util.List r0 = r6.f5952b
                monitor-enter(r0)
                java.util.List r1 = r6.f5952b     // Catch: java.lang.Throwable -> L16
                boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
                if (r1 == 0) goto L35
                android.os.IOplusExService r1 = r6.f5951a     // Catch: java.lang.Throwable -> L16 android.os.RemoteException -> L18
                if (r1 == 0) goto L35
                r1.registerInputEvent(r6)     // Catch: java.lang.Throwable -> L16 android.os.RemoteException -> L18
                goto L35
            L16:
                r6 = move-exception
                goto L3c
            L18:
                r1 = move-exception
                com.coloros.translate.utils.c0$a r2 = com.coloros.translate.utils.c0.f7098a     // Catch: java.lang.Throwable -> L16
                java.lang.String r3 = "ScreenTranslationTranslationView"
                java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L16
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L16
                r4.<init>()     // Catch: java.lang.Throwable -> L16
                java.lang.String r5 = "registerInputEvent "
                r4.append(r5)     // Catch: java.lang.Throwable -> L16
                r4.append(r1)     // Catch: java.lang.Throwable -> L16
                java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L16
                r2.e(r3, r1)     // Catch: java.lang.Throwable -> L16
            L35:
                java.util.List r6 = r6.f5952b     // Catch: java.lang.Throwable -> L16
                r6.add(r7)     // Catch: java.lang.Throwable -> L16
                monitor-exit(r0)
                return
            L3c:
                monitor-exit(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationTranslationView.ExInputCallBack.a(android.os.IOplusExInputCallBack):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003a A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #1 {, blocks: (B:6:0x0006, B:8:0x0013, B:10:0x0017, B:16:0x003a, B:15:0x001e), top: B:23:0x0006, inners: #0 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void b(android.os.IOplusExInputCallBack r5) {
            /*
                r4 = this;
                if (r5 != 0) goto L3
                return
            L3:
                java.util.List r0 = r4.f5952b
                monitor-enter(r0)
                java.util.List r1 = r4.f5952b     // Catch: java.lang.Throwable -> L1b
                r1.remove(r5)     // Catch: java.lang.Throwable -> L1b
                java.util.List r5 = r4.f5952b     // Catch: java.lang.Throwable -> L1b
                boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L1b
                if (r5 == 0) goto L3a
                android.os.IOplusExService r5 = r4.f5951a     // Catch: java.lang.Throwable -> L1b android.os.RemoteException -> L1d
                if (r5 == 0) goto L3a
                r5.unregisterInputEvent(r4)     // Catch: java.lang.Throwable -> L1b android.os.RemoteException -> L1d
                goto L3a
            L1b:
                r4 = move-exception
                goto L3e
            L1d:
                r4 = move-exception
                com.coloros.translate.utils.c0$a r5 = com.coloros.translate.utils.c0.f7098a     // Catch: java.lang.Throwable -> L1b
                java.lang.String r1 = "ScreenTranslationTranslationView"
                java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L1b
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1b
                r2.<init>()     // Catch: java.lang.Throwable -> L1b
                java.lang.String r3 = "unregisterInputEvent "
                r2.append(r3)     // Catch: java.lang.Throwable -> L1b
                r2.append(r4)     // Catch: java.lang.Throwable -> L1b
                java.lang.String r4 = r2.toString()     // Catch: java.lang.Throwable -> L1b
                r5.e(r1, r4)     // Catch: java.lang.Throwable -> L1b
            L3a:
                n8.h0 r4 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L1b
                monitor-exit(r0)
                return
            L3e:
                monitor-exit(r0)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.screen.widget.ScreenTranslationTranslationView.ExInputCallBack.b(android.os.IOplusExInputCallBack):void");
        }

        public final void c() {
            try {
                IOplusExService iOplusExService = this.f5951a;
                if (iOplusExService != null) {
                    iOplusExService.unregisterInputEvent(this);
                }
            } catch (RemoteException e10) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "unregisterAll " + e10.getMessage());
            }
            synchronized (this.f5952b) {
                this.f5952b.clear();
                n8.h0 h0Var = n8.h0.INSTANCE;
            }
        }

        @Keep
        public void onInputEvent(InputEvent inputEvent) {
            if (inputEvent instanceof MotionEvent) {
                synchronized (this.f5952b) {
                    try {
                        Iterator it = this.f5952b.iterator();
                        while (it.hasNext()) {
                            ((IOplusExInputCallBack) it.next()).onInputEvent(inputEvent);
                        }
                        n8.h0 h0Var = n8.h0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f5953a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5954b;

        public b(int i10, int i11) {
            this.f5953a = i10;
            this.f5954b = i11;
        }

        public final int a() {
            return this.f5953a;
        }

        public final int b() {
            return this.f5954b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f5953a == bVar.f5953a && this.f5954b == bVar.f5954b;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f5953a) * 31) + Integer.hashCode(this.f5954b);
        }

        public String toString() {
            return "ScreenEvent(action=" + this.f5953a + ", point=" + this.f5954b + ")";
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5955a;

        static {
            int[] iArr = new int[c2.values().length];
            try {
                iArr[c2.FULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c2.ZONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f5955a = iArr;
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ExInputCallBack mo8invoke() {
            return new ExInputCallBack(ScreenTranslationTranslationView.this.l0());
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ w $params;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(w wVar) {
            super(0);
            this.$params = wVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationTranslationView.this.R0(this.$params);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(boolean z10) {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "SecurityLayerMonitor:" + z10);
            ScreenTranslationTranslationView.this.G = z10;
            ScreenTranslationTranslationView.this.m0().setSecurityLayer(z10);
        }
    }

    /* synthetic */ class g extends kotlin.jvm.internal.o implements w8.a {
        g(Object obj) {
            super(0, obj, ScreenTranslationTranslationView.class, "showResultPanel", "showResultPanel()V", 0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ((ScreenTranslationTranslationView) this.receiver).P0();
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        public static final h INSTANCE = new h();

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final IOplusExService mo8invoke() {
            try {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "OPLUSExService");
                return IOplusExService.Stub.asInterface(ServiceManager.getService("OPLUSExService"));
            } catch (RemoteException e10) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "get IOplusExService exception: " + e10.getMessage());
                return null;
            }
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.screen.translate.engine.panel.e eVar = ScreenTranslationTranslationView.this.H;
            if (eVar != null) {
                ScreenTranslationTranslationView.this.h0(eVar);
            }
            ScreenTranslationFloatFrameView.D(ScreenTranslationTranslationView.this.f5931g, false, 1, null);
            ScreenTranslationTranslationView.this.m0().A1();
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        j() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            ScreenTranslationTranslationView.this.f5931g.J(3000L);
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.a {
        k() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final ScreenTranslationToolCapsule mo8invoke() {
            return new ScreenTranslationToolCapsule(ScreenTranslationTranslationView.this.f5926b, ScreenTranslationTranslationView.this.f5929e, ScreenTranslationTranslationView.this);
        }
    }

    public ScreenTranslationTranslationView(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f5925a = context;
        this.f5926b = new ContextThemeWrapper(context, R$style.ThemeCOUIMainDark);
        Object systemService = context.getSystemService("window");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f5927c = (WindowManager) systemService;
        this.f5928d = com.coloros.translate.screen.translate.engine.language.j.f5577i.a();
        ScreenTranslationRootView screenTranslationRootView = new ScreenTranslationRootView(context, this);
        this.f5929e = screenTranslationRootView;
        this.f5930f = new ScreenTranslationScanHolderView(context, screenTranslationRootView);
        this.f5931g = new ScreenTranslationFloatFrameView(context);
        this.f5933i = n8.k.b(new k());
        this.f5935k = new ScreenTranslationFullImageHolder(context);
        this.f5936l = new com.coloros.translate.screen.translate.business.k(context, this);
        this.f5937m = -1;
        this.f5939o = com.coloros.translate.screen.translate.business.l.NONE;
        this.f5944t = true;
        this.f5945u = n8.k.b(h.INSTANCE);
        this.f5946v = n8.k.b(new d());
        this.f5947w = new BroadcastReceiver() { // from class: com.coloros.translate.screen.widget.ScreenTranslationTranslationView$closeSystemDialogsReceiver$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final String f5956a = "reason";

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onReceive:" + (intent != null ? intent.getAction() : null));
                if (kotlin.jvm.internal.r.a(intent != null ? intent.getAction() : null, "android.intent.action.SCREEN_OFF")) {
                    this.f5957b.f5944t = false;
                    if (this.f5957b.f5939o != com.coloros.translate.screen.translate.business.l.ZONE) {
                        if (this.f5957b.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
                            this.f5957b.G0();
                            return;
                        }
                        return;
                    } else {
                        if (this.f5957b.f5942r != null) {
                            this.f5957b.j0().b(this.f5957b.f5942r);
                        }
                        com.coloros.translate.screen.translate.engine.panel.e eVar = this.f5957b.H;
                        if (eVar != null) {
                            eVar.G();
                            return;
                        }
                        return;
                    }
                }
                if (!kotlin.jvm.internal.r.a(intent != null ? intent.getAction() : null, "android.intent.action.USER_PRESENT")) {
                    if (TextUtils.isEmpty(intent != null ? intent.getStringExtra(this.f5956a) : null)) {
                        return;
                    }
                    this.f5957b.n0();
                    return;
                }
                this.f5957b.f5944t = true;
                if (this.f5957b.f5939o == com.coloros.translate.screen.translate.business.l.ZONE) {
                    this.f5957b.H0();
                } else if (this.f5957b.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
                    this.f5957b.K0();
                }
            }
        };
        this.D = com.coloros.translate.screen.utils.k.d(context);
        this.E = com.coloros.translate.screen.utils.k.a(context);
        this.I = new Runnable() { // from class: com.coloros.translate.screen.widget.s1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.i0(this.f6082a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        if (this$0.A) {
            return;
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onNotSupportApp invoke");
        if (this$0.q0(viewRequest)) {
            aVar.d("ScreenTranslationTranslationView", "onNotSupportApp response not valid");
        } else {
            this$0.m0().b2();
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_support_full, 0, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onNotSupportScene:" + this$0.A);
        if (this$0.A) {
            return;
        }
        if (this$0.q0(viewRequest)) {
            aVar.d("ScreenTranslationTranslationView", "onNotSupportScene response not valid");
            return;
        }
        this$0.m0().b2();
        com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_support, 0, 2, null);
        ScreenTranslationScanHolderView.o(this$0.f5930f, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(final ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest, String str, String str2) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onResponseSuccess zone");
        if (this$0.q0(viewRequest)) {
            aVar.d("ScreenTranslationTranslationView", "onResponseSuccess response not valid:" + viewRequest.d());
            return;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_recognize, 0, 2, null);
            com.coloros.translate.screen.utils.t.h(new Runnable() { // from class: com.coloros.translate.screen.widget.q1
                @Override // java.lang.Runnable
                public final void run() {
                    ScreenTranslationTranslationView.D0(this.f6076a);
                }
            }, 1000L);
            return;
        }
        com.coloros.translate.screen.translate.engine.panel.e eVar = this$0.H;
        if (eVar != null) {
            if (str == null) {
                str = "";
            }
            eVar.H(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.screen.translate.engine.panel.e eVar = this$0.H;
        if (eVar != null) {
            eVar.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest, Bitmap bitmap) {
        Object objM59constructorimpl;
        c0.a aVar;
        w wVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        kotlin.jvm.internal.r.e(bitmap, "$bitmap");
        try {
            r.a aVar2 = n8.r.Companion;
            aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("ScreenTranslationTranslationView", "onResponseSuccess full");
            this$0.B = false;
            Object objB = viewRequest.b();
            kotlin.jvm.internal.r.c(objB, "null cannot be cast to non-null type com.coloros.translate.screen.widget.ScreenTranslationFullParams");
            wVar = (w) objB;
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (this$0.p0(wVar, w.a.f(w.f6096g, this$0.f5925a, null, 2, null))) {
            aVar.d("ScreenTranslationTranslationView", "current focused window has changed:" + this$0.f5939o);
            if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
                this$0.T0(500L);
                return;
            }
            return;
        }
        ScreenTranslationScanHolderView.o(this$0.f5930f, false, 1, null);
        if (this$0.q0(viewRequest)) {
            aVar.d("ScreenTranslationTranslationView", "onResponseSuccess response not valid:" + viewRequest.d());
            return;
        }
        if (!ScreenTranslationService.m() && this$0.f5939o == com.coloros.translate.screen.translate.business.l.FULL && !com.coloros.translate.screen.translate.business.b.INSTANCE.b()) {
            this$0.f5935k.e(bitmap, wVar);
            this$0.m0().X1();
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "onResponseSuccess:" + thM62exceptionOrNullimpl);
                return;
            }
            return;
        }
        if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_support_full, 0, 2, null);
        }
        this$0.m0().b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onServerError");
        if (this$0.q0(viewRequest) || i10 == 800005) {
            aVar.d("ScreenTranslationTranslationView", "onServerError response not valid:" + i10);
            return;
        }
        if (i10 != 200011) {
            if (i10 != 800002) {
                com.coloros.translate.screen.utils.u.d(R$string.screen_error_service_error, 0, 2, null);
            } else {
                com.coloros.translate.screen.utils.u.d(com.coloros.translate.base.R$string.network_error, 0, 2, null);
            }
        } else if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.ZONE) {
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_recognize, 0, 2, null);
        } else if (!this$0.B && w.f6096g.j()) {
            aVar.d("ScreenTranslationTranslationView", "onServerError: image text is null, retry");
            this$0.B = true;
            this$0.T0(1200L);
            return;
        } else {
            this$0.B = false;
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_recognize_full, 0, 2, null);
            aVar.d("ScreenTranslationTranslationView", "onServerError: image text is null");
        }
        if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.ZONE) {
            this$0.h0(this$0.H);
        } else if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
            ScreenTranslationScanHolderView.o(this$0.f5930f, false, 1, null);
        }
        this$0.m0().b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0() {
        if (this.f5935k.c()) {
            return;
        }
        if (this.f5941q != null) {
            j0().b(this.f5941q);
        }
        m0().b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        this.f5949y = false;
        if (this.f5942r != null) {
            j0().b(this.f5942r);
        }
        this.f5942r = s0();
        j0().a(this.f5942r);
    }

    private final void I0() {
        this.f5949y = false;
        if (this.f5941q != null) {
            j0().b(this.f5941q);
        }
        this.f5941q = t0();
        j0().a(this.f5941q);
    }

    private final void J0(String str) {
        HashMap map = new HashMap();
        map.put(RealTimeAsrInputSlot.KEY_LANGUAGE, "(" + this.f5925a.getString(this.f5928d.l().getSimpleNameResId()) + "," + this.f5925a.getString(this.f5928d.n().getSimpleNameResId()) + ")");
        com.coloros.translate.screen.utils.f.a(this.f5925a, str, map, com.coloros.translate.screen.utils.w.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0() {
        if (this.f5935k.c()) {
            return;
        }
        I0();
    }

    private final void M0(int i10, boolean z10) {
        boolean z11 = i10 != -1;
        this.C = z11;
        if (z11) {
            m0().E1(i10, z10);
        } else {
            m0().D1(true, true);
        }
    }

    private final void N0() {
        this.f5932h = new v(this.f5929e, this.f5926b);
        IOplusExInputCallBack iOplusExInputCallBackR0 = r0();
        j0().a(iOplusExInputCallBackR0);
        this.f5940p = iOplusExInputCallBackR0;
    }

    private final void O0(boolean z10) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5934j;
        j.b bVar = com.coloros.translate.screen.translate.engine.language.j.f5577i;
        aVar.d("ScreenTranslationTranslationView", "showLanguagePicker " + eVar + " " + bVar.a().A());
        if (this.f5934j == null && bVar.a().A()) {
            com.coloros.translate.screen.translate.engine.picker.e eVar2 = new com.coloros.translate.screen.translate.engine.picker.e(this.f5925a);
            eVar2.G(l2.b.SCREEN_TRANSLATE);
            eVar2.F(this);
            eVar2.H(z10, this.f5939o == com.coloros.translate.screen.translate.business.l.ZONE);
            aVar.d("ScreenTranslationTranslationView", "LanguagePicker show");
            this.f5934j = eVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0() {
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.u1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.Q0(this.f6088a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(ScreenTranslationTranslationView this$0) {
        com.coloros.translate.screen.translate.engine.panel.e eVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.A && !this$0.f5943s && ((eVar = this$0.H) == null || !eVar.A())) {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "showResultPanel isSupportUnitTranslate");
            com.coloros.translate.screen.translate.engine.panel.e eVar2 = this$0.H;
            if (eVar2 != null) {
                eVar2.q();
            }
            com.coloros.translate.screen.translate.engine.panel.e eVar3 = new com.coloros.translate.screen.translate.engine.panel.e(this$0.f5925a, this$0.new i(), this$0.new j());
            this$0.H = eVar3;
            eVar3.F();
            return;
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        boolean z10 = this$0.f5943s;
        com.coloros.translate.screen.translate.engine.panel.e eVar4 = this$0.H;
        aVar.q("ScreenTranslationTranslationView", "showResultPanel: " + z10 + "," + (eVar4 != null && eVar4.A()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0(w wVar) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "startFullScreenTranslation:" + this.A);
        if (this.A) {
            return;
        }
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.t1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.S0(this.f6085a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "startFullScreenTranslation: isPendingDestroy:" + this$0.A);
        if (this$0.A) {
            return;
        }
        if (!com.coloros.translate.screen.utils.v.c(this$0.f5925a) && com.coloros.translate.screen.utils.k.f(this$0.f5925a) && 2 == this$0.f5925a.getResources().getConfiguration().orientation) {
            aVar.d("ScreenTranslationTranslationView", "startFullScreenTranslation, landscape , return");
            return;
        }
        if (this$0.f5939o != com.coloros.translate.screen.translate.business.l.FULL) {
            aVar.d("ScreenTranslationTranslationView", "startFullScreenTranslation, not TRANSLATION_MODEL_FULL_SCREEN , return");
            return;
        }
        List<OplusWindowInfo> allVisibleWindowInfo = new OplusWindowManager().getAllVisibleWindowInfo();
        boolean z10 = false;
        if (allVisibleWindowInfo != null) {
            for (OplusWindowInfo oplusWindowInfo : allVisibleWindowInfo) {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "VisibleWindowInfo " + oplusWindowInfo.packageName + " " + oplusWindowInfo.componentName);
                if (kotlin.jvm.internal.r.a(oplusWindowInfo.packageName, "com.oplus.screenshot")) {
                    z10 = true;
                }
            }
        }
        if (ScreenTranslationService.n() || z10) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationTranslationView", "screenshot is running");
        } else {
            this$0.f5930f.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0(long j10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "startFullTranslateRunnable");
        U0();
        com.coloros.translate.screen.utils.t.h(this.I, j10);
    }

    private final void U0() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "stopFullTranslateRunnable");
        com.coloros.translate.screen.utils.t.f(this.I);
    }

    private final void V0(Configuration configuration) {
        Object objM59constructorimpl;
        ViewGroup.LayoutParams layoutParams = this.f5929e.getLayoutParams();
        Context context = this.f5929e.getContext();
        kotlin.jvm.internal.r.d(context, "getContext(...)");
        this.D = com.coloros.translate.screen.utils.k.d(context);
        this.E = com.coloros.translate.screen.utils.k.a(this.f5925a);
        int[] iArr = this.D;
        int i10 = iArr[0];
        layoutParams.width = i10;
        int i11 = iArr[1];
        layoutParams.height = i11;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "updateWhenConfigurationChanged:" + i10 + "," + i11);
        try {
            r.a aVar = n8.r.Companion;
            if (this.f5929e.isAttachedToWindow()) {
                this.f5927c.updateViewLayout(this.f5929e, layoutParams);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "updateWhenConfigurationChanged updateViewLayout:" + thM62exceptionOrNullimpl);
        }
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5934j;
        if (eVar != null) {
            eVar.s();
        }
        com.coloros.translate.screen.translate.engine.panel.e eVar2 = this.H;
        if (eVar2 != null) {
            eVar2.x();
        }
        com.coloros.translate.screen.utils.t.h(new Runnable() { // from class: com.coloros.translate.screen.widget.r1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.W0(this.f6079a);
            }
        }, 150L);
        m0().e1(configuration);
        this.f5931g.F(configuration);
        this.f5936l.g();
        ScreenTranslationScanHolderView.o(this.f5930f, false, 1, null);
        this.f5935k.b();
        v vVar = this.f5932h;
        if (vVar != null) {
            vVar.d();
        }
        IOplusExInputCallBack iOplusExInputCallBack = this.f5940p;
        if (iOplusExInputCallBack != null) {
            iOplusExInputCallBack.onInputEvent((InputEvent) null);
        }
        if (this.f5939o != com.coloros.translate.screen.translate.business.l.FULL) {
            if (this.f5939o == com.coloros.translate.screen.translate.business.l.ZONE) {
                m0().A1();
            }
        } else {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "startFullScreenRequest updateWhenConfigurationChanged");
            if (this.f5944t) {
                T0(1000L);
            } else {
                m0().A1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.screen.translate.engine.panel.e eVar = this$0.H;
        if (eVar != null) {
            this$0.h0(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0(com.coloros.translate.screen.translate.engine.panel.e eVar) {
        if (eVar != null) {
            eVar.q();
        }
        this.H = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ScreenTranslationTranslationView this$0) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            r.a aVar = n8.r.Companion;
            w wVarF = w.a.f(w.f6096g, this$0.f5925a, null, 2, null);
            com.coloros.translate.screen.translate.business.m mVarU0 = this$0.u0(com.coloros.translate.screen.translate.business.l.FULL, wVarF.b(), wVarF, this$0.new e(wVarF));
            if (this$0.f5949y) {
                com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "startFullScreenTranslation hasFingerInScreen");
            } else {
                boolean z10 = this$0.G;
                if (z10) {
                    com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationTranslationView", "startFullScreenTranslation:" + z10);
                    com.coloros.translate.screen.utils.u.d(R$string.screenshot_reject_on_secure_window, 0, 2, null);
                    this$0.m0().b2();
                    return;
                }
                this$0.f5938n = mVarU0;
                e.a.a(this$0.f5936l, mVarU0, 0, 2, null);
                this$0.m0().O1();
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "startFullScreenRequest:onFailure:" + thM62exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExInputCallBack j0() {
        return (ExInputCallBack) this.f5946v.getValue();
    }

    private final long k0() {
        return this.C ? 500L : 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IOplusExService l0() {
        return (IOplusExService) this.f5945u.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScreenTranslationToolCapsule m0() {
        return (ScreenTranslationToolCapsule) this.f5933i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0() {
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "handleCloseSystemDialogs");
        com.coloros.translate.screen.utils.t.h(new Runnable() { // from class: com.coloros.translate.screen.widget.o1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.o0(this.f6065a);
            }
        }, k0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(ScreenTranslationTranslationView this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.A) {
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "handleCloseSystemDialogs invoke:" + this$0.f5939o);
        if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.FULL) {
            com.coloros.translate.screen.utils.u.d(R$string.screen_error_not_support_full, 0, 2, null);
            this$0.m0().o1();
        } else if (this$0.f5939o == com.coloros.translate.screen.translate.business.l.ZONE) {
            ScreenTranslationFloatFrameView.D(this$0.f5931g, false, 1, null);
            this$0.m0().A1();
        }
        this$0.h0(this$0.H);
        com.coloros.translate.screen.translate.engine.picker.e eVar = this$0.f5934j;
        if (eVar != null) {
            eVar.s();
        }
    }

    private final boolean p0(w wVar, w wVar2) {
        return (wVar.a() == wVar2.a() && wVar.b().width() == wVar2.b().width() && wVar.b().height() == wVar2.b().height()) ? false : true;
    }

    private final boolean q0(com.coloros.translate.screen.translate.business.m mVar) {
        return (kotlin.jvm.internal.r.a(mVar, this.f5938n) && mVar.d() == this.f5937m) ? false : true;
    }

    private final IOplusExInputCallBack r0() {
        return new ScreenTranslationTranslationView$newFloatTipExInputCallback$1(this);
    }

    private final IOplusExInputCallBack s0() {
        return new IOplusExInputCallBack.Default() { // from class: com.coloros.translate.screen.widget.ScreenTranslationTranslationView$newFreeExInputCallback$1
            @Keep
            public void onInputEvent(InputEvent event) {
                kotlin.jvm.internal.r.e(event, "event");
                if (this.f5959a.f5939o != com.coloros.translate.screen.translate.business.l.ZONE || this.f5959a.E <= 0) {
                    return;
                }
                MotionEvent motionEvent = (MotionEvent) event;
                if (motionEvent.getAction() == 0) {
                    float y10 = motionEvent.getY();
                    float x10 = motionEvent.getX();
                    float f10 = (this.f5959a.D[0] / 3.0f) * 2;
                    com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "newFreeExInputCallback:" + x10 + ", " + y10 + ", " + this.f5959a.D[0] + ", " + this.f5959a.D[1] + ", navBarHeight: " + this.f5959a.E + ", back: " + f10);
                    if (y10 <= this.f5959a.D[1] - this.f5959a.E || x10 >= f10) {
                        return;
                    }
                    this.f5959a.n0();
                }
            }
        };
    }

    private final IOplusExInputCallBack t0() {
        return new ScreenTranslationTranslationView$newFullExInputCallback$1(this);
    }

    private final com.coloros.translate.screen.translate.business.m u0(com.coloros.translate.screen.translate.business.l lVar, Rect rect, Object obj, w8.a aVar) {
        int i10 = this.f5937m + 1;
        this.f5937m = i10;
        return new com.coloros.translate.screen.translate.business.m(i10, lVar, rect, obj, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(ScreenTranslationTranslationView this$0, com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewRequest, "$viewRequest");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onIntercepted");
        if (this$0.q0(viewRequest)) {
            aVar.d("ScreenTranslationTranslationView", "onIntercepted response not valid");
            return;
        }
        this$0.h0(this$0.H);
        ScreenTranslationScanHolderView.o(this$0.f5930f, false, 1, null);
        this$0.m0().b2();
    }

    public final void L0() {
        m0().B1();
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5934j;
        if (eVar != null) {
            eVar.M();
        }
    }

    @Override // com.coloros.translate.screen.translate.engine.picker.e.c
    public void a(boolean z10) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onLanguagePickerDismiss hasChanged " + z10);
        this.f5934j = null;
        if (z10) {
            m0().B1();
        }
        if (this.f5939o != com.coloros.translate.screen.translate.business.l.FULL) {
            if (this.f5939o == com.coloros.translate.screen.translate.business.l.ZONE && z10) {
                ScreenTranslationFloatFrameView.K(this.f5931g, 0L, 1, null);
                return;
            }
            return;
        }
        I0();
        if (!this.f5935k.c() || z10) {
            this.f5936l.g();
            ScreenTranslationScanHolderView.o(this.f5930f, false, 1, null);
            this.f5935k.b();
            aVar.d("ScreenTranslationTranslationView", "startFullScreenRequest onLanguagePickerDismiss");
            T0(333L);
        }
    }

    @Override // com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView.a
    public void b(RectF rect) {
        kotlin.jvm.internal.r.e(rect, "rect");
        com.coloros.translate.screen.translate.business.l lVar = com.coloros.translate.screen.translate.business.l.ZONE;
        this.f5939o = lVar;
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onResizeSteady tagRect = " + rect);
        this.f5943s = false;
        com.coloros.translate.screen.translate.business.m mVarU0 = u0(lVar, new Rect((int) rect.left, (int) rect.top, (int) rect.right, (int) rect.bottom), null, new g(this));
        this.f5938n = mVarU0;
        e.a.a(this.f5936l, mVarU0, 0, 2, null);
    }

    @Override // com.coloros.translate.screen.widget.h
    public void c(c2 oldStatus, c2 newStatus) {
        kotlin.jvm.internal.r.e(oldStatus, "oldStatus");
        kotlin.jvm.internal.r.e(newStatus, "newStatus");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onStateChange " + oldStatus + ", " + newStatus);
        int i10 = c.f5955a[newStatus.ordinal()];
        if (i10 == 1) {
            this.f5950z = this.f5939o == com.coloros.translate.screen.translate.business.l.ZONE;
            this.f5939o = com.coloros.translate.screen.translate.business.l.FULL;
            I0();
        } else if (i10 != 2) {
            this.f5939o = com.coloros.translate.screen.translate.business.l.NONE;
        } else {
            this.f5939o = com.coloros.translate.screen.translate.business.l.ZONE;
            H0();
        }
        c2 c2Var = c2.FULL;
        if (oldStatus != c2Var || newStatus == c2Var) {
            return;
        }
        this.f5930f.r();
    }

    @Override // com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView.a
    public void d() {
        q();
        m0().A1();
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void e(final com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.w1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.B0(this.f6106a, viewRequest);
            }
        });
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void f(final com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onNotSupportApp");
        com.coloros.translate.screen.utils.t.h(new Runnable() { // from class: com.coloros.translate.screen.widget.x1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.A0(this.f6111a, viewRequest);
            }
        }, k0());
    }

    @Override // com.coloros.translate.screen.widget.h
    public void g() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Context context = this.f5925a;
            if (context instanceof ScreenTranslationService) {
                ((ScreenTranslationService) context).j();
            }
            com.coloros.translate.screen.utils.f.c(this.f5925a, "event_screen_exit", null, 4, null);
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "exit screen translation");
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "exit screen translation onFailure");
        }
    }

    public final void g0(int i10) {
        m0().V0(i10);
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void h(final com.coloros.translate.screen.translate.business.m viewRequest, final int i10) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.y1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.F0(this.f6117a, viewRequest, i10);
            }
        });
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void i(final com.coloros.translate.screen.translate.business.m viewRequest, final Bitmap bitmap) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        kotlin.jvm.internal.r.e(bitmap, "bitmap");
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.p1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.E0(this.f6068a, viewRequest, bitmap);
            }
        });
    }

    @Override // com.coloros.translate.screen.widget.h
    public void j(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onClickLanguageChoose " + this.A);
        if (this.A) {
            return;
        }
        U0();
        ScreenTranslationScanHolderView.o(this.f5930f, false, 1, null);
        this.f5931g.C(false);
        this.f5936l.g();
        j0().b(this.f5941q);
        O0(z10);
        com.coloros.translate.screen.utils.f.c(this.f5925a, "event_screen_language", null, 4, null);
    }

    @Override // com.coloros.translate.screen.widget.h
    public void k(boolean z10) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onClickFull " + z10 + "," + this.A);
        if (this.A) {
            return;
        }
        if (z10) {
            aVar.d("ScreenTranslationTranslationView", "startFullScreenRequest onClickFull");
            if (this.f5950z) {
                this.f5931g.setGoingHideFloatView(false);
                T0(350L);
            } else {
                T0(0L);
            }
            J0("event_screen_full");
            return;
        }
        U0();
        this.f5936l.g();
        ScreenTranslationScanHolderView.o(this.f5930f, false, 1, null);
        this.f5935k.b();
        j0().b(this.f5941q);
        this.f5939o = com.coloros.translate.screen.translate.business.l.NONE;
    }

    @Override // com.coloros.translate.screen.widget.h
    public void l(boolean z10) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("ScreenTranslationTranslationView", "onClickFree " + z10 + "," + this.A);
        if (this.A) {
            return;
        }
        if (!z10) {
            ScreenTranslationFloatFrameView.D(this.f5931g, false, 1, null);
            this.f5939o = com.coloros.translate.screen.translate.business.l.NONE;
            j0().b(this.f5942r);
            return;
        }
        U0();
        this.f5936l.g();
        ScreenTranslationScanHolderView.o(this.f5930f, false, 1, null);
        this.f5935k.b();
        j0().b(this.f5941q);
        if (this.G) {
            m0().A1();
            com.coloros.translate.screen.utils.u.d(R$string.screenshot_reject_on_secure_window, 0, 2, null);
            aVar.q("ScreenTranslationTranslationView", "onClickFree :isSecurityLayer");
        } else {
            this.f5939o = com.coloros.translate.screen.translate.business.l.ZONE;
            this.f5931g.N();
            N0();
            J0("event_screen_free");
        }
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void m(final com.coloros.translate.screen.translate.business.m viewRequest, final String str, final String str2) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.z1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.C0(this.f6123a, viewRequest, str, str2);
            }
        });
    }

    @Override // com.coloros.translate.screen.widget.h
    public void n() {
        this.f5931g.setGoingHideFloatView(true);
    }

    @Override // com.coloros.translate.screen.translate.business.f
    public void o(final com.coloros.translate.screen.translate.business.m viewRequest) {
        kotlin.jvm.internal.r.e(viewRequest, "viewRequest");
        com.coloros.translate.screen.utils.t.g(new Runnable() { // from class: com.coloros.translate.screen.widget.v1
            @Override // java.lang.Runnable
            public final void run() {
                ScreenTranslationTranslationView.y0(this.f6094a, viewRequest);
            }
        });
    }

    @Override // com.coloros.translate.screen.widget.h
    public void onConfigurationChanged(Configuration configuration) {
        if (!m0().isAttachedToWindow()) {
            com.coloros.translate.utils.c0.f7098a.q("ScreenTranslationTranslationView", "onConfigurationChanged:toolbar is not AttachedToWindow");
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onConfigurationChanged:" + (configuration == null));
        if (configuration != null) {
            V0(configuration);
        }
    }

    @Override // com.coloros.translate.screen.widget.h
    public void p() {
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5934j;
        if (eVar != null) {
            eVar.s();
            this.f5934j = null;
        }
    }

    @Override // com.coloros.translate.screen.widget.ScreenTranslationFloatFrameView.a
    public void q() {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "maybeCancelResizeSteady");
        this.f5936l.g();
        this.f5943s = true;
        h0(this.H);
    }

    public final void v0(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        V0(newConfig);
    }

    public final void w0(int i10, boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        if (Build.VERSION.SDK_INT > 33) {
            this.f5925a.registerReceiver(this.f5947w, intentFilter, 2);
        } else {
            this.f5925a.registerReceiver(this.f5947w, intentFilter);
        }
        this.f5948x = true;
        this.f5927c.addView(this.f5929e, com.coloros.translate.screen.utils.b.a(this.f5925a, 1));
        M0(i10, z10);
        this.f5931g.setCallback(this);
        com.coloros.translate.screen.utils.m mVar = new com.coloros.translate.screen.utils.m(this.f5925a, new f());
        this.F = mVar;
        mVar.a();
    }

    public final void x0() {
        Object objM59constructorimpl;
        n8.h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.utils.c0.f7098a.d("ScreenTranslationTranslationView", "onDestroy");
            U0();
            this.A = true;
            if (this.f5948x) {
                this.f5925a.unregisterReceiver(this.f5947w);
                this.f5948x = false;
            }
            j0().c();
            this.f5931g.L();
            m0().v1();
            this.f5936l.k();
            this.f5930f.q();
            this.f5935k.d();
            com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5934j;
            if (eVar != null) {
                eVar.s();
            }
            h0(this.H);
            this.f5927c.removeView(this.f5929e);
            com.coloros.translate.screen.utils.m mVar = this.F;
            if (mVar != null) {
                mVar.b();
                h0Var = n8.h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("ScreenTranslationTranslationView", "onFailure:" + thM62exceptionOrNullimpl);
        }
    }

    public final void z0() {
        m0().B1();
    }
}
