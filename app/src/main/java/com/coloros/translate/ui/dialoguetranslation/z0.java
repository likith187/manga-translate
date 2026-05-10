package com.coloros.translate.ui.dialoguetranslation;

import android.animation.Animator;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.repository.d;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.support.dialog.R$anim;
import g2.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class z0 extends Fragment implements com.coloros.translate.d {
    public static final a P = new a(null);
    private TextView A;
    private ImageView B;
    private LottieAnimationView C;
    private ImageView D;
    private COUIRecyclerView E;
    private COUIRecyclerView F;
    private a1 G;
    private a1 H;
    private COUILinearLayoutManager I;
    private COUILinearLayoutManager J;
    private ImageView K;
    private TextView L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Vibrator f6369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6370c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6371f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f6373i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ViewGroup f6376l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.coloros.translate.o f6377m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f6379o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f6380p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f6381q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f6382r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ImageView f6383s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f6384t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f6385u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f6386v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private LottieAnimationView f6387w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f6388x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TextView f6389y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private TextView f6390z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6368a = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6372h = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.coloros.translate.b f6374j = com.coloros.translate.b.ENGLISH;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.coloros.translate.b f6375k = com.coloros.translate.b.CHINESE;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.coloros.translate.ui.simultaneous.main.i f6378n = new com.coloros.translate.ui.simultaneous.main.i();
    private final n8.j M = n8.k.b(h.INSTANCE);
    private final k N = new k();
    private final n8.j O = n8.k.b(new i());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {
        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            TextView textView = null;
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "addItem :" + (conversation != null ? Boolean.valueOf(conversation.isLeft()) : null));
            if (conversation == null) {
                return;
            }
            if (conversation.isLeft()) {
                if (conversation.getToText().length() > 0) {
                    int iIndexOf = z0.this.H().Y().indexOf(conversation);
                    if (iIndexOf < 0) {
                        return;
                    }
                    a1 a1Var = z0.this.G;
                    if (a1Var == null) {
                        kotlin.jvm.internal.r.r("mTopAdapter");
                        a1Var = null;
                    }
                    a1Var.h(iIndexOf, conversation);
                    a1 a1Var2 = z0.this.G;
                    if (a1Var2 == null) {
                        kotlin.jvm.internal.r.r("mTopAdapter");
                        a1Var2 = null;
                    }
                    int iIndexOf2 = a1Var2.f().indexOf(conversation);
                    z0 z0Var = z0.this;
                    COUIRecyclerView cOUIRecyclerView = z0Var.E;
                    if (cOUIRecyclerView == null) {
                        kotlin.jvm.internal.r.r("mUpperRecyclerView");
                        cOUIRecyclerView = null;
                    }
                    z0Var.F(cOUIRecyclerView, iIndexOf2);
                } else {
                    int iIndexOf3 = z0.this.H().N().indexOf(conversation);
                    if (iIndexOf3 < 0) {
                        return;
                    }
                    a1 a1Var3 = z0.this.H;
                    if (a1Var3 == null) {
                        kotlin.jvm.internal.r.r("mBottomAdapter");
                        a1Var3 = null;
                    }
                    a1Var3.h(iIndexOf3, conversation);
                    a1 a1Var4 = z0.this.H;
                    if (a1Var4 == null) {
                        kotlin.jvm.internal.r.r("mBottomAdapter");
                        a1Var4 = null;
                    }
                    int iIndexOf4 = a1Var4.f().indexOf(conversation);
                    z0 z0Var2 = z0.this;
                    COUIRecyclerView cOUIRecyclerView2 = z0Var2.F;
                    if (cOUIRecyclerView2 == null) {
                        kotlin.jvm.internal.r.r("mLowerRecyclerView");
                        cOUIRecyclerView2 = null;
                    }
                    z0Var2.F(cOUIRecyclerView2, iIndexOf4);
                }
            } else if (conversation.getToText().length() > 0) {
                int iIndexOf5 = z0.this.H().N().indexOf(conversation);
                if (iIndexOf5 < 0) {
                    return;
                }
                a1 a1Var5 = z0.this.H;
                if (a1Var5 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    a1Var5 = null;
                }
                a1Var5.h(iIndexOf5, conversation);
                a1 a1Var6 = z0.this.H;
                if (a1Var6 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    a1Var6 = null;
                }
                int iIndexOf6 = a1Var6.f().indexOf(conversation);
                z0 z0Var3 = z0.this;
                COUIRecyclerView cOUIRecyclerView3 = z0Var3.F;
                if (cOUIRecyclerView3 == null) {
                    kotlin.jvm.internal.r.r("mLowerRecyclerView");
                    cOUIRecyclerView3 = null;
                }
                z0Var3.F(cOUIRecyclerView3, iIndexOf6);
            } else {
                int iIndexOf7 = z0.this.H().Y().indexOf(conversation);
                if (iIndexOf7 < 0) {
                    return;
                }
                a1 a1Var7 = z0.this.G;
                if (a1Var7 == null) {
                    kotlin.jvm.internal.r.r("mTopAdapter");
                    a1Var7 = null;
                }
                a1Var7.h(iIndexOf7, conversation);
                a1 a1Var8 = z0.this.G;
                if (a1Var8 == null) {
                    kotlin.jvm.internal.r.r("mTopAdapter");
                    a1Var8 = null;
                }
                int iIndexOf8 = a1Var8.f().indexOf(conversation);
                z0 z0Var4 = z0.this;
                COUIRecyclerView cOUIRecyclerView4 = z0Var4.E;
                if (cOUIRecyclerView4 == null) {
                    kotlin.jvm.internal.r.r("mUpperRecyclerView");
                    cOUIRecyclerView4 = null;
                }
                z0Var4.F(cOUIRecyclerView4, iIndexOf8);
            }
            if (z0.this.H().K()) {
                TextView textView2 = z0.this.L;
                if (textView2 == null) {
                    kotlin.jvm.internal.r.r("aiSignTextView");
                } else {
                    textView = textView2;
                }
                textView.setVisibility(0);
            }
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        c() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "remove item:" + conversation);
            if (conversation == null) {
                return;
            }
            COUIRecyclerView cOUIRecyclerView = null;
            if (conversation.isLeft()) {
                a1 a1Var = z0.this.H;
                if (a1Var == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    a1Var = null;
                }
                a1Var.n(conversation);
                a1 a1Var2 = z0.this.H;
                if (a1Var2 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    a1Var2 = null;
                }
                int itemCount = a1Var2.getItemCount() - 1;
                if (itemCount < 0) {
                    return;
                }
                z0 z0Var = z0.this;
                COUIRecyclerView cOUIRecyclerView2 = z0Var.F;
                if (cOUIRecyclerView2 == null) {
                    kotlin.jvm.internal.r.r("mLowerRecyclerView");
                } else {
                    cOUIRecyclerView = cOUIRecyclerView2;
                }
                z0Var.F(cOUIRecyclerView, itemCount);
                return;
            }
            a1 a1Var3 = z0.this.G;
            if (a1Var3 == null) {
                kotlin.jvm.internal.r.r("mTopAdapter");
                a1Var3 = null;
            }
            a1Var3.n(conversation);
            a1 a1Var4 = z0.this.G;
            if (a1Var4 == null) {
                kotlin.jvm.internal.r.r("mTopAdapter");
                a1Var4 = null;
            }
            int itemCount2 = a1Var4.getItemCount() - 1;
            if (itemCount2 < 0) {
                return;
            }
            z0 z0Var2 = z0.this;
            COUIRecyclerView cOUIRecyclerView3 = z0Var2.E;
            if (cOUIRecyclerView3 == null) {
                kotlin.jvm.internal.r.r("mUpperRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView3;
            }
            z0Var2.F(cOUIRecyclerView, itemCount2);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            if (conversation == null) {
                return;
            }
            a1 a1Var = null;
            if (conversation.isLeft() && conversation.getFromText().length() > 0) {
                a1 a1Var2 = z0.this.H;
                if (a1Var2 == null) {
                    kotlin.jvm.internal.r.r("mBottomAdapter");
                    a1Var2 = null;
                }
                a1Var2.m(conversation);
            }
            if (conversation.isLeft() || conversation.getToText().length() <= 0) {
                return;
            }
            a1 a1Var3 = z0.this.H;
            if (a1Var3 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
            } else {
                a1Var = a1Var3;
            }
            a1Var.m(conversation);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {
        e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            if (conversation == null) {
                return;
            }
            a1 a1Var = null;
            if (conversation.isLeft() && conversation.getToText().length() > 0) {
                a1 a1Var2 = z0.this.G;
                if (a1Var2 == null) {
                    kotlin.jvm.internal.r.r("mTopAdapter");
                    a1Var2 = null;
                }
                a1Var2.m(conversation);
            }
            if (conversation.isLeft() || conversation.getFromText().length() <= 0) {
                return;
            }
            a1 a1Var3 = z0.this.G;
            if (a1Var3 == null) {
                kotlin.jvm.internal.r.r("mTopAdapter");
            } else {
                a1Var = a1Var3;
            }
            a1Var.m(conversation);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((n8.q) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(n8.q qVar) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "mCurrentTtsItemIndexStatus" + qVar);
            if (((Number) qVar.getFirst()).longValue() < 0) {
                return;
            }
            z0.this.M(((Boolean) qVar.getSecond()).booleanValue());
            if (((Boolean) qVar.getSecond()).booleanValue() || !kotlin.jvm.internal.r.a(z0.this.H().M().e(), Boolean.TRUE)) {
                return;
            }
            z0.this.M(true);
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.l {
        g() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "mAsrRunning:" + bool + " mIsReadyToPlay" + z0.this.H().Q() + " mIsStopByManual" + z0.this.H().S());
            if (bool == null) {
                return;
            }
            z0.this.M(bool.booleanValue());
            if (bool.booleanValue() || z0.this.H().S()) {
                return;
            }
            z0.this.b0();
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.a {
        public static final h INSTANCE = new h();

        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final c1 mo8invoke() {
            return (c1) androidx.lifecycle.v0.a(z0.this).b(c1.class);
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        final /* synthetic */ w8.l $observer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(w8.l lVar) {
            super(1);
            this.$observer = lVar;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m9invoke(obj);
            return n8.h0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m9invoke(Object obj) {
            this.$observer.invoke(obj);
        }
    }

    public static final class k implements a.InterfaceC0143a {
        k() {
        }

        @Override // g2.a.InterfaceC0143a
        public void onCallStateChanged(int i10) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslateFragment", "onCallStateChanged: " + i10);
            if (i10 == 1 || i10 == 2) {
                aVar.d("FaceToFaceTranslateFragment", "Phone call detected, stopping TTS");
                z0.this.H().o0();
                n8.q qVar = (n8.q) z0.this.H().O().e();
                if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
                    return;
                }
                z0.this.H().O().k(new n8.q(qVar.getFirst(), Boolean.FALSE));
            }
        }
    }

    static final class l implements androidx.lifecycle.b0, kotlin.jvm.internal.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ w8.l f6392a;

        l(w8.l function) {
            kotlin.jvm.internal.r.e(function, "function");
            this.f6392a = function;
        }

        @Override // kotlin.jvm.internal.l
        public final n8.g a() {
            return this.f6392a;
        }

        @Override // androidx.lifecycle.b0
        public final /* synthetic */ void b(Object obj) {
            this.f6392a.invoke(obj);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.lifecycle.b0) && (obj instanceof kotlin.jvm.internal.l)) {
                return kotlin.jvm.internal.r.a(a(), ((kotlin.jvm.internal.l) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }
    }

    public static final class m implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LottieAnimationView f6393a;

        m(LottieAnimationView lottieAnimationView) {
            this.f6393a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6393a.B(232, 298);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    public static final class n implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LottieAnimationView f6394a;

        n(LottieAnimationView lottieAnimationView) {
            this.f6394a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6394a.setMinFrame(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6394a.setMinFrame(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    private final void B() {
        if (com.coloros.translate.utils.o0.e()) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.face_to_face_layout_tablet_padding_horizontal);
            View view = this.f6379o;
            if (view == null) {
                kotlin.jvm.internal.r.r("mView");
                view = null;
            }
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.simultaneous_panel);
            viewGroup.setPadding(dimensionPixelOffset, viewGroup.getPaddingTop(), dimensionPixelOffset, viewGroup.getPaddingBottom());
        }
    }

    private final void C() {
        LottieAnimationView lottieAnimationView = this.C;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
            lottieAnimationView = null;
        }
        if (lottieAnimationView.q()) {
            c0();
        } else {
            f0();
        }
    }

    private final void D() {
        LottieAnimationView lottieAnimationView = this.f6387w;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
            lottieAnimationView = null;
        }
        if (lottieAnimationView.q()) {
            d0();
        } else {
            i0();
        }
    }

    private final boolean E() {
        FragmentActivity activity = getActivity();
        TextView textView = null;
        FaceToFaceTranslateActivity faceToFaceTranslateActivity = activity instanceof FaceToFaceTranslateActivity ? (FaceToFaceTranslateActivity) activity : null;
        if (faceToFaceTranslateActivity != null && faceToFaceTranslateActivity.j0()) {
            return false;
        }
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        if (!aVar.b()) {
            return false;
        }
        Vibrator vibrator = this.f6369b;
        if (vibrator != null) {
            vibrator.vibrate(30L);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - this.f6373i) < 600) {
            return false;
        }
        this.f6373i = jCurrentTimeMillis;
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            LottieAnimationView lottieAnimationView = this.f6387w;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
                lottieAnimationView = null;
            }
            if (!lottieAnimationView.q()) {
                LottieAnimationView lottieAnimationView2 = this.C;
                if (lottieAnimationView2 == null) {
                    kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
                    lottieAnimationView2 = null;
                }
                if (!lottieAnimationView2.q()) {
                    com.coloros.translate.utils.w.h(R.string.no_network, 0, 2, null);
                    return false;
                }
            }
        }
        if (!aVar.e().C()) {
            return false;
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null && com.coloros.translate.permission.a.f5407c.a().d(activity2)) {
            return false;
        }
        TextView textView2 = this.A;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mToTipsView");
            textView2 = null;
        }
        textView2.setVisibility(8);
        TextView textView3 = this.f6390z;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mBottomTipsView");
        } else {
            textView = textView3;
        }
        textView.setVisibility(8);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(COUIRecyclerView cOUIRecyclerView, int i10) {
        if (i10 < 0 || cOUIRecyclerView.getChildCount() == 0) {
            return;
        }
        RecyclerView.p layoutManager = cOUIRecyclerView.getLayoutManager();
        COUILinearLayoutManager cOUILinearLayoutManager = layoutManager instanceof COUILinearLayoutManager ? (COUILinearLayoutManager) layoutManager : null;
        if (cOUILinearLayoutManager != null) {
            cOUILinearLayoutManager.scrollToPositionWithOffset(i10, -cOUIRecyclerView.getChildAt(cOUIRecyclerView.getChildCount() - 1).getHeight());
        }
    }

    private final LanguageManager G() {
        return (LanguageManager) this.M.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c1 H() {
        return (c1) this.O.getValue();
    }

    private final View I(ViewGroup viewGroup) {
        int i10;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getActivity());
        if (this.f6368a) {
            this.f6372h = true;
            i10 = R.layout.face_to_face_fragment_layout_portrait;
        } else {
            this.f6372h = false;
            i10 = R.layout.face_to_face_fragment_layout_landscape;
        }
        View viewInflate = layoutInflaterFrom.inflate(i10, viewGroup, false);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        return viewInflate;
    }

    private final void J() {
        View view = this.f6379o;
        View view2 = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("mView");
            view = null;
        }
        View viewFindViewById = view.findViewById(R.id.topLanguageButton);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6381q = viewFindViewById;
        View view3 = this.f6379o;
        if (view3 == null) {
            kotlin.jvm.internal.r.r("mView");
            view3 = null;
        }
        View viewFindViewById2 = view3.findViewById(R.id.bottomLanguageButton);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6382r = viewFindViewById2;
        View view4 = this.f6379o;
        if (view4 == null) {
            kotlin.jvm.internal.r.r("mView");
            view4 = null;
        }
        View viewFindViewById3 = view4.findViewById(R.id.topButtonSpeakLottie);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6387w = (LottieAnimationView) viewFindViewById3;
        View view5 = this.f6379o;
        if (view5 == null) {
            kotlin.jvm.internal.r.r("mView");
            view5 = null;
        }
        View viewFindViewById4 = view5.findViewById(R.id.topButtonSpeakIcon);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById4;
        this.B = imageView;
        com.coloros.translate.ui.simultaneous.main.i iVar = this.f6378n;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView = null;
        }
        iVar.g(imageView);
        View view6 = this.f6379o;
        if (view6 == null) {
            kotlin.jvm.internal.r.r("mView");
            view6 = null;
        }
        View viewFindViewById5 = view6.findViewById(R.id.bottomButtonSpeakLottie);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.C = (LottieAnimationView) viewFindViewById5;
        View view7 = this.f6379o;
        if (view7 == null) {
            kotlin.jvm.internal.r.r("mView");
            view7 = null;
        }
        View viewFindViewById6 = view7.findViewById(R.id.bottomButtonSpeakIcon);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        ImageView imageView2 = (ImageView) viewFindViewById6;
        this.D = imageView2;
        com.coloros.translate.ui.simultaneous.main.i iVar2 = this.f6378n;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView2 = null;
        }
        iVar2.g(imageView2);
        View view8 = this.f6379o;
        if (view8 == null) {
            kotlin.jvm.internal.r.r("mView");
            view8 = null;
        }
        View viewFindViewById7 = view8.findViewById(R.id.recording_tips_top);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.f6388x = (TextView) viewFindViewById7;
        View view9 = this.f6379o;
        if (view9 == null) {
            kotlin.jvm.internal.r.r("mView");
            view9 = null;
        }
        View viewFindViewById8 = view9.findViewById(R.id.recording_tips_bottom);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        this.f6389y = (TextView) viewFindViewById8;
        View view10 = this.f6379o;
        if (view10 == null) {
            kotlin.jvm.internal.r.r("mView");
            view10 = null;
        }
        View viewFindViewById9 = view10.findViewById(R.id.language_choose_from);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.f6385u = (TextView) viewFindViewById9;
        View view11 = this.f6379o;
        if (view11 == null) {
            kotlin.jvm.internal.r.r("mView");
            view11 = null;
        }
        View viewFindViewById10 = view11.findViewById(R.id.language_choose_to);
        kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(...)");
        this.f6386v = (TextView) viewFindViewById10;
        View view12 = this.f6379o;
        if (view12 == null) {
            kotlin.jvm.internal.r.r("mView");
            view12 = null;
        }
        View viewFindViewById11 = view12.findViewById(R.id.top_tips);
        kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(...)");
        this.A = (TextView) viewFindViewById11;
        View view13 = this.f6379o;
        if (view13 == null) {
            kotlin.jvm.internal.r.r("mView");
            view13 = null;
        }
        View viewFindViewById12 = view13.findViewById(R.id.down_tips);
        kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(...)");
        this.f6390z = (TextView) viewFindViewById12;
        if (!H().Y().isEmpty() || !H().N().isEmpty()) {
            TextView textView = this.A;
            if (textView == null) {
                kotlin.jvm.internal.r.r("mToTipsView");
                textView = null;
            }
            textView.setVisibility(8);
            TextView textView2 = this.f6390z;
            if (textView2 == null) {
                kotlin.jvm.internal.r.r("mBottomTipsView");
                textView2 = null;
            }
            textView2.setVisibility(8);
        }
        View view14 = this.f6379o;
        if (view14 == null) {
            kotlin.jvm.internal.r.r("mView");
            view14 = null;
        }
        View viewFindViewById13 = view14.findViewById(R.id.auto_play);
        kotlin.jvm.internal.r.d(viewFindViewById13, "findViewById(...)");
        this.f6383s = (ImageView) viewFindViewById13;
        View view15 = this.f6379o;
        if (view15 == null) {
            kotlin.jvm.internal.r.r("mView");
            view15 = null;
        }
        View viewFindViewById14 = view15.findViewById(R.id.back);
        kotlin.jvm.internal.r.d(viewFindViewById14, "findViewById(...)");
        this.f6384t = viewFindViewById14;
        View view16 = this.f6379o;
        if (view16 == null) {
            kotlin.jvm.internal.r.r("mView");
        } else {
            view2 = view16;
        }
        View viewFindViewById15 = view2.findViewById(R.id.language_switch);
        kotlin.jvm.internal.r.d(viewFindViewById15, "findViewById(...)");
        this.K = (ImageView) viewFindViewById15;
    }

    private final void K() {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "initDataObserveListener :");
        N(H().L(), new b());
        N(H().W(), new c());
        N(H().U(), new d());
        N(H().V(), new e());
        N(H().O(), new f());
        N(H().M(), new g());
    }

    private final void L() {
        View view = this.f6379o;
        TextView textView = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("mView");
            view = null;
        }
        View viewFindViewById = view.findViewById(R.id.upper_recyclerview);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.E = (COUIRecyclerView) viewFindViewById;
        View view2 = this.f6379o;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mView");
            view2 = null;
        }
        View viewFindViewById2 = view2.findViewById(R.id.lower_recyclerview);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.F = (COUIRecyclerView) viewFindViewById2;
        View view3 = this.f6379o;
        if (view3 == null) {
            kotlin.jvm.internal.r.r("mView");
            view3 = null;
        }
        View viewFindViewById3 = view3.findViewById(R.id.result_sign);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        TextView textView2 = (TextView) viewFindViewById3;
        this.L = textView2;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("aiSignTextView");
            textView2 = null;
        }
        com.coloros.translate.utils.p0 p0Var = com.coloros.translate.utils.p0.TRANSLATION;
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        textView2.setText(com.coloros.translate.utils.d1.b(p0Var, context));
        COUIRecyclerView cOUIRecyclerView = this.E;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpperRecyclerView");
            cOUIRecyclerView = null;
        }
        Context context2 = this.f6380p;
        if (context2 == null) {
            kotlin.jvm.internal.r.r("mContext");
            context2 = null;
        }
        COUILinearLayoutManager cOUILinearLayoutManager = new COUILinearLayoutManager(context2, 1, false);
        this.I = cOUILinearLayoutManager;
        cOUILinearLayoutManager.setStackFromEnd(true);
        COUILinearLayoutManager cOUILinearLayoutManager2 = this.I;
        if (cOUILinearLayoutManager2 == null) {
            kotlin.jvm.internal.r.r("mTopLayoutManager");
            cOUILinearLayoutManager2 = null;
        }
        cOUIRecyclerView.setLayoutManager(cOUILinearLayoutManager2);
        Context context3 = this.f6380p;
        if (context3 == null) {
            kotlin.jvm.internal.r.r("mContext");
            context3 = null;
        }
        a1 a1Var = new a1(context3);
        a1Var.q(H());
        a1Var.p(false);
        this.G = a1Var;
        cOUIRecyclerView.setAdapter(a1Var);
        COUIRecyclerView cOUIRecyclerView2 = this.E;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mUpperRecyclerView");
            cOUIRecyclerView2 = null;
        }
        RecyclerView.m itemAnimator = cOUIRecyclerView2.getItemAnimator();
        kotlin.jvm.internal.r.c(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        androidx.recyclerview.widget.x xVar = (androidx.recyclerview.widget.x) itemAnimator;
        xVar.R(false);
        xVar.v(0L);
        COUIRecyclerView cOUIRecyclerView3 = this.F;
        if (cOUIRecyclerView3 == null) {
            kotlin.jvm.internal.r.r("mLowerRecyclerView");
            cOUIRecyclerView3 = null;
        }
        Context context4 = this.f6380p;
        if (context4 == null) {
            kotlin.jvm.internal.r.r("mContext");
            context4 = null;
        }
        COUILinearLayoutManager cOUILinearLayoutManager3 = new COUILinearLayoutManager(context4, 1, false);
        this.J = cOUILinearLayoutManager3;
        cOUILinearLayoutManager3.setStackFromEnd(true);
        COUILinearLayoutManager cOUILinearLayoutManager4 = this.J;
        if (cOUILinearLayoutManager4 == null) {
            kotlin.jvm.internal.r.r("mBottomLayoutManager");
            cOUILinearLayoutManager4 = null;
        }
        cOUIRecyclerView3.setLayoutManager(cOUILinearLayoutManager4);
        Context context5 = this.f6380p;
        if (context5 == null) {
            kotlin.jvm.internal.r.r("mContext");
            context5 = null;
        }
        a1 a1Var2 = new a1(context5);
        a1Var2.q(H());
        a1Var2.p(true);
        this.H = a1Var2;
        cOUIRecyclerView3.setAdapter(a1Var2);
        COUIRecyclerView cOUIRecyclerView4 = this.F;
        if (cOUIRecyclerView4 == null) {
            kotlin.jvm.internal.r.r("mLowerRecyclerView");
            cOUIRecyclerView4 = null;
        }
        RecyclerView.m itemAnimator2 = cOUIRecyclerView4.getItemAnimator();
        kotlin.jvm.internal.r.c(itemAnimator2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        androidx.recyclerview.widget.x xVar2 = (androidx.recyclerview.widget.x) itemAnimator2;
        xVar2.R(false);
        xVar2.v(0L);
        a1 a1Var3 = this.G;
        if (a1Var3 == null) {
            kotlin.jvm.internal.r.r("mTopAdapter");
            a1Var3 = null;
        }
        a1Var3.o(H().Y());
        a1 a1Var4 = this.H;
        if (a1Var4 == null) {
            kotlin.jvm.internal.r.r("mBottomAdapter");
            a1Var4 = null;
        }
        a1Var4.o(H().N());
        a1 a1Var5 = this.G;
        if (a1Var5 == null) {
            kotlin.jvm.internal.r.r("mTopAdapter");
            a1Var5 = null;
        }
        if (a1Var5.getItemCount() == 0) {
            a1 a1Var6 = this.H;
            if (a1Var6 == null) {
                kotlin.jvm.internal.r.r("mBottomAdapter");
                a1Var6 = null;
            }
            if (a1Var6.getItemCount() == 0) {
                return;
            }
        }
        if (H().K()) {
            TextView textView3 = this.L;
            if (textView3 == null) {
                kotlin.jvm.internal.r.r("aiSignTextView");
            } else {
                textView = textView3;
            }
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(boolean z10) {
        View view = this.f6382r;
        if (view == null) {
            kotlin.jvm.internal.r.r("mBottomLanguageButton");
            view = null;
        }
        view.setKeepScreenOn(z10);
    }

    private final void N(androidx.lifecycle.y yVar, w8.l lVar) {
        yVar.g(getViewLifecycleOwner(), new l(new j(lVar)));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void Q() {
        /*
            r3 = this;
            boolean r0 = r3.f6371f
            if (r0 == 0) goto L8
            r3.i0()
            goto Lf
        L8:
            boolean r0 = r3.f6370c
            if (r0 == 0) goto Lf
            r3.f0()
        Lf:
            com.coloros.translate.ui.dialoguetranslation.a1 r0 = r3.G
            r1 = 0
            if (r0 != 0) goto L1a
            java.lang.String r0 = "mTopAdapter"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L1a:
            int r0 = r0.getItemCount()
            if (r0 != 0) goto L44
            com.coloros.translate.ui.dialoguetranslation.a1 r0 = r3.H
            if (r0 != 0) goto L2a
            java.lang.String r0 = "mBottomAdapter"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L2a:
            int r0 = r0.getItemCount()
            if (r0 != 0) goto L44
            com.coloros.translate.ui.dialoguetranslation.c1 r0 = r3.H()
            androidx.lifecycle.a0 r0 = r0.M()
            java.lang.Object r0 = r0.e()
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            boolean r0 = kotlin.jvm.internal.r.a(r0, r2)
            if (r0 == 0) goto L79
        L44:
            android.widget.TextView r0 = r3.A
            if (r0 != 0) goto L4e
            java.lang.String r0 = "mToTipsView"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L4e:
            r2 = 8
            r0.setVisibility(r2)
            android.widget.TextView r0 = r3.f6390z
            if (r0 != 0) goto L5d
            java.lang.String r0 = "mBottomTipsView"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L5d:
            r0.setVisibility(r2)
            com.coloros.translate.ui.dialoguetranslation.c1 r0 = r3.H()
            boolean r0 = r0.K()
            if (r0 == 0) goto L79
            android.widget.TextView r0 = r3.L
            if (r0 != 0) goto L74
            java.lang.String r0 = "aiSignTextView"
            kotlin.jvm.internal.r.r(r0)
            goto L75
        L74:
            r1 = r0
        L75:
            r0 = 0
            r1.setVisibility(r0)
        L79:
            r3.g0()
            r3.h0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.dialoguetranslation.z0.Q():void");
    }

    private final void T() {
        ImageView imageView = this.f6383s;
        ImageView imageView2 = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mTtsAutoPlaySwitch");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z0.V(this.f6355a, view);
            }
        });
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        this.f6377m = new com.coloros.translate.o(context);
        TextView textView = this.f6385u;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mBottomLanguageChooseView");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z0.W(this.f6357a, view);
            }
        });
        TextView textView2 = this.f6386v;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mTopLanguageChooseView");
            textView2 = null;
        }
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z0.X(this.f6359a, view);
            }
        });
        View view = this.f6384t;
        if (view == null) {
            kotlin.jvm.internal.r.r("mBackView");
            view = null;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                z0.Y(this.f6361a, view2);
            }
        });
        ImageView imageView3 = this.B;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView3 = null;
        }
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws RemoteException {
                z0.Z(this.f6363a, view2);
            }
        });
        ImageView imageView4 = this.D;
        if (imageView4 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView4 = null;
        }
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws RemoteException {
                z0.a0(this.f6365a, view2);
            }
        });
        ImageView imageView5 = this.K;
        if (imageView5 == null) {
            kotlin.jvm.internal.r.r("mLanguageSwitch");
        } else {
            imageView2 = imageView5;
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                z0.U(this.f6366a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(z0 this$0, View view) {
        com.coloros.translate.o oVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || (oVar = this$0.f6377m) == null) {
            return;
        }
        oVar.M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(z0 this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ImageView imageView = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        if (this$0.H().P()) {
            ImageView imageView2 = this$0.f6383s;
            if (imageView2 == null) {
                kotlin.jvm.internal.r.r("mTtsAutoPlaySwitch");
            } else {
                imageView = imageView2;
            }
            TranslationApplication.a aVar = TranslationApplication.f4754b;
            imageView.setImageDrawable(r.a.e(aVar.a(), R.drawable.auto_play_disable));
            this$0.H().g0(false);
            Toast.makeText(aVar.a(), com.coloros.translate.utils.n0.b(R.string.auto_play_close_tips), 0).show();
            l0.a.l(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.FALSE, false, null, 12, null);
            return;
        }
        ImageView imageView3 = this$0.f6383s;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mTtsAutoPlaySwitch");
        } else {
            imageView = imageView3;
        }
        TranslationApplication.a aVar2 = TranslationApplication.f4754b;
        imageView.setImageDrawable(r.a.e(aVar2.a(), R.drawable.auto_play_enable));
        this$0.H().g0(true);
        Toast.makeText(aVar2.a(), com.coloros.translate.utils.n0.b(R.string.auto_play_start_tips), 0).show();
        l0.a.l(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.TRUE, false, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(z0 this$0, View view) {
        com.coloros.translate.o oVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || (oVar = this$0.f6377m) == null) {
            return;
        }
        oVar.G(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(z0 this$0, View view) {
        com.coloros.translate.o oVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || (oVar = this$0.f6377m) == null) {
            return;
        }
        oVar.G(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(z0 this$0, View view) {
        FragmentActivity activity;
        Intent intent;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        FragmentActivity activity2 = this$0.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
        FragmentActivity activity3 = this$0.getActivity();
        if ((activity3 == null || (intent = activity3.getIntent()) == null || !intent.getBooleanExtra("isFromEar", false)) && (activity = this$0.getActivity()) != null) {
            activity.overridePendingTransition(0, R$anim.coui_bottom_dialog_exit);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(z0 this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.j();
        if (this$0.E()) {
            this$0.H().s0(false);
            this$0.H().i0(false);
            c1 c1VarH = this$0.H();
            LottieAnimationView lottieAnimationView = this$0.C;
            LottieAnimationView lottieAnimationView2 = null;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
                lottieAnimationView = null;
            }
            boolean zQ = lottieAnimationView.q();
            LottieAnimationView lottieAnimationView3 = this$0.f6387w;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
                lottieAnimationView3 = null;
            }
            c1VarH.l0(zQ, lottieAnimationView3.q(), false);
            LottieAnimationView lottieAnimationView4 = this$0.C;
            if (lottieAnimationView4 == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
            } else {
                lottieAnimationView2 = lottieAnimationView4;
            }
            if (lottieAnimationView2.q()) {
                this$0.c0();
            }
            this$0.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(z0 this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.i();
        if (this$0.E()) {
            this$0.H().s0(true);
            this$0.H().i0(false);
            c1 c1VarH = this$0.H();
            LottieAnimationView lottieAnimationView = this$0.C;
            LottieAnimationView lottieAnimationView2 = null;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
                lottieAnimationView = null;
            }
            boolean zQ = lottieAnimationView.q();
            LottieAnimationView lottieAnimationView3 = this$0.f6387w;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
                lottieAnimationView3 = null;
            }
            c1VarH.l0(zQ, lottieAnimationView3.q(), true);
            LottieAnimationView lottieAnimationView4 = this$0.f6387w;
            if (lottieAnimationView4 == null) {
                kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
            } else {
                lottieAnimationView2 = lottieAnimationView4;
            }
            if (lottieAnimationView2.q()) {
                this$0.d0();
            }
            this$0.C();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        d0();
        c0();
    }

    private final void c0() {
        TextView textView = this.f6389y;
        LottieAnimationView lottieAnimationView = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mRecordingBottomTips");
            textView = null;
        }
        LanguageManager.d dVar = LanguageManager.f4727w;
        textView.setText(dVar.b().r(R.string.click_to_speak, this.f6375k.getLanguageCode()));
        ImageView imageView = this.D;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView = null;
        }
        imageView.setContentDescription(dVar.b().r(R.string.click_to_speak, this.f6375k.getLanguageCode()));
        LottieAnimationView lottieAnimationView2 = this.C;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
            lottieAnimationView2 = null;
        }
        com.coloros.translate.utils.w.e(lottieAnimationView2);
        ImageView imageView2 = this.D;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView2 = null;
        }
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        imageView2.setImageDrawable(r.a.e(context, R.drawable.mic_on_button));
        LottieAnimationView lottieAnimationView3 = this.C;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
            lottieAnimationView3 = null;
        }
        k0(lottieAnimationView3);
        LottieAnimationView lottieAnimationView4 = this.C;
        if (lottieAnimationView4 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
        } else {
            lottieAnimationView = lottieAnimationView4;
        }
        lottieAnimationView.setVisibility(4);
        this.f6370c = false;
    }

    private final void d0() {
        TextView textView = this.f6388x;
        LottieAnimationView lottieAnimationView = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mRecordingTopTips");
            textView = null;
        }
        LanguageManager.d dVar = LanguageManager.f4727w;
        textView.setText(dVar.b().r(R.string.click_to_speak, this.f6374j.getLanguageCode()));
        ImageView imageView = this.B;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView = null;
        }
        imageView.setContentDescription(dVar.b().r(R.string.click_to_speak, this.f6374j.getLanguageCode()));
        LottieAnimationView lottieAnimationView2 = this.f6387w;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
            lottieAnimationView2 = null;
        }
        com.coloros.translate.utils.w.e(lottieAnimationView2);
        ImageView imageView2 = this.B;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView2 = null;
        }
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        imageView2.setImageDrawable(r.a.e(context, R.drawable.mic_on_button));
        LottieAnimationView lottieAnimationView3 = this.f6387w;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
            lottieAnimationView3 = null;
        }
        k0(lottieAnimationView3);
        LottieAnimationView lottieAnimationView4 = this.f6387w;
        if (lottieAnimationView4 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
        } else {
            lottieAnimationView = lottieAnimationView4;
        }
        lottieAnimationView.setVisibility(4);
        this.f6371f = false;
    }

    private final void e0() {
        ImageView imageView = null;
        if (((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.FALSE, null, 4, null)).booleanValue()) {
            ImageView imageView2 = this.f6383s;
            if (imageView2 == null) {
                kotlin.jvm.internal.r.r("mTtsAutoPlaySwitch");
            } else {
                imageView = imageView2;
            }
            imageView.setImageDrawable(r.a.e(TranslationApplication.f4754b.a(), R.drawable.auto_play_enable));
            H().g0(true);
            return;
        }
        ImageView imageView3 = this.f6383s;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mTtsAutoPlaySwitch");
        } else {
            imageView = imageView3;
        }
        imageView.setImageDrawable(r.a.e(TranslationApplication.f4754b.a(), R.drawable.auto_play_disable));
        H().g0(false);
    }

    private final void f0() {
        LottieAnimationView lottieAnimationView = this.C;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
            lottieAnimationView = null;
        }
        lottieAnimationView.setVisibility(0);
        TextView textView = this.f6389y;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mRecordingBottomTips");
            textView = null;
        }
        LanguageManager.d dVar = LanguageManager.f4727w;
        textView.setText(dVar.b().r(R.string.click_to_stop_speak, this.f6375k.getLanguageCode()));
        ImageView imageView = this.D;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView = null;
        }
        imageView.setContentDescription(dVar.b().r(R.string.click_to_stop_speak, this.f6375k.getLanguageCode()));
        ImageView imageView2 = this.D;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView2 = null;
        }
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        imageView2.setImageDrawable(r.a.e(context, R.drawable.mic_stop_button));
        LottieAnimationView lottieAnimationView3 = this.C;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakLottie");
        } else {
            lottieAnimationView2 = lottieAnimationView3;
        }
        j0(lottieAnimationView2);
        this.f6370c = true;
    }

    private final void g0() {
        TextView textView = this.f6385u;
        TextView textView2 = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mBottomLanguageChooseView");
            textView = null;
        }
        textView.setText(this.f6375k.getFullNameResId());
        TextView textView3 = this.f6386v;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mTopLanguageChooseView");
        } else {
            textView2 = textView3;
        }
        textView2.setText(this.f6374j.getFullNameResId());
    }

    private final void h0() {
        TextView textView = this.f6390z;
        ImageView imageView = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mBottomTipsView");
            textView = null;
        }
        LanguageManager.d dVar = LanguageManager.f4727w;
        textView.setText(dVar.b().r(R.string.click_mic_to_speak, this.f6375k.getLanguageCode()));
        TextView textView2 = this.A;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("mToTipsView");
            textView2 = null;
        }
        textView2.setText(dVar.b().r(R.string.click_mic_to_speak, this.f6374j.getLanguageCode()));
        TextView textView3 = this.f6389y;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("mRecordingBottomTips");
            textView3 = null;
        }
        textView3.setText(dVar.b().r(R.string.click_to_speak, this.f6375k.getLanguageCode()));
        ImageView imageView2 = this.D;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
            imageView2 = null;
        }
        imageView2.setContentDescription(dVar.b().r(R.string.click_to_speak, this.f6375k.getLanguageCode()));
        TextView textView4 = this.f6388x;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("mRecordingTopTips");
            textView4 = null;
        }
        textView4.setText(dVar.b().r(R.string.click_to_speak, this.f6374j.getLanguageCode()));
        ImageView imageView3 = this.B;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
        } else {
            imageView = imageView3;
        }
        imageView.setContentDescription(dVar.b().r(R.string.click_to_speak, this.f6374j.getLanguageCode()));
    }

    private final void i0() {
        LottieAnimationView lottieAnimationView = this.f6387w;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
            lottieAnimationView = null;
        }
        lottieAnimationView.setVisibility(0);
        TextView textView = this.f6388x;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mRecordingTopTips");
            textView = null;
        }
        LanguageManager.d dVar = LanguageManager.f4727w;
        textView.setText(dVar.b().r(R.string.click_to_stop_speak, this.f6374j.getLanguageCode()));
        ImageView imageView = this.B;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView = null;
        }
        imageView.setContentDescription(dVar.b().r(R.string.click_to_stop_speak, this.f6374j.getLanguageCode()));
        ImageView imageView2 = this.B;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakIcon");
            imageView2 = null;
        }
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        imageView2.setImageDrawable(r.a.e(context, R.drawable.mic_stop_button));
        LottieAnimationView lottieAnimationView3 = this.f6387w;
        if (lottieAnimationView3 == null) {
            kotlin.jvm.internal.r.r("mTopButtonSpeakLottie");
        } else {
            lottieAnimationView2 = lottieAnimationView3;
        }
        j0(lottieAnimationView2);
        this.f6371f = true;
    }

    private final void j0(LottieAnimationView lottieAnimationView) {
        lottieAnimationView.B(136, 298);
        lottieAnimationView.g(new m(lottieAnimationView));
        lottieAnimationView.v();
    }

    private final void k0(LottieAnimationView lottieAnimationView) {
        lottieAnimationView.w();
        lottieAnimationView.g(new n(lottieAnimationView));
        com.coloros.translate.utils.w.e(lottieAnimationView);
    }

    public final void O() {
        H().j();
    }

    public final void P(BluetoothDevice bluetoothDevice) {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onBluetoothDevice :" + bluetoothDevice);
        try {
            r.a aVar = n8.r.Companion;
            H().G(bluetoothDevice);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("FaceToFaceTranslateFragment", "updateEarControl error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void R() {
        Object objM59constructorimpl;
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "updateEarControl ");
        try {
            r.a aVar = n8.r.Companion;
            ImageView imageView = this.D;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("mBottomButtonSpeakIcon");
                imageView = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(imageView.performClick()));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("FaceToFaceTranslateFragment", "updateEarControl error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void S() {
        H().n0(false, false);
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) {
        com.coloros.translate.b bVarM = G().m();
        com.coloros.translate.b bVarO = G().o();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "updateLanguage:mTopCode:" + bVarO.getLanguageCode() + "  mBottomCode:" + bVarM.getLanguageCode());
        this.f6375k = bVarM;
        this.f6374j = bVarO;
        g0();
        h0();
        H().n0(false, false);
        H().r0(this.f6375k.getLanguageCode(), this.f6374j.getLanguageCode());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        super.onAttach(context);
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onAttach");
        this.f6380p = context;
        H().k();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        boolean zE = com.coloros.translate.utils.j.f7127a.e(getActivity());
        this.f6368a = zE;
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onConfigurationChanged mIsPortraitScreen:" + zE);
        ViewGroup viewGroup = this.f6376l;
        if (viewGroup != null) {
            viewGroup.removeAllViewsInLayout();
        }
        this.f6379o = I(this.f6376l);
        L();
        J();
        e0();
        T();
        Q();
        ViewGroup viewGroup2 = this.f6376l;
        if (viewGroup2 != null) {
            View view = this.f6379o;
            if (view == null) {
                kotlin.jvm.internal.r.r("mView");
                view = null;
            }
            viewGroup2.addView(view);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        Context context = this.f6380p;
        if (context == null) {
            kotlin.jvm.internal.r.r("mContext");
            context = null;
        }
        Object systemService = context.getSystemService("vibrator");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        this.f6369b = (Vibrator) systemService;
        boolean zE = com.coloros.translate.utils.j.f7127a.e(getActivity());
        this.f6368a = zE;
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onCreateView：" + zE);
        this.f6376l = viewGroup;
        this.f6379o = I(viewGroup);
        B();
        L();
        J();
        T();
        K();
        View view = this.f6379o;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.r.r("mView");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onDestroy");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onDestroyView ");
        c1 c1VarH = H();
        androidx.lifecycle.s viewLifecycleOwner = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        c1VarH.e0(viewLifecycleOwner);
        H().n0(false, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onPause");
        H().q0();
        H().n0(false, false);
        b0();
        G().l();
        com.coloros.translate.permission.a.f5407c.a().h();
        g2.a.f(this.N);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslateFragment", "onResume");
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        if (!aVar.e().C()) {
            aVar.e().F();
        }
        e0();
        G().O(this, "voice");
        H().d0();
        H().c0();
        g2.a.c();
        g2.a.e(this.N);
    }
}
