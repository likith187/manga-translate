package com.coloros.translate.ui.simultaneous.main;

import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.o;
import com.coloros.translate.repository.d;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.d1;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.n0;
import com.coloros.translate.utils.o0;
import com.coloros.translate.utils.p0;
import com.coloros.translate.widget.LanguageChooseView;
import com.coui.appcompat.floatingactionbutton.COUIFloatingButton;
import com.coui.appcompat.grid.COUIPercentWidthFrameLayout;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.poplist.COUIPopupListWindow;
import com.coui.appcompat.snackbar.COUISnackBar;
import com.coui.appcompat.statelistutil.COUIStateListUtil;
import com.coui.appcompat.toolbar.COUIActionMenuView;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.oplus.os.LinearmotorVibrator;
import com.oplus.os.WaveformEffect;
import com.support.appcompat.R$color;
import com.support.responsiveui.R$dimen;
import com.support.toolbar.R$string;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class SimultaneousViewControl implements com.coloros.translate.d, o.c {
    public static final a M = new a(null);
    private COUIFloatingButton A;
    private View B;
    private COUILinearLayoutManager C;
    private com.coloros.translate.ui.simultaneous.main.k D;
    private boolean E;
    private boolean F;
    private View G;
    private ImageView H;
    private LottieAnimationView I;
    private TextView J;
    private final WaveformEffect K;
    private final Runnable L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SimultaneousMainActivity f6625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.coloros.translate.ui.simultaneous.main.m f6626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f6627c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.coloros.translate.o f6628f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RadioButton f6629h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f6631j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f6633l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private COUIToolbar f6634m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private View f6635n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f6636o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LanguageChooseView f6637p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LanguageChooseView f6638q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LanguageChooseView f6639r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final n8.q f6640s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.coloros.translate.b f6641t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.coloros.translate.b f6642u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final n8.j f6643v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private View f6644w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f6645x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private COUIRecyclerView f6646y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f6647z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Runnable f6630i = new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.y
        @Override // java.lang.Runnable
        public final void run() {
            SimultaneousViewControl.N(this.f6760a);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.coloros.translate.ui.simultaneous.main.i f6632k = new com.coloros.translate.ui.simultaneous.main.i();

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        boolean A();

        void l(com.coloros.translate.b bVar, com.coloros.translate.b bVar2);

        void u(boolean z10, boolean z11);

        void w();

        void x(boolean z10);
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ boolean $isFull;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z10) {
            super(1);
            this.$isFull = z10;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return h0.INSTANCE;
        }

        public final void invoke(boolean z10) {
            SimultaneousViewControl.this.C(this.$isFull);
        }
    }

    public static final class d implements MenuItem.OnMenuItemClickListener {
        d() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem item) {
            kotlin.jvm.internal.r.e(item, "item");
            if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
                return true;
            }
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "click history");
            com.coloros.translate.utils.n.INSTANCE.C();
            b bVarY = SimultaneousViewControl.this.Y();
            if (bVarY != null) {
                bVarY.w();
            }
            return true;
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            SimultaneousViewControl.this.E0();
        }
    }

    public static final class f extends RecyclerView.u {
        f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i10, i11);
            if (SimultaneousViewControl.this.F) {
                return;
            }
            SimultaneousViewControl.this.L(!r1.U());
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.l {
        g() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            SimultaneousViewControl.this.Z().e0().n(Boolean.TRUE);
            SimultaneousViewControl.this.Z().o0().n(Boolean.FALSE);
            SimultaneousViewControl.this.H0();
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                com.coloros.translate.o.H(oVar, false, 1, null);
            }
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.l {
        h() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            SimultaneousViewControl.this.Z().e0().n(Boolean.FALSE);
            SimultaneousViewControl.this.Z().o0().n(Boolean.TRUE);
            SimultaneousViewControl.this.H0();
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                oVar.G(false);
            }
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.l {
        i() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                oVar.M();
            }
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        j() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            SimultaneousViewControl.this.Z().e0().n(Boolean.TRUE);
            SimultaneousViewControl.this.Z().o0().n(Boolean.FALSE);
            SimultaneousViewControl.this.H0();
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                com.coloros.translate.o.H(oVar, false, 1, null);
            }
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.l {
        k() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            SimultaneousViewControl.this.Z().e0().n(Boolean.FALSE);
            SimultaneousViewControl.this.Z().o0().n(Boolean.TRUE);
            SimultaneousViewControl.this.H0();
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                oVar.G(false);
            }
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.l {
        l() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.o oVar = SimultaneousViewControl.this.f6628f;
            if (oVar != null) {
                oVar.M();
            }
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.a {
        public static final m INSTANCE = new m();

        m() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    public static final class n extends com.coloros.translate.ui.simultaneous.main.a {
        n() {
        }

        @Override // com.coloros.translate.ui.simultaneous.main.a, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            LottieAnimationView lottieAnimationView = SimultaneousViewControl.this.I;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView = null;
            }
            lottieAnimationView.B(29, 80);
        }
    }

    public SimultaneousViewControl() {
        n8.q qVarQ = LanguageManager.f4727w.b().q("si");
        this.f6640s = qVarQ;
        this.f6641t = (com.coloros.translate.b) qVarQ.getFirst();
        this.f6642u = (com.coloros.translate.b) qVarQ.getSecond();
        this.f6643v = n8.k.b(m.INSTANCE);
        this.K = new WaveformEffect.Builder().setEffectType(1).setEffectLoop(false).build();
        this.L = new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.z
            @Override // java.lang.Runnable
            public final void run() {
                SimultaneousViewControl.K0(this.f6761a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(COUISnackBar this_apply, View view) {
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        r.a.j(this_apply.getContext(), new Intent("android.settings.WIFI_SETTINGS"), null);
    }

    private final void B() {
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            boolean zE = o0.e();
            int dimensionPixelSize = (COUIResponsiveUtils.isMediumScreenDp(simultaneousMainActivity.getWindow().getDecorView().getWidth()) || com.coloros.translate.utils.z.g(null, 1, null)) ? simultaneousMainActivity.getResources().getDimensionPixelSize(R$dimen.grid_list_special_padding) : simultaneousMainActivity.getResources().getDimensionPixelSize(R$dimen.grid_card_special_padding);
            COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout = (COUIPercentWidthFrameLayout) simultaneousMainActivity.findViewById(R.id.topLanguageToolLay);
            if (cOUIPercentWidthFrameLayout != null) {
                kotlin.jvm.internal.r.b(cOUIPercentWidthFrameLayout);
                if (!zE) {
                    cOUIPercentWidthFrameLayout.setPercentIndentEnabled(false);
                    cOUIPercentWidthFrameLayout.setPadding(dimensionPixelSize, cOUIPercentWidthFrameLayout.getPaddingTop(), dimensionPixelSize, cOUIPercentWidthFrameLayout.getPaddingBottom());
                }
            }
            COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout2 = (COUIPercentWidthFrameLayout) simultaneousMainActivity.findViewById(R.id.contentPercentLay);
            if (cOUIPercentWidthFrameLayout2 != null) {
                kotlin.jvm.internal.r.b(cOUIPercentWidthFrameLayout2);
                if (zE) {
                    return;
                }
                cOUIPercentWidthFrameLayout2.setPercentIndentEnabled(false);
                cOUIPercentWidthFrameLayout2.setPadding(dimensionPixelSize, cOUIPercentWidthFrameLayout2.getPaddingTop(), dimensionPixelSize, cOUIPercentWidthFrameLayout2.getPaddingBottom());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(boolean z10) {
        View view = this.f6631j;
        if (view == null) {
            kotlin.jvm.internal.r.r("topLanguageToolLay");
            view = null;
        }
        view.setVisibility(z10 ? 8 : 0);
        View view2 = this.f6635n;
        if (view2 == null) {
            return;
        }
        view2.setVisibility(z10 ? 8 : 0);
    }

    private final void D(long j10) {
        if (T()) {
            View view = this.G;
            if (view == null) {
                kotlin.jvm.internal.r.r("mBottomLanguageButton");
                view = null;
            }
            view.postDelayed(this.f6630i, j10);
        }
    }

    static /* synthetic */ void E(SimultaneousViewControl simultaneousViewControl, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 3000;
        }
        simultaneousViewControl.D(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0() {
        TextView textView = this.f6633l;
        if (textView == null) {
            kotlin.jvm.internal.r.r("recordStatus");
            textView = null;
        }
        textView.setVisibility((Z().k0() && x0()) ? 0 : 8);
    }

    private final void F0() {
        COUIActionMenuView menuView;
        COUIPopupListWindow cOUIPopupListWindow;
        COUIToolbar cOUIToolbar = this.f6634m;
        if (cOUIToolbar == null || (menuView = cOUIToolbar.getMenuView()) == null || (cOUIPopupListWindow = menuView.mOverflowPopup) == null) {
            return;
        }
        cOUIPopupListWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.v
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                SimultaneousViewControl.G0(this.f6757a, adapterView, view, i10, j10);
            }
        });
    }

    public static /* synthetic */ void G(SimultaneousViewControl simultaneousViewControl, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        simultaneousViewControl.F(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(SimultaneousViewControl this$0, AdapterView adapterView, View view, int i10, long j10) {
        COUIActionMenuView menuView;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        COUIToolbar cOUIToolbar = this$0.f6634m;
        if (cOUIToolbar != null && (menuView = cOUIToolbar.getMenuView()) != null) {
            menuView.dismissPopupMenus(true);
        }
        if (i10 == 0) {
            if (!this$0.Z().j0()) {
                com.coloros.translate.utils.w.h(R.string.only_ear_phone_connect, 0, 2, null);
                com.coloros.translate.utils.n.INSTANCE.A(false);
                return;
            }
            this$0.Z().D0(true ^ this$0.Z().i0());
            l0.a.l(l0.f7130a, "simultaneous_auto_play", Boolean.valueOf(this$0.Z().i0()), false, null, 12, null);
            this$0.K();
            if (this$0.Z().i0()) {
                com.coloros.translate.utils.w.h(R.string.auto_play_start_tips, 0, 2, null);
            } else {
                this$0.Z().M0();
                com.coloros.translate.utils.w.h(R.string.auto_play_close_tips, 0, 2, null);
            }
            com.coloros.translate.utils.n.INSTANCE.A(this$0.Z().i0());
            return;
        }
        if (i10 == 1) {
            if (!this$0.y0()) {
                this$0.Z().I0(true);
                com.coloros.translate.ui.simultaneous.main.k kVar2 = this$0.D;
                if (kVar2 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                } else {
                    kVar = kVar2;
                }
                kVar.v(this$0.y0());
                this$0.e1();
                if (this$0.x0()) {
                    this$0.Y0();
                    return;
                }
                return;
            }
            if (this$0.y0()) {
                this$0.Z().I0(false);
                com.coloros.translate.ui.simultaneous.main.k kVar3 = this$0.D;
                if (kVar3 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                } else {
                    kVar = kVar3;
                }
                kVar.v(this$0.y0());
                this$0.e1();
                if (this$0.x0()) {
                    this$0.Y0();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        View view = this.G;
        if (view == null) {
            kotlin.jvm.internal.r.r("mBottomLanguageButton");
            view = null;
        }
        view.removeCallbacks(this.f6630i);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void I(android.view.MotionEvent r6, boolean r7) {
        /*
            r5 = this;
            boolean r0 = com.coloros.translate.utils.c1.a(r6)
            r1 = 0
            if (r6 == 0) goto L10
            int r6 = r6.getAction()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            goto L11
        L10:
            r6 = r1
        L11:
            if (r6 != 0) goto L14
            goto L1f
        L14:
            int r2 = r6.intValue()
            if (r2 != 0) goto L1f
            r5.H0()
            goto L92
        L1f:
            r2 = 1
            if (r6 != 0) goto L23
            goto L2e
        L23:
            int r3 = r6.intValue()
            r4 = 2
            if (r3 != r4) goto L2e
            r5.E = r2
            goto L92
        L2e:
            if (r6 != 0) goto L31
            goto L38
        L31:
            int r3 = r6.intValue()
            if (r3 != r2) goto L38
            goto L42
        L38:
            if (r6 != 0) goto L3b
            goto L92
        L3b:
            int r6 = r6.intValue()
            r3 = 3
            if (r6 != r3) goto L92
        L42:
            r6 = 0
            r3 = 0
            if (r0 == 0) goto L6b
            com.coloros.translate.utils.j$a r0 = com.coloros.translate.utils.j.f7127a
            boolean r0 = com.coloros.translate.utils.j.a.c(r0, r3, r2, r1)
            if (r0 != 0) goto L6b
            boolean r0 = r5.x0()
            if (r0 == 0) goto L67
            android.view.View r0 = r5.f6631j
            if (r0 != 0) goto L5f
            java.lang.String r0 = "topLanguageToolLay"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L5f:
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L67
            r0 = r2
            goto L68
        L67:
            r0 = r6
        L68:
            r5.e0(r0, r2)
        L6b:
            boolean r0 = r5.E
            if (r0 == 0) goto L8f
            r5.E = r6
            if (r7 == 0) goto L8f
            com.coui.appcompat.floatingactionbutton.COUIFloatingButton r6 = r5.A
            if (r6 == 0) goto L82
            int r6 = r6.getVisibility()
            if (r6 != 0) goto L7e
            goto L82
        L7e:
            r5.Y0()
            goto L8f
        L82:
            com.coloros.translate.ui.simultaneous.main.k r6 = r5.D
            if (r6 != 0) goto L8c
            java.lang.String r6 = "mBottomAdapter"
            kotlin.jvm.internal.r.r(r6)
            r6 = r1
        L8c:
            r6.notifyDataSetChanged()
        L8f:
            E(r5, r3, r2, r1)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.I(android.view.MotionEvent, boolean):void");
    }

    static /* synthetic */ void J(SimultaneousViewControl simultaneousViewControl, MotionEvent motionEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        simultaneousViewControl.I(motionEvent, z10);
    }

    private final void K() {
        COUIToolbar cOUIToolbar;
        Menu menu;
        MenuItem menuItemFindItem;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("SimultaneousViewControl", "configVoiceIcon isPlayTtsEnable:" + Z().j0());
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity == null || (cOUIToolbar = this.f6634m) == null || (menu = cOUIToolbar.getMenu()) == null || (menuItemFindItem = menu.findItem(R.id.voice)) == null) {
            return;
        }
        kotlin.jvm.internal.r.b(menuItemFindItem);
        aVar.d("SimultaneousViewControl", "configVoiceIcon isPlayTtsEnable 222:" + Z().j0());
        menuItemFindItem.setIcon(Z().j0() ? Z().i0() ? t.h.f(simultaneousMainActivity.getResources(), R.drawable.si_tts_play, null) : t.h.f(simultaneousMainActivity.getResources(), R.drawable.si_tts_stop, null) : t.h.f(simultaneousMainActivity.getResources(), R.drawable.si_play_disable, null));
        menuItemFindItem.setEnabled(Z().j0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.Z().l0() || this$0.Z().M()) {
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "restorePlayStatus performClick");
        LottieAnimationView lottieAnimationView = this$0.I;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView = null;
        }
        lottieAnimationView.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(boolean z10) {
        COUIFloatingButton cOUIFloatingButton;
        AppCompatImageView mainFloatingButton;
        COUIFloatingButton cOUIFloatingButton2;
        COUIFloatingButton cOUIFloatingButton3;
        AppCompatImageView mainFloatingButton2;
        if (z10 && (cOUIFloatingButton3 = this.A) != null && (mainFloatingButton2 = cOUIFloatingButton3.getMainFloatingButton()) != null && mainFloatingButton2.getVisibility() != 0) {
            COUIFloatingButton cOUIFloatingButton4 = this.A;
            if (cOUIFloatingButton4 != null) {
                cOUIFloatingButton4.show();
                return;
            }
            return;
        }
        if (z10 || (cOUIFloatingButton = this.A) == null || (mainFloatingButton = cOUIFloatingButton.getMainFloatingButton()) == null || mainFloatingButton.getVisibility() != 0 || (cOUIFloatingButton2 = this.A) == null) {
            return;
        }
        cOUIFloatingButton2.hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.T() && this$0.x0()) {
            View view = this$0.f6631j;
            if (view == null) {
                kotlin.jvm.internal.r.r("topLanguageToolLay");
                view = null;
            }
            if (view.getVisibility() == 0 && this$0.T()) {
                this$0.e0(true, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LottieAnimationView lottieAnimationView = this$0.I;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView = null;
        }
        lottieAnimationView.performClick();
    }

    private final void Q() {
        View view = this.B;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("emptySpeakLoading");
            view = null;
        }
        com.coloros.translate.ui.simultaneous.main.k kVar2 = this.D;
        if (kVar2 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar2 = null;
        }
        view.setVisibility(kVar2.i().isEmpty() && T() ? 0 : 8);
        if (d1.INSTANCE.d() && Z().P()) {
            TextView textView = this.f6645x;
            if (textView == null) {
                kotlin.jvm.internal.r.r("aiSignTextView");
                textView = null;
            }
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            textView.setVisibility(kVar3.i().isEmpty() ? 8 : 0);
        }
        com.coloros.translate.ui.simultaneous.main.k kVar4 = this.D;
        if (kVar4 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
        } else {
            kVar = kVar4;
        }
        kVar.p(T());
    }

    private final void Q0(boolean z10) {
        View view = null;
        if (z10) {
            View view2 = this.f6647z;
            if (view2 == null) {
                kotlin.jvm.internal.r.r("emptyTextView");
                view2 = null;
            }
            view2.setVisibility(8);
            COUIRecyclerView cOUIRecyclerView = this.f6646y;
            if (cOUIRecyclerView == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
            } else {
                view = cOUIRecyclerView;
            }
            view.setVisibility(0);
            Q();
            return;
        }
        View view3 = this.f6647z;
        if (view3 == null) {
            kotlin.jvm.internal.r.r("emptyTextView");
            view3 = null;
        }
        view3.setVisibility(0);
        COUIRecyclerView cOUIRecyclerView2 = this.f6646y;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mBottomRecycleView");
            cOUIRecyclerView2 = null;
        }
        cOUIRecyclerView2.setVisibility(8);
        View view4 = this.B;
        if (view4 == null) {
            kotlin.jvm.internal.r.r("emptySpeakLoading");
        } else {
            view = view4;
        }
        view.setVisibility(8);
    }

    private final void R0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "showFullScreen");
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            simultaneousMainActivity.findViewById(R.id.rootView).setSystemUiVisibility(1024);
        }
    }

    private final void S(int i10) {
        TextView textView = this.f6633l;
        TextView textView2 = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("recordStatus");
            textView = null;
        }
        textView.setText(com.coloros.translate.ui.simultaneous.main.d.f6663a.a(i10));
        TextView textView3 = this.f6633l;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("recordStatus");
        } else {
            textView2 = textView3;
        }
        textView2.setSelected(T());
    }

    private final void S0(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "showHistoryMenu");
        COUIToolbar cOUIToolbar = this.f6634m;
        if (cOUIToolbar != null) {
            View view = this.f6636o;
            boolean z11 = false;
            if (view != null) {
                view.setVisibility(z10 ? 0 : 8);
            }
            R();
            Menu menu = cOUIToolbar.getMenu();
            MenuItem menuItemFindItem = menu != null ? menu.findItem(R.id.history) : null;
            if (menuItemFindItem != null) {
                menuItemFindItem.setVisible(!z10);
            }
            Menu menu2 = cOUIToolbar.getMenu();
            MenuItem menuItemFindItem2 = menu2 != null ? menu2.findItem(R.id.voice) : null;
            if (menuItemFindItem2 != null) {
                menuItemFindItem2.setVisible(z10);
            }
            Menu menu3 = cOUIToolbar.getMenu();
            MenuItem menuItemFindItem3 = menu3 != null ? menu3.findItem(R.id.show_both_language) : null;
            if (menuItemFindItem3 != null) {
                menuItemFindItem3.setVisible(z10 && !y0());
            }
            Menu menu4 = cOUIToolbar.getMenu();
            MenuItem menuItemFindItem4 = menu4 != null ? menu4.findItem(R.id.show_translation) : null;
            if (menuItemFindItem4 == null) {
                return;
            }
            if (z10 && y0()) {
                z11 = true;
            }
            menuItemFindItem4.setVisible(z11);
        }
    }

    private final boolean T() {
        return Z().M();
    }

    private final void T0() {
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        S(simultaneousMainActivity != null ? simultaneousMainActivity.s1() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean U() {
        COUILinearLayoutManager cOUILinearLayoutManager = this.C;
        COUILinearLayoutManager cOUILinearLayoutManager2 = null;
        if (cOUILinearLayoutManager == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
            cOUILinearLayoutManager = null;
        }
        int iFindLastVisibleItemPosition = cOUILinearLayoutManager.findLastVisibleItemPosition();
        COUILinearLayoutManager cOUILinearLayoutManager3 = this.C;
        if (cOUILinearLayoutManager3 == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
        } else {
            cOUILinearLayoutManager2 = cOUILinearLayoutManager3;
        }
        return iFindLastVisibleItemPosition == cOUILinearLayoutManager2.getItemCount() - 1;
    }

    private final void U0(boolean z10) {
        if (z10) {
            LanguageChooseView languageChooseView = this.f6639r;
            if (languageChooseView != null) {
                languageChooseView.setVisibility(0);
            }
            RadioButton radioButton = this.f6629h;
            if (radioButton == null) {
                return;
            }
            radioButton.setVisibility(8);
            return;
        }
        LanguageChooseView languageChooseView2 = this.f6639r;
        if (languageChooseView2 != null) {
            languageChooseView2.setVisibility(0);
        }
        RadioButton radioButton2 = this.f6629h;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(0);
    }

    private final void W0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "startBottomButtonRunning " + T());
        if (T()) {
            return;
        }
        LottieAnimationView lottieAnimationView = this.I;
        TextView textView = null;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView = null;
        }
        lottieAnimationView.setVisibility(0);
        LottieAnimationView lottieAnimationView2 = this.I;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView2 = null;
        }
        lottieAnimationView2.setAnimation(R.raw.simultaneous_micro_open);
        LottieAnimationView lottieAnimationView3 = this.I;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView3 = null;
        }
        lottieAnimationView3.B(0, 80);
        LottieAnimationView lottieAnimationView4 = this.I;
        if (lottieAnimationView4 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView4 = null;
        }
        lottieAnimationView4.setRepeatCount(-1);
        LottieAnimationView lottieAnimationView5 = this.I;
        if (lottieAnimationView5 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView5 = null;
        }
        lottieAnimationView5.g(new n());
        LottieAnimationView lottieAnimationView6 = this.I;
        if (lottieAnimationView6 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView6 = null;
        }
        lottieAnimationView6.v();
        LottieAnimationView lottieAnimationView7 = this.I;
        if (lottieAnimationView7 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView7 = null;
        }
        LottieAnimationView lottieAnimationView8 = this.I;
        if (lottieAnimationView8 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView8 = null;
        }
        lottieAnimationView7.setContentDescription(lottieAnimationView8.getResources().getString(R.string.talkback_stop_recognizing_speech));
        com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
        ImageView imageView = this.H;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAsrSpeakLottie");
            imageView = null;
        }
        iVar.l(imageView);
        TextView textView2 = this.J;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakText");
        } else {
            textView = textView2;
        }
        textView.setText(R.string.click_to_pause);
        E0();
    }

    private final LanguageManager X() {
        return (LanguageManager) this.f6643v.getValue();
    }

    private final void X0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "stopBottomButtonState " + T());
        LottieAnimationView lottieAnimationView = this.I;
        TextView textView = null;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView = null;
        }
        lottieAnimationView.u();
        if (!T()) {
            LottieAnimationView lottieAnimationView2 = this.I;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView2 = null;
            }
            lottieAnimationView2.B(80, 113);
            LottieAnimationView lottieAnimationView3 = this.I;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView3 = null;
            }
            lottieAnimationView3.setFrame(113);
            LottieAnimationView lottieAnimationView4 = this.I;
            if (lottieAnimationView4 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView4 = null;
            }
            LottieAnimationView lottieAnimationView5 = this.I;
            if (lottieAnimationView5 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView5 = null;
            }
            lottieAnimationView4.setContentDescription(lottieAnimationView5.getResources().getString(R.string.talkback_start_recognizing_speech));
            TextView textView2 = this.J;
            if (textView2 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakText");
            } else {
                textView = textView2;
            }
            textView.setText(R.string.click_to_start);
            E0();
            return;
        }
        LottieAnimationView lottieAnimationView6 = this.I;
        if (lottieAnimationView6 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView6 = null;
        }
        lottieAnimationView6.setVisibility(0);
        LottieAnimationView lottieAnimationView7 = this.I;
        if (lottieAnimationView7 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView7 = null;
        }
        lottieAnimationView7.B(80, 113);
        LottieAnimationView lottieAnimationView8 = this.I;
        if (lottieAnimationView8 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView8 = null;
        }
        lottieAnimationView8.setRepeatCount(0);
        LottieAnimationView lottieAnimationView9 = this.I;
        if (lottieAnimationView9 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView9 = null;
        }
        lottieAnimationView9.v();
        LottieAnimationView lottieAnimationView10 = this.I;
        if (lottieAnimationView10 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView10 = null;
        }
        LottieAnimationView lottieAnimationView11 = this.I;
        if (lottieAnimationView11 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView11 = null;
        }
        lottieAnimationView10.setContentDescription(lottieAnimationView11.getResources().getString(R.string.talkback_start_recognizing_speech));
        com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
        ImageView imageView = this.H;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mAsrSpeakLottie");
            imageView = null;
        }
        iVar.n(imageView);
        f0(this, false, false, 2, null);
        TextView textView3 = this.J;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakText");
        } else {
            textView = textView3;
        }
        textView.setText(x0() ? R.string.click_to_continue : R.string.click_to_start);
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.ui.simultaneous.main.k kVar = this$0.D;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.notifyDataSetChanged();
    }

    private final LanguageChooseView a0() {
        if (o0.e() || com.coloros.translate.utils.z.g(null, 1, null)) {
            LanguageChooseView languageChooseView = this.f6637p;
            if (languageChooseView != null) {
                languageChooseView.setVisibility(8);
            }
            return this.f6638q;
        }
        LanguageChooseView languageChooseView2 = this.f6638q;
        if (languageChooseView2 != null) {
            languageChooseView2.setVisibility(8);
        }
        return this.f6637p;
    }

    private final void c0() {
        View viewFindViewById;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "hideFullScreen");
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity == null || (viewFindViewById = simultaneousMainActivity.findViewById(R.id.rootView)) == null) {
            return;
        }
        viewFindViewById.setSystemUiVisibility(4870);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUILinearLayoutManager cOUILinearLayoutManager = this$0.C;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        if (cOUILinearLayoutManager == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
            cOUILinearLayoutManager = null;
        }
        com.coloros.translate.ui.simultaneous.main.k kVar2 = this$0.D;
        if (kVar2 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
        } else {
            kVar = kVar2;
        }
        cOUILinearLayoutManager.scrollToPosition(kVar.i().size() - 1);
    }

    private final void e0(boolean z10, boolean z11) {
        H0();
        if (this.f6625a != null) {
            com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
            View view = this.G;
            View view2 = null;
            if (view == null) {
                kotlin.jvm.internal.r.r("mBottomLanguageButton");
                view = null;
            }
            View view3 = this.f6631j;
            if (view3 == null) {
                kotlin.jvm.internal.r.r("topLanguageToolLay");
            } else {
                view2 = view3;
            }
            iVar.i(view, new View[]{view2, this.f6635n}, z10, z11, new c(z10));
            E0();
            if (z10) {
                c0();
            } else {
                R0();
            }
        }
    }

    private final void e1() {
        Menu menu;
        Menu menu2;
        COUIToolbar cOUIToolbar = this.f6634m;
        MenuItem menuItemFindItem = null;
        MenuItem menuItemFindItem2 = (cOUIToolbar == null || (menu2 = cOUIToolbar.getMenu()) == null) ? null : menu2.findItem(R.id.show_both_language);
        COUIToolbar cOUIToolbar2 = this.f6634m;
        if (cOUIToolbar2 != null && (menu = cOUIToolbar2.getMenu()) != null) {
            menuItemFindItem = menu.findItem(R.id.show_translation);
        }
        if (menuItemFindItem2 != null) {
            menuItemFindItem2.setVisible(!y0());
        }
        if (menuItemFindItem == null) {
            return;
        }
        menuItemFindItem.setVisible(y0());
    }

    static /* synthetic */ void f0(SimultaneousViewControl simultaneousViewControl, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        simultaneousViewControl.e0(z10, z11);
    }

    private final void f1() {
        if (n0.d()) {
            RadioButton radioButton = this.f6629h;
            if (radioButton != null) {
                radioButton.setCompoundDrawablesWithIntrinsicBounds(0, 0, Z().k0() ? R.drawable.si_record_enable : R.drawable.si_record_disable, 0);
            }
        } else {
            RadioButton radioButton2 = this.f6629h;
            if (radioButton2 != null) {
                radioButton2.setCompoundDrawablesWithIntrinsicBounds(Z().k0() ? R.drawable.si_record_enable : R.drawable.si_record_disable, 0, 0, 0);
            }
        }
        E0();
    }

    private final void g0() {
        MenuItem menuItemFindItem;
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            this.f6635n = simultaneousMainActivity.findViewById(R.id.toolbarLay);
            COUIToolbar cOUIToolbar = (COUIToolbar) simultaneousMainActivity.findViewById(R.id.toolbar);
            COUIActionMenuView menuView = cOUIToolbar.getMenuView();
            if (menuView != null) {
                menuView.setPopupWindowOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.coloros.translate.ui.simultaneous.main.c0
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public final void onDismiss() {
                        SimultaneousViewControl.h0(this.f6662a);
                    }
                });
            }
            COUIActionMenuView menuView2 = cOUIToolbar.getMenuView();
            if (menuView2 != null) {
                menuView2.setOverflowMenuListener(new COUIActionMenuView.OverflowMenuListener() { // from class: com.coloros.translate.ui.simultaneous.main.d0
                    @Override // com.coui.appcompat.toolbar.COUIActionMenuView.OverflowMenuListener
                    public final void onOverflowMenuPreShow(COUIPopupListWindow cOUIPopupListWindow) {
                        SimultaneousViewControl.i0(this.f6664a, cOUIPopupListWindow);
                    }
                });
            }
            cOUIToolbar.setOverflowIcon(e.a.b(cOUIToolbar.getContext(), R.drawable.si_more));
            cOUIToolbar.inflateMenu(R.menu.simultaneous_main_menu);
            e1();
            cOUIToolbar.setTitleTextColor(simultaneousMainActivity.getColor(R$color.coui_color_label_primary_dark));
            cOUIToolbar.setNavigationIcon(R.drawable.si_back_white_arrow);
            cOUIToolbar.setNavigationContentDescription(R$string.toolbar_close);
            cOUIToolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimultaneousViewControl.j0(this.f6666a, view);
                }
            });
            Menu menu = cOUIToolbar.getMenu();
            if (menu != null && (menuItemFindItem = menu.findItem(R.id.history)) != null) {
                menuItemFindItem.setOnMenuItemClickListener(new d());
            }
            this.f6634m = cOUIToolbar;
            R();
            K();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        E(this$0, 0L, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(SimultaneousViewControl this$0, COUIPopupListWindow cOUIPopupListWindow) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.H0();
        this$0.F0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(SimultaneousViewControl this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.Z().l0()) {
            this$0.V0(true);
            return;
        }
        SimultaneousMainActivity simultaneousMainActivity = this$0.f6625a;
        if (simultaneousMainActivity != null) {
            simultaneousMainActivity.finish();
        }
    }

    private final void k0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "initRecyclerAdapter");
        final SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            View viewFindViewById = simultaneousMainActivity.findViewById(R.id.bottomLanguageButton);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.G = viewFindViewById;
            View viewFindViewById2 = simultaneousMainActivity.findViewById(R.id.bottomButtonSpeakIcon);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            LottieAnimationView lottieAnimationView = (LottieAnimationView) viewFindViewById2;
            this.I = lottieAnimationView;
            com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
            LottieAnimationView lottieAnimationView2 = null;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView = null;
            }
            iVar.g(lottieAnimationView);
            View viewFindViewById3 = simultaneousMainActivity.findViewById(R.id.speakText);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
            this.J = (TextView) viewFindViewById3;
            LottieAnimationView lottieAnimationView3 = this.I;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            } else {
                lottieAnimationView2 = lottieAnimationView3;
            }
            lottieAnimationView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimultaneousViewControl.l0(this.f6751a, simultaneousMainActivity, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(SimultaneousViewControl this$0, SimultaneousMainActivity this_apply, View view) {
        Object objM59constructorimpl;
        COUIRecyclerView cOUIRecyclerView;
        View view2;
        Menu menu;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        h0 h0Var = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        com.coloros.translate.utils.n.INSTANCE.E();
        if (!this$0.T()) {
            SimultaneousMainActivity simultaneousMainActivity = this$0.f6625a;
            if (simultaneousMainActivity != null && simultaneousMainActivity.j0()) {
                return;
            }
            if (com.coloros.translate.observer.e.INSTANCE.k()) {
                this$0.z0();
                return;
            }
            d.a aVar = com.coloros.translate.repository.d.f5439a;
            if (!aVar.b() || com.coloros.translate.permission.a.f5407c.a().d(this_apply)) {
                return;
            }
            b bVar = this$0.f6627c;
            if ((bVar != null && bVar.A()) || !aVar.e().C()) {
                return;
            }
        }
        boolean zX0 = this$0.x0();
        G(this$0, false, 1, null);
        b bVar2 = this$0.f6627c;
        if (bVar2 != null) {
            bVar2.x(this$0.T());
        }
        com.coloros.translate.ui.simultaneous.main.k kVar = this$0.D;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.notifyDataSetChanged();
        this$0.D(200L);
        this$0.M0();
        if (zX0) {
            this$0.E0();
        } else {
            TextView textView = this$0.f6633l;
            if (textView == null) {
                kotlin.jvm.internal.r.r("recordStatus");
                textView = null;
            }
            textView.setVisibility(8);
            com.coloros.translate.ui.simultaneous.main.i iVar = this$0.f6632k;
            COUIRecyclerView cOUIRecyclerView2 = this$0.f6646y;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView = null;
            } else {
                cOUIRecyclerView = cOUIRecyclerView2;
            }
            View view3 = this$0.f6647z;
            if (view3 == null) {
                kotlin.jvm.internal.r.r("emptyTextView");
                view2 = null;
            } else {
                view2 = view3;
            }
            RadioButton radioButton = this$0.f6629h;
            kotlin.jvm.internal.r.b(radioButton);
            iVar.p(cOUIRecyclerView, view2, radioButton, false, kotlin.jvm.internal.r.a(this$0.f6638q, this$0.f6639r), this$0.new e());
            COUIToolbar cOUIToolbar = this$0.f6634m;
            if (cOUIToolbar != null && (menu = cOUIToolbar.getMenu()) != null) {
                com.coloros.translate.ui.simultaneous.main.i iVar2 = this$0.f6632k;
                MenuItem menuItemFindItem = menu.findItem(R.id.history);
                kotlin.jvm.internal.r.d(menuItemFindItem, "findItem(...)");
                com.coloros.translate.ui.simultaneous.main.i.r(iVar2, menuItemFindItem, this$0.f6636o, false, null, 8, null);
            }
        }
        if (this$0.T()) {
            com.coloros.translate.ui.simultaneous.main.k kVar2 = this$0.D;
            if (kVar2 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar2 = null;
            }
            kVar2.o();
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this$0.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            kVar3.notifyDataSetChanged();
        }
        try {
            r.a aVar2 = n8.r.Companion;
            LottieAnimationView lottieAnimationView = this$0.I;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                lottieAnimationView = null;
            }
            Object systemService = lottieAnimationView.getContext().getSystemService("linearmotor");
            LinearmotorVibrator linearmotorVibrator = systemService instanceof LinearmotorVibrator ? (LinearmotorVibrator) systemService : null;
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "vibrate: " + linearmotorVibrator);
            if (linearmotorVibrator != null) {
                linearmotorVibrator.vibrate(this$0.K);
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "vibrate: error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final void m0() {
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            com.coloros.translate.ui.simultaneous.main.k kVar = this.D;
            if (kVar == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar = null;
            }
            kVar.v(y0());
            View viewFindViewById = simultaneousMainActivity.findViewById(R.id.recordStatus);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6633l = (TextView) viewFindViewById;
        }
    }

    private final void n0() {
        Context context;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "initRecyclerAdapter");
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            View viewFindViewById = simultaneousMainActivity.findViewById(R.id.emptyTextView);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            this.f6647z = viewFindViewById;
            View viewFindViewById2 = simultaneousMainActivity.findViewById(R.id.emptySpeakLoading);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.B = viewFindViewById2;
            View viewFindViewById3 = simultaneousMainActivity.findViewById(R.id.contentLay);
            kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
            this.f6644w = viewFindViewById3;
            View viewFindViewById4 = simultaneousMainActivity.findViewById(R.id.result_sign);
            kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
            TextView textView = (TextView) viewFindViewById4;
            this.f6645x = textView;
            COUIRecyclerView cOUIRecyclerView = null;
            if (textView == null) {
                kotlin.jvm.internal.r.r("aiSignTextView");
                textView = null;
            }
            textView.setText(d1.b(p0.SUMMARY, simultaneousMainActivity));
            View viewFindViewById5 = simultaneousMainActivity.findViewById(R.id.lower_recyclerview);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
            COUIRecyclerView cOUIRecyclerView2 = (COUIRecyclerView) viewFindViewById5;
            this.f6646y = cOUIRecyclerView2;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView2 = null;
            }
            cOUIRecyclerView2.setItemAnimator(new com.coloros.translate.ui.simultaneous.widget.a());
            simultaneousMainActivity.findViewById(R.id.bottomLanguageButtonAnim).setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.simultaneous.main.r
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return SimultaneousViewControl.o0(this.f6753a, view, motionEvent);
                }
            });
            COUIRecyclerView cOUIRecyclerView3 = this.f6646y;
            if (cOUIRecyclerView3 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView3 = null;
            }
            cOUIRecyclerView3.setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.simultaneous.main.s
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return SimultaneousViewControl.p0(this.f6754a, view, motionEvent);
                }
            });
            SimultaneousMainActivity simultaneousMainActivity2 = this.f6625a;
            COUIFloatingButton cOUIFloatingButton = simultaneousMainActivity2 != null ? (COUIFloatingButton) simultaneousMainActivity2.findViewById(R.id.floatBtn) : null;
            this.A = cOUIFloatingButton;
            if (cOUIFloatingButton != null) {
                cOUIFloatingButton.setIsFloatingButtonExpandEnable(false);
            }
            COUIFloatingButton cOUIFloatingButton2 = this.A;
            AppCompatImageView mainFloatingButton = cOUIFloatingButton2 != null ? cOUIFloatingButton2.getMainFloatingButton() : null;
            if (mainFloatingButton != null) {
                kotlin.jvm.internal.r.b(mainFloatingButton);
                mainFloatingButton.setVisibility(8);
            }
            COUIFloatingButton cOUIFloatingButton3 = this.A;
            AppCompatImageView mainFloatingButton2 = cOUIFloatingButton3 != null ? cOUIFloatingButton3.getMainFloatingButton() : null;
            if (mainFloatingButton2 != null) {
                COUIFloatingButton cOUIFloatingButton4 = this.A;
                mainFloatingButton2.setContentDescription((cOUIFloatingButton4 == null || (context = cOUIFloatingButton4.getContext()) == null) ? null : context.getString(R.string.return_value));
            }
            COUIFloatingButton cOUIFloatingButton5 = this.A;
            if (cOUIFloatingButton5 != null) {
                cOUIFloatingButton5.setMainFloatingButtonBackgroundColor(COUIStateListUtil.createColorStateList(Color.parseColor("#6F90C1"), Color.parseColor("#6F90C1")));
            }
            COUIFloatingButton cOUIFloatingButton6 = this.A;
            if (cOUIFloatingButton6 != null) {
                cOUIFloatingButton6.setFloatingButtonClickListener(new COUIFloatingButton.OnFloatingButtonClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.t
                    @Override // com.coui.appcompat.floatingactionbutton.COUIFloatingButton.OnFloatingButtonClickListener
                    public final void onClick() {
                        SimultaneousViewControl.q0(this.f6755a);
                    }
                });
            }
            COUIRecyclerView cOUIRecyclerView4 = this.f6646y;
            if (cOUIRecyclerView4 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView4 = null;
            }
            cOUIRecyclerView4.setKeepScreenOn(true);
            COUIRecyclerView cOUIRecyclerView5 = this.f6646y;
            if (cOUIRecyclerView5 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView5 = null;
            }
            final Context context2 = cOUIRecyclerView5.getContext();
            COUILinearLayoutManager cOUILinearLayoutManager = new COUILinearLayoutManager(context2) { // from class: com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl$initRecyclerAdapter$1$4$1

                public static final class a extends androidx.recyclerview.widget.p {

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    final /* synthetic */ int f6651j;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    a(int i10, Context context) {
                        super(context);
                        this.f6651j = i10;
                    }

                    @Override // androidx.recyclerview.widget.p
                    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                        kotlin.jvm.internal.r.e(displayMetrics, "displayMetrics");
                        SimultaneousViewControl$initRecyclerAdapter$1$4$1 simultaneousViewControl$initRecyclerAdapter$1$4$1 = SimultaneousViewControl$initRecyclerAdapter$1$4$1.this;
                        int i10 = this.f6651j;
                        try {
                            r.a aVar = n8.r.Companion;
                            return ((25.0f / Math.abs(i10 - simultaneousViewControl$initRecyclerAdapter$1$4$1.findLastVisibleItemPosition())) * 2.0f) / displayMetrics.densityDpi;
                        } catch (Throwable th) {
                            r.a aVar2 = n8.r.Companion;
                            n8.r.m59constructorimpl(n8.s.a(th));
                            return 25.0f / displayMetrics.densityDpi;
                        }
                    }

                    @Override // androidx.recyclerview.widget.p
                    protected int getVerticalSnapPreference() {
                        return 1;
                    }
                }

                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
                    a aVar = new a(i10, recyclerView != null ? recyclerView.getContext() : null);
                    aVar.setTargetPosition(i10);
                    startSmoothScroll(aVar);
                }
            };
            this.C = cOUILinearLayoutManager;
            cOUILinearLayoutManager.setStackFromEnd(true);
            COUILinearLayoutManager cOUILinearLayoutManager2 = this.C;
            if (cOUILinearLayoutManager2 == null) {
                kotlin.jvm.internal.r.r("mBottomLayoutManager");
                cOUILinearLayoutManager2 = null;
            }
            cOUIRecyclerView5.setLayoutManager(cOUILinearLayoutManager2);
            com.coloros.translate.ui.simultaneous.main.k kVar = new com.coloros.translate.ui.simultaneous.main.k(this);
            this.D = kVar;
            cOUIRecyclerView5.setAdapter(kVar);
            COUIRecyclerView cOUIRecyclerView6 = this.f6646y;
            if (cOUIRecyclerView6 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView6 = null;
            }
            cOUIRecyclerView6.addOnScrollListener(new f());
            COUIRecyclerView cOUIRecyclerView7 = this.f6646y;
            if (cOUIRecyclerView7 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView7;
            }
            RecyclerView.m itemAnimator = cOUIRecyclerView.getItemAnimator();
            kotlin.jvm.internal.r.c(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
            androidx.recyclerview.widget.x xVar = (androidx.recyclerview.widget.x) itemAnimator;
            xVar.R(false);
            xVar.v(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o0(SimultaneousViewControl this$0, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!this$0.Z().l0()) {
            return false;
        }
        J(this$0, motionEvent, false, 2, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p0(SimultaneousViewControl this$0, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        J(this$0, motionEvent, false, 2, null);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(final SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            r.a aVar = n8.r.Companion;
            COUIRecyclerView cOUIRecyclerView = this$0.f6646y;
            COUIRecyclerView cOUIRecyclerView2 = null;
            if (cOUIRecyclerView == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView = null;
            }
            com.coloros.translate.ui.simultaneous.main.k kVar = this$0.D;
            if (kVar == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar = null;
            }
            cOUIRecyclerView.smoothScrollToPosition(kVar.getItemCount() - 1);
            COUIRecyclerView cOUIRecyclerView3 = this$0.f6646y;
            if (cOUIRecyclerView3 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
            } else {
                cOUIRecyclerView2 = cOUIRecyclerView3;
            }
            n8.r.m59constructorimpl(Boolean.valueOf(cOUIRecyclerView2.postDelayed(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.u
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousViewControl.r0(this.f6756a);
                }
            }, 0L)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.ui.simultaneous.main.k kVar = this$0.D;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.notifyDataSetChanged();
    }

    private final void s0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "initSelectLanguage");
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            com.coloros.translate.o oVar = new com.coloros.translate.o(simultaneousMainActivity);
            this.f6628f = oVar;
            oVar.F(this);
            com.coloros.translate.o oVar2 = this.f6628f;
            if (oVar2 != null) {
                oVar2.E(R.drawable.right_single_arrow);
            }
            LanguageChooseView languageChooseView = (LanguageChooseView) simultaneousMainActivity.findViewById(R.id.chooseLanguage);
            languageChooseView.e();
            languageChooseView.setOnFromLangeClickListener(new g());
            languageChooseView.setOnToLangeClickListener(new h());
            languageChooseView.setOnSwitchClickListener(new i());
            this.f6637p = languageChooseView;
            LanguageChooseView languageChooseView2 = (LanguageChooseView) simultaneousMainActivity.findViewById(R.id.chooseLanguage_tablet);
            languageChooseView2.e();
            languageChooseView2.setOnFromLangeClickListener(new j());
            languageChooseView2.setOnToLangeClickListener(new k());
            languageChooseView2.setOnSwitchClickListener(new l());
            this.f6638q = languageChooseView2;
            this.f6639r = a0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(SimultaneousViewControl this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.Z().F0(!this$0.Z().k0());
        l0.a.l(l0.f7130a, "simultaneous_record_switch", Boolean.valueOf(this$0.Z().k0()), false, null, 12, null);
        com.coloros.translate.utils.n.INSTANCE.D(this$0.Z().k0());
        this$0.f1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(SimultaneousViewControl this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUILinearLayoutManager cOUILinearLayoutManager = this$0.C;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        if (cOUILinearLayoutManager == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
            cOUILinearLayoutManager = null;
        }
        com.coloros.translate.ui.simultaneous.main.k kVar2 = this$0.D;
        if (kVar2 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
        } else {
            kVar = kVar2;
        }
        cOUILinearLayoutManager.scrollToPosition(kVar.i().size() - 1);
    }

    private final boolean x0() {
        return Z().l0();
    }

    private final boolean y0() {
        return Z().n0();
    }

    private final void z0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "notifyNoNetSnakeBar");
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            final COUISnackBar cOUISnackBarMake = COUISnackBar.make(simultaneousMainActivity.findViewById(R.id.rootView), simultaneousMainActivity.getString(R.string.no_network_connect), VibrateUtils.STRENGTH_MAX_STEP);
            cOUISnackBarMake.setOnAction(com.coloros.translate.base.R$string.action_setting, new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SimultaneousViewControl.A0(cOUISnackBarMake, view);
                }
            });
            cOUISnackBarMake.show();
        }
    }

    public final void B0() {
        View view = this.G;
        LottieAnimationView lottieAnimationView = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("mBottomLanguageButton");
            view = null;
        }
        view.removeCallbacks(this.L);
        this.f6632k.f();
        H0();
        LottieAnimationView lottieAnimationView2 = this.I;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            lottieAnimationView2 = null;
        }
        lottieAnimationView2.j();
        LottieAnimationView lottieAnimationView3 = this.I;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
        } else {
            lottieAnimationView = lottieAnimationView3;
        }
        LinearmotorVibrator linearMotorVibrator = VibrateUtils.getLinearMotorVibrator(lottieAnimationView.getContext());
        if (linearMotorVibrator != null) {
            linearMotorVibrator.cancelVibrate(this.K);
        }
    }

    public final void C0() {
        X().O(this, "si");
    }

    public final void D0(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "onStartAndStopAsr " + z10);
        G(this, false, 1, null);
        b bVar = this.f6627c;
        if (bVar != null) {
            bVar.x(z10);
        }
        M0();
    }

    public final void F(boolean z10) {
        if (!z10 || T()) {
            if (z10 || T()) {
                X0();
                Z().z0(false);
            } else {
                Z().G0(true);
                W0();
                Z().z0(true);
            }
            Q0(x0());
            U0(x0());
            T0();
            S0(x0());
            Q();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void H() {
        /*
            r5 = this;
            com.coloros.translate.utils.j$a r0 = com.coloros.translate.utils.j.f7127a
            r1 = 0
            r3 = 1
            r4 = 0
            boolean r0 = com.coloros.translate.utils.j.a.c(r0, r1, r3, r4)
            if (r0 != 0) goto L28
            boolean r0 = r5.x0()
            if (r0 == 0) goto L24
            android.view.View r0 = r5.f6631j
            if (r0 != 0) goto L1c
            java.lang.String r0 = "topLanguageToolLay"
            kotlin.jvm.internal.r.r(r0)
            r0 = r4
        L1c:
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L24
            r0 = r3
            goto L25
        L24:
            r0 = 0
        L25:
            r5.e0(r0, r3)
        L28:
            E(r5, r1, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.simultaneous.main.SimultaneousViewControl.H():void");
    }

    public final void I0() {
        Z().G0(false);
        X0();
        Z().z0(false);
        Q0(x0());
        U0(x0());
        T0();
        S0(x0());
        f0(this, false, false, 2, null);
        this.F = false;
    }

    public final void J0(w8.a animationEndCallBack) {
        COUIRecyclerView cOUIRecyclerView;
        View view;
        Menu menu;
        kotlin.jvm.internal.r.e(animationEndCallBack, "animationEndCallBack");
        TextView textView = this.f6633l;
        if (textView == null) {
            kotlin.jvm.internal.r.r("recordStatus");
            textView = null;
        }
        textView.setVisibility(8);
        com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
        COUIRecyclerView cOUIRecyclerView2 = this.f6646y;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mBottomRecycleView");
            cOUIRecyclerView = null;
        } else {
            cOUIRecyclerView = cOUIRecyclerView2;
        }
        View view2 = this.f6647z;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("emptyTextView");
            view = null;
        } else {
            view = view2;
        }
        RadioButton radioButton = this.f6629h;
        kotlin.jvm.internal.r.b(radioButton);
        iVar.p(cOUIRecyclerView, view, radioButton, true, kotlin.jvm.internal.r.a(this.f6638q, this.f6639r), animationEndCallBack);
        COUIToolbar cOUIToolbar = this.f6634m;
        if (cOUIToolbar == null || (menu = cOUIToolbar.getMenu()) == null) {
            return;
        }
        com.coloros.translate.ui.simultaneous.main.i iVar2 = this.f6632k;
        MenuItem menuItemFindItem = menu.findItem(R.id.history);
        kotlin.jvm.internal.r.d(menuItemFindItem, "findItem(...)");
        com.coloros.translate.ui.simultaneous.main.i.r(iVar2, menuItemFindItem, this.f6636o, true, null, 8, null);
    }

    public final void L0(boolean z10) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "restorePlayStatus isPlay " + z10);
        try {
            r.a aVar = n8.r.Companion;
            SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
            View view = null;
            if (simultaneousMainActivity != null) {
                View view2 = this.G;
                if (view2 == null) {
                    kotlin.jvm.internal.r.r("mBottomLanguageButton");
                } else {
                    view = view2;
                }
                view.postDelayed(this.L, 500L);
            } else {
                simultaneousMainActivity = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(simultaneousMainActivity);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "restorePlayStatus error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void M() {
        if (this.f6626b != null) {
            K();
        } else {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "viewModel Initialized error");
        }
    }

    public final void M0() {
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "sendNotification " + x0() + " " + T());
            if (x0()) {
                if (T()) {
                    com.coloros.translate.ui.simultaneous.utils.c cVar = com.coloros.translate.ui.simultaneous.utils.c.INSTANCE;
                    Context applicationContext = simultaneousMainActivity.getApplicationContext();
                    kotlin.jvm.internal.r.d(applicationContext, "getApplicationContext(...)");
                    cVar.b(applicationContext, R.string.simultaneous_notify_desc);
                    return;
                }
                com.coloros.translate.ui.simultaneous.utils.c cVar2 = com.coloros.translate.ui.simultaneous.utils.c.INSTANCE;
                Context applicationContext2 = simultaneousMainActivity.getApplicationContext();
                kotlin.jvm.internal.r.d(applicationContext2, "getApplicationContext(...)");
                cVar2.b(applicationContext2, R.string.simultaneous_notify_mic_pause);
            }
        }
    }

    public final void N0(b bVar) {
        this.f6627c = bVar;
    }

    public final void O(boolean z10) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "earControlBtn isPlaying " + z10);
        try {
            r.a aVar = n8.r.Companion;
            SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
            LottieAnimationView lottieAnimationView = null;
            if (simultaneousMainActivity != null) {
                LottieAnimationView lottieAnimationView2 = this.I;
                if (lottieAnimationView2 == null) {
                    kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                } else {
                    lottieAnimationView = lottieAnimationView2;
                }
                lottieAnimationView.postDelayed(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimultaneousViewControl.P(this.f6653a);
                    }
                }, 500L);
            } else {
                simultaneousMainActivity = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(simultaneousMainActivity);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "earControlBtn error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void O0(SimultaneousMainActivity simultaneousMainActivity) {
        this.f6625a = simultaneousMainActivity;
    }

    public final void P0(com.coloros.translate.ui.simultaneous.main.m mVar) {
        kotlin.jvm.internal.r.e(mVar, "<set-?>");
        this.f6626b = mVar;
    }

    public final void R() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "enableSaveBtn");
        View view = this.f6636o;
        if (view == null) {
            return;
        }
        Boolean bool = (Boolean) Z().m0().e();
        view.setEnabled(bool == null ? false : bool.booleanValue());
    }

    public final LanguageChooseView V() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "getLanguageChoose");
        return this.f6637p;
    }

    public final void V0(boolean z10) {
        if (!kotlin.jvm.internal.r.a(Z().m0().e(), Boolean.TRUE)) {
            com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "showSaveDialog finish");
            if (x0()) {
                b bVar = this.f6627c;
                if (bVar != null) {
                    bVar.u(false, true);
                    return;
                }
                return;
            }
            b bVar2 = this.f6627c;
            if (bVar2 != null) {
                bVar2.u(false, true);
                return;
            }
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "showSaveDialog isFinish " + z10 + " " + T());
        b bVar3 = this.f6627c;
        if (bVar3 != null) {
            bVar3.u(true, z10);
        }
        com.coloros.translate.utils.n.INSTANCE.z();
    }

    public final LanguageChooseView W() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "getLanguageChooseTablet");
        return this.f6638q;
    }

    public final b Y() {
        return this.f6627c;
    }

    public final void Y0() {
        Q();
        COUILinearLayoutManager cOUILinearLayoutManager = this.C;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        if (cOUILinearLayoutManager == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
            cOUILinearLayoutManager = null;
        }
        if (cOUILinearLayoutManager == null) {
            cOUILinearLayoutManager = null;
        }
        if (cOUILinearLayoutManager != null) {
            cOUILinearLayoutManager.setStackFromEnd(true);
            com.coloros.translate.ui.simultaneous.main.k kVar2 = this.D;
            if (kVar2 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar2 = null;
            }
            cOUILinearLayoutManager.scrollToPosition(kVar2.getItemCount() - 1);
            COUIRecyclerView cOUIRecyclerView = this.f6646y;
            if (cOUIRecyclerView == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
                cOUIRecyclerView = null;
            }
            cOUIRecyclerView.postDelayed(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.f0
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousViewControl.Z0(this.f6668a);
                }
            }, 0L);
        }
        com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
        if (kVar3 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
        } else {
            kVar = kVar3;
        }
        kVar.notifyDataSetChanged();
    }

    public final com.coloros.translate.ui.simultaneous.main.m Z() {
        com.coloros.translate.ui.simultaneous.main.m mVar = this.f6626b;
        if (mVar != null) {
            return mVar;
        }
        kotlin.jvm.internal.r.r("viewModel");
        return null;
    }

    @Override // com.coloros.translate.o.c
    public void a(boolean z10) {
        E(this, 0L, 1, null);
    }

    public final void a1(long j10) {
        com.coloros.translate.ui.simultaneous.main.k kVar = this.D;
        com.coloros.translate.ui.simultaneous.main.k kVar2 = null;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        if (!kVar.g()) {
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            kVar3.s(0L);
            com.coloros.translate.ui.simultaneous.main.k kVar4 = this.D;
            if (kVar4 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
            } else {
                kVar2 = kVar4;
            }
            kVar2.notifyDataSetChanged();
            return;
        }
        com.coloros.translate.ui.simultaneous.main.k kVar5 = this.D;
        if (kVar5 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar5 = null;
        }
        if (kVar5.h() >= 0) {
            com.coloros.translate.ui.simultaneous.main.k kVar6 = this.D;
            if (kVar6 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar6 = null;
            }
            com.coloros.translate.ui.simultaneous.main.k kVar7 = this.D;
            if (kVar7 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar7 = null;
            }
            kVar6.u(kVar7.h());
            com.coloros.translate.ui.simultaneous.main.k kVar8 = this.D;
            if (kVar8 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar8 = null;
            }
            Iterator it = kVar8.i().iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                o2.a aVar = (o2.a) it.next();
                com.coloros.translate.ui.simultaneous.main.k kVar9 = this.D;
                if (kVar9 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    kVar9 = null;
                }
                if (kVar9.j() == aVar.d()) {
                    break;
                } else {
                    i10++;
                }
            }
            com.coloros.translate.ui.simultaneous.main.k kVar10 = this.D;
            if (kVar10 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar10 = null;
            }
            kVar10.s(j10);
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            com.coloros.translate.ui.simultaneous.main.k kVar11 = this.D;
            if (kVar11 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar11 = null;
            }
            aVar2.d("SimultaneousViewControl", "updateCurrentHeightLightMsgId old:" + kVar11.j() + " new:" + j10);
            com.coloros.translate.ui.simultaneous.main.k kVar12 = this.D;
            if (kVar12 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
            } else {
                kVar2 = kVar12;
            }
            kVar2.notifyItemChanged(i10, -99);
        }
    }

    public final void b0() {
        this.F = true;
        COUIFloatingButton cOUIFloatingButton = this.A;
        AppCompatImageView mainFloatingButton = cOUIFloatingButton != null ? cOUIFloatingButton.getMainFloatingButton() : null;
        if (mainFloatingButton == null) {
            return;
        }
        mainFloatingButton.setVisibility(8);
    }

    public final void b1(long j10) {
        com.coloros.translate.ui.simultaneous.main.k kVar = this.D;
        com.coloros.translate.ui.simultaneous.main.k kVar2 = null;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.r(j10);
        com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
        if (kVar3 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
        } else {
            kVar2 = kVar3;
        }
        kVar2.p(T());
    }

    public final void c1(int i10) {
        COUIFloatingButton cOUIFloatingButton;
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        AppCompatImageView mainFloatingButton;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        COUIRecyclerView cOUIRecyclerView = null;
        if (this.E || !((cOUIFloatingButton = this.A) == null || (mainFloatingButton = cOUIFloatingButton.getMainFloatingButton()) == null || mainFloatingButton.getVisibility() != 0)) {
            if (this.E && U()) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "updateDataItem isTouchMove reject");
            } else {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "updateDataItem isTouchMove update");
                com.coloros.translate.ui.simultaneous.main.k kVar2 = this.D;
                if (kVar2 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                } else {
                    kVar = kVar2;
                }
                kVar.notifyDataSetChanged();
            }
            Q();
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            kVar3.notifyItemChanged(i10, Integer.valueOf(i10));
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "updateDataItem error1:" + thM62exceptionOrNullimpl.getMessage());
        }
        try {
            COUIRecyclerView cOUIRecyclerView2 = this.f6646y;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mBottomRecycleView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView2;
            }
            objM59constructorimpl2 = n8.r.m59constructorimpl(Boolean.valueOf(cOUIRecyclerView.post(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.p
                @Override // java.lang.Runnable
                public final void run() {
                    SimultaneousViewControl.d1(this.f6750a);
                }
            })));
        } catch (Throwable th2) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
        }
        Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
        if (thM62exceptionOrNullimpl2 != null) {
            com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "updateDataItem error2:" + thM62exceptionOrNullimpl2.getMessage());
        }
        Q();
    }

    public final void d0(List value) {
        kotlin.jvm.internal.r.e(value, "value");
        com.coloros.translate.ui.simultaneous.main.k kVar = this.D;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.t(value);
    }

    public final void g1(int i10) {
        if (x0()) {
            S(i10);
        }
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "onLanguageChanged");
        com.coloros.translate.b bVarM = X().m();
        com.coloros.translate.b bVarO = X().o();
        LanguageChooseView languageChooseView = this.f6637p;
        if (languageChooseView != null) {
            languageChooseView.setFromLanguage(bVarM.getFullNameResId());
        }
        LanguageChooseView languageChooseView2 = this.f6637p;
        if (languageChooseView2 != null) {
            languageChooseView2.setToLanguage(bVarO.getFullNameResId());
        }
        LanguageChooseView languageChooseView3 = this.f6638q;
        if (languageChooseView3 != null) {
            languageChooseView3.setFromLanguage(bVarM.getFullNameResId());
        }
        LanguageChooseView languageChooseView4 = this.f6638q;
        if (languageChooseView4 != null) {
            languageChooseView4.setToLanguage(bVarO.getFullNameResId());
        }
        this.f6641t = bVarM;
        this.f6642u = bVarO;
        boolean zG0 = Z().g0(this.f6641t.getLanguageCode(), this.f6642u.getLanguageCode());
        b bVar = this.f6627c;
        if (bVar != null) {
            bVar.l(this.f6641t, this.f6642u);
        }
        com.coloros.translate.ui.simultaneous.main.k kVar = this.D;
        com.coloros.translate.ui.simultaneous.main.k kVar2 = null;
        if (kVar == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            kVar = null;
        }
        kVar.q(com.coloros.translate.repository.local.a.INSTANCE.a(this.f6641t.getLanguageCode() + this.f6642u.getLanguageCode()));
        if (zG0) {
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            kVar3.o();
            com.coloros.translate.ui.simultaneous.main.k kVar4 = this.D;
            if (kVar4 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
            } else {
                kVar2 = kVar4;
            }
            kVar2.notifyDataSetChanged();
            Z().D();
        }
    }

    public final void t0() {
        com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "initView");
        g0();
        SimultaneousMainActivity simultaneousMainActivity = this.f6625a;
        if (simultaneousMainActivity != null) {
            View viewFindViewById = simultaneousMainActivity.findViewById(R.id.asrSpeakLottie);
            kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
            ImageView imageView = (ImageView) viewFindViewById;
            this.H = imageView;
            com.coloros.translate.ui.simultaneous.main.i iVar = this.f6632k;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("mAsrSpeakLottie");
                imageView = null;
            }
            iVar.k(imageView);
            View viewFindViewById2 = simultaneousMainActivity.findViewById(R.id.topLanguageToolLay);
            kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
            this.f6631j = viewFindViewById2;
            RadioButton radioButton = (RadioButton) simultaneousMainActivity.findViewById(R.id.recordSwitch);
            this.f6629h = radioButton;
            if (radioButton != null) {
                this.f6632k.g(radioButton);
            }
            RadioButton radioButton2 = this.f6629h;
            if (radioButton2 != null) {
                radioButton2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.simultaneous.main.b0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SimultaneousViewControl.u0(this.f6655a, view);
                    }
                });
            }
        }
        this.F = false;
        n0();
        s0();
        k0();
        m0();
        X0();
        Q0(x0());
        U0(x0());
        T0();
        f1();
        S0(x0());
        R();
        B();
    }

    public final void v0(int i10) {
        COUIFloatingButton cOUIFloatingButton;
        Object objM59constructorimpl;
        AppCompatImageView mainFloatingButton;
        com.coloros.translate.ui.simultaneous.main.k kVar = null;
        COUIRecyclerView cOUIRecyclerView = null;
        if (this.E || !((cOUIFloatingButton = this.A) == null || (mainFloatingButton = cOUIFloatingButton.getMainFloatingButton()) == null || mainFloatingButton.getVisibility() != 0)) {
            if (this.E && U()) {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "insertData isTouchMove reject");
            } else {
                com.coloros.translate.utils.c0.f7098a.d("SimultaneousViewControl", "insertData isTouchMove update");
                com.coloros.translate.ui.simultaneous.main.k kVar2 = this.D;
                if (kVar2 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                } else {
                    kVar = kVar2;
                }
                kVar.notifyDataSetChanged();
            }
            Q();
            return;
        }
        if (i10 == 0) {
            Y0();
        } else {
            com.coloros.translate.ui.simultaneous.main.k kVar3 = this.D;
            if (kVar3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar3 = null;
            }
            kVar3.notifyItemChanged(i10);
            Q();
        }
        int i11 = i10 - 1;
        if (i11 >= 0) {
            com.coloros.translate.ui.simultaneous.main.k kVar4 = this.D;
            if (kVar4 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                kVar4 = null;
            }
            kVar4.notifyItemChanged(i11, -1);
            try {
                r.a aVar = n8.r.Companion;
                COUIRecyclerView cOUIRecyclerView2 = this.f6646y;
                if (cOUIRecyclerView2 == null) {
                    kotlin.jvm.internal.r.r("mBottomRecycleView");
                } else {
                    cOUIRecyclerView = cOUIRecyclerView2;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(cOUIRecyclerView.post(new Runnable() { // from class: com.coloros.translate.ui.simultaneous.main.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        SimultaneousViewControl.w0(this.f6759a);
                    }
                })));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("SimultaneousViewControl", "updateDataItem error2:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }
}
