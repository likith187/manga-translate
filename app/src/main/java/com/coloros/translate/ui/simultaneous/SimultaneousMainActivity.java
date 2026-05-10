package com.coloros.translate.ui.simultaneous;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.a0;
import androidx.lifecycle.b0;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseEarPhoneActivity;
import com.coloros.translate.repository.d;
import com.coloros.translate.ui.earphone.ConfigAudioChange;
import com.coloros.translate.ui.earphone.ConfigEarControl;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.ui.simultaneous.history.SimultaneousHistoryActivity;
import com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.q;
import com.coloros.translate.utils.t;
import com.coloros.translate.utils.w;
import com.coloros.translate.utils.z0;
import com.coloros.translate.widget.LanguageChooseView;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import g2.a;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
@ConfigAudioChange
@ConfigEarControl
public final class SimultaneousMainActivity extends BaseEarPhoneActivity<com.coloros.translate.ui.simultaneous.main.m> implements SimultaneousViewControl.b {
    public static final a N = new a(null);
    private androidx.activity.result.b C;
    private final SimultaneousViewControl A = new SimultaneousViewControl();
    private final e B = new e();
    private final SimultaneousMainActivity$notifyFinishReceiver$1 D = new BroadcastReceiver() { // from class: com.coloros.translate.ui.simultaneous.SimultaneousMainActivity$notifyFinishReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(context, "context");
            r.e(intent, "intent");
            c0.f7098a.i("SimultaneousMainActivity", "notifyFinishReceiver " + intent.getAction());
            if (r.a(intent.getAction(), "com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED")) {
                SimultaneousMainActivity simultaneousMainActivity = this.f6470a;
                simultaneousMainActivity.u(r.a(SimultaneousMainActivity.n1(simultaneousMainActivity).m0().e(), Boolean.TRUE), true);
            }
        }
    };
    private final b0 E = new b0() { // from class: com.coloros.translate.ui.simultaneous.c
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.y1(this.f6473a, ((Boolean) obj).booleanValue());
        }
    };
    private final b0 F = new b0() { // from class: com.coloros.translate.ui.simultaneous.d
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.z1(this.f6474a, ((Integer) obj).intValue());
        }
    };
    private final b0 G = new b0() { // from class: com.coloros.translate.ui.simultaneous.e
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.E1(this.f6475a, ((Boolean) obj).booleanValue());
        }
    };
    private final b0 H = new b0() { // from class: com.coloros.translate.ui.simultaneous.f
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.r1(this.f6476a, ((Boolean) obj).booleanValue());
        }
    };
    private final b0 I = new b0() { // from class: com.coloros.translate.ui.simultaneous.g
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.H1(this.f6477a, ((Boolean) obj).booleanValue());
        }
    };
    private final b0 J = new b0() { // from class: com.coloros.translate.ui.simultaneous.h
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.t1(this.f6478a, ((Integer) obj).intValue());
        }
    };
    private final b0 K = new b0() { // from class: com.coloros.translate.ui.simultaneous.i
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.u1(this.f6620a, ((Integer) obj).intValue());
        }
    };
    private final b0 L = new b0() { // from class: com.coloros.translate.ui.simultaneous.j
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.w1(this.f6621a, ((Long) obj).longValue());
        }
    };
    private final b0 M = new b0() { // from class: com.coloros.translate.ui.simultaneous.k
        @Override // androidx.lifecycle.b0
        public final void b(Object obj) {
            SimultaneousMainActivity.v1(this.f6622a, ((Boolean) obj).booleanValue());
        }
    };

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        public static final void invoke$lambda$0(SimultaneousMainActivity this$0) {
            r.e(this$0, "this$0");
            this$0.S0();
        }

        public static final void invoke$lambda$1(SimultaneousMainActivity this$0) {
            r.e(this$0, "this$0");
            this$0.T0();
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            boolean zC = com.coloros.translate.utils.s.c(SimultaneousMainActivity.this);
            if (!SimultaneousMainActivity.n1(SimultaneousMainActivity.this).j0() && zC) {
                c0.f7098a.d("SimultaneousMainActivity", "checkPhoneConnect connect");
                w.h(R.string.ear_phone_connect_tips, 0, 2, null);
                final SimultaneousMainActivity simultaneousMainActivity = SimultaneousMainActivity.this;
                z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimultaneousMainActivity.b.invoke$lambda$0(simultaneousMainActivity);
                    }
                }, 1, null);
                return;
            }
            if (!SimultaneousMainActivity.n1(SimultaneousMainActivity.this).j0() || zC) {
                c0.f7098a.d("SimultaneousMainActivity", "checkPhoneConnect other");
                return;
            }
            c0.f7098a.d("SimultaneousMainActivity", "checkPhoneConnect disconnect");
            final SimultaneousMainActivity simultaneousMainActivity2 = SimultaneousMainActivity.this;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.m
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousMainActivity.b.invoke$lambda$1(simultaneousMainActivity2);
                }
            }, 1, null);
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ boolean $isFinish;

        static final class a extends s implements w8.a {
            final /* synthetic */ boolean $isFinish;
            final /* synthetic */ SimultaneousMainActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(SimultaneousMainActivity simultaneousMainActivity, boolean z10) {
                super(0);
                this.this$0 = simultaneousMainActivity;
                this.$isFinish = z10;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() throws RemoteException {
                this.this$0.D1();
                String string = this.this$0.getString(R.string.simultaneous_save_title);
                r.d(string, "getString(...)");
                w.i(string, 0, 2, null);
                com.coloros.translate.ui.simultaneous.utils.c cVar = com.coloros.translate.ui.simultaneous.utils.c.INSTANCE;
                Context applicationContext = this.this$0.getApplicationContext();
                r.d(applicationContext, "getApplicationContext(...)");
                cVar.a(applicationContext);
                if (this.$isFinish) {
                    this.this$0.finish();
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z10) {
            super(0);
            this.$isFinish = z10;
        }

        public static final void invoke$lambda$0(SimultaneousMainActivity this$0, boolean z10) {
            r.e(this$0, "this$0");
            this$0.A.b0();
            this$0.A.J0(new a(this$0, z10));
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            SimultaneousMainActivity.n1(SimultaneousMainActivity.this).w0();
            final SimultaneousMainActivity simultaneousMainActivity = SimultaneousMainActivity.this;
            final boolean z10 = this.$isFinish;
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.n
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousMainActivity.c.invoke$lambda$0(simultaneousMainActivity, z10);
                }
            }, 1, null);
        }
    }

    static final class d extends s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            SimultaneousMainActivity.this.D1();
        }
    }

    public static final class e implements a.InterfaceC0143a {
        e() {
        }

        @Override // g2.a.InterfaceC0143a
        public void onCallStateChanged(int i10) {
            c0.a aVar = c0.f7098a;
            aVar.d("SimultaneousMainActivity", "onCallStateChanged: " + i10);
            if (i10 == 1 || i10 == 2) {
                aVar.d("SimultaneousMainActivity", "Phone call detected, stopping TTS");
                SimultaneousMainActivity.n1(SimultaneousMainActivity.this).M0();
            }
        }
    }

    private final void A1(AppCompatActivity appCompatActivity) {
        this.C = appCompatActivity.registerForActivityResult(new d.c(), new androidx.activity.result.a() { // from class: com.coloros.translate.ui.simultaneous.a
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                SimultaneousMainActivity.B1(this.f6471a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final void B1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "registerCallBack permission:" + z10);
        if (z10) {
            this$0.A.M0();
        }
    }

    private final void C1() {
        c0.f7098a.d("SimultaneousMainActivity", "registerDataUpdate");
        SimultaneousViewControl simultaneousViewControl = this.A;
        Object objE = ((com.coloros.translate.ui.simultaneous.main.m) o0()).V().e();
        r.b(objE);
        simultaneousViewControl.d0((List) objE);
        I1();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).Q(), this.J);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).S(), this.K);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).T(), this.M);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).X(), this.E);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).a0(), this.F);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).m0(), this.G);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).N(), this.L);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).e0(), this.H);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).i(((com.coloros.translate.ui.simultaneous.main.m) o0()).o0(), this.I);
    }

    public final void D1() throws RemoteException {
        List list = (List) ((com.coloros.translate.ui.simultaneous.main.m) o0()).V().e();
        if (list != null) {
            list.clear();
        }
        this.A.Y0();
        x(false);
        this.A.I0();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).a0().k(0);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).v0();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m0().n(Boolean.FALSE);
    }

    public static final void E1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe isSaveEnable " + z10);
        this$0.A.R();
    }

    private final void F1(boolean z10) {
        c0.f7098a.i("SimultaneousMainActivity", "setEarPhoneStatus EarPhoneStatusUtils earConnected:" + z10);
        t.b(z10);
    }

    private final void G1(Intent intent) {
        if (intent != null) {
            if (r.a(intent.getAction(), "coloros.intent.action.SIMULTANEOUS_TRANS")) {
                com.coloros.translate.utils.n.INSTANCE.B("4");
                return;
            }
            if (r.a(intent.getAction(), "coloros.intent.action.SIMULTANEOUS_TRANS_SHORTCUT")) {
                com.coloros.translate.utils.n.INSTANCE.B("3");
                return;
            }
            if (r.a(intent.getAction(), "oplus.translate.action.intent.realtime_translation")) {
                com.coloros.translate.utils.n.INSTANCE.B("2");
            } else if (r.a(intent.getStringExtra("extra_from"), "from_cube")) {
                com.coloros.translate.utils.n.INSTANCE.B("5");
            } else {
                com.coloros.translate.utils.n.INSTANCE.B("1");
            }
        }
    }

    public static final void H1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe istoClicked " + z10);
        if (z10) {
            LanguageChooseView languageChooseViewV = this$0.A.V();
            if (languageChooseViewV != null) {
                languageChooseViewV.p();
            }
            LanguageChooseView languageChooseViewW = this$0.A.W();
            if (languageChooseViewW != null) {
                languageChooseViewW.p();
                return;
            }
            return;
        }
        LanguageChooseView languageChooseViewV2 = this$0.A.V();
        if (languageChooseViewV2 != null) {
            languageChooseViewV2.q();
        }
        LanguageChooseView languageChooseViewW2 = this$0.A.W();
        if (languageChooseViewW2 != null) {
            languageChooseViewW2.q();
        }
    }

    private final void I1() {
        c0.f7098a.d("SimultaneousMainActivity", "unRegisterDataUpdate");
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).Q(), this.J);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).S(), this.K);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).T(), this.M);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).X(), this.E);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).a0(), this.F);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).m0(), this.G);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).N(), this.L);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).e0(), this.H);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).m(((com.coloros.translate.ui.simultaneous.main.m) o0()).o0(), this.I);
    }

    public static final /* synthetic */ com.coloros.translate.ui.simultaneous.main.m n1(SimultaneousMainActivity simultaneousMainActivity) {
        return (com.coloros.translate.ui.simultaneous.main.m) simultaneousMainActivity.o0();
    }

    private final void q1() {
        z0.d(0L, new b(), 1, null);
    }

    public static final void r1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe isfromClicked " + z10);
        if (z10) {
            LanguageChooseView languageChooseViewV = this$0.A.V();
            if (languageChooseViewV != null) {
                languageChooseViewV.i();
            }
            LanguageChooseView languageChooseViewW = this$0.A.W();
            if (languageChooseViewW != null) {
                languageChooseViewW.i();
                return;
            }
            return;
        }
        LanguageChooseView languageChooseViewV2 = this$0.A.V();
        if (languageChooseViewV2 != null) {
            languageChooseViewV2.j();
        }
        LanguageChooseView languageChooseViewW2 = this$0.A.W();
        if (languageChooseViewW2 != null) {
            languageChooseViewW2.j();
        }
    }

    public static final void t1(SimultaneousMainActivity this$0, int i10) {
        o2.a aVar;
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe mAddItem");
        if (i10 >= 0) {
            r.b(((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).V().e());
            if (i10 > ((List) r0).size() - 1) {
                return;
            }
            SimultaneousViewControl simultaneousViewControl = this$0.A;
            List list = (List) ((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).V().e();
            simultaneousViewControl.b1((list == null || (aVar = (o2.a) o.d0(list)) == null) ? 0L : aVar.d());
            this$0.A.v0(i10);
        }
    }

    public static final void u1(SimultaneousMainActivity this$0, int i10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe mBottomRefreshIndex");
        if (i10 >= 0) {
            r.b(((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).V().e());
            if (i10 > ((List) r0).size() - 1) {
                return;
            }
            this$0.A.c1(i10);
        }
    }

    public static final void v1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.a aVar = c0.f7098a;
        aVar.d("SimultaneousMainActivity", "observe mCancelWhenNoNet");
        if (z10) {
            this$0.A.D0(false);
            this$0.A.M0();
            if (((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).h0() || ((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).p0()) {
                aVar.d("SimultaneousMainActivity", "observe mCancelWhenNoNet auto save");
                this$0.u(true, true);
            }
        }
    }

    public static final void w1(SimultaneousMainActivity this$0, long j10) {
        r.e(this$0, "this$0");
        c0.f7098a.d("SimultaneousMainActivity", "observe mCurrentHighLightObserver");
        if (j10 < 0) {
            return;
        }
        this$0.A.a1(j10);
    }

    public static final void x1(SimultaneousMainActivity this$0) {
        r.e(this$0, "this$0");
        this$0.u(r.a(((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).m0().e(), Boolean.TRUE), false);
    }

    public static final void y1(SimultaneousMainActivity this$0, boolean z10) {
        r.e(this$0, "this$0");
        c0.a aVar = c0.f7098a;
        aVar.d("SimultaneousMainActivity", "observe mPlayButtonStatus " + z10);
        if (z10) {
            this$0.A.F(true);
            this$0.A.M0();
            if (((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).h0() || ((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).p0()) {
                aVar.d("SimultaneousMainActivity", "observe mPlayButtonStatus isBackground");
                this$0.u(true, true);
            }
        }
    }

    public static final void z1(SimultaneousMainActivity this$0, int i10) {
        r.e(this$0, "this$0");
        if (((com.coloros.translate.ui.simultaneous.main.m) this$0.o0()).c0()) {
            this$0.A.g1(i10);
        }
    }

    @Override // com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.b
    public boolean A() {
        androidx.activity.result.b bVar;
        if (r.e.b(this, "android.permission.POST_NOTIFICATIONS") == 0 || Build.VERSION.SDK_INT < 33 || (bVar = this.C) == null) {
            return false;
        }
        bVar.a("android.permission.POST_NOTIFICATIONS");
        return false;
    }

    @Override // com.coloros.translate.base.BasePrivateActivity
    public void F0(Intent intent) {
        super.F0(intent);
        com.coloros.translate.observer.e.INSTANCE.l(n0());
        Q0();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).E0(com.coloros.translate.utils.s.c(this));
        F1(((com.coloros.translate.ui.simultaneous.main.m) o0()).j0());
        this.A.M();
        G1(intent);
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void S0() {
        Object objM59constructorimpl;
        super.S0();
        try {
            r.a aVar = n8.r.Companion;
            ((com.coloros.translate.ui.simultaneous.main.m) o0()).E0(com.coloros.translate.utils.s.c(this));
            F1(((com.coloros.translate.ui.simultaneous.main.m) o0()).j0());
            this.A.M();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SimultaneousMainActivity", "onEarConnect error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void T0() {
        Object objM59constructorimpl;
        super.T0();
        try {
            r.a aVar = n8.r.Companion;
            ((com.coloros.translate.ui.simultaneous.main.m) o0()).E0(false);
            F1(((com.coloros.translate.ui.simultaneous.main.m) o0()).j0());
            this.A.M();
            ((com.coloros.translate.ui.simultaneous.main.m) o0()).M0();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SimultaneousMainActivity", "onEarConnectDisconnect error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void b1() {
        super.b1();
        this.A.O(((com.coloros.translate.ui.simultaneous.main.m) o0()).c0());
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, android.app.Activity
    public void finish() {
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).H0(true);
        super.finish();
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return com.coloros.translate.ui.simultaneous.main.m.class;
    }

    @Override // com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.b
    public void l(com.coloros.translate.b mCurrentLeftLanguage, com.coloros.translate.b mCurrentRightLanguage) throws RemoteException {
        kotlin.jvm.internal.r.e(mCurrentLeftLanguage, "mCurrentLeftLanguage");
        kotlin.jvm.internal.r.e(mCurrentRightLanguage, "mCurrentRightLanguage");
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).O0(mCurrentLeftLanguage.getLanguageCode(), mCurrentRightLanguage.getLanguageCode());
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_simultaneous_main;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (((com.coloros.translate.ui.simultaneous.main.m) o0()).l0()) {
            this.A.V0(true);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        U0();
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(Color.parseColor("#00000000"));
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setNavigationBarColor(Color.parseColor("#00000000"));
        }
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() & (-8193));
        c0.f7098a.d("SimultaneousMainActivity", "onCreate");
        this.A.O0(this);
        this.A.P0((com.coloros.translate.ui.simultaneous.main.m) o0());
        this.A.N0(this);
        this.A.t0();
        com.coloros.translate.ui.simultaneous.main.m.W.a(true);
        C1();
        A1(this);
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).E0(com.coloros.translate.utils.s.c(this));
        registerReceiver(this.D, new IntentFilter("com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED"), 2);
        q.b(false);
        g2.a.c();
        g2.a.e(this.B);
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.n.INSTANCE.d0(q0());
        c0.f7098a.d("SimultaneousMainActivity", "onDestroy");
        com.coloros.translate.ui.simultaneous.main.m.W.a(false);
        I1();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).H();
        this.A.B0();
        com.coloros.translate.ui.simultaneous.utils.c cVar = com.coloros.translate.ui.simultaneous.utils.c.INSTANCE;
        Context applicationContext = getApplicationContext();
        kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
        cVar.a(applicationContext);
        com.coloros.translate.observer.e.INSTANCE.n(n0());
        g2.a.f(this.B);
        try {
            r.a aVar = n8.r.Companion;
            unregisterReceiver(this.D);
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        c0.f7098a.d("SimultaneousMainActivity", "onPause true");
        com.coloros.translate.permission.a.f5407c.a().h();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, android.app.Activity
    protected void onRestart() {
        super.onRestart();
        q1();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).y0(false);
        c0.f7098a.d("SimultaneousMainActivity", "onRestart false");
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(savedInstanceState, "savedInstanceState");
        super.onRestoreInstanceState(savedInstanceState);
        boolean z10 = savedInstanceState.getBoolean("isRecording");
        c0.f7098a.d("SimultaneousMainActivity", "onRestoreInstanceState isRecording:" + z10);
        savedInstanceState.putBoolean("isRecording", false);
        if (z10) {
            this.A.L0(true);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).y0(false);
        this.A.C0();
        this.A.M0();
        c0.f7098a.d("SimultaneousMainActivity", "onResume " + ((com.coloros.translate.ui.simultaneous.main.m) o0()).d0());
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("isRecording", ((com.coloros.translate.ui.simultaneous.main.m) o0()).c0());
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).B0(false);
        c0.f7098a.d("SimultaneousMainActivity", "onSaveInstanceState isRecording:" + ((com.coloros.translate.ui.simultaneous.main.m) o0()).c0());
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).y0(true);
        c0.f7098a.d("SimultaneousMainActivity", "onStop true");
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            a0 a0VarE0 = ((com.coloros.translate.ui.simultaneous.main.m) o0()).e0();
            Boolean bool = Boolean.FALSE;
            a0VarE0.n(bool);
            ((com.coloros.translate.ui.simultaneous.main.m) o0()).o0().n(bool);
        }
    }

    public final int s1() {
        Integer num = (Integer) ((com.coloros.translate.ui.simultaneous.main.m) o0()).a0().e();
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.b
    public void u(boolean z10, boolean z11) {
        long j10;
        ((com.coloros.translate.ui.simultaneous.main.m) o0()).M0();
        if (!z10) {
            if (z11) {
                finish();
                return;
            }
            this.A.b0();
            this.A.J0(new d());
            com.coloros.translate.ui.simultaneous.utils.c cVar = com.coloros.translate.ui.simultaneous.utils.c.INSTANCE;
            Context applicationContext = getApplicationContext();
            kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
            cVar.a(applicationContext);
            return;
        }
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        if (aVar.e().C()) {
            j10 = 0;
        } else {
            aVar.e().F();
            j10 = COUIScrollBar.SCROLLER_FADE_TIMEOUT;
        }
        c0.f7098a.i("SimultaneousMainActivity", "onClickSaveBth delayTime:" + j10);
        z0.c(j10, new c(z11));
    }

    @Override // com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.b
    public void w() {
        startActivity(new Intent(this, (Class<?>) SimultaneousHistoryActivity.class));
    }

    @Override // com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.b
    public void x(boolean z10) throws RemoteException {
        if (z10) {
            com.coloros.translate.ui.simultaneous.main.m.K0((com.coloros.translate.ui.simultaneous.main.m) o0(), false, 1, null);
            F1(((com.coloros.translate.ui.simultaneous.main.m) o0()).j0());
        } else {
            this.A.b1(0L);
            ((com.coloros.translate.ui.simultaneous.main.m) o0()).L0();
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public void x0() {
        if (((com.coloros.translate.ui.simultaneous.main.m) o0()).l0()) {
            super.x0();
            c0.f7098a.q("SimultaneousMainActivity", "NetStatusCallBack onLost");
            z0.h(0L, new Runnable() { // from class: com.coloros.translate.ui.simultaneous.b
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousMainActivity.x1(this.f6472a);
                }
            }, 1, null);
        }
    }
}
