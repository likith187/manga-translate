package com.coloros.translate.ui.dialoguetranslation;

import android.animation.Animator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.core.view.a1;
import androidx.recyclerview.widget.COUILinearLayoutManager;
import androidx.recyclerview.widget.COUIRecyclerView;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BaseEarPhoneActivity;
import com.coloros.translate.base.R$string;
import com.coloros.translate.repository.d;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coloros.translate.ui.earphone.ConfigAudioChange;
import com.coloros.translate.ui.earphone.ConfigEarControl;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.i1;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.n;
import com.coloros.translate.widget.LanguageChooseView;
import com.coui.appcompat.bottomnavigation.COUINavigationView;
import com.coui.appcompat.checkbox.COUICheckBox;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.grid.COUIPercentWidthRecyclerView;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.coui.appcompat.textview.COUITextView;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.support.appcompat.R$anim;
import com.support.appcompat.R$color;
import com.support.appcompat.R$drawable;
import g2.a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
@ConfigAudioChange
@ConfigEarControl
public final class DialogTranslationActivity extends BaseEarPhoneActivity<i0> implements com.coloros.translate.d {
    private static Boolean P0;
    private ActionMode A;
    private ImageView A0;
    private long B;
    private TextView B0;
    private Vibrator C;
    private TextView C0;
    private int D;
    private TextView D0;
    private int E;
    private Flow E0;
    private int F;
    private TextView F0;
    private int G;
    private LottieAnimationView G0;
    private long H;
    private boolean H0;
    private int I;
    private COUITextView I0;
    private androidx.appcompat.app.c J;
    private LottieAnimationView J0;
    private boolean K;
    private COUITextView K0;
    private Conversation L0;
    private boolean M;
    private boolean M0;
    private boolean N;
    private com.coloros.translate.o O;
    private MenuItem P;
    private MenuItem Q;
    private COUIAlertDialogBuilder R;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private LinearLayout Z;

    /* JADX INFO: renamed from: a0 */
    private COUIToolbar f6158a0;

    /* JADX INFO: renamed from: b0 */
    private AppBarLayout f6159b0;

    /* JADX INFO: renamed from: c0 */
    private View f6160c0;

    /* JADX INFO: renamed from: d0 */
    private TextView f6161d0;

    /* JADX INFO: renamed from: e0 */
    private LottieAnimationView f6162e0;

    /* JADX INFO: renamed from: f0 */
    private ImageView f6163f0;

    /* JADX INFO: renamed from: g0 */
    private LanguageChooseView f6164g0;

    /* JADX INFO: renamed from: h0 */
    private LanguageChooseView f6165h0;

    /* JADX INFO: renamed from: i0 */
    private LanguageChooseView f6166i0;

    /* JADX INFO: renamed from: j0 */
    private COUIRecyclerView f6167j0;

    /* JADX INFO: renamed from: k0 */
    private h0 f6168k0;

    /* JADX INFO: renamed from: l0 */
    private COUIRecyclerView f6169l0;

    /* JADX INFO: renamed from: m0 */
    private h0 f6170m0;

    /* JADX INFO: renamed from: n0 */
    private w1.c f6171n0;

    /* JADX INFO: renamed from: o0 */
    private COUINavigationView f6172o0;

    /* JADX INFO: renamed from: p0 */
    private View f6173p0;

    /* JADX INFO: renamed from: q0 */
    private View f6174q0;

    /* JADX INFO: renamed from: r0 */
    private TextView f6175r0;

    /* JADX INFO: renamed from: s0 */
    private COUITextView f6176s0;

    /* JADX INFO: renamed from: w0 */
    private androidx.appcompat.app.c f6180w0;

    /* JADX INFO: renamed from: z0 */
    private View f6183z0;
    public static final a O0 = new a(null);
    private static String Q0 = "";
    private int L = -1;
    private com.coloros.translate.b S = com.coloros.translate.b.CHINESE;
    private com.coloros.translate.b T = com.coloros.translate.b.ENGLISH;
    private com.coloros.translate.ui.simultaneous.main.i Y = new com.coloros.translate.ui.simultaneous.main.i();

    /* JADX INFO: renamed from: t0 */
    private final n8.j f6177t0 = n8.k.b(o.INSTANCE);

    /* JADX INFO: renamed from: u0 */
    private Conversation f6178u0 = new Conversation();

    /* JADX INFO: renamed from: v0 */
    private final r f6179v0 = new r();

    /* JADX INFO: renamed from: x0 */
    private final n8.j f6181x0 = n8.k.b(q.INSTANCE);

    /* JADX INFO: renamed from: y0 */
    private final n.a f6182y0 = new n.a();
    private final Handler N0 = new p(Looper.getMainLooper());

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return DialogTranslationActivity.Q0;
        }

        public final void b(String str) {
            kotlin.jvm.internal.r.e(str, "<set-?>");
            DialogTranslationActivity.Q0 = str;
        }

        private a() {
        }
    }

    public static final class a0 implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f6184a;

        a0(LottieAnimationView lottieAnimationView) {
            this.f6184a = lottieAnimationView;
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
            this.f6184a.B(232, 298);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    public static final class b implements Runnable {

        /* JADX INFO: renamed from: a */
        private final WeakReference f6185a;

        /* JADX INFO: renamed from: b */
        private final WeakReference f6186b;

        /* JADX INFO: renamed from: c */
        private final int f6187c;

        /* JADX INFO: renamed from: f */
        private final int f6188f;

        public b(DialogTranslationActivity mActivity, COUIToolTips mCOUIToolTips, int i10, int i11) {
            kotlin.jvm.internal.r.e(mActivity, "mActivity");
            kotlin.jvm.internal.r.e(mCOUIToolTips, "mCOUIToolTips");
            this.f6185a = new WeakReference(mActivity);
            this.f6186b = new WeakReference(mCOUIToolTips);
            this.f6187c = i10;
            this.f6188f = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objM59constructorimpl;
            DialogTranslationActivity dialogTranslationActivity = (DialogTranslationActivity) this.f6185a.get();
            if (dialogTranslationActivity == null) {
                com.coloros.translate.utils.c0.f7098a.e("DialogTranslationActivity", "voiceTranslationActivity is null");
                return;
            }
            if (dialogTranslationActivity.isFinishing() || dialogTranslationActivity.isDestroyed()) {
                com.coloros.translate.utils.c0.f7098a.e("DialogTranslationActivity", "voiceTranslationActivity is finishing or destroyed");
                return;
            }
            COUIToolTips cOUIToolTips = (COUIToolTips) this.f6186b.get();
            if (cOUIToolTips != null) {
                cOUIToolTips.setContent(dialogTranslationActivity.getString(this.f6187c));
                try {
                    r.a aVar = n8.r.Companion;
                    cOUIToolTips.showWithDirection(dialogTranslationActivity.findViewById(this.f6188f), 128);
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    com.coloros.translate.utils.c0.f7098a.e("DialogTranslationActivity", "showWithDirection error:" + thM62exceptionOrNullimpl.getMessage());
                }
            }
            l0.a.l(com.coloros.translate.utils.l0.f7130a, "need_show_double_screen_tips", Boolean.FALSE, false, null, 12, null);
        }
    }

    public static final class b0 implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f6189a;

        b0(LottieAnimationView lottieAnimationView) {
            this.f6189a = lottieAnimationView;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6189a.setMinFrame(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            this.f6189a.setMinFrame(0);
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

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            DialogTranslationActivity.a2(DialogTranslationActivity.this).r0();
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.l {
        d() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            kotlin.jvm.internal.r.b(bool);
            LanguageChooseView languageChooseView = null;
            if (bool.booleanValue()) {
                LanguageChooseView languageChooseView2 = DialogTranslationActivity.this.f6164g0;
                if (languageChooseView2 == null) {
                    kotlin.jvm.internal.r.r("mChooseLanguageView");
                    languageChooseView2 = null;
                }
                languageChooseView2.h();
                LanguageChooseView languageChooseView3 = DialogTranslationActivity.this.f6166i0;
                if (languageChooseView3 == null) {
                    kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
                } else {
                    languageChooseView = languageChooseView3;
                }
                languageChooseView.h();
                return;
            }
            LanguageChooseView languageChooseView4 = DialogTranslationActivity.this.f6164g0;
            if (languageChooseView4 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageView");
                languageChooseView4 = null;
            }
            languageChooseView4.k();
            LanguageChooseView languageChooseView5 = DialogTranslationActivity.this.f6166i0;
            if (languageChooseView5 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
            } else {
                languageChooseView = languageChooseView5;
            }
            languageChooseView.k();
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {
        e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            kotlin.jvm.internal.r.b(bool);
            LanguageChooseView languageChooseView = null;
            if (bool.booleanValue()) {
                LanguageChooseView languageChooseView2 = DialogTranslationActivity.this.f6164g0;
                if (languageChooseView2 == null) {
                    kotlin.jvm.internal.r.r("mChooseLanguageView");
                    languageChooseView2 = null;
                }
                languageChooseView2.o();
                LanguageChooseView languageChooseView3 = DialogTranslationActivity.this.f6166i0;
                if (languageChooseView3 == null) {
                    kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
                } else {
                    languageChooseView = languageChooseView3;
                }
                languageChooseView.o();
                return;
            }
            LanguageChooseView languageChooseView4 = DialogTranslationActivity.this.f6164g0;
            if (languageChooseView4 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageView");
                languageChooseView4 = null;
            }
            languageChooseView4.r();
            LanguageChooseView languageChooseView5 = DialogTranslationActivity.this.f6166i0;
            if (languageChooseView5 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
            } else {
                languageChooseView = languageChooseView5;
            }
            languageChooseView.r();
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.l {
        f() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mAsrRunning : " + bool + " , mIsReadyToPlay : " + DialogTranslationActivity.a2(DialogTranslationActivity.this).T() + " , mIsStopByManual : " + DialogTranslationActivity.a2(DialogTranslationActivity.this).X());
            DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
            kotlin.jvm.internal.r.b(bool);
            dialogTranslationActivity.c3(bool.booleanValue());
            if (bool.booleanValue() || DialogTranslationActivity.a2(DialogTranslationActivity.this).T() || DialogTranslationActivity.a2(DialogTranslationActivity.this).X()) {
                return;
            }
            DialogTranslationActivity.this.x3();
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
            int size = DialogTranslationActivity.a2(DialogTranslationActivity.this).K().size();
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mAddOrRemoveListData add data:" + size);
            h0 h0Var = DialogTranslationActivity.this.f6170m0;
            COUIRecyclerView cOUIRecyclerView = null;
            if (h0Var == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var = null;
            }
            h0Var.u(DialogTranslationActivity.a2(DialogTranslationActivity.this).K());
            Conversation conversation = (Conversation) kotlin.collections.o.S(DialogTranslationActivity.a2(DialogTranslationActivity.this).K());
            boolean z10 = false;
            if (conversation != null) {
                DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
                if (kotlin.jvm.internal.r.a(conversation.getExpandField1(), "sample")) {
                    dialogTranslationActivity.f6178u0 = conversation;
                } else if (DialogTranslationActivity.a2(dialogTranslationActivity).F()) {
                    TextView textView = dialogTranslationActivity.f6175r0;
                    if (textView == null) {
                        kotlin.jvm.internal.r.r("aiSignTextView");
                        textView = null;
                    }
                    textView.setVisibility(0);
                }
            }
            if (size > 1 && DialogTranslationActivity.a2(DialogTranslationActivity.this).F()) {
                TextView textView2 = DialogTranslationActivity.this.f6175r0;
                if (textView2 == null) {
                    kotlin.jvm.internal.r.r("aiSignTextView");
                    textView2 = null;
                }
                textView2.setVisibility(0);
            }
            if (size == 0 && DialogTranslationActivity.a2(DialogTranslationActivity.this).j0()) {
                DialogTranslationActivity dialogTranslationActivity2 = DialogTranslationActivity.this;
                dialogTranslationActivity2.R3(dialogTranslationActivity2.f6178u0);
                DialogTranslationActivity.a2(DialogTranslationActivity.this).K().add(DialogTranslationActivity.this.f6178u0);
                h0 h0Var2 = DialogTranslationActivity.this.f6170m0;
                if (h0Var2 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var2 = null;
                }
                h0Var2.h(DialogTranslationActivity.this.f6178u0);
            }
            DialogTranslationActivity.this.S3();
            COUIToolbar cOUIToolbar = DialogTranslationActivity.this.f6158a0;
            if (cOUIToolbar == null) {
                kotlin.jvm.internal.r.r("mToolbar");
                cOUIToolbar = null;
            }
            MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.select_mode);
            if (menuItemFindItem != null) {
                h0 h0Var3 = DialogTranslationActivity.this.f6170m0;
                if (h0Var3 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var3 = null;
                }
                if (!h0Var3.i().isEmpty() && !DialogTranslationActivity.this.W) {
                    z10 = true;
                }
                menuItemFindItem.setVisible(z10);
            }
            if (size > 0) {
                COUIRecyclerView cOUIRecyclerView2 = DialogTranslationActivity.this.f6169l0;
                if (cOUIRecyclerView2 == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                } else {
                    cOUIRecyclerView = cOUIRecyclerView2;
                }
                cOUIRecyclerView.scrollToPosition(size - 1);
            }
        }
    }

    static final class h extends kotlin.jvm.internal.s implements w8.l {
        h() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void invoke(Conversation conversation) {
            Conversation conversation2;
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "add data");
            if (conversation == null) {
                return;
            }
            h0 h0Var = null;
            if (DialogTranslationActivity.this.b3()) {
                h0 h0Var2 = DialogTranslationActivity.this.f6168k0;
                if (h0Var2 == null) {
                    kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                    h0Var2 = null;
                }
                if (h0Var2.i().size() > 0) {
                    h0 h0Var3 = DialogTranslationActivity.this.f6168k0;
                    if (h0Var3 == null) {
                        kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                        h0Var3 = null;
                    }
                    conversation2 = (Conversation) h0Var3.i().get(0);
                } else {
                    conversation2 = null;
                }
                if (conversation2 != null && conversation2.getFromText().length() > 0 && !kotlin.jvm.internal.r.a(conversation2, DialogTranslationActivity.this.f6178u0)) {
                    DialogTranslationActivity.a2(DialogTranslationActivity.this).K().add(conversation2);
                    h0 h0Var4 = DialogTranslationActivity.this.f6170m0;
                    if (h0Var4 == null) {
                        kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                        h0Var4 = null;
                    }
                    h0Var4.h(conversation2);
                    DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
                    COUIRecyclerView cOUIRecyclerView = dialogTranslationActivity.f6167j0;
                    if (cOUIRecyclerView == null) {
                        kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
                        cOUIRecyclerView = null;
                    }
                    h0 h0Var5 = DialogTranslationActivity.this.f6170m0;
                    if (h0Var5 == null) {
                        kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                        h0Var5 = null;
                    }
                    dialogTranslationActivity.J2(cOUIRecyclerView, h0Var5.i().indexOf(conversation2));
                }
                h0 h0Var6 = DialogTranslationActivity.this.f6168k0;
                if (h0Var6 == null) {
                    kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                    h0Var6 = null;
                }
                h0Var6.u(kotlin.collections.o.m(conversation));
                DialogTranslationActivity dialogTranslationActivity2 = DialogTranslationActivity.this;
                COUIRecyclerView cOUIRecyclerView2 = dialogTranslationActivity2.f6169l0;
                if (cOUIRecyclerView2 == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                    cOUIRecyclerView2 = null;
                }
                h0 h0Var7 = DialogTranslationActivity.this.f6168k0;
                if (h0Var7 == null) {
                    kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                    h0Var7 = null;
                }
                dialogTranslationActivity2.J2(cOUIRecyclerView2, h0Var7.i().indexOf(conversation));
                DialogTranslationActivity.this.T3(conversation);
            } else {
                DialogTranslationActivity.a2(DialogTranslationActivity.this).K().add(conversation);
                h0 h0Var8 = DialogTranslationActivity.this.f6170m0;
                if (h0Var8 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var8 = null;
                }
                h0Var8.h(conversation);
                DialogTranslationActivity.a2(DialogTranslationActivity.this).y0(conversation);
                COUIToolbar cOUIToolbar = DialogTranslationActivity.this.f6158a0;
                if (cOUIToolbar == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                    cOUIToolbar = null;
                }
                MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.select_mode);
                if (menuItemFindItem != null) {
                    h0 h0Var9 = DialogTranslationActivity.this.f6170m0;
                    if (h0Var9 == null) {
                        kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                        h0Var9 = null;
                    }
                    menuItemFindItem.setVisible(!h0Var9.i().isEmpty());
                }
            }
            DialogTranslationActivity.this.S3();
            h0 h0Var10 = DialogTranslationActivity.this.f6170m0;
            if (h0Var10 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            } else {
                h0Var = h0Var10;
            }
            if (h0Var.i().isEmpty()) {
                return;
            }
            f1.a aVar = f1.f7117a;
            DialogTranslationActivity dialogTranslationActivity3 = DialogTranslationActivity.this;
            aVar.c(dialogTranslationActivity3, "event_translate_success_for_dialog", dialogTranslationActivity3.S.getSortIndex(), DialogTranslationActivity.this.T.getSortIndex());
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.l {
        i() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogTranslationActivity", "remove data");
            if (conversation == null) {
                return;
            }
            aVar.d("DialogTranslationActivity", "isDoubleScreenLayoutMode" + DialogTranslationActivity.this.b3());
            h0 h0Var = null;
            if (!DialogTranslationActivity.this.b3() || DialogTranslationActivity.this.H0) {
                if (DialogTranslationActivity.this.H0) {
                    DialogTranslationActivity.this.H0 = false;
                }
                DialogTranslationActivity.a2(DialogTranslationActivity.this).K().remove(conversation);
                h0 h0Var2 = DialogTranslationActivity.this.f6170m0;
                if (h0Var2 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var2 = null;
                }
                h0Var2.t(conversation);
                h0 h0Var3 = DialogTranslationActivity.this.f6170m0;
                if (h0Var3 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var3 = null;
                }
                int itemCount = h0Var3.getItemCount() - 1;
                if (itemCount < 0) {
                    return;
                }
                i0 i0VarA2 = DialogTranslationActivity.a2(DialogTranslationActivity.this);
                h0 h0Var4 = DialogTranslationActivity.this.f6170m0;
                if (h0Var4 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                } else {
                    h0Var = h0Var4;
                }
                i0VarA2.y0((Conversation) h0Var.i().get(itemCount));
            } else {
                h0 h0Var5 = DialogTranslationActivity.this.f6168k0;
                if (h0Var5 == null) {
                    kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                } else {
                    h0Var = h0Var5;
                }
                h0Var.t(conversation);
            }
            DialogTranslationActivity.this.S3();
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.l {
        j() {
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
            h0 h0Var = DialogTranslationActivity.this.f6170m0;
            h0 h0Var2 = null;
            if (h0Var == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var = null;
            }
            h0Var.s(conversation);
            if (!DialogTranslationActivity.this.b3()) {
                DialogTranslationActivity.a2(DialogTranslationActivity.this).y0(conversation);
                return;
            }
            h0 h0Var3 = DialogTranslationActivity.this.f6168k0;
            if (h0Var3 == null) {
                kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                h0Var3 = null;
            }
            h0Var3.s(conversation);
            DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
            COUIRecyclerView cOUIRecyclerView = dialogTranslationActivity.f6169l0;
            if (cOUIRecyclerView == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                cOUIRecyclerView = null;
            }
            h0 h0Var4 = DialogTranslationActivity.this.f6168k0;
            if (h0Var4 == null) {
                kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
            } else {
                h0Var2 = h0Var4;
            }
            dialogTranslationActivity.J2(cOUIRecyclerView, h0Var2.i().indexOf(conversation));
            DialogTranslationActivity.this.T3(conversation);
        }
    }

    static final class k extends kotlin.jvm.internal.s implements w8.l {
        k() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((n8.q) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(n8.q qVar) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogTranslationActivity", "mCurrentTtsItemIndexStatus" + qVar + " mRecordingButtonSpeaking " + DialogTranslationActivity.this.U);
            if (((Number) qVar.getFirst()).longValue() < 0) {
                return;
            }
            DialogTranslationActivity.this.c3(((Boolean) qVar.getSecond()).booleanValue());
            if (!((Boolean) qVar.getSecond()).booleanValue() && kotlin.jvm.internal.r.a(DialogTranslationActivity.a2(DialogTranslationActivity.this).I().e(), Boolean.TRUE)) {
                DialogTranslationActivity.this.c3(true);
            }
            DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
            kotlin.jvm.internal.r.b(qVar);
            dialogTranslationActivity.V3(qVar);
            if (DialogTranslationActivity.a2(DialogTranslationActivity.this).W()) {
                aVar.d("DialogTranslationActivity", "mViewModel.mCancelTTsChange" + DialogTranslationActivity.a2(DialogTranslationActivity.this).W());
                return;
            }
            if (((Boolean) qVar.getSecond()).booleanValue()) {
                if (DialogTranslationActivity.this.U) {
                    DialogTranslationActivity.this.x3();
                    DialogTranslationActivity.this.X = true;
                    return;
                }
                return;
            }
            if (DialogTranslationActivity.this.X) {
                DialogTranslationActivity.this.X = false;
                DialogTranslationActivity.a2(DialogTranslationActivity.this).p0(false);
                DialogTranslationActivity.this.A3();
            }
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.l {
        l() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Conversation) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Conversation conversation) {
            if (DialogTranslationActivity.a2(DialogTranslationActivity.this).R()) {
                return;
            }
            DialogTranslationActivity.a2(DialogTranslationActivity.this).C0(true);
            h0 h0Var = DialogTranslationActivity.this.f6170m0;
            COUIRecyclerView cOUIRecyclerView = null;
            if (h0Var == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var = null;
            }
            int iIndexOf = h0Var.i().indexOf(conversation);
            DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
            COUIRecyclerView cOUIRecyclerView2 = dialogTranslationActivity.f6169l0;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView2;
            }
            dialogTranslationActivity.J2(cOUIRecyclerView, iIndexOf);
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.l {
        m() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Integer) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Integer num) {
            MenuItem menuItem;
            CharSequence title;
            MenuItem menuItem2;
            MenuItem menuItem3;
            CharSequence title2;
            MenuItem menuItem4;
            if (DialogTranslationActivity.this.Q == null || !kotlin.jvm.internal.r.a(DialogTranslationActivity.a2(DialogTranslationActivity.this).V().e(), Boolean.TRUE)) {
                return;
            }
            int size = DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size();
            COUINavigationView cOUINavigationView = null;
            if (size == 0) {
                COUIToolbar cOUIToolbar = DialogTranslationActivity.this.f6158a0;
                if (cOUIToolbar == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                    cOUIToolbar = null;
                }
                cOUIToolbar.setTitle(DialogTranslationActivity.this.getString(R.string.select_project));
                int size2 = DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size();
                h0 h0Var = DialogTranslationActivity.this.f6170m0;
                if (h0Var == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var = null;
                }
                if (size2 != h0Var.i().size() && (menuItem3 = DialogTranslationActivity.this.Q) != null && (title2 = menuItem3.getTitle()) != null && title2.equals(DialogTranslationActivity.this.getString(R.string.select_cancel_all)) && (menuItem4 = DialogTranslationActivity.this.Q) != null) {
                    menuItem4.setTitle(DialogTranslationActivity.this.getString(R.string.select_all));
                }
                COUINavigationView cOUINavigationView2 = DialogTranslationActivity.this.f6172o0;
                if (cOUINavigationView2 == null) {
                    kotlin.jvm.internal.r.r("mNavigationTool");
                } else {
                    cOUINavigationView = cOUINavigationView2;
                }
                Menu menu = cOUINavigationView.getMenu();
                kotlin.jvm.internal.r.d(menu, "getMenu(...)");
                Iterator itA = androidx.core.view.s.a(menu);
                while (itA.hasNext()) {
                    ((MenuItem) itA.next()).setEnabled(false);
                }
                return;
            }
            h0 h0Var2 = DialogTranslationActivity.this.f6170m0;
            if (h0Var2 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var2 = null;
            }
            if (size != h0Var2.i().size()) {
                String quantityString = DialogTranslationActivity.this.getResources().getQuantityString(R.plurals.completely_select_multiple, DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size(), Integer.valueOf(DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size()));
                kotlin.jvm.internal.r.d(quantityString, "getQuantityString(...)");
                COUIToolbar cOUIToolbar2 = DialogTranslationActivity.this.f6158a0;
                if (cOUIToolbar2 == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                    cOUIToolbar2 = null;
                }
                cOUIToolbar2.setTitle(quantityString);
                MenuItem menuItem5 = DialogTranslationActivity.this.Q;
                if (menuItem5 != null) {
                    menuItem5.setTitle(DialogTranslationActivity.this.getString(R.string.select_all));
                }
                COUINavigationView cOUINavigationView3 = DialogTranslationActivity.this.f6172o0;
                if (cOUINavigationView3 == null) {
                    kotlin.jvm.internal.r.r("mNavigationTool");
                } else {
                    cOUINavigationView = cOUINavigationView3;
                }
                Menu menu2 = cOUINavigationView.getMenu();
                kotlin.jvm.internal.r.d(menu2, "getMenu(...)");
                Iterator itA2 = androidx.core.view.s.a(menu2);
                while (itA2.hasNext()) {
                    ((MenuItem) itA2.next()).setEnabled(true);
                }
                return;
            }
            COUIToolbar cOUIToolbar3 = DialogTranslationActivity.this.f6158a0;
            if (cOUIToolbar3 == null) {
                kotlin.jvm.internal.r.r("mToolbar");
                cOUIToolbar3 = null;
            }
            cOUIToolbar3.setTitle(DialogTranslationActivity.this.getString(R.string.completely_select_all));
            int size3 = DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size();
            h0 h0Var3 = DialogTranslationActivity.this.f6170m0;
            if (h0Var3 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var3 = null;
            }
            if (size3 == h0Var3.i().size() && (menuItem = DialogTranslationActivity.this.Q) != null && (title = menuItem.getTitle()) != null && title.equals(DialogTranslationActivity.this.getString(R.string.select_all)) && (menuItem2 = DialogTranslationActivity.this.Q) != null) {
                menuItem2.setTitle(DialogTranslationActivity.this.getString(R.string.select_cancel_all));
            }
            COUINavigationView cOUINavigationView4 = DialogTranslationActivity.this.f6172o0;
            if (cOUINavigationView4 == null) {
                kotlin.jvm.internal.r.r("mNavigationTool");
            } else {
                cOUINavigationView = cOUINavigationView4;
            }
            Menu menu3 = cOUINavigationView.getMenu();
            kotlin.jvm.internal.r.d(menu3, "getMenu(...)");
            Iterator itA3 = androidx.core.view.s.a(menu3);
            while (itA3.hasNext()) {
                ((MenuItem) itA3.next()).setEnabled(true);
            }
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.l {
        n() {
            super(1);
        }

        public static final boolean invoke$lambda$4(DialogTranslationActivity this$0, MenuItem it) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(it, "it");
            int size = DialogTranslationActivity.a2(this$0).g0().size();
            h0 h0Var = this$0.f6170m0;
            h0 h0Var2 = null;
            if (h0Var == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var = null;
            }
            if (size == h0Var.i().size()) {
                DialogTranslationActivity.a2(this$0).g0().clear();
                MenuItem menuItem = this$0.Q;
                if (menuItem != null) {
                    menuItem.setTitle(this$0.getString(R.string.select_all));
                }
            } else {
                DialogTranslationActivity.a2(this$0).g0().clear();
                COUIToolbar cOUIToolbar = this$0.f6158a0;
                if (cOUIToolbar == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                    cOUIToolbar = null;
                }
                cOUIToolbar.setTitle(this$0.getString(R.string.select_project));
                h0 h0Var3 = this$0.f6170m0;
                if (h0Var3 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var3 = null;
                }
                int i10 = 0;
                for (Conversation conversation : h0Var3.i()) {
                    DialogTranslationActivity.a2(this$0).g0().put(String.valueOf(i10), Boolean.TRUE);
                    i10++;
                }
                COUIToolbar cOUIToolbar2 = this$0.f6158a0;
                if (cOUIToolbar2 == null) {
                    kotlin.jvm.internal.r.r("mToolbar");
                    cOUIToolbar2 = null;
                }
                cOUIToolbar2.setTitle(this$0.getString(R.string.completely_select_all));
                MenuItem menuItem2 = this$0.Q;
                if (menuItem2 != null) {
                    menuItem2.setTitle(this$0.getString(R.string.select_cancel_all));
                }
                COUINavigationView cOUINavigationView = this$0.f6172o0;
                if (cOUINavigationView == null) {
                    kotlin.jvm.internal.r.r("mNavigationTool");
                    cOUINavigationView = null;
                }
                Menu menu = cOUINavigationView.getMenu();
                kotlin.jvm.internal.r.d(menu, "getMenu(...)");
                Iterator itA = androidx.core.view.s.a(menu);
                while (itA.hasNext()) {
                    ((MenuItem) itA.next()).setEnabled(true);
                }
            }
            h0 h0Var4 = this$0.f6170m0;
            if (h0Var4 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            } else {
                h0Var2 = h0Var4;
            }
            h0Var2.notifyDataSetChanged();
            return true;
        }

        public static final boolean invoke$lambda$5(DialogTranslationActivity this$0, MenuItem it) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(it, "it");
            Object objE = DialogTranslationActivity.a2(this$0).V().e();
            kotlin.jvm.internal.r.b(objE);
            if (!((Boolean) objE).booleanValue()) {
                return true;
            }
            DialogTranslationActivity.a2(this$0).V().k(Boolean.FALSE);
            return true;
        }

        public static final void invoke$lambda$6(DialogTranslationActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            w1.c cVar = this$0.f6171n0;
            COUIRecyclerView cOUIRecyclerView = null;
            if (cVar == null) {
                kotlin.jvm.internal.r.r("mDividerChangeBehavior");
                cVar = null;
            }
            AppBarLayout appBarLayout = this$0.f6159b0;
            if (appBarLayout == null) {
                kotlin.jvm.internal.r.r("mAppbarLayout");
                appBarLayout = null;
            }
            COUIRecyclerView cOUIRecyclerView2 = this$0.f6169l0;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView2;
            }
            cVar.f(appBarLayout, cOUIRecyclerView);
        }

        public static final void invoke$lambda$9(DialogTranslationActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            w1.c cVar = this$0.f6171n0;
            COUIRecyclerView cOUIRecyclerView = null;
            if (cVar == null) {
                kotlin.jvm.internal.r.r("mDividerChangeBehavior");
                cVar = null;
            }
            AppBarLayout appBarLayout = this$0.f6159b0;
            if (appBarLayout == null) {
                kotlin.jvm.internal.r.r("mAppbarLayout");
                appBarLayout = null;
            }
            COUIRecyclerView cOUIRecyclerView2 = this$0.f6169l0;
            if (cOUIRecyclerView2 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView2;
            }
            cVar.f(appBarLayout, cOUIRecyclerView);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mIsSelectMode : " + bool);
            kotlin.jvm.internal.r.b(bool);
            COUIRecyclerView cOUIRecyclerView = null;
            COUINavigationView cOUINavigationView = null;
            if (!bool.booleanValue()) {
                LanguageChooseView languageChooseView = DialogTranslationActivity.this.f6164g0;
                if (languageChooseView == null) {
                    kotlin.jvm.internal.r.r("mChooseLanguageView");
                    languageChooseView = null;
                }
                languageChooseView.setVisibility(0);
                if (DialogTranslationActivity.a2(DialogTranslationActivity.this).K().size() >= 1 && DialogTranslationActivity.a2(DialogTranslationActivity.this).F()) {
                    TextView textView = DialogTranslationActivity.this.f6175r0;
                    if (textView == null) {
                        kotlin.jvm.internal.r.r("aiSignTextView");
                        textView = null;
                    }
                    textView.setVisibility(0);
                }
                View view = DialogTranslationActivity.this.f6160c0;
                if (view == null) {
                    kotlin.jvm.internal.r.r("mRecordingButtonContainer");
                    view = null;
                }
                view.setVisibility(0);
                TextView textView2 = DialogTranslationActivity.this.f6161d0;
                if (textView2 == null) {
                    kotlin.jvm.internal.r.r("mRecordingTips");
                    textView2 = null;
                }
                textView2.setVisibility(0);
                COUINavigationView cOUINavigationView2 = DialogTranslationActivity.this.f6172o0;
                if (cOUINavigationView2 == null) {
                    kotlin.jvm.internal.r.r("mNavigationTool");
                    cOUINavigationView2 = null;
                }
                cOUINavigationView2.setVisibility(8);
                View view2 = DialogTranslationActivity.this.f6173p0;
                if (view2 == null) {
                    kotlin.jvm.internal.r.r("mNavigationBarView");
                    view2 = null;
                }
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null) {
                    DialogTranslationActivity dialogTranslationActivity = DialogTranslationActivity.this;
                    layoutParams2.height = dialogTranslationActivity.I;
                    View view3 = dialogTranslationActivity.f6173p0;
                    if (view3 == null) {
                        kotlin.jvm.internal.r.r("mNavigationBarView");
                        view3 = null;
                    }
                    view3.setBackgroundColor(0);
                    View view4 = dialogTranslationActivity.f6173p0;
                    if (view4 == null) {
                        kotlin.jvm.internal.r.r("mNavigationBarView");
                        view4 = null;
                    }
                    view4.requestLayout();
                }
                DialogTranslationActivity.this.S2();
                h0 h0Var = DialogTranslationActivity.this.f6170m0;
                if (h0Var == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var = null;
                }
                h0Var.v(false);
                DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().clear();
                h0 h0Var2 = DialogTranslationActivity.this.f6170m0;
                if (h0Var2 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var2 = null;
                }
                h0Var2.notifyDataSetChanged();
                COUIRecyclerView cOUIRecyclerView2 = DialogTranslationActivity.this.f6169l0;
                if (cOUIRecyclerView2 == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                    cOUIRecyclerView2 = null;
                }
                final DialogTranslationActivity dialogTranslationActivity2 = DialogTranslationActivity.this;
                cOUIRecyclerView2.post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTranslationActivity.n.invoke$lambda$9(dialogTranslationActivity2);
                    }
                });
                COUIRecyclerView cOUIRecyclerView3 = DialogTranslationActivity.this.f6169l0;
                if (cOUIRecyclerView3 == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                    cOUIRecyclerView3 = null;
                }
                ViewGroup.LayoutParams layoutParams3 = cOUIRecyclerView3.getLayoutParams();
                kotlin.jvm.internal.r.c(layoutParams3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams3;
                View view5 = DialogTranslationActivity.this.f6160c0;
                if (view5 == null) {
                    kotlin.jvm.internal.r.r("mRecordingButtonContainer");
                    view5 = null;
                }
                layoutParams4.addRule(2, view5.getId());
                COUIRecyclerView cOUIRecyclerView4 = DialogTranslationActivity.this.f6169l0;
                if (cOUIRecyclerView4 == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                } else {
                    cOUIRecyclerView = cOUIRecyclerView4;
                }
                cOUIRecyclerView.setLayoutParams(layoutParams4);
                return;
            }
            View view6 = DialogTranslationActivity.this.f6160c0;
            if (view6 == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonContainer");
                view6 = null;
            }
            view6.setVisibility(8);
            TextView textView3 = DialogTranslationActivity.this.f6161d0;
            if (textView3 == null) {
                kotlin.jvm.internal.r.r("mRecordingTips");
                textView3 = null;
            }
            textView3.setVisibility(8);
            LanguageChooseView languageChooseView2 = DialogTranslationActivity.this.f6164g0;
            if (languageChooseView2 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageView");
                languageChooseView2 = null;
            }
            languageChooseView2.setVisibility(8);
            COUINavigationView cOUINavigationView3 = DialogTranslationActivity.this.f6172o0;
            if (cOUINavigationView3 == null) {
                kotlin.jvm.internal.r.r("mNavigationTool");
                cOUINavigationView3 = null;
            }
            cOUINavigationView3.setVisibility(0);
            TextView textView4 = DialogTranslationActivity.this.f6175r0;
            if (textView4 == null) {
                kotlin.jvm.internal.r.r("aiSignTextView");
                textView4 = null;
            }
            textView4.setVisibility(8);
            COUINavigationView cOUINavigationView4 = DialogTranslationActivity.this.f6172o0;
            if (cOUINavigationView4 == null) {
                kotlin.jvm.internal.r.r("mNavigationTool");
                cOUINavigationView4 = null;
            }
            Menu menu = cOUINavigationView4.getMenu();
            kotlin.jvm.internal.r.d(menu, "getMenu(...)");
            Iterator itA = androidx.core.view.s.a(menu);
            while (itA.hasNext()) {
                ((MenuItem) itA.next()).setEnabled(false);
            }
            View view7 = DialogTranslationActivity.this.f6173p0;
            if (view7 == null) {
                kotlin.jvm.internal.r.r("mNavigationBarView");
                view7 = null;
            }
            ViewGroup.LayoutParams layoutParams5 = view7.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams6 = layoutParams5 instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams5 : null;
            if (layoutParams6 != null) {
                DialogTranslationActivity dialogTranslationActivity3 = DialogTranslationActivity.this;
                layoutParams6.height = dialogTranslationActivity3.I;
                View view8 = dialogTranslationActivity3.f6173p0;
                if (view8 == null) {
                    kotlin.jvm.internal.r.r("mNavigationBarView");
                    view8 = null;
                }
                view8.setBackgroundColor(dialogTranslationActivity3.getResources().getColor(R.color.coui_navigation_enlarge_default_bg));
            }
            n8.q qVar = (n8.q) DialogTranslationActivity.a2(DialogTranslationActivity.this).O().e();
            if (qVar != null && ((Boolean) qVar.getSecond()).booleanValue()) {
                DialogTranslationActivity.a2(DialogTranslationActivity.this).Q0();
                androidx.lifecycle.a0 a0VarO = DialogTranslationActivity.a2(DialogTranslationActivity.this).O();
                n8.q qVar2 = (n8.q) DialogTranslationActivity.a2(DialogTranslationActivity.this).O().e();
                a0VarO.k(new n8.q(Long.valueOf(qVar2 != null ? ((Number) qVar2.getFirst()).longValue() : -1L), Boolean.FALSE));
            }
            DialogTranslationActivity.this.B3();
            DialogTranslationActivity dialogTranslationActivity4 = DialogTranslationActivity.this;
            COUIToolbar cOUIToolbar = dialogTranslationActivity4.f6158a0;
            if (cOUIToolbar == null) {
                kotlin.jvm.internal.r.r("mToolbar");
                cOUIToolbar = null;
            }
            dialogTranslationActivity4.P = cOUIToolbar.getMenu().findItem(R.id.cancel_select);
            DialogTranslationActivity dialogTranslationActivity5 = DialogTranslationActivity.this;
            COUIToolbar cOUIToolbar2 = dialogTranslationActivity5.f6158a0;
            if (cOUIToolbar2 == null) {
                kotlin.jvm.internal.r.r("mToolbar");
                cOUIToolbar2 = null;
            }
            dialogTranslationActivity5.Q = cOUIToolbar2.getMenu().findItem(R.id.select_all);
            MenuItem menuItem = DialogTranslationActivity.this.Q;
            if (menuItem != null) {
                final DialogTranslationActivity dialogTranslationActivity6 = DialogTranslationActivity.this;
                menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.a0
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public final boolean onMenuItemClick(MenuItem menuItem2) {
                        return DialogTranslationActivity.n.invoke$lambda$4(dialogTranslationActivity6, menuItem2);
                    }
                });
            }
            MenuItem menuItem2 = DialogTranslationActivity.this.P;
            if (menuItem2 != null) {
                final DialogTranslationActivity dialogTranslationActivity7 = DialogTranslationActivity.this;
                menuItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.b0
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public final boolean onMenuItemClick(MenuItem menuItem3) {
                        return DialogTranslationActivity.n.invoke$lambda$5(dialogTranslationActivity7, menuItem3);
                    }
                });
            }
            MenuItem menuItem3 = DialogTranslationActivity.this.Q;
            View actionView = menuItem3 != null ? menuItem3.getActionView() : null;
            if (actionView != null) {
                actionView.setPadding(0, 0, i1.f7126a.a(DialogTranslationActivity.this, 9.0f), 0);
            }
            h0 h0Var3 = DialogTranslationActivity.this.f6170m0;
            if (h0Var3 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var3 = null;
            }
            h0Var3.v(true);
            h0 h0Var4 = DialogTranslationActivity.this.f6170m0;
            if (h0Var4 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var4 = null;
            }
            h0Var4.notifyDataSetChanged();
            COUIRecyclerView cOUIRecyclerView5 = DialogTranslationActivity.this.f6169l0;
            if (cOUIRecyclerView5 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                cOUIRecyclerView5 = null;
            }
            final DialogTranslationActivity dialogTranslationActivity8 = DialogTranslationActivity.this;
            cOUIRecyclerView5.post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.c0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogTranslationActivity.n.invoke$lambda$6(dialogTranslationActivity8);
                }
            });
            COUIRecyclerView cOUIRecyclerView6 = DialogTranslationActivity.this.f6169l0;
            if (cOUIRecyclerView6 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                cOUIRecyclerView6 = null;
            }
            ViewGroup.LayoutParams layoutParams7 = cOUIRecyclerView6.getLayoutParams();
            kotlin.jvm.internal.r.c(layoutParams7, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) layoutParams7;
            COUINavigationView cOUINavigationView5 = DialogTranslationActivity.this.f6172o0;
            if (cOUINavigationView5 == null) {
                kotlin.jvm.internal.r.r("mNavigationTool");
                cOUINavigationView5 = null;
            }
            layoutParams8.addRule(2, cOUINavigationView5.getId());
            COUIRecyclerView cOUIRecyclerView7 = DialogTranslationActivity.this.f6169l0;
            if (cOUIRecyclerView7 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                cOUIRecyclerView7 = null;
            }
            cOUIRecyclerView7.setLayoutParams(layoutParams8);
            if (DialogTranslationActivity.a2(DialogTranslationActivity.this).g0().size() > 0) {
                COUINavigationView cOUINavigationView6 = DialogTranslationActivity.this.f6172o0;
                if (cOUINavigationView6 == null) {
                    kotlin.jvm.internal.r.r("mNavigationTool");
                } else {
                    cOUINavigationView = cOUINavigationView6;
                }
                Menu menu2 = cOUINavigationView.getMenu();
                kotlin.jvm.internal.r.d(menu2, "getMenu(...)");
                Iterator itA2 = androidx.core.view.s.a(menu2);
                while (itA2.hasNext()) {
                    ((MenuItem) itA2.next()).setEnabled(true);
                }
            }
            DialogTranslationActivity.a2(DialogTranslationActivity.this).J().k(0);
        }
    }

    static final class o extends kotlin.jvm.internal.s implements w8.a {
        public static final o INSTANCE = new o();

        o() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    public static final class p extends Handler {
        p(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            LottieAnimationView lottieAnimationView;
            kotlin.jvm.internal.r.e(msg, "msg");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogTranslationActivity", "mHandler msg what:" + msg.what);
            int i10 = msg.what;
            if (i10 == 1) {
                aVar.i("DialogTranslationActivity", "mHandler -> openDeviceStateALL:" + DialogTranslationActivity.this.O2().m());
                sendEmptyMessageDelayed(3, 300L);
                return;
            }
            if (i10 == 2) {
                DialogTranslationActivity.this.O3();
                DialogTranslationActivity.this.w3();
                aVar.i("DialogTranslationActivity", "mHandler cancelDeviceStateALL:" + DialogTranslationActivity.this.O2().g());
                return;
            }
            if (i10 == 3) {
                aVar.i("DialogTranslationActivity", "mHandler addOutScreenView");
                DialogTranslationActivity.this.B2();
                return;
            }
            if (i10 != 4) {
                return;
            }
            Conversation conversation = DialogTranslationActivity.this.L0;
            if (conversation != null && conversation.isLeft() && (lottieAnimationView = DialogTranslationActivity.this.J0) != null) {
                lottieAnimationView.setVisibility(0);
            }
            LottieAnimationView lottieAnimationView2 = DialogTranslationActivity.this.f6162e0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonLottie");
                lottieAnimationView2 = null;
            }
            if (lottieAnimationView2.q()) {
                DialogTranslationActivity.this.F3();
            }
        }
    }

    static final class q extends kotlin.jvm.internal.s implements w8.a {
        public static final q INSTANCE = new q();

        q() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final k0 mo8invoke() {
            return new k0();
        }
    }

    public static final class r implements a.InterfaceC0143a {
        r() {
        }

        @Override // g2.a.InterfaceC0143a
        public void onCallStateChanged(int i10) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogTranslationActivity", "onCallStateChanged: " + i10);
            if (i10 == 1 || i10 == 2) {
                aVar.d("DialogTranslationActivity", "Phone call detected, stopping TTS");
                DialogTranslationActivity.a2(DialogTranslationActivity.this).Q0();
                n8.q qVar = (n8.q) DialogTranslationActivity.a2(DialogTranslationActivity.this).O().e();
                if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
                    return;
                }
                DialogTranslationActivity.a2(DialogTranslationActivity.this).O().k(new n8.q(qVar.getFirst(), Boolean.FALSE));
            }
        }
    }

    static final class s extends kotlin.jvm.internal.s implements w8.l {
        s() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mChooseLanguageView onFromLangeClickListener");
            DialogTranslationActivity.a2(DialogTranslationActivity.this).k0().n(Boolean.TRUE);
            DialogTranslationActivity.a2(DialogTranslationActivity.this).m0().n(Boolean.FALSE);
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                com.coloros.translate.o.H(oVar, false, 1, null);
            }
        }
    }

    static final class t extends kotlin.jvm.internal.s implements w8.l {
        t() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mChooseLanguageView onToLangeClickListener");
            DialogTranslationActivity.a2(DialogTranslationActivity.this).k0().n(Boolean.FALSE);
            DialogTranslationActivity.a2(DialogTranslationActivity.this).m0().n(Boolean.TRUE);
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                oVar.G(false);
            }
        }
    }

    static final class u extends kotlin.jvm.internal.s implements w8.l {
        u() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                oVar.M();
            }
        }
    }

    static final class v extends kotlin.jvm.internal.s implements w8.l {
        v() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mChooseLanguageViewBelowToolbar onFromLangeClickListener");
            DialogTranslationActivity.a2(DialogTranslationActivity.this).k0().n(Boolean.TRUE);
            DialogTranslationActivity.a2(DialogTranslationActivity.this).m0().n(Boolean.FALSE);
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                com.coloros.translate.o.H(oVar, false, 1, null);
            }
        }
    }

    static final class w extends kotlin.jvm.internal.s implements w8.l {
        w() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mChooseLanguageViewBelowToolbar onToLangeClickListener");
            DialogTranslationActivity.a2(DialogTranslationActivity.this).k0().n(Boolean.FALSE);
            DialogTranslationActivity.a2(DialogTranslationActivity.this).m0().n(Boolean.TRUE);
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                oVar.G(false);
            }
        }
    }

    static final class x extends kotlin.jvm.internal.s implements w8.l {
        x() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            com.coloros.translate.o oVar = DialogTranslationActivity.this.O;
            if (oVar != null) {
                oVar.M();
            }
        }
    }

    static final class y extends kotlin.jvm.internal.s implements w8.p {
        final /* synthetic */ boolean $needShowTips;
        final /* synthetic */ DialogTranslationActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(boolean z10, DialogTranslationActivity dialogTranslationActivity) {
            super(2);
            this.$needShowTips = z10;
            this.this$0 = dialogTranslationActivity;
        }

        public static final void invoke$lambda$0(DialogTranslationActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this$0.e3();
        }

        @Override // w8.p
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke(((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(boolean z10, boolean z11) {
            if (z11) {
                if (this.$needShowTips) {
                    if (z10 || !((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "key_is_show_double_screen_open_tips", Boolean.TRUE, null, 4, null)).booleanValue()) {
                        Toast.makeText(this.this$0, com.coloros.translate.utils.n0.b(R.string.double_screen_open_tips), 0).show();
                    } else {
                        this.this$0.G3();
                    }
                }
                this.this$0.q3();
            }
            if (!z10) {
                this.this$0.j3();
            } else if (kotlin.jvm.internal.r.a(DialogTranslationActivity.a2(this.this$0).I().e(), Boolean.TRUE)) {
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.d("DialogTranslationActivity", "asr is running must be stop");
                if (DialogTranslationActivity.a2(this.this$0).M().getFromText().length() == 0) {
                    this.this$0.H0 = true;
                } else {
                    aVar.d("DialogTranslationActivity", "the translate result has not back");
                }
                DialogTranslationActivity.a2(this.this$0).R0();
                final DialogTranslationActivity dialogTranslationActivity = this.this$0;
                com.coloros.translate.utils.z0.g(500L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogTranslationActivity.y.invoke$lambda$0(dialogTranslationActivity);
                    }
                });
            } else {
                this.this$0.e3();
            }
            this.this$0.U3(z10);
        }
    }

    public static final class z implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ LottieAnimationView f6193a;

        z(LottieAnimationView lottieAnimationView) {
            this.f6193a = lottieAnimationView;
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
            this.f6193a.setMinFrame(15);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
        }
    }

    public final void A3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "setRecordingButtonRunningState");
        if (this.U) {
            return;
        }
        ImageView imageView = this.f6163f0;
        LottieAnimationView lottieAnimationView = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView = null;
        }
        imageView.setImageDrawable(r.a.e(this, R.drawable.mic_stop_button));
        ImageView imageView2 = this.f6163f0;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView2 = null;
        }
        imageView2.setContentDescription(getResources().getString(R.string.click_to_stop_speak));
        TextView textView = this.f6161d0;
        if (textView == null) {
            kotlin.jvm.internal.r.r("mRecordingTips");
            textView = null;
        }
        textView.setText(R.string.click_to_stop_speak);
        L3();
        LottieAnimationView lottieAnimationView2 = this.f6162e0;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
        } else {
            lottieAnimationView = lottieAnimationView2;
        }
        lottieAnimationView.setVisibility(0);
        this.U = true;
        F3();
    }

    public final void B2() {
        View view = this.f6183z0;
        if (view != null) {
            if ((view != null ? view.getParent() : null) != null) {
                com.coloros.translate.utils.c0.f7098a.q("DialogTranslationActivity", "addOutScreenView -> mOutScreenView is null or parent not null");
                return;
            }
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogTranslationActivity", "addOutScreenView   mOutScreenView:" + this.f6183z0);
        this.f6183z0 = LayoutInflater.from(this).inflate(R.layout.dailoague_content_layout_out_screen, (ViewGroup) null);
        if (O2().f(this, this.f6183z0)) {
            U2();
            U3(O2().k());
            return;
        }
        aVar.q("DialogTranslationActivity", "addOutScreenView fail");
        androidx.appcompat.app.c cVar = this.f6180w0;
        if (cVar != null) {
            cVar.dismiss();
        }
        n3();
    }

    public final void B3() {
        COUIToolbar cOUIToolbar = this.f6158a0;
        COUIToolbar cOUIToolbar2 = null;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.getMenu().clear();
        COUIToolbar cOUIToolbar3 = this.f6158a0;
        if (cOUIToolbar3 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar3 = null;
        }
        cOUIToolbar3.inflateMenu(R.menu.menu_edit_mode);
        COUIToolbar cOUIToolbar4 = this.f6158a0;
        if (cOUIToolbar4 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar4 = null;
        }
        cOUIToolbar4.setSubtitle((CharSequence) null);
        COUIToolbar cOUIToolbar5 = this.f6158a0;
        if (cOUIToolbar5 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar5 = null;
        }
        cOUIToolbar5.setIsTitleCenterStyle(true);
        COUIToolbar cOUIToolbar6 = this.f6158a0;
        if (cOUIToolbar6 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar6 = null;
        }
        cOUIToolbar6.setTitle(getString(R.string.select_project));
        COUIToolbar cOUIToolbar7 = this.f6158a0;
        if (cOUIToolbar7 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar7 = null;
        }
        cOUIToolbar7.setNavigationIcon((Drawable) null);
        COUIToolbar cOUIToolbar8 = this.f6158a0;
        if (cOUIToolbar8 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
        } else {
            cOUIToolbar2 = cOUIToolbar8;
        }
        cOUIToolbar2.setTitleMarginStart(this.E);
    }

    private final void C2(int i10) {
        LottieAnimationView lottieAnimationView = this.f6162e0;
        View view = null;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            lottieAnimationView = null;
        }
        ViewGroup.LayoutParams layoutParams = lottieAnimationView.getLayoutParams();
        kotlin.jvm.internal.r.c(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.width = i10;
        layoutParams2.height = i10;
        LottieAnimationView lottieAnimationView2 = this.f6162e0;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            lottieAnimationView2 = null;
        }
        lottieAnimationView2.setLayoutParams(layoutParams2);
        ImageView imageView = this.f6163f0;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView = null;
        }
        ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
        kotlin.jvm.internal.r.c(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
        layoutParams4.width = i10;
        layoutParams4.height = i10;
        ImageView imageView2 = this.f6163f0;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView2 = null;
        }
        imageView2.setLayoutParams(layoutParams4);
        View view2 = this.f6160c0;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonContainer");
            view2 = null;
        }
        ViewGroup.LayoutParams layoutParams5 = view2.getLayoutParams();
        kotlin.jvm.internal.r.c(layoutParams5, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
        RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) layoutParams5;
        layoutParams6.height = i10 + getResources().getDimensionPixelOffset(R.dimen.dp_8);
        View view3 = this.f6160c0;
        if (view3 == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonContainer");
        } else {
            view = view3;
        }
        view.setLayoutParams(layoutParams6);
    }

    private final void C3(long j10) {
        if (this.V && !this.N && ((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "need_show_double_screen_tips", Boolean.TRUE, null, 4, null)).booleanValue()) {
            this.N = true;
            COUIToolTips cOUIToolTips = new COUIToolTips(this);
            cOUIToolTips.setDismissOnTouchOutside(true);
            com.coloros.translate.utils.w0.INSTANCE.a().postDelayed(new b(this, cOUIToolTips, R.string.double_screen_switch_tips, R.id.double_screen), j10);
        }
    }

    private final boolean D2() {
        if (j0()) {
            return false;
        }
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        if (!aVar.b()) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (Math.abs(jCurrentTimeMillis - this.H) < 600) {
            return false;
        }
        this.H = jCurrentTimeMillis;
        Vibrator vibrator = this.C;
        if (vibrator != null) {
            vibrator.vibrate(30L);
        }
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            LottieAnimationView lottieAnimationView = this.f6162e0;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonLottie");
                lottieAnimationView = null;
            }
            if (!lottieAnimationView.q()) {
                com.coloros.translate.utils.w.h(R.string.no_network, 0, 2, null);
                return false;
            }
        }
        if (!aVar.e().C() || com.coloros.translate.permission.a.f5407c.a().d(this)) {
            return false;
        }
        if (!((i0) o0()).Y()) {
            return true;
        }
        com.coloros.translate.utils.c0.f7098a.q("DialogTranslationActivity", "the text is translate!");
        return false;
    }

    private final void D3() {
        ImageView imageView = this.A0;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        COUITextView cOUITextView = this.I0;
        if (cOUITextView != null) {
            cOUITextView.setVisibility(8);
        }
        COUITextView cOUITextView2 = this.K0;
        if (cOUITextView2 != null) {
            cOUITextView2.setVisibility(8);
        }
        TextView textView = this.B0;
        if (textView != null) {
            textView.setVisibility(8);
        }
        TextView textView2 = this.C0;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        TextView textView3 = this.D0;
        if (textView3 == null) {
            return;
        }
        textView3.setVisibility(0);
    }

    private final void E2(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.i("DialogTranslationActivity", "closeOutScreen mDoubleScreenEnable:" + this.W + " mOutScreenManager:" + O2());
        O2().q(this);
        this.N0.removeMessages(1);
        this.N0.removeMessages(3);
        this.N0.removeMessages(2);
        this.N0.removeMessages(4);
        this.L0 = null;
        if (z10) {
            this.N0.sendEmptyMessageDelayed(2, 500L);
            return;
        }
        O3();
        w3();
        O2().g();
    }

    private final void E3() {
        COUITextView cOUITextView = this.I0;
        if (cOUITextView != null) {
            cOUITextView.setVisibility(8);
        }
        COUITextView cOUITextView2 = this.K0;
        if (cOUITextView2 != null) {
            cOUITextView2.setVisibility(8);
        }
        ImageView imageView = this.A0;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        TextView textView = this.B0;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = this.C0;
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
        TextView textView3 = this.D0;
        if (textView3 == null) {
            return;
        }
        textView3.setVisibility(8);
    }

    static /* synthetic */ void F2(DialogTranslationActivity dialogTranslationActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        dialogTranslationActivity.E2(z10);
    }

    public final void F3() {
        LottieAnimationView lottieAnimationView;
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "showOutScreenRecognizingLottie");
        TextView textView = this.F0;
        if (textView != null) {
            textView.setText(N2(R.string.listening));
        }
        if (!b3() || (lottieAnimationView = this.G0) == null || lottieAnimationView.q() || !this.U) {
            return;
        }
        Q2();
        O3();
        Flow flow = this.E0;
        if (flow != null) {
            flow.setVisibility(0);
        }
        LottieAnimationView lottieAnimationView2 = this.G0;
        if (lottieAnimationView2 != null) {
            lottieAnimationView2.v();
        }
    }

    public final void G2() {
        String quantityString;
        String string;
        if (this.M) {
            androidx.appcompat.app.c cVar = this.J;
            if (cVar != null) {
                cVar.dismiss();
            }
            this.J = null;
        }
        int size = ((i0) o0()).g0().size();
        h0 h0Var = this.f6170m0;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        if (size == h0Var.i().size()) {
            quantityString = getResources().getString(R.string.if_remove_all_items);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
            string = getResources().getString(R.string.remove_all_items);
            kotlin.jvm.internal.r.d(string, "getString(...)");
            this.K = true;
        } else if (((i0) o0()).g0().size() == 1) {
            quantityString = getResources().getString(R.string.if_delete_one_item);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
            String string2 = getResources().getString(R.string.delete_one_item);
            kotlin.jvm.internal.r.d(string2, "getString(...)");
            this.K = false;
            string = string2;
        } else {
            quantityString = getResources().getQuantityString(R.plurals.if_delete_item, ((i0) o0()).g0().size(), Integer.valueOf(((i0) o0()).g0().size()));
            kotlin.jvm.internal.r.d(quantityString, "getQuantityString(...)");
            String quantityString2 = getResources().getQuantityString(R.plurals.delete_item, ((i0) o0()).g0().size(), Integer.valueOf(((i0) o0()).g0().size()));
            kotlin.jvm.internal.r.d(quantityString2, "getQuantityString(...)");
            this.K = false;
            string = quantityString2;
        }
        androidx.appcompat.app.c cVar2 = this.J;
        if (cVar2 != null && cVar2 != null) {
            cVar2.dismiss();
        }
        String string3 = getResources().getString(R$string.action_cancel);
        kotlin.jvm.internal.r.d(string3, "getString(...)");
        COUIAlertDialogBuilder blurBackgroundDrawable = new COUIAlertDialogBuilder(this).setTitle((CharSequence) quantityString).setMessage((CharSequence) string).setBlurBackgroundDrawable(true, AnimLevel.HIGN_END);
        int size2 = ((i0) o0()).g0().size();
        h0 h0Var2 = this.f6170m0;
        if (h0Var2 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var2 = null;
        }
        COUIAlertDialogBuilder negativeButton = blurBackgroundDrawable.setNeutralButton(size2 == h0Var2.i().size() ? R.string.delete_all : R.string.action_delete, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.x
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                DialogTranslationActivity.H2(this.f6364a, dialogInterface, i10);
            }
        }).setNegativeButton((CharSequence) string3, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.y
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                DialogTranslationActivity.I2(dialogInterface, i10);
            }
        });
        this.R = negativeButton;
        this.J = negativeButton != null ? negativeButton.show() : null;
    }

    public final void G3() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_start_double_screen_tips, (ViewGroup) null);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        View viewFindViewById = viewInflate.findViewById(R.id.cb_is_never_show);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        final COUICheckBox cOUICheckBox = (COUICheckBox) viewFindViewById;
        ((COUITextView) viewInflate.findViewById(R.id.tx_tips2)).setMovementMethod(ScrollingMovementMethod.getInstance());
        androidx.appcompat.app.c cVar = this.f6180w0;
        if (cVar != null) {
            cVar.dismiss();
        }
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this);
        cOUIAlertDialogBuilder.setCancelable(false);
        cOUIAlertDialogBuilder.setView(viewInflate);
        this.f6180w0 = cOUIAlertDialogBuilder.setPositiveButton(R.string.me_know, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.p
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                DialogTranslationActivity.H3(cOUICheckBox, this, dialogInterface, i10);
            }
        }, true).show();
    }

    public static final void H2(DialogTranslationActivity this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ((i0) this$0.o0()).M0(false);
        ((i0) this$0.o0()).Q0();
        if (this$0.K) {
            ((i0) this$0.o0()).C();
            f1.f7117a.c(this$0, "event_clear_for_dialog", this$0.S.getSortIndex(), this$0.T.getSortIndex());
        } else {
            for (Map.Entry entry : ((i0) this$0.o0()).g0().entrySet()) {
                if (Integer.parseInt((String) entry.getKey()) < ((i0) this$0.o0()).K().size()) {
                    f1.f7117a.c(this$0, "event_delete_for_dialog", this$0.S.getSortIndex(), this$0.T.getSortIndex());
                }
            }
            ((i0) this$0.o0()).D();
        }
        ((i0) this$0.o0()).V().k(Boolean.FALSE);
    }

    public static final void H3(COUICheckBox neverShowCB, DialogTranslationActivity this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(neverShowCB, "$neverShowCB");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (neverShowCB.isChecked()) {
            l0.a.l(com.coloros.translate.utils.l0.f7130a, "key_is_show_double_screen_open_tips", Boolean.FALSE, false, null, 12, null);
        }
        Toast.makeText(this$0, com.coloros.translate.utils.n0.b(R.string.double_screen_open_tips), 0).show();
    }

    public static final void I2(DialogInterface dialogInterface, int i10) {
    }

    private final void I3(boolean z10) {
        Intent intentPutExtra = new Intent(this, (Class<?>) FaceToFaceTranslateActivity.class).putExtra("isFromEar", z10);
        kotlin.jvm.internal.r.d(intentPutExtra, "putExtra(...)");
        startActivityForResult(intentPutExtra, 2);
        if (!z10) {
            overridePendingTransition(R$anim.coui_push_up_enter_activitydialog, 0);
        }
        if (!z10) {
            com.coloros.translate.utils.n.INSTANCE.h("1");
        } else {
            com.coloros.translate.utils.n.INSTANCE.h("2");
            finish();
        }
    }

    public final void J2(COUIRecyclerView cOUIRecyclerView, int i10) {
        h0 h0Var = this.f6170m0;
        h0 h0Var2 = null;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        if (h0Var.j()) {
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "doScrollToPositionWithOffset return");
            return;
        }
        if (i10 < 0 || cOUIRecyclerView.getChildCount() <= 0) {
            return;
        }
        h0 h0Var3 = this.f6170m0;
        if (h0Var3 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var3 = null;
        }
        if (!h0Var3.l()) {
            RecyclerView.p layoutManager = cOUIRecyclerView.getLayoutManager();
            COUILinearLayoutManager cOUILinearLayoutManager = layoutManager instanceof COUILinearLayoutManager ? (COUILinearLayoutManager) layoutManager : null;
            if (cOUILinearLayoutManager != null) {
                cOUILinearLayoutManager.scrollToPositionWithOffset(i10, -cOUIRecyclerView.getChildAt(cOUIRecyclerView.getChildCount() - 1).getHeight());
                return;
            }
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "doScrollToPositionWithOffset smoothScroll");
        h0 h0Var4 = this.f6170m0;
        if (h0Var4 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var2 = h0Var4;
        }
        h0Var2.z(false);
        cOUIRecyclerView.smoothScrollToPosition(i10);
    }

    static /* synthetic */ void J3(DialogTranslationActivity dialogTranslationActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        dialogTranslationActivity.I3(z10);
    }

    private final void K2() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "enterHoverMode mOutScreenConversation:" + this.L0);
        if (this.L0 != null) {
            Q2();
        } else {
            D3();
        }
        LottieAnimationView lottieAnimationView = this.f6162e0;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            lottieAnimationView = null;
        }
        if (lottieAnimationView.q()) {
            F3();
        }
        T3(this.L0);
    }

    private final void K3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "startOutScreenTTSAnimation mOutPlayTts:" + this.J0);
        LottieAnimationView lottieAnimationView = this.J0;
        if (lottieAnimationView != null) {
            kotlin.jvm.internal.r.b(lottieAnimationView);
            if (lottieAnimationView.q()) {
                return;
            }
            LottieAnimationView lottieAnimationView2 = this.J0;
            kotlin.jvm.internal.r.b(lottieAnimationView2);
            lottieAnimationView2.setVisibility(0);
            lottieAnimationView2.x();
            lottieAnimationView2.setMinFrame(0);
            lottieAnimationView2.setMaxFrame(69);
            lottieAnimationView2.g(new z(lottieAnimationView2));
            lottieAnimationView2.v();
        }
    }

    private final void L2() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "exitHoverMode   mOutScreenView:" + this.f6183z0);
        O3();
        COUITextView cOUITextView = this.K0;
        if (cOUITextView != null) {
            cOUITextView.setVisibility(8);
        }
        COUITextView cOUITextView2 = this.I0;
        if (cOUITextView2 != null) {
            cOUITextView2.setVisibility(8);
        }
        LottieAnimationView lottieAnimationView = this.J0;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(8);
        }
        E3();
        this.L0 = null;
    }

    private final void L3() {
        LottieAnimationView lottieAnimationView = this.f6162e0;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            lottieAnimationView = null;
        }
        lottieAnimationView.B(136, 298);
        lottieAnimationView.g(new a0(lottieAnimationView));
        lottieAnimationView.v();
    }

    private final LanguageManager M2() {
        return (LanguageManager) this.f6177t0.getValue();
    }

    private final void M3(Intent intent) {
        if (intent != null) {
            if (kotlin.jvm.internal.r.a(intent.getAction(), "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT")) {
                com.coloros.translate.utils.n.INSTANCE.e("3");
                return;
            }
            if (kotlin.jvm.internal.r.a(intent.getAction(), "oplus.translate.action.intent.conversation_translation")) {
                com.coloros.translate.utils.n.INSTANCE.e("2");
            } else if (kotlin.jvm.internal.r.a(intent.getStringExtra("extra_from"), "from_cube")) {
                com.coloros.translate.utils.n.INSTANCE.e("5");
            } else {
                com.coloros.translate.utils.n.INSTANCE.e("1");
            }
        }
    }

    private final String N2(int i10) {
        return LanguageManager.f4727w.b().r(i10, this.T.getLanguageCode());
    }

    private final void N3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "stopOutScreenTTSAnimation mOutPlayTts:" + this.J0);
        LottieAnimationView lottieAnimationView = this.J0;
        if (lottieAnimationView != null) {
            lottieAnimationView.w();
            lottieAnimationView.setMinFrame(0);
            com.coloros.translate.utils.w.e(lottieAnimationView);
        }
    }

    public final k0 O2() {
        return (k0) this.f6181x0.getValue();
    }

    public final void O3() {
        n8.q qVar;
        n8.q qVar2;
        Conversation conversation = this.L0;
        if (conversation == null || (qVar = (n8.q) ((i0) o0()).O().e()) == null || ((Number) qVar.getFirst()).longValue() != conversation.getId() || (qVar2 = (n8.q) ((i0) o0()).O().e()) == null || !((Boolean) qVar2.getSecond()).booleanValue()) {
            return;
        }
        ((i0) o0()).q0(conversation);
    }

    private final void P2() {
        LottieAnimationView lottieAnimationView;
        LottieAnimationView lottieAnimationView2 = this.G0;
        if (lottieAnimationView2 != null && lottieAnimationView2.q() && (lottieAnimationView = this.G0) != null) {
            com.coloros.translate.utils.w.e(lottieAnimationView);
        }
        Flow flow = this.E0;
        if (flow == null) {
            return;
        }
        flow.setVisibility(8);
    }

    private final void P3() {
        LottieAnimationView lottieAnimationView = this.f6162e0;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            lottieAnimationView = null;
        }
        lottieAnimationView.w();
        lottieAnimationView.g(new b0(lottieAnimationView));
        com.coloros.translate.utils.w.e(lottieAnimationView);
    }

    private final void Q2() {
        ImageView imageView = this.A0;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        TextView textView = this.B0;
        if (textView != null) {
            textView.setVisibility(8);
        }
        TextView textView2 = this.C0;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        TextView textView3 = this.D0;
        if (textView3 == null) {
            return;
        }
        textView3.setVisibility(8);
    }

    private final void Q3() {
        if (kotlin.jvm.internal.r.a(this.f6178u0.getFromLanguage(), this.S.getLanguageCode()) && kotlin.jvm.internal.r.a(this.f6178u0.getToLanguage(), this.T.getLanguageCode())) {
            return;
        }
        R3(this.f6178u0);
        h0 h0Var = this.f6170m0;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        h0Var.s(this.f6178u0);
    }

    private final void R2() {
        s0(((i0) o0()).I(), new f());
        s0(((i0) o0()).H(), new g());
        s0(((i0) o0()).G(), new h());
        s0(((i0) o0()).d0(), new i());
        s0(((i0) o0()).c0(), new j());
        s0(((i0) o0()).O(), new k());
        s0(((i0) o0()).f0(), new l());
        s0(((i0) o0()).J(), new m());
        s0(((i0) o0()).V(), new n());
        s0(((i0) o0()).k0(), new d());
        s0(((i0) o0()).m0(), new e());
    }

    public final void R3(Conversation conversation) {
        LanguageManager.d dVar = LanguageManager.f4727w;
        n8.q qVarQ = dVar.b().q("voice");
        String languageCode = ((com.coloros.translate.b) qVarQ.getFirst()).getLanguageCode();
        String languageCode2 = ((com.coloros.translate.b) qVarQ.getSecond()).getLanguageCode();
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "updateDefaultConversationItem " + languageCode + " to " + languageCode2);
        conversation.setFromText(dVar.b().r(R.string.dialog_sample_text, languageCode));
        conversation.setToText(dVar.b().r(R.string.dialog_sample_text, languageCode2));
        conversation.setFromLanguage(languageCode);
        conversation.setToLanguage(languageCode2);
        conversation.setLeft(true);
        conversation.setRecognizeing(false);
        conversation.setExpandField1("sample");
    }

    public final void S2() {
        COUIToolbar cOUIToolbar = this.f6158a0;
        COUIToolbar cOUIToolbar2 = null;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.getMenu().clear();
        COUIToolbar cOUIToolbar3 = this.f6158a0;
        if (cOUIToolbar3 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar3 = null;
        }
        cOUIToolbar3.inflateMenu(R.menu.voice_translation_menu);
        COUIToolbar cOUIToolbar4 = this.f6158a0;
        if (cOUIToolbar4 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar4 = null;
        }
        cOUIToolbar4.setSubtitle((CharSequence) null);
        COUIToolbar cOUIToolbar5 = this.f6158a0;
        if (cOUIToolbar5 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar5 = null;
        }
        boolean z10 = false;
        cOUIToolbar5.setIsTitleCenterStyle(false);
        COUIToolbar cOUIToolbar6 = this.f6158a0;
        if (cOUIToolbar6 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar6 = null;
        }
        cOUIToolbar6.setTitleMarginStart(0);
        COUIToolbar cOUIToolbar7 = this.f6158a0;
        if (cOUIToolbar7 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar7 = null;
        }
        cOUIToolbar7.setTitle(getString(R.string.dialog_translation));
        COUIToolbar cOUIToolbar8 = this.f6158a0;
        if (cOUIToolbar8 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar8 = null;
        }
        cOUIToolbar8.setNavigationIcon(R$drawable.coui_back_arrow);
        COUIToolbar cOUIToolbar9 = this.f6158a0;
        if (cOUIToolbar9 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar9 = null;
        }
        cOUIToolbar9.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogTranslationActivity.T2(this.f6335a, view);
            }
        });
        COUIToolbar cOUIToolbar10 = this.f6158a0;
        if (cOUIToolbar10 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar10 = null;
        }
        MenuItem menuItemFindItem = cOUIToolbar10.getMenu().findItem(R.id.select_mode);
        h0 h0Var = this.f6170m0;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        menuItemFindItem.setVisible(h0Var.i().size() != 0);
        COUIToolbar cOUIToolbar11 = this.f6158a0;
        if (cOUIToolbar11 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
        } else {
            cOUIToolbar2 = cOUIToolbar11;
        }
        MenuItem menuItemFindItem2 = cOUIToolbar2.getMenu().findItem(R.id.double_screen);
        if (this.V && O2().l() && com.coloros.translate.utils.a.b()) {
            z10 = true;
        }
        menuItemFindItem2.setVisible(z10);
        y3();
    }

    public final void S3() {
        h0 h0Var = null;
        COUITextView cOUITextView = null;
        if (!b3()) {
            COUITextView cOUITextView2 = this.f6176s0;
            if (cOUITextView2 == null) {
                kotlin.jvm.internal.r.r("mInnerScreenEmptyTips");
            } else {
                cOUITextView = cOUITextView2;
            }
            cOUITextView.setVisibility(8);
            return;
        }
        COUITextView cOUITextView3 = this.f6176s0;
        if (cOUITextView3 == null) {
            kotlin.jvm.internal.r.r("mInnerScreenEmptyTips");
            cOUITextView3 = null;
        }
        h0 h0Var2 = this.f6168k0;
        if (h0Var2 == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
        } else {
            h0Var = h0Var2;
        }
        if (h0Var.getItemCount() > 0) {
            cOUITextView3.setVisibility(8);
            return;
        }
        String string = getString(this.S.getFullNameResId());
        kotlin.jvm.internal.r.d(string, "getString(...)");
        String string2 = getString(this.T.getFullNameResId());
        kotlin.jvm.internal.r.d(string2, "getString(...)");
        String string3 = getString(R.string.double_screen_empty_layout_tips, string, string2);
        kotlin.jvm.internal.r.d(string3, "getString(...)");
        int iW = kotlin.text.r.W(string3, string, 0, false, 6, null);
        int iW2 = kotlin.text.r.W(string3, string2, 0, false, 6, null);
        SpannableString spannableString = new SpannableString(string3);
        spannableString.setSpan(new ForegroundColorSpan(getColor(R$color.coui_color_label_primary)), iW, string.length() + iW, 33);
        spannableString.setSpan(new ForegroundColorSpan(getColor(R$color.coui_color_label_primary)), iW2, string2.length() + iW2, 33);
        cOUITextView3.setText(spannableString);
        cOUITextView3.setVisibility(0);
    }

    public static final void T2(DialogTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        P0 = null;
        this$0.finish();
    }

    public final void T3(Conversation conversation) {
        if (b3()) {
            if (conversation == null) {
                COUITextView cOUITextView = this.K0;
                if (cOUITextView != null) {
                    cOUITextView.setVisibility(8);
                }
                COUITextView cOUITextView2 = this.I0;
                if (cOUITextView2 != null) {
                    cOUITextView2.setVisibility(8);
                }
                P2();
                return;
            }
            LottieAnimationView lottieAnimationView = this.J0;
            if (lottieAnimationView != null) {
                lottieAnimationView.setVisibility(8);
            }
            if (!conversation.isLeft()) {
                if (TextUtils.isEmpty(conversation.getFromText())) {
                    F3();
                    return;
                }
                if (!kotlin.jvm.internal.r.a(this.L0, conversation)) {
                    this.L0 = conversation;
                }
                COUITextView cOUITextView3 = this.I0;
                if (cOUITextView3 != null) {
                    cOUITextView3.setVisibility(8);
                }
                COUITextView cOUITextView4 = this.K0;
                if (cOUITextView4 != null) {
                    cOUITextView4.setVisibility(0);
                }
                COUITextView cOUITextView5 = this.K0;
                if (cOUITextView5 != null) {
                    cOUITextView5.setText(conversation.getFromText());
                }
                Q2();
                P2();
                this.N0.removeMessages(4);
                this.N0.sendEmptyMessageDelayed(4, COUIScrollBar.SCROLLER_FADE_TIMEOUT);
                return;
            }
            if (TextUtils.isEmpty(conversation.getToText())) {
                if (!TextUtils.isEmpty(conversation.getFromText())) {
                    TextView textView = this.F0;
                    if (textView != null) {
                        textView.setText(N2(R.string.other_speaking));
                    }
                    this.L0 = conversation;
                }
                F3();
                return;
            }
            if (!kotlin.jvm.internal.r.a(this.L0, conversation)) {
                this.L0 = conversation;
            }
            COUITextView cOUITextView6 = this.I0;
            if (cOUITextView6 != null) {
                cOUITextView6.setVisibility(0);
            }
            COUITextView cOUITextView7 = this.K0;
            if (cOUITextView7 != null) {
                cOUITextView7.setVisibility(8);
            }
            Q2();
            LottieAnimationView lottieAnimationView2 = this.f6162e0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonLottie");
                lottieAnimationView2 = null;
            }
            if (!lottieAnimationView2.q()) {
                P2();
            }
            COUITextView cOUITextView8 = this.I0;
            if (cOUITextView8 != null) {
                cOUITextView8.setText(conversation.getToText());
            }
            TextView textView2 = this.F0;
            if (textView2 != null) {
                textView2.setText(N2(R.string.other_speaking));
            }
            this.N0.removeMessages(4);
            this.N0.sendEmptyMessageDelayed(4, COUIScrollBar.SCROLLER_FADE_TIMEOUT);
        }
    }

    private final void U2() {
        View view = this.f6183z0;
        if (view != null) {
            this.A0 = (ImageView) view.findViewById(R.id.iv_tips_img);
            this.B0 = (TextView) view.findViewById(R.id.tv_tips);
            this.C0 = (TextView) view.findViewById(R.id.tv_tips_secondary);
            this.D0 = (TextView) view.findViewById(R.id.tv_empty_tips);
            this.E0 = (Flow) view.findViewById(R.id.group_recognizing);
            this.F0 = (TextView) view.findViewById(R.id.tv_recognizing_tips);
            this.G0 = (LottieAnimationView) view.findViewById(R.id.recognizing_lottie_out_screen);
            COUITextView cOUITextView = (COUITextView) view.findViewById(R.id.translated_language);
            this.I0 = cOUITextView;
            if (cOUITextView != null) {
                cOUITextView.setMovementMethod(ScrollingMovementMethod.getInstance());
            }
            LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(R.id.ttsPlay);
            lottieAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogTranslationActivity.V2(this.f6329a, view2);
                }
            });
            this.J0 = lottieAnimationView;
            COUITextView cOUITextView2 = (COUITextView) view.findViewById(R.id.recognized_language);
            this.K0 = cOUITextView2;
            if (cOUITextView2 != null) {
                cOUITextView2.setMovementMethod(ScrollingMovementMethod.getInstance());
            }
            TextView textView = this.D0;
            if (textView != null) {
                textView.setText(N2(R.string.out_side_screen_tips));
            }
            TextView textView2 = this.F0;
            if (textView2 == null) {
                return;
            }
            textView2.setText(N2(R.string.listening));
        }
    }

    public final void U3(boolean z10) {
        if (z10) {
            K2();
        } else {
            L2();
        }
    }

    public static final void V2(DialogTranslationActivity this$0, View view) {
        Conversation conversation;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || !com.coloros.translate.repository.d.f5439a.b() || (conversation = this$0.L0) == null) {
            return;
        }
        ((i0) this$0.o0()).R0();
        ((i0) this$0.o0()).q0(conversation);
    }

    public final void V3(n8.q qVar) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogTranslationActivity", "startOutScreenTTSAnimation mOutScreenConversation:" + this.L0);
        Conversation conversation = this.L0;
        if (conversation != null) {
            aVar.d("DialogTranslationActivity", "startOutScreenTTSAnimation outId:" + conversation.getId() + " id:" + qVar.getFirst() + "  isPlay:" + qVar.getSecond());
            if (((Number) qVar.getFirst()).longValue() == conversation.getId()) {
                if (((Boolean) qVar.getSecond()).booleanValue()) {
                    K3();
                } else {
                    N3();
                }
            }
        }
    }

    private final void W2() {
        View viewFindViewById = findViewById(R.id.up_recycler);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        COUIRecyclerView cOUIRecyclerView = (COUIRecyclerView) viewFindViewById;
        this.f6167j0 = cOUIRecyclerView;
        COUIRecyclerView cOUIRecyclerView2 = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        cOUIRecyclerView.setLayoutManager(new COUILinearLayoutManager(cOUIRecyclerView.getContext(), 1, false));
        h0 h0Var = new h0(this);
        h0Var.y((i0) o0());
        h0Var.x(2);
        this.f6168k0 = h0Var;
        cOUIRecyclerView.setAdapter(h0Var);
        RecyclerView.m itemAnimator = cOUIRecyclerView.getItemAnimator();
        kotlin.jvm.internal.r.c(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((androidx.recyclerview.widget.x) itemAnimator).R(false);
        View viewFindViewById2 = findViewById(R.id.recycler);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIRecyclerView cOUIRecyclerView3 = (COUIRecyclerView) viewFindViewById2;
        this.f6169l0 = cOUIRecyclerView3;
        if (cOUIRecyclerView3 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView3 = null;
        }
        cOUIRecyclerView3.setLayoutManager(new COUILinearLayoutManager(cOUIRecyclerView3.getContext(), 1, false));
        h0 h0Var2 = new h0(this);
        h0Var2.y((i0) o0());
        h0Var2.x(0);
        this.f6170m0 = h0Var2;
        cOUIRecyclerView3.setAdapter(h0Var2);
        RecyclerView.m itemAnimator2 = cOUIRecyclerView3.getItemAnimator();
        kotlin.jvm.internal.r.c(itemAnimator2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((androidx.recyclerview.widget.x) itemAnimator2).R(false);
        COUIRecyclerView cOUIRecyclerView4 = this.f6169l0;
        if (cOUIRecyclerView4 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView4 = null;
        }
        cOUIRecyclerView4.setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.dialoguetranslation.r
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return DialogTranslationActivity.X2(this.f6343a, view, motionEvent);
            }
        });
        this.f6171n0 = new w1.c(this);
        if (com.coloros.translate.utils.o0.e()) {
            return;
        }
        COUIRecyclerView cOUIRecyclerView5 = this.f6169l0;
        if (cOUIRecyclerView5 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
        } else {
            cOUIRecyclerView2 = cOUIRecyclerView5;
        }
        ((COUIPercentWidthRecyclerView) cOUIRecyclerView2).setPercentIndentEnabled(false);
    }

    public static final boolean X2(DialogTranslationActivity this$0, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        h0 h0Var = null;
        if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
            h0 h0Var2 = this$0.f6170m0;
            if (h0Var2 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var2 = null;
            }
            h0Var2.z(false);
            if (((i0) this$0.o0()).S()) {
                h0 h0Var3 = this$0.f6170m0;
                if (h0Var3 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                } else {
                    h0Var = h0Var3;
                }
                h0Var.w(true);
                return true;
            }
            h0 h0Var4 = this$0.f6170m0;
            if (h0Var4 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var4 = null;
            }
            if (!h0Var4.j()) {
                w1.c cVar = this$0.f6171n0;
                if (cVar == null) {
                    kotlin.jvm.internal.r.r("mDividerChangeBehavior");
                    cVar = null;
                }
                AppBarLayout appBarLayout = this$0.f6159b0;
                if (appBarLayout == null) {
                    kotlin.jvm.internal.r.r("mAppbarLayout");
                    appBarLayout = null;
                }
                COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
                if (cOUIRecyclerView == null) {
                    kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
                    cOUIRecyclerView = null;
                }
                cVar.d(appBarLayout, cOUIRecyclerView);
            }
            h0 h0Var5 = this$0.f6170m0;
            if (h0Var5 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var5 = null;
            }
            h0Var5.w(true);
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            h0 h0Var6 = this$0.f6170m0;
            if (h0Var6 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var6 = null;
            }
            h0Var6.z(true);
            h0 h0Var7 = this$0.f6170m0;
            if (h0Var7 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            } else {
                h0Var = h0Var7;
            }
            h0Var.w(false);
            if (((i0) this$0.o0()).S()) {
                ((i0) this$0.o0()).D0(false);
            }
        }
        return false;
    }

    private final void Y2() {
        View viewFindViewById = findViewById(R.id.app_bar_ll);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6159b0 = (AppBarLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6158a0 = (COUIToolbar) viewFindViewById2;
        this.D = getResources().getDimensionPixelOffset(R.dimen.toolbar_title_margin_start_and_end);
        this.E = getResources().getDimensionPixelOffset(R.dimen.toolbar_support_title_margin_start);
        this.F = getResources().getDimensionPixelOffset(R.dimen.width_640);
        this.G = getResources().getDimensionPixelOffset(R.dimen.height_360);
        S2();
        COUIToolbar cOUIToolbar = this.f6158a0;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.setOnMenuItemClickListener(new Toolbar.h() { // from class: com.coloros.translate.ui.dialoguetranslation.s
            @Override // androidx.appcompat.widget.Toolbar.h
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return DialogTranslationActivity.Z2(this.f6354a, menuItem);
            }
        });
    }

    public static final boolean Z2(DialogTranslationActivity this$0, MenuItem menuItem) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.face_to_face) {
            ((i0) this$0.o0()).E0(false);
            J3(this$0, false, 1, null);
        } else if (itemId == R.id.select_mode) {
            ((i0) this$0.o0()).V().k(Boolean.TRUE);
        } else if (itemId == R.id.dialog_auto_play) {
            if (((i0) this$0.o0()).Q()) {
                if (COUIDarkModeUtil.isNightMode(this$0)) {
                    menuItem.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_disable_night));
                } else {
                    menuItem.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_disable));
                }
                ((i0) this$0.o0()).B0(false);
                ((i0) this$0.o0()).L0(this$0.b3() ? 60000 : 7000);
                Toast.makeText(TranslationApplication.f4754b.a(), com.coloros.translate.utils.n0.b(R.string.auto_play_close_tips), 0).show();
                l0.a.l(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.FALSE, false, null, 12, null);
            } else {
                if (COUIDarkModeUtil.isNightMode(this$0)) {
                    menuItem.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_enable_night));
                } else {
                    menuItem.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_enable));
                }
                ((i0) this$0.o0()).B0(true);
                ((i0) this$0.o0()).L0(VibrateUtils.STRENGTH_MAX_STEP);
                Toast.makeText(TranslationApplication.f4754b.a(), com.coloros.translate.utils.n0.b(R.string.auto_play_start_tips), 0).show();
                l0.a.l(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.TRUE, false, null, 12, null);
            }
            com.coloros.translate.utils.n.INSTANCE.d(((i0) this$0.o0()).Q());
        } else if (itemId == R.id.double_screen) {
            if (this$0.W) {
                this$0.f6182y0.c(SystemClock.elapsedRealtime());
                this$0.W = false;
                Toast.makeText(this$0, com.coloros.translate.utils.n0.b(R.string.double_screen_exit_tips), 0).show();
                F2(this$0, false, 1, null);
            } else {
                this$0.f6182y0.d(SystemClock.elapsedRealtime());
                this$0.W = true;
            }
            boolean zIsNightMode = COUIDarkModeUtil.isNightMode(com.coloros.translate.utils.m.INSTANCE.a());
            com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "recreate isNightMode : " + zIsNightMode);
            if (zIsNightMode) {
                this$0.z3();
                if (this$0.W) {
                    this$0.o3();
                } else {
                    this$0.n3();
                }
            } else {
                this$0.recreate();
            }
            com.coloros.translate.utils.n.INSTANCE.g(this$0.W, this$0.f6182y0);
        }
        return true;
    }

    public static final /* synthetic */ i0 a2(DialogTranslationActivity dialogTranslationActivity) {
        return (i0) dialogTranslationActivity.o0();
    }

    private final void a3() {
        LanguageChooseView languageChooseView;
        View viewFindViewById = findViewById(R.id.rootView);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.Z = (LinearLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.status_bar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6174q0 = viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.navigation_tool);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6172o0 = (COUINavigationView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.navigation_bar);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6173p0 = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.recording_button_container);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.f6160c0 = viewFindViewById5;
        View viewFindViewById6 = findViewById(R.id.recording_tips);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.f6161d0 = (TextView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.recording_button_lottie);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.f6162e0 = (LottieAnimationView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.recording_button_icon);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById8;
        this.f6163f0 = imageView;
        com.coloros.translate.ui.simultaneous.main.i iVar = this.Y;
        TextView textView = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView = null;
        }
        iVar.g(imageView);
        View viewFindViewById9 = findViewById(R.id.chooseLanguage_in_toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.f6165h0 = (LanguageChooseView) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.chooseLanguage);
        kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(...)");
        this.f6166i0 = (LanguageChooseView) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.tv_double_screen_empty_tips);
        kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(...)");
        this.f6176s0 = (COUITextView) viewFindViewById11;
        if (this.V || com.coloros.translate.utils.o0.e()) {
            LanguageChooseView languageChooseView2 = this.f6165h0;
            if (languageChooseView2 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewInToolbar");
                languageChooseView2 = null;
            }
            languageChooseView2.setVisibility(0);
            LanguageChooseView languageChooseView3 = this.f6166i0;
            if (languageChooseView3 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
                languageChooseView3 = null;
            }
            languageChooseView3.setVisibility(8);
            languageChooseView = this.f6165h0;
            if (languageChooseView == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewInToolbar");
                languageChooseView = null;
            }
        } else {
            LanguageChooseView languageChooseView4 = this.f6165h0;
            if (languageChooseView4 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewInToolbar");
                languageChooseView4 = null;
            }
            languageChooseView4.setVisibility(8);
            LanguageChooseView languageChooseView5 = this.f6166i0;
            if (languageChooseView5 == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
                languageChooseView5 = null;
            }
            languageChooseView5.setVisibility(0);
            languageChooseView = this.f6166i0;
            if (languageChooseView == null) {
                kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
                languageChooseView = null;
            }
        }
        this.f6164g0 = languageChooseView;
        View viewFindViewById12 = findViewById(R.id.result_sign);
        kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(...)");
        TextView textView2 = (TextView) viewFindViewById12;
        this.f6175r0 = textView2;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("aiSignTextView");
        } else {
            textView = textView2;
        }
        textView.setText(com.coloros.translate.utils.d1.b(com.coloros.translate.utils.p0.TRANSLATION, this));
    }

    public final boolean b3() {
        return this.W && O2().k();
    }

    public final void c3(boolean z10) {
        View view = this.f6160c0;
        if (view == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonContainer");
            view = null;
        }
        view.setKeepScreenOn(z10);
    }

    public static final void d3(DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        androidx.appcompat.app.c cVar = this$0.J;
        if (cVar == null || !cVar.isShowing()) {
            return;
        }
        this$0.G2();
    }

    public final void e3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onDoubleScreenModeEnter");
        COUIRecyclerView cOUIRecyclerView = this.f6167j0;
        View view = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        if (cOUIRecyclerView.getVisibility() == 0) {
            return;
        }
        ((i0) o0()).L0(((i0) o0()).Q() ? VibrateUtils.STRENGTH_MAX_STEP : 60000);
        COUIRecyclerView cOUIRecyclerView2 = this.f6167j0;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView2 = null;
        }
        cOUIRecyclerView2.setVisibility(0);
        View view2 = this.f6174q0;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mStatusBarView");
        } else {
            view = view2;
        }
        view.setVisibility(8);
        C2(getResources().getDimensionPixelOffset(R.dimen.recording_button_size_smaller));
        S3();
        com.coloros.translate.utils.z0.g(300L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.t
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.f3(this.f6356a);
            }
        });
        com.coloros.translate.utils.z0.g(400L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.u
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.g3(this.f6358a);
            }
        });
    }

    public static final void f3(DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        h0 h0Var = this$0.f6168k0;
        h0 h0Var2 = null;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
            h0Var = null;
        }
        h0Var.x(2);
        COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        h0 h0Var3 = this$0.f6168k0;
        if (h0Var3 == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
            h0Var3 = null;
        }
        cOUIRecyclerView.setAdapter(h0Var3);
        COUIRecyclerView cOUIRecyclerView2 = this$0.f6167j0;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView2 = null;
        }
        h0 h0Var4 = this$0.f6170m0;
        if (h0Var4 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var2 = h0Var4;
        }
        cOUIRecyclerView2.setAdapter(h0Var2);
    }

    public static final void g3(final DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6167j0;
        COUIRecyclerView cOUIRecyclerView2 = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        cOUIRecyclerView.post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.m
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.h3(this.f6331a);
            }
        });
        COUIRecyclerView cOUIRecyclerView3 = this$0.f6169l0;
        if (cOUIRecyclerView3 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
        } else {
            cOUIRecyclerView2 = cOUIRecyclerView3;
        }
        cOUIRecyclerView2.post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.n
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.i3(this.f6333a);
            }
        });
    }

    public static final void h3(DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6167j0;
        h0 h0Var = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        h0 h0Var2 = this$0.f6170m0;
        if (h0Var2 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var = h0Var2;
        }
        this$0.J2(cOUIRecyclerView, h0Var.i().size() - 1);
    }

    public static final void i3(DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        this$0.J2(cOUIRecyclerView, 0);
        this$0.setRequestedOrientation(8);
    }

    public final void j3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onDoubleScreenModeExit");
        COUIRecyclerView cOUIRecyclerView = this.f6167j0;
        View view = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        if (cOUIRecyclerView.getVisibility() == 8) {
            return;
        }
        ((i0) o0()).L0(((i0) o0()).Q() ? VibrateUtils.STRENGTH_MAX_STEP : 7000);
        COUIRecyclerView cOUIRecyclerView2 = this.f6167j0;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView2 = null;
        }
        cOUIRecyclerView2.setVisibility(8);
        View view2 = this.f6174q0;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mStatusBarView");
        } else {
            view = view2;
        }
        view.setVisibility(0);
        C2(getResources().getDimensionPixelOffset(R.dimen.recording_button_size_normal));
        com.coloros.translate.utils.z0.g(300L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.v
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.k3(this.f6360a);
            }
        });
        com.coloros.translate.utils.z0.g(400L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.w
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.l3(this.f6362a);
            }
        });
    }

    public static final void k3(DialogTranslationActivity this$0) {
        Conversation conversation;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
        h0 h0Var = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        h0 h0Var2 = this$0.f6170m0;
        if (h0Var2 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var2 = null;
        }
        cOUIRecyclerView.setAdapter(h0Var2);
        h0 h0Var3 = this$0.f6168k0;
        if (h0Var3 == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
            h0Var3 = null;
        }
        if (h0Var3.i().size() > 0) {
            h0 h0Var4 = this$0.f6168k0;
            if (h0Var4 == null) {
                kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                h0Var4 = null;
            }
            conversation = (Conversation) h0Var4.i().get(0);
        } else {
            conversation = null;
        }
        if (conversation != null && conversation.getFromText().length() > 0 && !kotlin.jvm.internal.r.a(conversation, this$0.f6178u0)) {
            ((i0) this$0.o0()).K().add(conversation);
            h0 h0Var5 = this$0.f6170m0;
            if (h0Var5 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var5 = null;
            }
            h0Var5.h(conversation);
        }
        h0 h0Var6 = this$0.f6168k0;
        if (h0Var6 == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
            h0Var6 = null;
        }
        h0Var6.i().clear();
        COUIRecyclerView cOUIRecyclerView2 = this$0.f6167j0;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mUpHistoryRecyclerView");
            cOUIRecyclerView2 = null;
        }
        h0 h0Var7 = this$0.f6168k0;
        if (h0Var7 == null) {
            kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
        } else {
            h0Var = h0Var7;
        }
        cOUIRecyclerView2.setAdapter(h0Var);
        this$0.S3();
    }

    public static final void l3(final DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        cOUIRecyclerView.post(new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.q
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.m3(this.f6341a);
            }
        });
    }

    public static final void m3(DialogTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIRecyclerView cOUIRecyclerView = this$0.f6169l0;
        h0 h0Var = null;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        h0 h0Var2 = this$0.f6170m0;
        if (h0Var2 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var = h0Var2;
        }
        this$0.J2(cOUIRecyclerView, h0Var.i().size() - 1);
        this$0.setRequestedOrientation(-1);
    }

    private final void n3() {
        h0 h0Var = this.f6170m0;
        h0 h0Var2 = null;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        h0Var.x(0);
        h0 h0Var3 = this.f6170m0;
        if (h0Var3 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var2 = h0Var3;
        }
        h0Var2.notifyDataSetChanged();
        j3();
        E2(O2().k());
    }

    private final void o3() {
        h0 h0Var = this.f6170m0;
        h0 h0Var2 = null;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        h0Var.x(1);
        h0 h0Var3 = this.f6170m0;
        if (h0Var3 == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
        } else {
            h0Var2 = h0Var3;
        }
        h0Var2.notifyDataSetChanged();
        t3(true);
    }

    private final void p3(Context context, boolean z10) {
        if (((i0) o0()).U()) {
            f1.f7117a.a(context, "event_asr_end_for_dialog", (60 & 4) != 0 ? null : "input", (60 & 8) != 0 ? null : z10 ? AuthUtil.AUTH_STYLE_INNER : "1", (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
        } else {
            f1.f7117a.c(context, "event_asr_start_for_dialog", this.S.getSortIndex(), this.T.getSortIndex());
        }
    }

    public final void q3() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogTranslationActivity", "openOutScreen mOutScreenView:" + this.f6183z0);
        if (this.f6183z0 != null) {
            aVar.q("DialogTranslationActivity", "openOutScreen mOutScreenView is not null");
            return;
        }
        COUIRecyclerView cOUIRecyclerView = this.f6169l0;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView = null;
        }
        cOUIRecyclerView.stopScroll();
        this.N0.removeMessages(1);
        this.N0.sendEmptyMessageDelayed(1, 500L);
    }

    private final void r3() {
        ImageView imageView = this.f6163f0;
        LanguageChooseView languageChooseView = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.dialoguetranslation.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogTranslationActivity.s3(this.f6367a, view);
            }
        });
        this.O = new com.coloros.translate.o(this);
        LanguageChooseView languageChooseView2 = this.f6164g0;
        if (languageChooseView2 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageView");
            languageChooseView2 = null;
        }
        languageChooseView2.setOnFromLangeClickListener(new s());
        LanguageChooseView languageChooseView3 = this.f6164g0;
        if (languageChooseView3 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageView");
            languageChooseView3 = null;
        }
        languageChooseView3.setOnToLangeClickListener(new t());
        LanguageChooseView languageChooseView4 = this.f6164g0;
        if (languageChooseView4 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageView");
            languageChooseView4 = null;
        }
        languageChooseView4.setOnSwitchClickListener(new u());
        LanguageChooseView languageChooseView5 = this.f6166i0;
        if (languageChooseView5 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
            languageChooseView5 = null;
        }
        languageChooseView5.setOnFromLangeClickListener(new v());
        LanguageChooseView languageChooseView6 = this.f6166i0;
        if (languageChooseView6 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
            languageChooseView6 = null;
        }
        languageChooseView6.setOnToLangeClickListener(new w());
        LanguageChooseView languageChooseView7 = this.f6166i0;
        if (languageChooseView7 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
        } else {
            languageChooseView = languageChooseView7;
        }
        languageChooseView.setOnSwitchClickListener(new x());
    }

    public static final void s3(DialogTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "recording button click mRecordingHoldOn" + this$0.X);
        com.coloros.translate.utils.n.INSTANCE.f();
        if (this$0.D2()) {
            if (this$0.X) {
                this$0.X = false;
            }
            ((i0) this$0.o0()).G0(false);
            ((i0) this$0.o0()).p0(this$0.U);
            if (this$0.U) {
                this$0.x3();
            } else {
                this$0.A3();
            }
            this$0.p3(this$0, true);
        }
    }

    private final void t3(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.i("DialogTranslationActivity", "registerHoverModeChangeListener needShowTips:" + z10 + "  mOutScreenManager:" + O2());
        O2().n(this, new y(z10, this));
    }

    private final void u3() {
        COUINavigationView cOUINavigationView = this.f6172o0;
        LinearLayout linearLayout = null;
        if (cOUINavigationView == null) {
            kotlin.jvm.internal.r.r("mNavigationTool");
            cOUINavigationView = null;
        }
        cOUINavigationView.setOnItemSelectedListener(new DialogTranslationActivity$registerLayoutViewsListener$1(this));
        LinearLayout linearLayout2 = this.Z;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("mRootView");
        } else {
            linearLayout = linearLayout2;
        }
        androidx.core.view.m0.y0(linearLayout, new androidx.core.view.a0() { // from class: com.coloros.translate.ui.dialoguetranslation.k
            @Override // androidx.core.view.a0
            public final androidx.core.view.a1 onApplyWindowInsets(View view, androidx.core.view.a1 a1Var) {
                return DialogTranslationActivity.v3(this.f6319a, view, a1Var);
            }
        });
    }

    public static final androidx.core.view.a1 v3(DialogTranslationActivity this$0, View view, androidx.core.view.a1 a1Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i10 = a1Var.f(a1.m.d()).f15810d;
        this$0.I = i10;
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "mNavigationBottomValue = " + i10);
        View view2 = this$0.f6173p0;
        View view3 = null;
        if (view2 == null) {
            kotlin.jvm.internal.r.r("mNavigationBarView");
            view2 = null;
        }
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = this$0.I;
            if (kotlin.jvm.internal.r.a(((i0) this$0.o0()).V().e(), Boolean.TRUE)) {
                View view4 = this$0.f6173p0;
                if (view4 == null) {
                    kotlin.jvm.internal.r.r("mNavigationBarView");
                    view4 = null;
                }
                view4.setBackgroundColor(this$0.getResources().getColor(R.color.coui_navigation_enlarge_default_bg));
            } else {
                View view5 = this$0.f6173p0;
                if (view5 == null) {
                    kotlin.jvm.internal.r.r("mNavigationBarView");
                    view5 = null;
                }
                view5.setBackgroundResource(0);
            }
            View view6 = this$0.f6173p0;
            if (view6 == null) {
                kotlin.jvm.internal.r.r("mNavigationBarView");
            } else {
                view3 = view6;
            }
            view3.requestLayout();
        }
        return a1Var;
    }

    public final void w3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "removeOutScreenView   mOutScreenView:" + this.f6183z0);
        View view = this.f6183z0;
        if (view != null) {
            O2().p(view);
            this.f6183z0 = null;
            this.B0 = null;
            this.C0 = null;
            this.D0 = null;
            this.G0 = null;
            this.I0 = null;
            this.J0 = null;
            this.K0 = null;
            this.F0 = null;
            this.E0 = null;
        }
    }

    public final void x3() {
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "restoreRecordingButtonState");
        if (this.U) {
            View view = this.f6160c0;
            LottieAnimationView lottieAnimationView = null;
            if (view == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonContainer");
                view = null;
            }
            view.setKeepScreenOn(false);
            TextView textView = this.f6161d0;
            if (textView == null) {
                kotlin.jvm.internal.r.r("mRecordingTips");
                textView = null;
            }
            textView.setText(R.string.click_to_speak);
            ImageView imageView = this.f6163f0;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
                imageView = null;
            }
            imageView.setImageDrawable(r.a.e(this, R.drawable.mic_on_button));
            ImageView imageView2 = this.f6163f0;
            if (imageView2 == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
                imageView2 = null;
            }
            imageView2.setContentDescription(getResources().getString(R.string.click_to_speak));
            P3();
            LottieAnimationView lottieAnimationView2 = this.f6162e0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonLottie");
            } else {
                lottieAnimationView = lottieAnimationView2;
            }
            lottieAnimationView.setVisibility(4);
            this.U = false;
            if (this.W) {
                Conversation conversation = this.L0;
                if (conversation != null) {
                    T3(conversation);
                } else if (O2().k()) {
                    P2();
                    D3();
                } else {
                    P2();
                    E3();
                }
            }
        }
    }

    private final void y3() {
        COUIToolbar cOUIToolbar = this.f6158a0;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("mToolbar");
            cOUIToolbar = null;
        }
        MenuItem menuItemFindItem = cOUIToolbar.getMenu().findItem(R.id.dialog_auto_play);
        if (menuItemFindItem != null) {
            if (((Boolean) l0.a.g(com.coloros.translate.utils.l0.f7130a, "auto_play", Boolean.FALSE, null, 4, null)).booleanValue()) {
                menuItemFindItem.setIcon(COUIDarkModeUtil.isNightMode(this) ? r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_enable_night) : r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_enable));
                ((i0) o0()).B0(true);
                ((i0) o0()).L0(VibrateUtils.STRENGTH_MAX_STEP);
            } else {
                menuItemFindItem.setIcon(COUIDarkModeUtil.isNightMode(this) ? r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_disable_night) : r.a.e(TranslationApplication.f4754b.a(), R.drawable.dialog_auto_play_disable));
                ((i0) o0()).B0(false);
                ((i0) o0()).L0(7000);
            }
        }
    }

    private final void z3() {
        COUIToolbar cOUIToolbar = null;
        if (this.W) {
            COUIToolbar cOUIToolbar2 = this.f6158a0;
            if (cOUIToolbar2 == null) {
                kotlin.jvm.internal.r.r("mToolbar");
            } else {
                cOUIToolbar = cOUIToolbar2;
            }
            Menu menu = cOUIToolbar.getMenu();
            MenuItem menuItemFindItem = menu.findItem(R.id.double_screen);
            if (menuItemFindItem != null) {
                menuItemFindItem.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.exit_double_screen));
            }
            MenuItem menuItemFindItem2 = menu.findItem(R.id.dialog_auto_play);
            if (menuItemFindItem2 != null) {
                menuItemFindItem2.setShowAsAction(2);
            }
            MenuItem menuItemFindItem3 = menu.findItem(R.id.select_mode);
            if (menuItemFindItem3 != null) {
                menuItemFindItem3.setVisible(false);
            }
            MenuItem menuItemFindItem4 = menu.findItem(R.id.face_to_face);
            if (menuItemFindItem4 == null) {
                return;
            }
            menuItemFindItem4.setVisible(false);
            return;
        }
        COUIToolbar cOUIToolbar3 = this.f6158a0;
        if (cOUIToolbar3 == null) {
            kotlin.jvm.internal.r.r("mToolbar");
        } else {
            cOUIToolbar = cOUIToolbar3;
        }
        Menu menu2 = cOUIToolbar.getMenu();
        MenuItem menuItemFindItem5 = menu2.findItem(R.id.double_screen);
        if (menuItemFindItem5 != null) {
            menuItemFindItem5.setIcon(r.a.e(TranslationApplication.f4754b.a(), R.drawable.to_double_screen));
        }
        MenuItem menuItemFindItem6 = menu2.findItem(R.id.dialog_auto_play);
        if (menuItemFindItem6 != null) {
            menuItemFindItem6.setShowAsAction(8);
        }
        MenuItem menuItemFindItem7 = menu2.findItem(R.id.select_mode);
        if (menuItemFindItem7 != null) {
            menuItemFindItem7.setVisible(true);
        }
        MenuItem menuItemFindItem8 = menu2.findItem(R.id.face_to_face);
        if (menuItemFindItem8 == null) {
            return;
        }
        menuItemFindItem8.setVisible(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x006b  */
    @Override // com.coloros.translate.base.BasePrivateActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void F0(android.content.Intent r7) {
        /*
            r6 = this;
            super.F0(r7)
            com.coloros.translate.observer.e r0 = com.coloros.translate.observer.e.INSTANCE
            com.coloros.translate.observer.e$a r1 = r6.n0()
            r0.l(r1)
            r6.Q0()
            r0 = 0
            if (r7 == 0) goto L17
            java.lang.String r1 = r7.getAction()
            goto L18
        L17:
            r1 = r0
        L18:
            java.lang.String r2 = "oplus.translate.action.intent.conversation_translation"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r2)
            r3 = 500(0x1f4, double:2.47E-321)
            if (r1 == 0) goto L32
            java.lang.String r1 = "type"
            r5 = 0
            int r1 = r7.getIntExtra(r1, r5)
            r5 = 1
            if (r1 != r5) goto L32
            r6.M0 = r5
            r6.I3(r5)
            goto L73
        L32:
            if (r7 == 0) goto L39
            java.lang.String r1 = r7.getAction()
            goto L3a
        L39:
            r1 = r0
        L3a:
            java.lang.String r5 = "coloros.intent.action.DIALOGUE_TRANSLATION_SHORTCUT"
            boolean r1 = kotlin.jvm.internal.r.a(r1, r5)
            if (r1 != 0) goto L6b
            if (r7 == 0) goto L49
            java.lang.String r1 = r7.getAction()
            goto L4a
        L49:
            r1 = r0
        L4a:
            boolean r1 = kotlin.jvm.internal.r.a(r1, r2)
            if (r1 != 0) goto L6b
            if (r7 == 0) goto L58
            java.lang.String r0 = "extra_from"
            java.lang.String r0 = r7.getStringExtra(r0)
        L58:
            java.lang.String r1 = "from_cube"
            boolean r0 = kotlin.jvm.internal.r.a(r0, r1)
            if (r0 == 0) goto L61
            goto L6b
        L61:
            com.coloros.translate.base.q r0 = r6.o0()
            com.coloros.translate.ui.dialoguetranslation.i0 r0 = (com.coloros.translate.ui.dialoguetranslation.i0) r0
            r0.r0()
            goto L73
        L6b:
            com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity$c r0 = new com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity$c
            r0.<init>()
            com.coloros.translate.utils.z0.c(r3, r0)
        L73:
            r6.M3(r7)
            r6.C3(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity.F0(android.content.Intent):void");
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity
    public void b1() {
        Object objM59constructorimpl;
        super.b1();
        try {
            r.a aVar = n8.r.Companion;
            ImageView imageView = this.f6163f0;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("mRecordingButtonSpeakIcon");
                imageView = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(imageView.performClick()));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("DialogTranslationActivity", "updateEarControl error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ActionMode actionMode;
        if (motionEvent != null && motionEvent.getAction() == 0 && (actionMode = this.A) != null) {
            actionMode.finish();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) {
        TextView textView;
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onLanguageChanged");
        com.coloros.translate.b bVarM = M2().m();
        com.coloros.translate.b bVarO = M2().o();
        LanguageChooseView languageChooseView = this.f6164g0;
        LanguageChooseView languageChooseView2 = null;
        if (languageChooseView == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageView");
            languageChooseView = null;
        }
        languageChooseView.setFromLanguage(bVarM.getFullNameResId());
        LanguageChooseView languageChooseView3 = this.f6164g0;
        if (languageChooseView3 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageView");
            languageChooseView3 = null;
        }
        languageChooseView3.setToLanguage(bVarO.getFullNameResId());
        LanguageChooseView languageChooseView4 = this.f6166i0;
        if (languageChooseView4 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
            languageChooseView4 = null;
        }
        languageChooseView4.setFromLanguage(bVarM.getFullNameResId());
        LanguageChooseView languageChooseView5 = this.f6166i0;
        if (languageChooseView5 == null) {
            kotlin.jvm.internal.r.r("mChooseLanguageViewBelowToolbar");
        } else {
            languageChooseView2 = languageChooseView5;
        }
        languageChooseView2.setToLanguage(bVarO.getFullNameResId());
        ((i0) o0()).N0(true);
        ((i0) o0()).R0();
        this.S = bVarM;
        this.T = bVarO;
        ((i0) o0()).V0(this.S.getLanguageCode(), this.T.getLanguageCode());
        if (this.W && (textView = this.D0) != null) {
            textView.setText(N2(R.string.out_side_screen_tips));
        }
        S3();
        Q3();
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return i0.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_dialog_translation_layout;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        super.onActionModeFinished(actionMode);
        this.A = null;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        super.onActionModeStarted(actionMode);
        this.A = actionMode;
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onActivityResult requestCode=" + i10 + "  resultCode=" + i11);
        if (i10 == 1000 || i10 == 1 || i10 == 2) {
            if (i11 == -100) {
                if (((i0) o0()).P() == null) {
                    return;
                }
                HashMap map = new HashMap();
                int sortIndex = this.S.getSortIndex();
                StringBuilder sb = new StringBuilder();
                sb.append(sortIndex);
                map.put("language_from", sb.toString());
                int sortIndex2 = this.T.getSortIndex();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sortIndex2);
                map.put("language_to", sb2.toString());
                map.put("result", AuthUtil.AUTH_STYLE_INNER);
                f1.f7117a.e(this, "event_edit_for_dialog", map);
                return;
            }
            if (i11 == -1) {
                com.coloros.translate.permission.a.f5407c.a().f(this, intent);
                return;
            }
            if (i11 != 100) {
                if (i11 != 101) {
                    return;
                }
                if (intent != null && intent.getBooleanExtra("isFromEar", false)) {
                    finish();
                    return;
                } else {
                    ((i0) o0()).K().clear();
                    ((i0) o0()).n0();
                    return;
                }
            }
            if (com.coloros.translate.repository.d.f5439a.b()) {
                String str = Q0;
                Q0 = "";
                if (TextUtils.isEmpty(str) || ((i0) o0()).P() == null) {
                    return;
                }
                Conversation conversationP = ((i0) o0()).P();
                if (conversationP != null) {
                    conversationP.setFromText(str);
                }
                ((i0) o0()).c0().k(((i0) o0()).P());
                i0 i0Var = (i0) o0();
                Conversation conversationP2 = ((i0) o0()).P();
                kotlin.jvm.internal.r.b(conversationP2);
                i0Var.S0(conversationP2, false, false);
                HashMap map2 = new HashMap();
                int sortIndex3 = this.S.getSortIndex();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(sortIndex3);
                map2.put("language_from", sb3.toString());
                int sortIndex4 = this.T.getSortIndex();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sortIndex4);
                map2.put("language_to", sb4.toString());
                map2.put("result", "1");
                f1.f7117a.e(this, "event_edit_for_dialog", map2);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Object objE = ((i0) o0()).V().e();
        kotlin.jvm.internal.r.b(objE);
        if (((Boolean) objE).booleanValue()) {
            ((i0) o0()).V().k(Boolean.FALSE);
        } else {
            P0 = null;
            super.onBackPressed();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogTranslationActivity", "onConfigurationChanged");
        int i10 = this.L;
        int i11 = newConfig.orientation;
        this.M = i10 != i11;
        this.L = i11;
        h0 h0Var = this.f6170m0;
        if (h0Var == null) {
            kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
            h0Var = null;
        }
        if (!h0Var.i().isEmpty()) {
            i0 i0Var = (i0) o0();
            h0 h0Var2 = this.f6170m0;
            if (h0Var2 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var2 = null;
            }
            List listI = h0Var2.i();
            h0 h0Var3 = this.f6170m0;
            if (h0Var3 == null) {
                kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                h0Var3 = null;
            }
            i0Var.y0((Conversation) listI.get(h0Var3.getItemCount() - 1));
            if (this.M) {
                aVar.d("DialogTranslationActivity", "onConfigurationChanged notifyDataSetChanged");
                h0 h0Var4 = this.f6170m0;
                if (h0Var4 == null) {
                    kotlin.jvm.internal.r.r("mDialogueTranslationAdapter");
                    h0Var4 = null;
                }
                h0Var4.notifyDataSetChanged();
            }
        }
        this.V = com.coloros.translate.utils.z.g(null, 1, null);
        com.coloros.translate.utils.z0.g(200L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.j
            @Override // java.lang.Runnable
            public final void run() {
                DialogTranslationActivity.d3(this.f6316a);
            }
        });
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        U0();
        super.onCreate(bundle);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        Intent intent = getIntent();
        COUIRecyclerView cOUIRecyclerView = null;
        aVar.d("DialogTranslationActivity", "onCreate:action:" + (intent != null ? intent.getAction() : null));
        if (COUIDarkModeUtil.isNightMode(this)) {
            getWindow().setStatusBarColor(getResources().getColor(R$color.coui_color_background_with_card));
        }
        this.V = com.coloros.translate.utils.z.g(null, 1, null);
        Object systemService = getSystemService("vibrator");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.os.Vibrator");
        this.C = (Vibrator) systemService;
        this.L = getResources().getConfiguration().orientation;
        a3();
        W2();
        Y2();
        r3();
        u3();
        R2();
        this.W = bundle != null ? bundle.getBoolean("isDoubleScreenEnable") : false;
        ((i0) o0()).M().setShowEditIcon(bundle != null ? bundle.getBoolean("addEditImg") : false);
        if (!this.V) {
            this.W = false;
            P0 = null;
            if (getDelegate().m() != -1) {
                getDelegate().J(-1);
                return;
            }
            return;
        }
        aVar.d("DialogTranslationActivity", "onCreate() mDoubleScreenEnable : " + this.W + " , isNightMode : " + P0 + " , localNightMode : " + getDelegate().m());
        if (this.W) {
            if (P0 == null && getDelegate().m() != 2) {
                getDelegate().J(2);
            }
        } else if (kotlin.jvm.internal.r.a(P0, Boolean.TRUE) && getDelegate().m() != -1) {
            getDelegate().J(-1);
        }
        COUIRecyclerView cOUIRecyclerView2 = this.f6169l0;
        if (cOUIRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView2 = null;
        }
        aVar.d("DialogTranslationActivity", "mRecyclerHistoryRecyclerView.visibility:" + cOUIRecyclerView2.getVisibility());
        if (P0 == null && getDelegate().m() == 2 && this.W) {
            COUIRecyclerView cOUIRecyclerView3 = this.f6169l0;
            if (cOUIRecyclerView3 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView3;
            }
            cOUIRecyclerView.setVisibility(4);
            P0 = Boolean.TRUE;
            return;
        }
        Boolean bool = P0;
        Boolean bool2 = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(bool, bool2) && getDelegate().m() == -1 && !this.W) {
            COUIRecyclerView cOUIRecyclerView4 = this.f6169l0;
            if (cOUIRecyclerView4 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView4;
            }
            cOUIRecyclerView.setVisibility(4);
            P0 = Boolean.FALSE;
            return;
        }
        if (kotlin.jvm.internal.r.a(P0, bool2) && this.W) {
            COUIRecyclerView cOUIRecyclerView5 = this.f6169l0;
            if (cOUIRecyclerView5 == null) {
                kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            } else {
                cOUIRecyclerView = cOUIRecyclerView5;
            }
            cOUIRecyclerView.setVisibility(0);
            o3();
            return;
        }
        if (!kotlin.jvm.internal.r.a(P0, Boolean.FALSE) || this.W) {
            return;
        }
        COUIRecyclerView cOUIRecyclerView6 = this.f6169l0;
        if (cOUIRecyclerView6 == null) {
            kotlin.jvm.internal.r.r("mRecyclerHistoryRecyclerView");
            cOUIRecyclerView6 = null;
        }
        cOUIRecyclerView6.setVisibility(0);
        n3();
        P0 = null;
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onDestroy");
        ((i0) o0()).v0(this);
        com.coloros.translate.observer.e.INSTANCE.n(n0());
        ((i0) o0()).R0();
        androidx.appcompat.app.c cVar = this.f6180w0;
        if (cVar != null) {
            cVar.dismiss();
        }
        com.coloros.translate.utils.n.INSTANCE.J(q0());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onPause");
        this.X = false;
        ((i0) o0()).U0();
        ((i0) o0()).R0();
        ((i0) o0()).I().k(Boolean.FALSE);
        x3();
        M2().l();
        com.coloros.translate.permission.a.f5407c.a().h();
        androidx.appcompat.app.c cVar = this.J;
        if (cVar != null) {
            cVar.dismiss();
        }
        g2.a.f(this.f6179v0);
        f1.a aVar = f1.f7117a;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.B;
        StringBuilder sb = new StringBuilder();
        sb.append(jCurrentTimeMillis);
        aVar.a(this, "event_showtime_for_dialog", (60 & 4) != 0 ? null : "result", (60 & 8) != 0 ? null : sb.toString(), (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onResume");
        com.coloros.translate.observer.e.INSTANCE.o();
        if (COUIDarkModeUtil.isNightMode(this)) {
            getWindow().setStatusBarColor(getResources().getColor(R$color.coui_color_background_with_card));
        }
        z3();
        y3();
        if (!this.M0) {
            M2().O(this, "voice");
            ((i0) o0()).t0();
        }
        this.M0 = false;
        this.B = System.currentTimeMillis();
        g2.a.c();
        g2.a.e(this.f6179v0);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        super.onSaveInstanceState(outState);
        com.coloros.translate.utils.c0.f7098a.d("DialogTranslationActivity", "onSaveInstanceState");
        outState.putBoolean("isDoubleScreenEnable", this.W);
        if (kotlin.text.r.Y(((i0) o0()).M().getFromText())) {
            return;
        }
        outState.putBoolean("addEditImg", true);
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.W) {
            h0 h0Var = this.f6168k0;
            h0 h0Var2 = null;
            if (h0Var == null) {
                kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                h0Var = null;
            }
            if (!h0Var.i().isEmpty()) {
                h0 h0Var3 = this.f6168k0;
                if (h0Var3 == null) {
                    kotlin.jvm.internal.r.r("mSingleDialogueAdapter");
                } else {
                    h0Var2 = h0Var3;
                }
                this.L0 = (Conversation) kotlin.collections.o.Q(h0Var2.i());
            }
            t3(false);
        }
    }

    @Override // com.coloros.translate.base.BaseEarPhoneActivity, com.coloros.translate.base.BasePrivateActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.W) {
            F2(this, false, 1, null);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            androidx.lifecycle.a0 a0VarK0 = ((i0) o0()).k0();
            Boolean bool = Boolean.FALSE;
            a0VarK0.n(bool);
            ((i0) o0()).m0().n(bool);
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public void x0() {
        super.x0();
        ((i0) o0()).R0();
    }
}
