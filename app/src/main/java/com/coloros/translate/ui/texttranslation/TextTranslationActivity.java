package com.coloros.translate.ui.texttranslation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.RuntimeShader;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.Editable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.ArrowKeyMovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.view.GestureDetector;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.a1;
import androidx.lifecycle.t0;
import androidx.recyclerview.widget.COUIRecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BasePrivateActivity;
import com.coloros.translate.base.R$string;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.repository.local.TextHistory;
import com.coloros.translate.ui.earphone.ConfigAudioChange;
import com.coloros.translate.ui.texttranslation.widget.COUIAnimateTextView;
import com.coloros.translate.utils.b1;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.d1;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.i1;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.z0;
import com.coloros.translate.widget.LanguageChooseView;
import com.coui.appcompat.animation.COUIMoveEaseInterpolator;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.grid.COUIPercentWidthFrameLayout;
import com.coui.appcompat.grid.COUIPercentWidthRecyclerView;
import com.coui.appcompat.grid.COUIPercentWidthRelativeLayout;
import com.coui.appcompat.textview.COUITextView;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.oplus.aiunit.antispam.client.AntiSpamClient;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.view.inputmethod.OplusInputMethodManager;
import com.oplus.view.inputmethod.OplusInputMethodObserver;
import com.support.appcompat.R$drawable;
import g2.a;
import h5.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
@ConfigAudioChange
public final class TextTranslationActivity extends BasePrivateActivity<p0> implements com.coloros.translate.d {

    /* JADX INFO: renamed from: n1 */
    public static final a f6882n1 = new a(null);
    private final n8.j A;
    private ConstraintLayout A0;
    private long B;
    private COUIAnimateTextView B0;
    private boolean C;
    private LottieAnimationView C0;
    private boolean D;
    private LottieAnimationView D0;
    private boolean E;
    private Group E0;
    private boolean F;
    private Group F0;
    private TextHistory G;
    private COUITextView G0;
    private OplusInputMethodObserver H;
    private COUIPercentWidthRelativeLayout H0;
    private ValueAnimator I;
    private COUIPercentWidthRelativeLayout I0;
    private ValueAnimator J;
    private LottieAnimationView J0;
    private float K;
    private TextView K0;
    private long L;
    private COUIRecyclerView L0;
    private final m0 M;
    private COUIPercentWidthRecyclerView M0;
    private int N;
    private com.coloros.translate.ui.texttranslation.h N0;
    private boolean O;
    private LinearLayout O0;
    private boolean P;
    private COUIToolbar P0;
    private Dialog Q;
    private MenuItem Q0;
    private final n8.q R;
    private MenuItem R0;
    private com.coloros.translate.b S;
    private ArrayList S0;
    private com.coloros.translate.b T;
    private i2.i T0;
    private boolean U;
    private String U0;
    private boolean V;
    private boolean V0;
    private com.coloros.translate.o W;
    private boolean W0;
    private ImageView X;
    private String X0;
    private ImageView Y;
    private int Y0;
    private ImageView Z;
    private int Z0;

    /* JADX INFO: renamed from: a0 */
    private LinearLayout f6883a0;

    /* JADX INFO: renamed from: a1 */
    private int f6884a1;

    /* JADX INFO: renamed from: b0 */
    private View f6885b0;

    /* JADX INFO: renamed from: b1 */
    private int f6886b1;

    /* JADX INFO: renamed from: c0 */
    private COUIToolbar f6887c0;

    /* JADX INFO: renamed from: c1 */
    private boolean f6888c1;

    /* JADX INFO: renamed from: d0 */
    private LanguageChooseView f6889d0;

    /* JADX INFO: renamed from: d1 */
    private String f6890d1;

    /* JADX INFO: renamed from: e0 */
    private LanguageChooseView f6891e0;

    /* JADX INFO: renamed from: e1 */
    private boolean f6892e1;

    /* JADX INFO: renamed from: f0 */
    private LanguageChooseView f6893f0;

    /* JADX INFO: renamed from: f1 */
    private boolean f6894f1;

    /* JADX INFO: renamed from: g0 */
    private COUIPercentWidthFrameLayout f6895g0;

    /* JADX INFO: renamed from: g1 */
    private ValueAnimator f6896g1;

    /* JADX INFO: renamed from: h0 */
    private LinearLayout f6897h0;

    /* JADX INFO: renamed from: h1 */
    private ValueAnimator f6898h1;

    /* JADX INFO: renamed from: i0 */
    private RelativeLayout f6899i0;

    /* JADX INFO: renamed from: i1 */
    private h5.c f6900i1;

    /* JADX INFO: renamed from: j0 */
    private RelativeLayout f6901j0;

    /* JADX INFO: renamed from: j1 */
    private boolean f6902j1;

    /* JADX INFO: renamed from: k0 */
    private com.oplus.vfxsdk.rsview.g f6903k0;

    /* JADX INFO: renamed from: k1 */
    private final Handler f6904k1;

    /* JADX INFO: renamed from: l0 */
    private com.oplus.vfxsdk.rsview.g f6905l0;

    /* JADX INFO: renamed from: l1 */
    private final androidx.activity.result.b f6906l1;

    /* JADX INFO: renamed from: m0 */
    private RelativeLayout f6907m0;

    /* JADX INFO: renamed from: m1 */
    private final n8.j f6908m1;

    /* JADX INFO: renamed from: n0 */
    private EditText f6909n0;

    /* JADX INFO: renamed from: o0 */
    private ImageView f6910o0;

    /* JADX INFO: renamed from: p0 */
    private LinearLayout f6911p0;

    /* JADX INFO: renamed from: q0 */
    private ImageView f6912q0;

    /* JADX INFO: renamed from: r0 */
    private LottieAnimationView f6913r0;

    /* JADX INFO: renamed from: s0 */
    private LottieAnimationView f6914s0;

    /* JADX INFO: renamed from: t */
    private final Context f6915t = this;

    /* JADX INFO: renamed from: t0 */
    private LottieAnimationView f6916t0;

    /* JADX INFO: renamed from: u */
    private final int f6917u;

    /* JADX INFO: renamed from: u0 */
    private RelativeLayout f6918u0;

    /* JADX INFO: renamed from: v */
    private final int f6919v;

    /* JADX INFO: renamed from: v0 */
    private ImageView f6920v0;

    /* JADX INFO: renamed from: w */
    private final int f6921w;

    /* JADX INFO: renamed from: w0 */
    private ImageView f6922w0;

    /* JADX INFO: renamed from: x */
    private final int f6923x;

    /* JADX INFO: renamed from: x0 */
    private ImageView f6924x0;

    /* JADX INFO: renamed from: y */
    private final int f6925y;

    /* JADX INFO: renamed from: y0 */
    private AppCompatTextView f6926y0;

    /* JADX INFO: renamed from: z */
    private final n8.j f6927z;

    /* JADX INFO: renamed from: z0 */
    private View f6928z0;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context ctx, boolean z10, String from) {
            kotlin.jvm.internal.r.e(ctx, "ctx");
            kotlin.jvm.internal.r.e(from, "from");
            Intent intent = new Intent(ctx, (Class<?>) TextTranslationActivity.class);
            intent.putExtra("extra_from", from);
            if (z10) {
                intent.setFlags(268435456);
            } else {
                intent.setFlags(67108864);
            }
            ctx.startActivity(intent);
        }

        private a() {
        }
    }

    static final class a0 extends kotlin.jvm.internal.s implements w8.l {
        a0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "ShouldStartVoiceInput value is: " + bool);
            kotlin.jvm.internal.r.b(bool);
            if (bool.booleanValue()) {
                TextTranslationActivity.this.R2(true);
            } else {
                TextTranslationActivity.this.R2(false);
            }
            TextTranslationActivity.this.l4();
        }
    }

    static final class b extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        b(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new b(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            int iG3;
            int iG32;
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                long j10 = TextTranslationActivity.this.L;
                this.label = 1;
                if (kotlinx.coroutines.k0.a(j10, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            EditText editText = TextTranslationActivity.this.f6909n0;
            ConstraintLayout constraintLayout = null;
            COUIAnimateTextView cOUIAnimateTextView = null;
            if (editText == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText = null;
            }
            Editable text = editText.getText();
            kotlin.jvm.internal.r.d(text, "getText(...)");
            if (text.length() == 0) {
                TextTranslationActivity.this.V3();
                return n8.h0.INSTANCE;
            }
            COUIAnimateTextView cOUIAnimateTextView2 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView2 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView2 = null;
            }
            CharSequence text2 = cOUIAnimateTextView2.getText();
            kotlin.jvm.internal.r.d(text2, "getText(...)");
            if (kotlin.text.r.Y(text2)) {
                return n8.h0.INSTANCE;
            }
            COUIAnimateTextView cOUIAnimateTextView3 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView3 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView3 = null;
            }
            if (cOUIAnimateTextView3.getLayout() == null) {
                if (!TextTranslationActivity.this.f6892e1 && kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).f0().e(), kotlin.coroutines.jvm.internal.b.a(false))) {
                    com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "calculateFrameHeight return and retry");
                    TextTranslationActivity.this.f6892e1 = true;
                    TextTranslationActivity.this.P2();
                }
                return n8.h0.INSTANCE;
            }
            TextTranslationActivity.this.f6892e1 = false;
            COUIAnimateTextView cOUIAnimateTextView4 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView4 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView4 = null;
            }
            Layout layout = cOUIAnimateTextView4.getLayout();
            COUIAnimateTextView cOUIAnimateTextView5 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView5 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView5 = null;
            }
            int lineTop = layout.getLineTop(cOUIAnimateTextView5.getLineCount());
            COUIAnimateTextView cOUIAnimateTextView6 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView6 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView6 = null;
            }
            int lineTop2 = lineTop - cOUIAnimateTextView6.getLayout().getLineTop(0);
            COUIAnimateTextView cOUIAnimateTextView7 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView7 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView7 = null;
            }
            int iMax = Math.max(lineTop2, cOUIAnimateTextView7.getMinHeight());
            COUIAnimateTextView cOUIAnimateTextView8 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView8 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView8 = null;
            }
            int maxHeight = cOUIAnimateTextView8.getMaxHeight();
            if (TextTranslationActivity.this.E) {
                COUIAnimateTextView cOUIAnimateTextView9 = TextTranslationActivity.this.B0;
                if (cOUIAnimateTextView9 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView9 = null;
                }
                CharSequence text3 = cOUIAnimateTextView9.getText();
                kotlin.jvm.internal.r.d(text3, "getText(...)");
                if (!kotlin.text.r.Y(text3)) {
                    ConstraintLayout constraintLayout2 = TextTranslationActivity.this.A0;
                    if (constraintLayout2 == null) {
                        kotlin.jvm.internal.r.r("resultFrame");
                        constraintLayout2 = null;
                    }
                    ViewGroup.LayoutParams layoutParams = constraintLayout2.getLayoutParams();
                    TextTranslationActivity textTranslationActivity = TextTranslationActivity.this;
                    COUIAnimateTextView cOUIAnimateTextView10 = textTranslationActivity.B0;
                    if (cOUIAnimateTextView10 == null) {
                        kotlin.jvm.internal.r.r("resultTV");
                        cOUIAnimateTextView10 = null;
                    }
                    if (iMax < cOUIAnimateTextView10.getMinHeight()) {
                        COUIAnimateTextView cOUIAnimateTextView11 = textTranslationActivity.B0;
                        if (cOUIAnimateTextView11 == null) {
                            kotlin.jvm.internal.r.r("resultTV");
                        } else {
                            cOUIAnimateTextView = cOUIAnimateTextView11;
                        }
                        iMax = cOUIAnimateTextView.getMinHeight();
                        iG32 = textTranslationActivity.g3();
                    } else if (iMax < maxHeight) {
                        iG32 = textTranslationActivity.g3();
                    } else {
                        iG3 = textTranslationActivity.g3() + maxHeight;
                        textTranslationActivity.b4(layoutParams.height, iG3);
                    }
                    iG3 = iMax + iG32;
                    textTranslationActivity.b4(layoutParams.height, iG3);
                }
            } else {
                COUIAnimateTextView cOUIAnimateTextView12 = TextTranslationActivity.this.B0;
                if (cOUIAnimateTextView12 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView12 = null;
                }
                CharSequence text4 = cOUIAnimateTextView12.getText();
                kotlin.jvm.internal.r.d(text4, "getText(...)");
                if (!kotlin.text.r.Y(text4)) {
                    ConstraintLayout constraintLayout3 = TextTranslationActivity.this.A0;
                    if (constraintLayout3 == null) {
                        kotlin.jvm.internal.r.r("resultFrame");
                    } else {
                        constraintLayout = constraintLayout3;
                    }
                    ViewGroup.LayoutParams layoutParams2 = constraintLayout.getLayoutParams();
                    TextTranslationActivity textTranslationActivity2 = TextTranslationActivity.this;
                    textTranslationActivity2.b4(layoutParams2.height, Math.min(iMax, maxHeight) + textTranslationActivity2.g3());
                }
            }
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((b) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class b0 extends kotlin.jvm.internal.s implements w8.l {
        b0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws RemoteException {
            invoke((String) obj);
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
        public final void invoke(String str) throws RemoteException {
            if (TextTranslationActivity.this.F) {
                EditText editText = TextTranslationActivity.this.f6909n0;
                EditText editText2 = null;
                if (editText == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText = null;
                }
                if (kotlin.jvm.internal.r.a(str, editText.getText().toString())) {
                    return;
                }
                EditText editText3 = TextTranslationActivity.this.f6909n0;
                if (editText3 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText3 = null;
                }
                editText3.setText(str);
                EditText editText4 = TextTranslationActivity.this.f6909n0;
                if (editText4 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText4 = null;
                }
                editText4.setSelection(b9.d.e(str.length(), 1500));
                EditText editText5 = TextTranslationActivity.this.f6909n0;
                if (editText5 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                } else {
                    editText2 = editText5;
                }
                if (editText2.length() >= 1500 && kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).T().e(), Boolean.TRUE)) {
                    TextTranslationActivity.Z1(TextTranslationActivity.this).n0(false);
                }
                if (TextUtils.isEmpty((CharSequence) TextTranslationActivity.Z1(TextTranslationActivity.this).R().e())) {
                    return;
                }
                f1.a aVar = f1.f7117a;
                TextTranslationActivity textTranslationActivity = TextTranslationActivity.this;
                aVar.c(textTranslationActivity, "event_asr_success_for_words", textTranslationActivity.S.getSortIndex(), TextTranslationActivity.this.T.getSortIndex());
            }
        }
    }

    static final class c extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                i2.i iVar = this.this$0.T0;
                if (iVar == null) {
                    kotlin.jvm.internal.r.r("historyDao");
                    iVar = null;
                }
                iVar.a();
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        c(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new c(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            com.coloros.translate.ui.texttranslation.h hVar = null;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            aVar2.i("TextTranslationActivity", "clearHistory");
            TextTranslationActivity.this.S0.clear();
            com.coloros.translate.ui.texttranslation.h hVar2 = TextTranslationActivity.this.N0;
            if (hVar2 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar2;
            }
            hVar.j();
            TextTranslationActivity.this.a3();
            aVar2.i("TextTranslationActivity", "clearHistory to refresh page");
            TextTranslationActivity.Z1(TextTranslationActivity.this).a0().n(kotlin.coroutines.jvm.internal.b.c(0));
            TextTranslationActivity.this.k4();
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((c) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class c0 extends kotlin.jvm.internal.s implements w8.l {
        c0() {
            super(1);
        }

        public static final void invoke$lambda$1$lambda$0(TextTranslationActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            COUIAnimateTextView cOUIAnimateTextView = this$0.B0;
            COUIAnimateTextView cOUIAnimateTextView2 = null;
            if (cOUIAnimateTextView == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView = null;
            }
            cOUIAnimateTextView.scrollTo(0, 0);
            COUIAnimateTextView cOUIAnimateTextView3 = this$0.B0;
            if (cOUIAnimateTextView3 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView3 = null;
            }
            cOUIAnimateTextView3.setScrollY(0);
            COUIAnimateTextView cOUIAnimateTextView4 = this$0.B0;
            if (cOUIAnimateTextView4 == null) {
                kotlin.jvm.internal.r.r("resultTV");
            } else {
                cOUIAnimateTextView2 = cOUIAnimateTextView4;
            }
            cOUIAnimateTextView2.setScrollX(0);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x00dd  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void invoke(java.lang.String r11) {
            /*
                Method dump skipped, instruction units count: 462
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.texttranslation.TextTranslationActivity.c0.invoke(java.lang.String):void");
        }
    }

    public static final class d extends ViewOutlineProvider {
        d() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = view != null ? view.getWidth() : 0;
            int height = view != null ? view.getHeight() : 0;
            if (width == 0 || height == 0 || outline == null) {
                return;
            }
            outline.setRoundRect(0, 0, width, height, TextTranslationActivity.this.getResources().getDimension(R.dimen.dp_17));
        }
    }

    static final class d0 extends kotlin.jvm.internal.s implements w8.l {

        public static final class a implements Animator.AnimatorListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ TextTranslationActivity f6930a;

            a(TextTranslationActivity textTranslationActivity) {
                this.f6930a = textTranslationActivity;
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
                LottieAnimationView lottieAnimationView = this.f6930a.C0;
                if (lottieAnimationView == null) {
                    kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                    lottieAnimationView = null;
                }
                lottieAnimationView.setMinFrame(15);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                kotlin.jvm.internal.r.e(animation, "animation");
            }
        }

        d0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "ShouldResultVoiceStop value is: " + bool);
            Group group = TextTranslationActivity.this.E0;
            LottieAnimationView lottieAnimationView = null;
            if (group == null) {
                kotlin.jvm.internal.r.r("resultBtnGroup");
                group = null;
            }
            if (group.getVisibility() == 0) {
                LottieAnimationView lottieAnimationView2 = TextTranslationActivity.this.C0;
                if (lottieAnimationView2 == null) {
                    kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                    lottieAnimationView2 = null;
                }
                lottieAnimationView2.setVisibility(0);
            }
            kotlin.jvm.internal.r.b(bool);
            if (!bool.booleanValue()) {
                LottieAnimationView lottieAnimationView3 = TextTranslationActivity.this.C0;
                if (lottieAnimationView3 == null) {
                    kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                    lottieAnimationView3 = null;
                }
                lottieAnimationView3.w();
                aVar.d("TextTranslationActivity", "ShouldResultVoiceStop immediately");
                LottieAnimationView lottieAnimationView4 = TextTranslationActivity.this.C0;
                if (lottieAnimationView4 == null) {
                    kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                    lottieAnimationView4 = null;
                }
                lottieAnimationView4.setMinFrame(0);
                LottieAnimationView lottieAnimationView5 = TextTranslationActivity.this.C0;
                if (lottieAnimationView5 == null) {
                    kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                } else {
                    lottieAnimationView = lottieAnimationView5;
                }
                com.coloros.translate.utils.w.e(lottieAnimationView);
                return;
            }
            LottieAnimationView lottieAnimationView6 = TextTranslationActivity.this.C0;
            if (lottieAnimationView6 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView6 = null;
            }
            lottieAnimationView6.x();
            LottieAnimationView lottieAnimationView7 = TextTranslationActivity.this.C0;
            if (lottieAnimationView7 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView7 = null;
            }
            lottieAnimationView7.setMinFrame(0);
            LottieAnimationView lottieAnimationView8 = TextTranslationActivity.this.C0;
            if (lottieAnimationView8 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView8 = null;
            }
            lottieAnimationView8.setMaxFrame(69);
            LottieAnimationView lottieAnimationView9 = TextTranslationActivity.this.C0;
            if (lottieAnimationView9 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView9 = null;
            }
            lottieAnimationView9.g(new a(TextTranslationActivity.this));
            LottieAnimationView lottieAnimationView10 = TextTranslationActivity.this.C0;
            if (lottieAnimationView10 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
            } else {
                lottieAnimationView = lottieAnimationView10;
            }
            lottieAnimationView.v();
        }
    }

    static final class e extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ boolean $isAITranslate;
        long J$0;
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ boolean $isAITranslate;
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, boolean z10, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
                this.$isAITranslate = z10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, this.$isAITranslate, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                this.this$0.U3(false, this.$isAITranslate);
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(boolean z10, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$isAITranslate = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new e(this.$isAITranslate, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            long j10;
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            com.coloros.translate.ui.texttranslation.h hVar = null;
            if (i10 == 0) {
                n8.s.b(obj);
                long jCurrentTimeMillis = System.currentTimeMillis();
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, this.$isAITranslate, null);
                this.J$0 = jCurrentTimeMillis;
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
                j10 = jCurrentTimeMillis;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j10 = this.J$0;
                n8.s.b(obj);
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            aVar2.d("TextTranslationActivity", "completeTranslate saveHistory all cost : " + (jCurrentTimeMillis2 - j10));
            if (TextTranslationActivity.this.C) {
                TextHistory textHistory = TextTranslationActivity.this.G;
                if (textHistory != null) {
                    TextTranslationActivity.this.S0.add(0, textHistory);
                }
                aVar2.i("TextTranslationActivity", "completeTranslate historyList size : " + TextTranslationActivity.this.S0.size());
            }
            com.coloros.translate.ui.texttranslation.h hVar2 = TextTranslationActivity.this.N0;
            if (hVar2 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar2;
            }
            hVar.u(TextTranslationActivity.this.S0);
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((e) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class e0 extends kotlin.jvm.internal.s implements w8.l {

        public static final class a implements Animator.AnimatorListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ TextTranslationActivity f6931a;

            a(TextTranslationActivity textTranslationActivity) {
                this.f6931a = textTranslationActivity;
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
                LottieAnimationView lottieAnimationView = this.f6931a.f6914s0;
                if (lottieAnimationView == null) {
                    kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                    lottieAnimationView = null;
                }
                lottieAnimationView.setMinFrame(15);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                kotlin.jvm.internal.r.e(animation, "animation");
            }
        }

        e0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "ShouldOriVoiceStop value is: " + bool);
            LottieAnimationView lottieAnimationView = TextTranslationActivity.this.f6914s0;
            LottieAnimationView lottieAnimationView2 = null;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView = null;
            }
            lottieAnimationView.setVisibility(0);
            kotlin.jvm.internal.r.b(bool);
            if (!bool.booleanValue()) {
                LottieAnimationView lottieAnimationView3 = TextTranslationActivity.this.f6914s0;
                if (lottieAnimationView3 == null) {
                    kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                    lottieAnimationView3 = null;
                }
                lottieAnimationView3.w();
                if (kotlin.text.r.Y(TextTranslationActivity.this.X0)) {
                    LottieAnimationView lottieAnimationView4 = TextTranslationActivity.this.f6914s0;
                    if (lottieAnimationView4 == null) {
                        kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                        lottieAnimationView4 = null;
                    }
                    lottieAnimationView4.setVisibility(8);
                }
                aVar.d("TextTranslationActivity", "ShouldOriVoiceStop immediately and hide");
                LottieAnimationView lottieAnimationView5 = TextTranslationActivity.this.f6914s0;
                if (lottieAnimationView5 == null) {
                    kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                    lottieAnimationView5 = null;
                }
                lottieAnimationView5.setMinFrame(0);
                LottieAnimationView lottieAnimationView6 = TextTranslationActivity.this.f6914s0;
                if (lottieAnimationView6 == null) {
                    kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                } else {
                    lottieAnimationView2 = lottieAnimationView6;
                }
                com.coloros.translate.utils.w.e(lottieAnimationView2);
                return;
            }
            LottieAnimationView lottieAnimationView7 = TextTranslationActivity.this.f6914s0;
            if (lottieAnimationView7 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView7 = null;
            }
            lottieAnimationView7.x();
            LottieAnimationView lottieAnimationView8 = TextTranslationActivity.this.f6914s0;
            if (lottieAnimationView8 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView8 = null;
            }
            lottieAnimationView8.setMinFrame(0);
            LottieAnimationView lottieAnimationView9 = TextTranslationActivity.this.f6914s0;
            if (lottieAnimationView9 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView9 = null;
            }
            lottieAnimationView9.setMaxFrame(69);
            LottieAnimationView lottieAnimationView10 = TextTranslationActivity.this.f6914s0;
            if (lottieAnimationView10 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView10 = null;
            }
            lottieAnimationView10.g(new a(TextTranslationActivity.this));
            LottieAnimationView lottieAnimationView11 = TextTranslationActivity.this.f6914s0;
            if (lottieAnimationView11 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
            } else {
                lottieAnimationView2 = lottieAnimationView11;
            }
            lottieAnimationView2.v();
        }
    }

    static final class f extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ long $startTime;
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                TextHistory textHistoryE;
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.i("TextTranslationActivity", "deleteHistory historyList before size : " + this.this$0.S0.size());
                if (this.this$0.S0.size() > 0) {
                    int size = this.this$0.S0.size();
                    com.coloros.translate.ui.texttranslation.h hVar = this.this$0.N0;
                    i2.i iVar = null;
                    if (hVar == null) {
                        kotlin.jvm.internal.r.r("historyAdapter");
                        hVar = null;
                    }
                    if (size >= hVar.m().size()) {
                        com.coloros.translate.ui.texttranslation.h hVar2 = this.this$0.N0;
                        if (hVar2 == null) {
                            kotlin.jvm.internal.r.r("historyAdapter");
                            hVar2 = null;
                        }
                        Iterator it = hVar2.m().iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Number) it.next()).intValue();
                            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "deleteHistory deleteOne : " + iIntValue);
                            Object obj2 = this.this$0.S0.get(iIntValue);
                            kotlin.jvm.internal.r.d(obj2, "get(...)");
                            TextHistory textHistory = (TextHistory) obj2;
                            String oriContent = textHistory.getOriContent();
                            if (oriContent != null) {
                                i2.i iVar2 = this.this$0.T0;
                                if (iVar2 == null) {
                                    kotlin.jvm.internal.r.r("historyDao");
                                    iVar2 = null;
                                }
                                textHistoryE = iVar2.e(oriContent, textHistory.getResultLanguageCode());
                            } else {
                                textHistoryE = null;
                            }
                            if (textHistoryE != null) {
                                i2.i iVar3 = this.this$0.T0;
                                if (iVar3 == null) {
                                    kotlin.jvm.internal.r.r("historyDao");
                                    iVar3 = null;
                                }
                                iVar3.i(textHistoryE);
                            }
                        }
                        TextTranslationActivity textTranslationActivity = this.this$0;
                        i2.i iVar4 = this.this$0.T0;
                        if (iVar4 == null) {
                            kotlin.jvm.internal.r.r("historyDao");
                        } else {
                            iVar = iVar4;
                        }
                        textTranslationActivity.S0 = new ArrayList(iVar.h());
                        return n8.h0.INSTANCE;
                    }
                }
                aVar.q("TextTranslationActivity", "deleteHistory error for data size and return");
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(long j10, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$startTime = j10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new f(this.$startTime, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            com.coloros.translate.ui.texttranslation.h hVar = null;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            c0.a aVar2 = com.coloros.translate.utils.c0.f7098a;
            aVar2.i("TextTranslationActivity", "deleteHistory historyList size : " + TextTranslationActivity.this.S0.size());
            aVar2.d("TextTranslationActivity", "deleteHistory IO cost: " + (System.currentTimeMillis() - this.$startTime));
            com.coloros.translate.ui.texttranslation.h hVar2 = TextTranslationActivity.this.N0;
            if (hVar2 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
                hVar2 = null;
            }
            hVar2.k();
            com.coloros.translate.ui.texttranslation.h hVar3 = TextTranslationActivity.this.N0;
            if (hVar3 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar3;
            }
            hVar.u(TextTranslationActivity.this.S0);
            aVar2.d("TextTranslationActivity", "deleteHistory all cost: " + (System.currentTimeMillis() - this.$startTime));
            TextTranslationActivity.this.a3();
            aVar2.i("TextTranslationActivity", "deleteHistory to change page");
            TextTranslationActivity.Z1(TextTranslationActivity.this).a0().n(kotlin.coroutines.jvm.internal.b.c(0));
            TextTranslationActivity.this.k4();
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((f) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class f0 extends kotlin.jvm.internal.s implements w8.l {
        f0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Integer) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Integer num) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "pageMode : " + num);
            TextTranslationActivity.this.j4(num);
        }
    }

    public static final class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ImageView f6933b;

        g(ImageView imageView) {
            this.f6933b = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ValueAnimator valueAnimator = TextTranslationActivity.this.f6896g1;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
            }
            ValueAnimator valueAnimator2 = TextTranslationActivity.this.f6896g1;
            if (valueAnimator2 != null) {
                valueAnimator2.removeAllListeners();
            }
            this.f6933b.setAlpha(1.0f);
        }
    }

    static final class g0 extends kotlin.jvm.internal.s implements w8.l {
        public static final g0 INSTANCE = new g0();

        g0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "useIdentifyLanguage : " + bool);
        }
    }

    public static final class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ImageView f6935b;

        h(ImageView imageView) {
            this.f6935b = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ValueAnimator valueAnimator = TextTranslationActivity.this.f6898h1;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
            }
            ValueAnimator valueAnimator2 = TextTranslationActivity.this.f6898h1;
            if (valueAnimator2 != null) {
                valueAnimator2.removeAllListeners();
            }
            this.f6935b.setAlpha(0.0f);
        }
    }

    static final class h0 extends kotlin.jvm.internal.s implements w8.l {
        h0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            RuntimeShader runtimeShaderD;
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "usingAITranslate : " + bool);
            TextTranslationActivity.this.f4();
            kotlin.jvm.internal.r.b(bool);
            RelativeLayout relativeLayout = null;
            if (!bool.booleanValue()) {
                TextTranslationActivity textTranslationActivity = TextTranslationActivity.this;
                ImageView imageView = textTranslationActivity.f6920v0;
                if (imageView == null) {
                    kotlin.jvm.internal.r.r("aiBgNor");
                    imageView = null;
                }
                textTranslationActivity.c3(imageView);
                TextTranslationActivity textTranslationActivity2 = TextTranslationActivity.this;
                ImageView imageView2 = textTranslationActivity2.f6922w0;
                if (imageView2 == null) {
                    kotlin.jvm.internal.r.r("aiBgOn");
                    imageView2 = null;
                }
                textTranslationActivity2.e3(imageView2);
                ImageView imageView3 = TextTranslationActivity.this.f6924x0;
                if (imageView3 == null) {
                    kotlin.jvm.internal.r.r("aiIcon");
                    imageView3 = null;
                }
                imageView3.setImageResource(R.drawable.icon_ai);
                LottieAnimationView lottieAnimationView = TextTranslationActivity.this.D0;
                if (lottieAnimationView == null) {
                    kotlin.jvm.internal.r.r("waitingResultLAV");
                    lottieAnimationView = null;
                }
                com.coloros.translate.utils.w.e(lottieAnimationView);
                LottieAnimationView lottieAnimationView2 = TextTranslationActivity.this.D0;
                if (lottieAnimationView2 == null) {
                    kotlin.jvm.internal.r.r("waitingResultLAV");
                    lottieAnimationView2 = null;
                }
                lottieAnimationView2.setVisibility(8);
                EditText editText = TextTranslationActivity.this.f6909n0;
                if (editText == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText = null;
                }
                Editable text = editText.getText();
                kotlin.jvm.internal.r.d(text, "getText(...)");
                if (!kotlin.text.r.Y(text)) {
                    if (TextTranslationActivity.this.V0 || kotlin.text.r.Y(TextTranslationActivity.Z1(TextTranslationActivity.this).P())) {
                        TextTranslationActivity.Z1(TextTranslationActivity.this).K(true, true);
                        COUIAnimateTextView cOUIAnimateTextView = TextTranslationActivity.this.B0;
                        if (cOUIAnimateTextView == null) {
                            kotlin.jvm.internal.r.r("resultTV");
                            cOUIAnimateTextView = null;
                        }
                        cOUIAnimateTextView.setText("");
                        TextTranslationActivity.this.f6904k1.sendMessage(TextTranslationActivity.this.f6904k1.obtainMessage(1995));
                    } else {
                        aVar.i("TextTranslationActivity", "usingAITranslate input not changed and use last normal result");
                        TextTranslationActivity.Z1(TextTranslationActivity.this).K(false, true);
                        TextTranslationActivity.Z1(TextTranslationActivity.this).Y().n(TextTranslationActivity.Z1(TextTranslationActivity.this).P());
                    }
                }
                COUIAnimateTextView cOUIAnimateTextView2 = TextTranslationActivity.this.B0;
                if (cOUIAnimateTextView2 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView2 = null;
                }
                cOUIAnimateTextView2.setMovementMethod(ArrowKeyMovementMethod.getInstance());
                TextTranslationActivity.this.S3();
                if (Build.VERSION.SDK_INT < 33 || TextTranslationActivity.this.I3()) {
                    return;
                }
                com.oplus.vfxsdk.rsview.g gVar = TextTranslationActivity.this.f6905l0;
                if (gVar != null) {
                    gVar.k();
                }
                RelativeLayout relativeLayout2 = TextTranslationActivity.this.f6901j0;
                if (relativeLayout2 == null) {
                    kotlin.jvm.internal.r.r("translateFrame");
                } else {
                    relativeLayout = relativeLayout2;
                }
                relativeLayout.setBackground(TextTranslationActivity.this.f6903k0);
                return;
            }
            if (!TextTranslationActivity.Z1(TextTranslationActivity.this).c0()) {
                TextTranslationActivity.this.V2();
                COUIAnimateTextView cOUIAnimateTextView3 = TextTranslationActivity.this.B0;
                if (cOUIAnimateTextView3 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView3 = null;
                }
                cOUIAnimateTextView3.setText("");
                TextTranslationActivity.this.m4(false);
                TextTranslationActivity.this.f6886b1 = 0;
                TextTranslationActivity textTranslationActivity3 = TextTranslationActivity.this;
                ConstraintLayout constraintLayout = textTranslationActivity3.A0;
                if (constraintLayout == null) {
                    kotlin.jvm.internal.r.r("resultFrame");
                    constraintLayout = null;
                }
                textTranslationActivity3.b4(constraintLayout.getHeight(), TextTranslationActivity.this.f6925y);
                LottieAnimationView lottieAnimationView3 = TextTranslationActivity.this.D0;
                if (lottieAnimationView3 == null) {
                    kotlin.jvm.internal.r.r("waitingResultLAV");
                    lottieAnimationView3 = null;
                }
                lottieAnimationView3.setVisibility(0);
                LottieAnimationView lottieAnimationView4 = TextTranslationActivity.this.D0;
                if (lottieAnimationView4 == null) {
                    kotlin.jvm.internal.r.r("waitingResultLAV");
                    lottieAnimationView4 = null;
                }
                lottieAnimationView4.v();
                TextTranslationActivity.this.f6904k1.sendMessage(TextTranslationActivity.this.f6904k1.obtainMessage(1997));
                TextTranslationActivity.this.V3();
            }
            COUIAnimateTextView cOUIAnimateTextView4 = TextTranslationActivity.this.B0;
            if (cOUIAnimateTextView4 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView4 = null;
            }
            cOUIAnimateTextView4.setMovementMethod(new ScrollingMovementMethod());
            TextTranslationActivity textTranslationActivity4 = TextTranslationActivity.this;
            ImageView imageView4 = textTranslationActivity4.f6920v0;
            if (imageView4 == null) {
                kotlin.jvm.internal.r.r("aiBgNor");
                imageView4 = null;
            }
            textTranslationActivity4.e3(imageView4);
            TextTranslationActivity textTranslationActivity5 = TextTranslationActivity.this;
            ImageView imageView5 = textTranslationActivity5.f6922w0;
            if (imageView5 == null) {
                kotlin.jvm.internal.r.r("aiBgOn");
                imageView5 = null;
            }
            textTranslationActivity5.c3(imageView5);
            ImageView imageView6 = TextTranslationActivity.this.f6924x0;
            if (imageView6 == null) {
                kotlin.jvm.internal.r.r("aiIcon");
                imageView6 = null;
            }
            imageView6.setImageResource(R.drawable.icon_ai_on);
            if (Build.VERSION.SDK_INT < 33 || TextTranslationActivity.this.I3()) {
                return;
            }
            RelativeLayout relativeLayout3 = TextTranslationActivity.this.f6901j0;
            if (relativeLayout3 == null) {
                kotlin.jvm.internal.r.r("translateFrame");
                relativeLayout3 = null;
            }
            relativeLayout3.setBackground(TextTranslationActivity.this.f6905l0);
            com.oplus.vfxsdk.rsview.g gVar2 = TextTranslationActivity.this.f6905l0;
            if (gVar2 != null) {
                gVar2.i("marginAlpha", Float.valueOf(0.12f));
            }
            com.oplus.vfxsdk.rsview.g gVar3 = TextTranslationActivity.this.f6905l0;
            if (gVar3 != null && (runtimeShaderD = gVar3.d()) != null) {
                runtimeShaderD.setFloatUniform("rotateSpeed", 95.0f);
            }
            com.oplus.vfxsdk.rsview.g gVar4 = TextTranslationActivity.this.f6905l0;
            if (gVar4 != null) {
                RelativeLayout relativeLayout4 = TextTranslationActivity.this.f6901j0;
                if (relativeLayout4 == null) {
                    kotlin.jvm.internal.r.r("translateFrame");
                } else {
                    relativeLayout = relativeLayout4;
                }
                gVar4.j(relativeLayout);
            }
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {

        public static final class a extends GestureDetector.SimpleOnGestureListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ TextTranslationActivity f6936a;

            a(TextTranslationActivity textTranslationActivity) {
                this.f6936a = textTranslationActivity;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent e22, float f10, float f11) {
                kotlin.jvm.internal.r.e(e22, "e2");
                EditText editText = this.f6936a.f6909n0;
                if (editText == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText = null;
                }
                editText.clearFocus();
                return false;
            }
        }

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final GestureDetector mo8invoke() {
            return new GestureDetector(TextTranslationActivity.this, new a(TextTranslationActivity.this));
        }
    }

    static final class i0 extends kotlin.jvm.internal.s implements w8.l {
        i0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "fromLanguageCode : " + str);
            TextTranslationActivity.Z1(TextTranslationActivity.this).b0().n(Boolean.valueOf(TextTranslationActivity.this.l1()));
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        public static final j INSTANCE = new j();

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
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "checkAiDownload use io thread");
            com.coloros.translate.repository.d.f5439a.b();
        }
    }

    static final class j0 extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                TextTranslationActivity textTranslationActivity = this.this$0;
                textTranslationActivity.U3(true, kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(textTranslationActivity).f0().e(), kotlin.coroutines.jvm.internal.b.a(true)));
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        j0(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new j0(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            EditText editText = null;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            EditText editText2 = TextTranslationActivity.this.f6909n0;
            if (editText2 == null) {
                kotlin.jvm.internal.r.r("inputET");
            } else {
                editText = editText2;
            }
            editText.getText().clear();
            if (Build.VERSION.SDK_INT >= 33 && !TextTranslationActivity.this.I3()) {
                TextTranslationActivity.this.U2();
            }
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onBackPressed saveHistory and finish");
            TextTranslationActivity.super.onBackPressed();
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((j0) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class k extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                TextTranslationActivity textTranslationActivity = this.this$0;
                i2.i iVar = this.this$0.T0;
                if (iVar == null) {
                    kotlin.jvm.internal.r.r("historyDao");
                    iVar = null;
                }
                textTranslationActivity.S0 = new ArrayList(iVar.h());
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "initData historyList init : " + this.this$0.S0.size());
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        k(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new k(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            com.coloros.translate.ui.texttranslation.h hVar = null;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            if (!TextTranslationActivity.this.S0.isEmpty()) {
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "initData setData and notifyDataSetChanged");
                com.coloros.translate.ui.texttranslation.h hVar2 = TextTranslationActivity.this.N0;
                if (hVar2 == null) {
                    kotlin.jvm.internal.r.r("historyAdapter");
                } else {
                    hVar = hVar2;
                }
                hVar.u(TextTranslationActivity.this.S0);
            }
            TextTranslationActivity.this.k4();
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((k) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class k0 extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        k0(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new k0(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            TextTranslationActivity.this.f6890d1 = AntiSpamClient.Companion.getDetectName();
            TextTranslationActivity.Z1(TextTranslationActivity.this).u0(AISettings.isDetectAvailable(TextTranslationActivity.this.f6915t, TextTranslationActivity.this.f6890d1, null));
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "onCreate detectName : " + TextTranslationActivity.this.f6890d1 + " , isAntiSpamAvailable : " + TextTranslationActivity.Z1(TextTranslationActivity.this).g0());
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((k0) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class l extends kotlin.jvm.internal.s implements w8.l {
        l() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(int i10) {
            Integer num = (Integer) TextTranslationActivity.Z1(TextTranslationActivity.this).a0().e();
            if (num != null && num.intValue() == 0) {
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.i("TextTranslationActivity", "onItemClick position : " + i10);
                Object obj = TextTranslationActivity.this.S0.get(i10);
                kotlin.jvm.internal.r.d(obj, "get(...)");
                TextHistory textHistory = (TextHistory) obj;
                String oriLanguageCode = textHistory.getOriLanguageCode();
                String resultLanguageCode = textHistory.getResultLanguageCode();
                if (!kotlin.jvm.internal.r.a(oriLanguageCode, TextTranslationActivity.this.S.getLanguageCode()) || !kotlin.jvm.internal.r.a(resultLanguageCode, TextTranslationActivity.this.T.getLanguageCode())) {
                    LanguageManager.f4727w.b().V(oriLanguageCode, resultLanguageCode);
                }
                EditText editText = TextTranslationActivity.this.f6909n0;
                EditText editText2 = null;
                if (editText == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText = null;
                }
                editText.setText(textHistory.getOriContent());
                EditText editText3 = TextTranslationActivity.this.f6909n0;
                if (editText3 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText3 = null;
                }
                EditText editText4 = TextTranslationActivity.this.f6909n0;
                if (editText4 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText4 = null;
                }
                editText3.setSelection(editText4.length());
                TextTranslationActivity.Z1(TextTranslationActivity.this).b0().n(Boolean.valueOf(TextTranslationActivity.this.l1()));
                if (kotlin.jvm.internal.r.a(textHistory.getExpandField1(), TextHistory.AI_RESULT)) {
                    Object objE = TextTranslationActivity.Z1(TextTranslationActivity.this).b0().e();
                    Boolean bool = Boolean.TRUE;
                    if (kotlin.jvm.internal.r.a(objE, bool)) {
                        aVar.i("TextTranslationActivity", "onItemClick and use AI translate");
                        AppCompatTextView appCompatTextView = TextTranslationActivity.this.f6926y0;
                        if (appCompatTextView == null) {
                            kotlin.jvm.internal.r.r("aiContent");
                            appCompatTextView = null;
                        }
                        appCompatTextView.requestFocus();
                        TextTranslationActivity.Z1(TextTranslationActivity.this).f0().n(bool);
                    }
                }
                if (kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).T().e(), Boolean.TRUE)) {
                    aVar.d("TextTranslationActivity", "onItemClick while asr but nothing identify");
                    p0 p0VarZ1 = TextTranslationActivity.Z1(TextTranslationActivity.this);
                    EditText editText5 = TextTranslationActivity.this.f6909n0;
                    if (editText5 == null) {
                        kotlin.jvm.internal.r.r("inputET");
                    } else {
                        editText2 = editText5;
                    }
                    p0VarZ1.x0(editText2.getText().toString());
                }
            }
        }
    }

    static final class l0 extends kotlin.coroutines.jvm.internal.l implements w8.p {
        final /* synthetic */ int[] $selectedData;
        int label;

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.b.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
                TextTranslationActivity textTranslationActivity = this.this$0;
                i2.i iVar = this.this$0.T0;
                if (iVar == null) {
                    kotlin.jvm.internal.r.r("historyDao");
                    iVar = null;
                }
                textTranslationActivity.S0 = new ArrayList(iVar.h());
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(int[] iArr, kotlin.coroutines.d dVar) {
            super(2, dVar);
            this.$selectedData = iArr;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new l0(this.$selectedData, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            com.coloros.translate.ui.texttranslation.h hVar = null;
            if (i10 == 0) {
                n8.s.b(obj);
                kotlinx.coroutines.y yVarB = kotlinx.coroutines.o0.b();
                a aVar = new a(TextTranslationActivity.this, null);
                this.label = 1;
                if (kotlinx.coroutines.f.c(yVarB, aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            if (!TextTranslationActivity.this.S0.isEmpty()) {
                com.coloros.translate.ui.texttranslation.h hVar2 = TextTranslationActivity.this.N0;
                if (hVar2 == null) {
                    kotlin.jvm.internal.r.r("historyAdapter");
                    hVar2 = null;
                }
                hVar2.u(TextTranslationActivity.this.S0);
            }
            com.coloros.translate.ui.texttranslation.h hVar3 = TextTranslationActivity.this.N0;
            if (hVar3 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar3;
            }
            hVar.z(kotlin.collections.i.X(this.$selectedData));
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((l0) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class m extends kotlin.jvm.internal.s implements w8.l {

        static final class a extends kotlin.coroutines.jvm.internal.l implements w8.p {
            final /* synthetic */ int $position;
            int label;
            final /* synthetic */ TextTranslationActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationActivity textTranslationActivity, int i10, kotlin.coroutines.d dVar) {
                super(2, dVar);
                this.this$0 = textTranslationActivity;
                this.$position = i10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
                return new a(this.this$0, this.$position, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object objF = kotlin.coroutines.intrinsics.b.f();
                int i10 = this.label;
                if (i10 == 0) {
                    n8.s.b(obj);
                    long j10 = this.this$0.L;
                    this.label = 1;
                    if (kotlinx.coroutines.k0.a(j10, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n8.s.b(obj);
                }
                COUIPercentWidthRecyclerView cOUIPercentWidthRecyclerView = this.this$0.M0;
                if (cOUIPercentWidthRecyclerView == null) {
                    kotlin.jvm.internal.r.r("historyRV");
                    cOUIPercentWidthRecyclerView = null;
                }
                cOUIPercentWidthRecyclerView.smoothScrollToPosition(this.$position);
                return n8.h0.INSTANCE;
            }

            @Override // w8.p
            public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
                return ((a) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
            }
        }

        m() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws RemoteException {
            invoke(((Number) obj).intValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(int i10) throws RemoteException {
            Integer num = (Integer) TextTranslationActivity.Z1(TextTranslationActivity.this).a0().e();
            if (num != null && num.intValue() == 0) {
                TextTranslationActivity.Z1(TextTranslationActivity.this).a0().n(1);
                if (kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).T().e(), Boolean.TRUE)) {
                    TextTranslationActivity.Z1(TextTranslationActivity.this).n0(false);
                    TextTranslationActivity.Z1(TextTranslationActivity.this).T().n(Boolean.FALSE);
                }
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "onItemLongClick setSelectionPosition : " + i10);
                com.coloros.translate.ui.texttranslation.h hVar = TextTranslationActivity.this.N0;
                if (hVar == null) {
                    kotlin.jvm.internal.r.r("historyAdapter");
                    hVar = null;
                }
                hVar.A(i10);
                kotlinx.coroutines.g.b(t0.a(TextTranslationActivity.Z1(TextTranslationActivity.this)), kotlinx.coroutines.o0.c(), null, new a(TextTranslationActivity.this, i10, null), 2, null);
            }
        }
    }

    public static final class m0 implements a.InterfaceC0143a {
        m0() {
        }

        @Override // g2.a.InterfaceC0143a
        public void onCallStateChanged(int i10) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "onCallStateChanged: " + i10);
            if (i10 == 1 || i10 == 2) {
                aVar.d("TextTranslationActivity", "Phone call detected, stopping TTS");
                TextTranslationActivity.this.f4();
            }
        }
    }

    static final class n extends kotlin.jvm.internal.s implements w8.l {
        n() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return n8.h0.INSTANCE;
        }

        public final void invoke(int i10) {
            Integer num = (Integer) TextTranslationActivity.Z1(TextTranslationActivity.this).a0().e();
            if (num != null && num.intValue() == 1) {
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.i("TextTranslationActivity", "onItemEditClick selected size : " + i10);
                TextTranslationActivity.this.N = i10;
                LinearLayout linearLayout = null;
                if (i10 == TextTranslationActivity.this.S0.size()) {
                    TextTranslationActivity.this.P = true;
                    COUIToolbar cOUIToolbar = TextTranslationActivity.this.P0;
                    if (cOUIToolbar == null) {
                        kotlin.jvm.internal.r.r("toolbarHistory");
                        cOUIToolbar = null;
                    }
                    cOUIToolbar.setTitle(TextTranslationActivity.this.getResources().getString(R.string.completely_select_all));
                    MenuItem menuItem = TextTranslationActivity.this.Q0;
                    if (menuItem == null) {
                        kotlin.jvm.internal.r.r("menuSelect");
                        menuItem = null;
                    }
                    menuItem.setTitle(TextTranslationActivity.this.getString(R.string.select_cancel_all));
                    LinearLayout linearLayout2 = TextTranslationActivity.this.O0;
                    if (linearLayout2 == null) {
                        kotlin.jvm.internal.r.r("deleteLayout");
                    } else {
                        linearLayout = linearLayout2;
                    }
                    linearLayout.setEnabled(true);
                } else if (i10 == 0) {
                    TextTranslationActivity.this.P = false;
                    COUIToolbar cOUIToolbar2 = TextTranslationActivity.this.P0;
                    if (cOUIToolbar2 == null) {
                        kotlin.jvm.internal.r.r("toolbarHistory");
                        cOUIToolbar2 = null;
                    }
                    cOUIToolbar2.setTitle(TextTranslationActivity.this.getString(R.string.mark_selected_no_items));
                    MenuItem menuItem2 = TextTranslationActivity.this.Q0;
                    if (menuItem2 == null) {
                        kotlin.jvm.internal.r.r("menuSelect");
                        menuItem2 = null;
                    }
                    menuItem2.setTitle(TextTranslationActivity.this.getString(R.string.select_all));
                    LinearLayout linearLayout3 = TextTranslationActivity.this.O0;
                    if (linearLayout3 == null) {
                        kotlin.jvm.internal.r.r("deleteLayout");
                    } else {
                        linearLayout = linearLayout3;
                    }
                    linearLayout.setEnabled(false);
                } else {
                    TextTranslationActivity.this.P = false;
                    COUIToolbar cOUIToolbar3 = TextTranslationActivity.this.P0;
                    if (cOUIToolbar3 == null) {
                        kotlin.jvm.internal.r.r("toolbarHistory");
                        cOUIToolbar3 = null;
                    }
                    cOUIToolbar3.setTitle(TextTranslationActivity.this.getResources().getQuantityString(R.plurals.mark_selected_item, i10, Integer.valueOf(i10)));
                    MenuItem menuItem3 = TextTranslationActivity.this.Q0;
                    if (menuItem3 == null) {
                        kotlin.jvm.internal.r.r("menuSelect");
                        menuItem3 = null;
                    }
                    menuItem3.setTitle(TextTranslationActivity.this.getString(R.string.select_all));
                    LinearLayout linearLayout4 = TextTranslationActivity.this.O0;
                    if (linearLayout4 == null) {
                        kotlin.jvm.internal.r.r("deleteLayout");
                    } else {
                        linearLayout = linearLayout4;
                    }
                    linearLayout.setEnabled(true);
                }
                aVar.i("TextTranslationActivity", "onItemEditClick selectedAll : " + TextTranslationActivity.this.P);
            }
        }
    }

    public static final class n0 extends AnimatorListenerAdapter {
        n0() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            kotlin.jvm.internal.r.e(animation, "animation");
            ValueAnimator valueAnimator = TextTranslationActivity.this.J;
            if (valueAnimator != null) {
                valueAnimator.removeAllUpdateListeners();
            }
            ValueAnimator valueAnimator2 = TextTranslationActivity.this.J;
            if (valueAnimator2 != null) {
                valueAnimator2.removeAllListeners();
            }
        }
    }

    static final class o extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        o(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationActivity.this.new o(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                long j10 = TextTranslationActivity.this.L;
                this.label = 1;
                if (kotlinx.coroutines.k0.a(j10, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            TextTranslationActivity.Z1(TextTranslationActivity.this).a0().n(kotlin.coroutines.jvm.internal.b.c(0));
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((o) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class o0 extends kotlin.jvm.internal.s implements w8.l {
        o0() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String str) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "identifyLanguage languageCode : " + str);
            if (str.equals(TextTranslationActivity.this.T.getLanguageCode())) {
                aVar.d("TextTranslationActivity", "identifyLanguage reset language");
                com.coloros.translate.o oVar = TextTranslationActivity.this.W;
                if (oVar != null) {
                    oVar.M();
                }
            }
        }
    }

    static final class p extends kotlin.jvm.internal.s implements w8.l {
        p() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            TextTranslationActivity.Z1(TextTranslationActivity.this).h0().n(Boolean.TRUE);
            TextTranslationActivity.Z1(TextTranslationActivity.this).k0().n(Boolean.FALSE);
            com.coloros.translate.o oVar = TextTranslationActivity.this.W;
            if (oVar != null) {
                oVar.G(true);
            }
        }
    }

    static final class q extends kotlin.jvm.internal.s implements w8.l {
        q() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            TextTranslationActivity.Z1(TextTranslationActivity.this).h0().n(Boolean.FALSE);
            TextTranslationActivity.Z1(TextTranslationActivity.this).k0().n(Boolean.TRUE);
            com.coloros.translate.o oVar = TextTranslationActivity.this.W;
            if (oVar != null) {
                oVar.G(false);
            }
        }
    }

    static final class r extends kotlin.jvm.internal.s implements w8.l {
        r() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(View view) {
            if (kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).e0().e(), Boolean.TRUE)) {
                TextTranslationActivity.Z1(TextTranslationActivity.this).e0().k(Boolean.FALSE);
            }
            com.coloros.translate.o oVar = TextTranslationActivity.this.W;
            if (oVar != null) {
                oVar.M();
            }
        }
    }

    public static final class s extends com.coloros.translate.widget.q {

        /* JADX INFO: renamed from: a */
        private String f6939a = "";

        /* JADX INFO: renamed from: b */
        private int f6940b;

        s() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String strSubstring;
            kotlin.jvm.internal.r.e(editable, "editable");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "afterTextChanged inputET changed");
            TextTranslationActivity.this.U0 = editable.toString();
            TextTranslationActivity.this.j3();
            TextTranslationActivity.this.V0 = !kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(r2).R().e(), TextTranslationActivity.this.U0);
            if (TextTranslationActivity.this.V0 && !kotlin.text.r.Y(TextTranslationActivity.Z1(TextTranslationActivity.this).P())) {
                aVar.i("TextTranslationActivity", "afterTextChanged reset lastNormalResult");
                TextTranslationActivity.Z1(TextTranslationActivity.this).v0("");
            }
            LottieAnimationView lottieAnimationView = null;
            EditText editText = null;
            if (TextTranslationActivity.this.U0.length() > 1500) {
                aVar.q("TextTranslationActivity", "inputET length is : " + TextTranslationActivity.this.U0.length());
                b1.c(R.string.tip_max_length, 0, 2, null);
                CharSequence charSequenceSubSequence = TextTranslationActivity.this.U0.subSequence(1499, 1501);
                TextTranslationActivity textTranslationActivity = TextTranslationActivity.this;
                if (com.coloros.translate.ui.simultaneous.utils.a.c(charSequenceSubSequence)) {
                    aVar.d("TextTranslationActivity", "afterTextChanged end with emoji");
                    if (this.f6940b == 1500) {
                        strSubstring = TextTranslationActivity.this.U0.substring(0, 1500);
                        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                    } else {
                        strSubstring = TextTranslationActivity.this.U0.substring(0, 1499);
                        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                    }
                } else {
                    strSubstring = TextTranslationActivity.this.U0.substring(0, 1500);
                    kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                }
                textTranslationActivity.U0 = strSubstring;
                this.f6940b = TextTranslationActivity.this.U0.length();
                EditText editText2 = TextTranslationActivity.this.f6909n0;
                if (editText2 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText2 = null;
                }
                editText2.setText(TextTranslationActivity.this.U0);
                EditText editText3 = TextTranslationActivity.this.f6909n0;
                if (editText3 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText3 = null;
                }
                EditText editText4 = TextTranslationActivity.this.f6909n0;
                if (editText4 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                } else {
                    editText = editText4;
                }
                editText3.setSelection(editText.length());
                TextTranslationActivity.Z1(TextTranslationActivity.this).t0(true);
                if (TextTranslationActivity.this.V0) {
                    TextTranslationActivity.Z1(TextTranslationActivity.this).R().n(TextTranslationActivity.this.U0);
                    return;
                }
                return;
            }
            this.f6940b = TextTranslationActivity.this.U0.length();
            if (TextTranslationActivity.Z1(TextTranslationActivity.this).M()) {
                TextTranslationActivity.Z1(TextTranslationActivity.this).t0(false);
            }
            if (TextTranslationActivity.this.V0) {
                TextTranslationActivity.Z1(TextTranslationActivity.this).R().n(TextTranslationActivity.this.U0);
                if (kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).f0().e(), Boolean.TRUE)) {
                    aVar.i("TextTranslationActivity", "afterTextChanged reset usingAITranslate");
                    TextTranslationActivity.Z1(TextTranslationActivity.this).f0().n(Boolean.FALSE);
                }
            }
            if (TextTranslationActivity.this.U0.length() > 0) {
                LottieAnimationView lottieAnimationView2 = TextTranslationActivity.this.f6916t0;
                if (lottieAnimationView2 == null) {
                    kotlin.jvm.internal.r.r("waitingInputLAV");
                    lottieAnimationView2 = null;
                }
                if (lottieAnimationView2.q()) {
                    aVar.d("TextTranslationActivity", "afterTextChanged stop waitingInputLAV");
                    LottieAnimationView lottieAnimationView3 = TextTranslationActivity.this.f6916t0;
                    if (lottieAnimationView3 == null) {
                        kotlin.jvm.internal.r.r("waitingInputLAV");
                        lottieAnimationView3 = null;
                    }
                    com.coloros.translate.utils.w.e(lottieAnimationView3);
                    LottieAnimationView lottieAnimationView4 = TextTranslationActivity.this.f6916t0;
                    if (lottieAnimationView4 == null) {
                        kotlin.jvm.internal.r.r("waitingInputLAV");
                        lottieAnimationView4 = null;
                    }
                    lottieAnimationView4.setVisibility(8);
                }
                if (kotlin.text.r.u(TextTranslationActivity.this.U0, "\n", false, 2, null) && kotlin.jvm.internal.r.a(kotlin.text.r.B(TextTranslationActivity.this.U0, this.f6939a, "", false, 4, null), "\n")) {
                    TextTranslationActivity textTranslationActivity2 = TextTranslationActivity.this;
                    String strSubstring2 = textTranslationActivity2.U0.substring(0, TextTranslationActivity.this.U0.length() - 1);
                    kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
                    textTranslationActivity2.U0 = strSubstring2;
                    EditText editText5 = TextTranslationActivity.this.f6909n0;
                    if (editText5 == null) {
                        kotlin.jvm.internal.r.r("inputET");
                        editText5 = null;
                    }
                    editText5.setText(TextTranslationActivity.this.U0);
                    EditText editText6 = TextTranslationActivity.this.f6909n0;
                    if (editText6 == null) {
                        kotlin.jvm.internal.r.r("inputET");
                        editText6 = null;
                    }
                    editText6.setSelection(TextTranslationActivity.this.U0.length());
                    TextTranslationActivity.X2(TextTranslationActivity.this, false, 1, null);
                    TextTranslationActivity.this.V2();
                    return;
                }
            }
            EditText editText7 = TextTranslationActivity.this.f6909n0;
            if (editText7 == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText7 = null;
            }
            LottieAnimationView lottieAnimationView5 = TextTranslationActivity.this.f6916t0;
            if (lottieAnimationView5 == null) {
                kotlin.jvm.internal.r.r("waitingInputLAV");
            } else {
                lottieAnimationView = lottieAnimationView5;
            }
            editText7.setHint(lottieAnimationView.getVisibility() != 0 ? TextTranslationActivity.this.getString(R.string.text_translation_input_hint_new) : "");
            TextTranslationActivity.this.h4();
            boolean z10 = TextTranslationActivity.this.U0.length() == 0;
            if (z10 != TextTranslationActivity.this.U) {
                TextTranslationActivity.this.U = z10;
                TextTranslationActivity.this.l4();
                TextTranslationActivity.this.k4();
            }
        }

        @Override // com.coloros.translate.widget.q, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            super.beforeTextChanged(charSequence, i10, i11, i12);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "beforeTextChanged inputET changed");
            EditText editText = TextTranslationActivity.this.f6909n0;
            if (editText == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText = null;
            }
            this.f6939a = editText.getText().toString();
        }
    }

    public static final class t extends com.coloros.translate.widget.q {
        t() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            kotlin.jvm.internal.r.e(editable, "editable");
            String string = editable.toString();
            int length = string.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = kotlin.jvm.internal.r.f(string.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            if (TextUtils.isEmpty(string.subSequence(i10, length + 1).toString())) {
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "resultTV afterTextChanged updateResultFrameStatus true");
                TextTranslationActivity.this.m4(true);
                TextTranslationActivity.this.P2();
                return;
            }
            TextTranslationActivity.this.m4(false);
            TextTranslationActivity.this.P2();
            String str = com.coloros.translate.observer.e.INSTANCE.k() ? "1" : AuthUtil.AUTH_STYLE_INNER;
            HashMap map = new HashMap();
            map.put("network", str);
            map.put("search_words", "1");
            int sortIndex = TextTranslationActivity.this.S.getSortIndex();
            StringBuilder sb = new StringBuilder();
            sb.append(sortIndex);
            map.put("language_from", sb.toString());
            int sortIndex2 = TextTranslationActivity.this.T.getSortIndex();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(sortIndex2);
            map.put("language_to", sb2.toString());
            f1.f7117a.e(TextTranslationActivity.this.f6915t, "event_translate_success_for_words", map);
        }
    }

    static final class u extends kotlin.jvm.internal.s implements w8.a {
        public static final u INSTANCE = new u();

        u() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            return Boolean.valueOf(com.coloros.translate.utils.j0.c(TranslationApplication.f4754b.a()));
        }
    }

    static final class v extends kotlin.jvm.internal.s implements w8.a {
        public static final v INSTANCE = new v();

        v() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    static final class w extends kotlin.jvm.internal.s implements w8.l {
        w() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "toLanguageCode : " + str);
            TextTranslationActivity.Z1(TextTranslationActivity.this).b0().n(Boolean.valueOf(TextTranslationActivity.this.l1()));
        }
    }

    static final class x extends kotlin.jvm.internal.s implements w8.l {
        x() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            kotlin.jvm.internal.r.b(bool);
            if (bool.booleanValue()) {
                LanguageChooseView languageChooseView = TextTranslationActivity.this.f6893f0;
                if (languageChooseView != null) {
                    languageChooseView.h();
                    return;
                }
                return;
            }
            LanguageChooseView languageChooseView2 = TextTranslationActivity.this.f6893f0;
            if (languageChooseView2 != null) {
                languageChooseView2.k();
            }
        }
    }

    static final class y extends kotlin.jvm.internal.s implements w8.l {
        y() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            kotlin.jvm.internal.r.b(bool);
            if (bool.booleanValue()) {
                LanguageChooseView languageChooseView = TextTranslationActivity.this.f6893f0;
                if (languageChooseView != null) {
                    languageChooseView.o();
                    return;
                }
                return;
            }
            LanguageChooseView languageChooseView2 = TextTranslationActivity.this.f6893f0;
            if (languageChooseView2 != null) {
                languageChooseView2.r();
            }
        }
    }

    static final class z extends kotlin.jvm.internal.s implements w8.l {
        z() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "showAITranslate : " + bool);
            RelativeLayout relativeLayout = TextTranslationActivity.this.f6918u0;
            RelativeLayout relativeLayout2 = null;
            if (relativeLayout == null) {
                kotlin.jvm.internal.r.r("aiBtn");
                relativeLayout = null;
            }
            kotlin.jvm.internal.r.b(bool);
            int iMeasureText = 0;
            relativeLayout.setVisibility(bool.booleanValue() ? 0 : 4);
            if (kotlin.jvm.internal.r.a(TextTranslationActivity.Z1(TextTranslationActivity.this).f0().e(), Boolean.TRUE) && !bool.booleanValue()) {
                TextTranslationActivity.Z1(TextTranslationActivity.this).f0().n(Boolean.FALSE);
            }
            AppCompatTextView appCompatTextView = TextTranslationActivity.this.f6926y0;
            if (appCompatTextView == null) {
                kotlin.jvm.internal.r.r("aiContent");
                appCompatTextView = null;
            }
            TextPaint paint = appCompatTextView.getPaint();
            if (paint != null) {
                AppCompatTextView appCompatTextView2 = TextTranslationActivity.this.f6926y0;
                if (appCompatTextView2 == null) {
                    kotlin.jvm.internal.r.r("aiContent");
                    appCompatTextView2 = null;
                }
                iMeasureText = (int) paint.measureText(appCompatTextView2.getText().toString());
            }
            if (bool.booleanValue()) {
                j.a aVar2 = com.coloros.translate.utils.j.f7127a;
                if (iMeasureText > aVar2.a(48.0f)) {
                    ImageView imageView = TextTranslationActivity.this.f6920v0;
                    if (imageView == null) {
                        kotlin.jvm.internal.r.r("aiBgNor");
                        imageView = null;
                    }
                    imageView.setBackground(r.a.e(TextTranslationActivity.this, R.drawable.ai_btn_other_nor));
                    ImageView imageView2 = TextTranslationActivity.this.f6922w0;
                    if (imageView2 == null) {
                        kotlin.jvm.internal.r.r("aiBgOn");
                        imageView2 = null;
                    }
                    imageView2.setBackground(r.a.e(TextTranslationActivity.this, R.drawable.ai_btn_other_on));
                    int iA = iMeasureText + aVar2.a(84.0f);
                    int iA2 = aVar2.a(160.0f);
                    aVar.d("TextTranslationActivity", "showAITranslate realWidth : " + iA + " , maxWidth : " + iA2);
                    RelativeLayout relativeLayout3 = TextTranslationActivity.this.f6918u0;
                    if (relativeLayout3 == null) {
                        kotlin.jvm.internal.r.r("aiBtn");
                    } else {
                        relativeLayout2 = relativeLayout3;
                    }
                    relativeLayout2.getLayoutParams().width = Math.min(iA, iA2);
                    return;
                }
            }
            ImageView imageView3 = TextTranslationActivity.this.f6920v0;
            if (imageView3 == null) {
                kotlin.jvm.internal.r.r("aiBgNor");
                imageView3 = null;
            }
            imageView3.setBackground(r.a.e(TextTranslationActivity.this, R.drawable.ai_btn_cn_nor));
            ImageView imageView4 = TextTranslationActivity.this.f6922w0;
            if (imageView4 == null) {
                kotlin.jvm.internal.r.r("aiBgOn");
                imageView4 = null;
            }
            imageView4.setBackground(r.a.e(TextTranslationActivity.this, R.drawable.ai_btn_cn_on));
            RelativeLayout relativeLayout4 = TextTranslationActivity.this.f6918u0;
            if (relativeLayout4 == null) {
                kotlin.jvm.internal.r.r("aiBtn");
            } else {
                relativeLayout2 = relativeLayout4;
            }
            relativeLayout2.getLayoutParams().width = com.coloros.translate.utils.j.f7127a.a(132.0f);
        }
    }

    public TextTranslationActivity() {
        TranslationApplication.a aVar = TranslationApplication.f4754b;
        this.f6917u = aVar.a().getResources().getDimensionPixelSize(R.dimen.dp_94);
        this.f6919v = aVar.a().getResources().getDimensionPixelSize(R.dimen.dp_80);
        this.f6921w = aVar.a().getResources().getDimensionPixelSize(R.dimen.dp_112);
        this.f6923x = aVar.a().getResources().getDimensionPixelSize(R.dimen.sp_26);
        this.f6925y = (int) aVar.a().getResources().getDimension(R.dimen.dp_106);
        this.f6927z = n8.k.b(v.INSTANCE);
        this.A = n8.k.b(u.INSTANCE);
        this.F = true;
        this.K = 1.0f;
        this.L = 16L;
        this.M = new m0();
        this.N = -1;
        n8.q qVarQ = LanguageManager.f4727w.b().q("text");
        this.R = qVarQ;
        this.S = (com.coloros.translate.b) qVarQ.getFirst();
        this.T = (com.coloros.translate.b) qVarQ.getSecond();
        this.U = true;
        this.V = true;
        this.S0 = new ArrayList();
        this.U0 = "";
        this.X0 = "";
        this.f6890d1 = "";
        this.f6904k1 = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.coloros.translate.ui.texttranslation.t
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return TextTranslationActivity.k3(this.f7062a, message);
            }
        });
        this.f6906l1 = registerForActivityResult(new d.d(), new androidx.activity.result.a() { // from class: com.coloros.translate.ui.texttranslation.c0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                TextTranslationActivity.e4(this.f6969a, (ActivityResult) obj);
            }
        });
        this.f6908m1 = n8.k.b(new i());
    }

    public static final void A3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        EditText editText = null;
        if (d1.e()) {
            b1.c(R.string.function_not_support_in_multi_window, 0, 2, null);
            return;
        }
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || kotlin.jvm.internal.r.a(((p0) this$0.o0()).T().e(), Boolean.TRUE)) {
            return;
        }
        this$0.b3();
        f1.f7117a.c(this$0, "event_fullscreen_for_words", this$0.S.getSortIndex(), this$0.T.getSortIndex());
        this$0.V2();
        EditText editText2 = this$0.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
        } else {
            editText = editText2;
        }
        editText.clearFocus();
    }

    public static final void B3(TextTranslationActivity this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        EditText editText = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        this$0.F = false;
        Object objE = ((p0) this$0.o0()).T().e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            ((p0) this$0.o0()).n0(false);
        }
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).f0().e(), bool)) {
            ((p0) this$0.o0()).f0().n(Boolean.FALSE);
        }
        this$0.f4();
        EditText editText2 = this$0.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
        } else {
            editText = editText2;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        this$0.m4(true);
        this$0.d4();
    }

    public static final void C3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        AppCompatTextView appCompatTextView = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        d1.a();
        COUIAnimateTextView cOUIAnimateTextView = this$0.B0;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        cOUIAnimateTextView.g();
        AppCompatTextView appCompatTextView2 = this$0.f6926y0;
        if (appCompatTextView2 == null) {
            kotlin.jvm.internal.r.r("aiContent");
        } else {
            appCompatTextView = appCompatTextView2;
        }
        appCompatTextView.requestFocus();
        androidx.lifecycle.a0 a0VarF0 = ((p0) this$0.o0()).f0();
        kotlin.jvm.internal.r.b(((p0) this$0.o0()).f0().e());
        a0VarF0.n(Boolean.valueOf(!((Boolean) r4).booleanValue()));
    }

    private final void D3() {
        LinearLayout linearLayout = this.f6897h0;
        TextView textView = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout = null;
        }
        View viewFindViewById = linearLayout.findViewById(R.id.ori_frame);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6907m0 = (RelativeLayout) viewFindViewById;
        LinearLayout linearLayout2 = this.f6897h0;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout2 = null;
        }
        View viewFindViewById2 = linearLayout2.findViewById(R.id.input);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        EditText editText = (EditText) viewFindViewById2;
        this.f6909n0 = editText;
        if (editText == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText = null;
        }
        EditText editText2 = this.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText2 = null;
        }
        editText.setCustomSelectionActionModeCallback(new com.coloros.translate.ui.texttranslation.a(editText2));
        EditText editText3 = this.f6909n0;
        if (editText3 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText3 = null;
        }
        editText3.setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.texttranslation.l
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return TextTranslationActivity.E3(this.f7000a, view, motionEvent);
            }
        });
        EditText editText4 = this.f6909n0;
        if (editText4 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText4 = null;
        }
        editText4.addTextChangedListener(new s());
        EditText editText5 = this.f6909n0;
        if (editText5 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText5 = null;
        }
        editText5.requestFocus();
        View viewFindViewById3 = findViewById(R.id.icon_text_speak);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById3;
        this.f6912q0 = imageView;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("textSpeakIcon");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws RemoteException {
                TextTranslationActivity.F3(this.f7003a, view);
            }
        });
        LinearLayout linearLayout3 = this.f6897h0;
        if (linearLayout3 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout3 = null;
        }
        View viewFindViewById4 = linearLayout3.findViewById(R.id.frame_result);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.A0 = (ConstraintLayout) viewFindViewById4;
        LinearLayout linearLayout4 = this.f6897h0;
        if (linearLayout4 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout4 = null;
        }
        View viewFindViewById5 = linearLayout4.findViewById(R.id.result);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        COUIAnimateTextView cOUIAnimateTextView = (COUIAnimateTextView) viewFindViewById5;
        this.B0 = cOUIAnimateTextView;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        cOUIAnimateTextView.setTextIsSelectable(true);
        LinearLayout linearLayout5 = this.f6897h0;
        if (linearLayout5 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout5 = null;
        }
        View viewFindViewById6 = linearLayout5.findViewById(R.id.result_sign);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        COUITextView cOUITextView = (COUITextView) viewFindViewById6;
        this.G0 = cOUITextView;
        if (cOUITextView == null) {
            kotlin.jvm.internal.r.r("resultSignTV");
            cOUITextView = null;
        }
        cOUITextView.setText(d1.b(com.coloros.translate.utils.p0.TRANSLATION, this));
        COUIAnimateTextView cOUIAnimateTextView2 = this.B0;
        if (cOUIAnimateTextView2 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView2 = null;
        }
        cOUIAnimateTextView2.setType(3);
        S3();
        COUIAnimateTextView cOUIAnimateTextView3 = this.B0;
        if (cOUIAnimateTextView3 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView3 = null;
        }
        cOUIAnimateTextView3.setMovementMethod(ArrowKeyMovementMethod.getInstance());
        COUIAnimateTextView cOUIAnimateTextView4 = this.B0;
        if (cOUIAnimateTextView4 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView4 = null;
        }
        COUIAnimateTextView cOUIAnimateTextView5 = this.B0;
        if (cOUIAnimateTextView5 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView5 = null;
        }
        cOUIAnimateTextView4.setCustomSelectionActionModeCallback(new com.coloros.translate.ui.texttranslation.a(cOUIAnimateTextView5));
        COUIAnimateTextView cOUIAnimateTextView6 = this.B0;
        if (cOUIAnimateTextView6 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView6 = null;
        }
        cOUIAnimateTextView6.addTextChangedListener(new t());
        LinearLayout linearLayout6 = this.f6897h0;
        if (linearLayout6 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout6 = null;
        }
        View viewFindViewById7 = linearLayout6.findViewById(R.id.clear_histories);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        TextView textView2 = (TextView) viewFindViewById7;
        this.K0 = textView2;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("clearHistory");
        } else {
            textView = textView2;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextTranslationActivity.G3(this.f7024a, view);
            }
        });
    }

    public static final boolean E3(TextTranslationActivity this$0, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.h3().onTouchEvent(motionEvent);
        return false;
    }

    public static final void F3(TextTranslationActivity this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Object objE = ((p0) this$0.o0()).f0().e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            ((p0) this$0.o0()).f0().n(Boolean.FALSE);
        }
        EditText editText = null;
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        com.coloros.translate.utils.n.INSTANCE.G();
        if (this$0.j0() || !com.coloros.translate.repository.d.f5439a.b() || com.coloros.translate.permission.a.f5407c.a().e(this$0)) {
            return;
        }
        EditText editText2 = this$0.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText2 = null;
        }
        if (editText2.length() >= 1500) {
            b1.c(R.string.tip_max_length, 0, 2, null);
            return;
        }
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).U().e(), bool)) {
            ((p0) this$0.o0()).B0();
        }
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).i0().e(), bool)) {
            ((p0) this$0.o0()).A0();
        }
        p0 p0Var = (p0) this$0.o0();
        EditText editText3 = this$0.f6909n0;
        if (editText3 == null) {
            kotlin.jvm.internal.r.r("inputET");
        } else {
            editText = editText3;
        }
        p0Var.x0(editText.getText().toString());
        ((p0) this$0.o0()).n0(true);
        this$0.F = true;
        this$0.V2();
    }

    public static final void G3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        this$0.O = true;
        this$0.W3();
    }

    private final void H3() {
        View viewFindViewById = findViewById(R.id.root_view);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6883a0 = (LinearLayout) viewFindViewById;
        COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout = null;
        int iA = com.coloros.translate.utils.z.g(null, 1, null) ? com.coloros.translate.utils.j.f7127a.a(8.0f) : 0;
        LinearLayout linearLayout = this.f6883a0;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("rootView");
            linearLayout = null;
        }
        linearLayout.setPadding(iA, 0, iA, 0);
        View viewFindViewById2 = findViewById(R.id.frame_root);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout2 = (COUIPercentWidthFrameLayout) viewFindViewById2;
        this.f6895g0 = cOUIPercentWidthFrameLayout2;
        if (cOUIPercentWidthFrameLayout2 == null) {
            kotlin.jvm.internal.r.r("frameRoot");
        } else {
            cOUIPercentWidthFrameLayout = cOUIPercentWidthFrameLayout2;
        }
        cOUIPercentWidthFrameLayout.setPercentIndentEnabled(com.coloros.translate.utils.o0.e());
        x3();
        D3();
        t3();
        o3();
        n3();
    }

    public final boolean I3() {
        return ((Boolean) this.A.getValue()).booleanValue();
    }

    private final boolean J3(View view, int i10, int i11) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i12 = iArr[0];
        int i13 = iArr[1];
        return i13 <= i11 && i11 <= view.getMeasuredHeight() + i13 && i10 >= i12 && i10 <= view.getMeasuredWidth() + i12;
    }

    private final boolean K3(MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        ImageView imageView = this.f6910o0;
        LottieAnimationView lottieAnimationView = null;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("clearOriBtn");
            imageView = null;
        }
        if (J3(imageView, rawX, rawY)) {
            return true;
        }
        ImageView imageView2 = this.Y;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("copyIV");
            imageView2 = null;
        }
        if (J3(imageView2, rawX, rawY)) {
            return true;
        }
        ImageView imageView3 = this.Z;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("enlargeIV");
            imageView3 = null;
        }
        if (J3(imageView3, rawX, rawY)) {
            return true;
        }
        LottieAnimationView lottieAnimationView2 = this.f6913r0;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("textSpeakIconLAV");
        } else {
            lottieAnimationView = lottieAnimationView2;
        }
        return J3(lottieAnimationView, rawX, rawY);
    }

    private final void L3() {
        s0(((p0) o0()).T(), new a0());
        s0(((p0) o0()).R(), new b0());
        s0(((p0) o0()).Y(), new c0());
        s0(((p0) o0()).U(), new d0());
        s0(((p0) o0()).i0(), new e0());
        s0(((p0) o0()).a0(), new f0());
        s0(((p0) o0()).e0(), g0.INSTANCE);
        s0(((p0) o0()).f0(), new h0());
        s0(((p0) o0()).O(), new i0());
        s0(((p0) o0()).d0(), new w());
        s0(((p0) o0()).h0(), new x());
        s0(((p0) o0()).k0(), new y());
        s0(((p0) o0()).b0(), new z());
    }

    private final void M3() {
        com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "observeIME");
        LinearLayout linearLayout = this.f6883a0;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("rootView");
            linearLayout = null;
        }
        androidx.core.view.m0.y0(linearLayout, new androidx.core.view.a0() { // from class: com.coloros.translate.ui.texttranslation.d0
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return TextTranslationActivity.N3(this.f6972a, view, a1Var);
            }
        });
    }

    public static final a1 N3(TextTranslationActivity this$0, View view, a1 a1Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i10 = a1Var.f(a1.m.a()).f15810d;
        boolean zR = a1Var.r(a1.m.a());
        this$0.f6884a1 = i10;
        if (zR) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "observeIME input show " + i10);
            this$0.Q3();
        } else {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "observeIME input hide " + i10);
            this$0.P3();
        }
        return a1Var;
    }

    public static final void O3(TextTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        ImageView imageView = this$0.f6912q0;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("textSpeakIcon");
            imageView = null;
        }
        imageView.performClick();
    }

    public final void P2() {
        Q2();
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new b(null), 2, null);
    }

    private final void P3() {
        this.E = false;
        l4();
        a4();
    }

    private final void Q2() {
        COUITextView cOUITextView;
        int[] iArr = new int[2];
        COUIPercentWidthFrameLayout cOUIPercentWidthFrameLayout = this.f6895g0;
        COUIAnimateTextView cOUIAnimateTextView = null;
        if (cOUIPercentWidthFrameLayout == null) {
            kotlin.jvm.internal.r.r("frameRoot");
            cOUIPercentWidthFrameLayout = null;
        }
        cOUIPercentWidthFrameLayout.getLocationOnScreen(iArr);
        int iA = com.coloros.translate.utils.o0.a(this);
        int i10 = iA - iArr[1];
        int i11 = this.f6917u;
        int i12 = this.f6919v;
        int i13 = this.Z0;
        int i14 = ((i10 - i11) - i12) - i13;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationActivity", "defaultHeight: " + i11 + "  extraHeight: " + i12 + "  navigationBarHeight: " + i13);
        aVar.d("TextTranslationActivity", "array[1] : " + iArr[1] + "  activity: " + iA + " screenHeight: " + this.Y0);
        COUIAnimateTextView cOUIAnimateTextView2 = this.B0;
        if (cOUIAnimateTextView2 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView2 = null;
        }
        cOUIAnimateTextView2.setMinHeight(this.f6923x);
        if (this.E) {
            COUIAnimateTextView cOUIAnimateTextView3 = this.B0;
            if (cOUIAnimateTextView3 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView3 = null;
            }
            cOUIAnimateTextView3.setMaxHeight(this.f6917u);
        } else {
            COUIAnimateTextView cOUIAnimateTextView4 = this.B0;
            if (cOUIAnimateTextView4 == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView4 = null;
            }
            Integer numC = d1.c();
            cOUIAnimateTextView4.setMaxHeight(numC != null ? numC.intValue() : i14 - g3());
            if (iArr[1] > 0 && this.f6902j1 && (cOUITextView = this.G0) != null) {
                if (cOUITextView == null) {
                    kotlin.jvm.internal.r.r("resultSignTV");
                    cOUITextView = null;
                }
                if (cOUITextView.getMeasuredHeight() > 0) {
                    COUIAnimateTextView cOUIAnimateTextView5 = this.B0;
                    if (cOUIAnimateTextView5 == null) {
                        kotlin.jvm.internal.r.r("resultTV");
                        cOUIAnimateTextView5 = null;
                    }
                    d1.f(cOUIAnimateTextView5.getMaxHeight());
                }
            }
        }
        aVar.d("TextTranslationActivity", "limitMaxHeight: " + i14 + "  getExtraHeight: " + g3() + " showSoftInput：" + this.E + " ");
        COUIAnimateTextView cOUIAnimateTextView6 = this.B0;
        if (cOUIAnimateTextView6 == null) {
            kotlin.jvm.internal.r.r("resultTV");
        } else {
            cOUIAnimateTextView = cOUIAnimateTextView6;
        }
        aVar.d("TextTranslationActivity", "calculateMaxHeight: maxHeight: " + cOUIAnimateTextView.getMaxHeight() + " resultIsNotEmpty: " + this.f6902j1);
    }

    private final void Q3() {
        if (kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), Boolean.TRUE) && this.V0) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onSoftKeyboardShow reset usingAITranslate");
            ((p0) o0()).f0().n(Boolean.FALSE);
        }
        ValueAnimator valueAnimator = this.J;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.E = true;
        l4();
        d4();
    }

    public final void R2(boolean z10) {
        EditText editText = null;
        if (!z10) {
            LottieAnimationView lottieAnimationView = this.f6913r0;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("textSpeakIconLAV");
                lottieAnimationView = null;
            }
            com.coloros.translate.utils.w.e(lottieAnimationView);
            LottieAnimationView lottieAnimationView2 = this.f6916t0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("waitingInputLAV");
                lottieAnimationView2 = null;
            }
            com.coloros.translate.utils.w.e(lottieAnimationView2);
            LottieAnimationView lottieAnimationView3 = this.f6913r0;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("textSpeakIconLAV");
                lottieAnimationView3 = null;
            }
            lottieAnimationView3.setFrame(0);
            ImageView imageView = this.f6912q0;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("textSpeakIcon");
                imageView = null;
            }
            imageView.setVisibility(0);
            ((p0) o0()).b0().n(Boolean.valueOf(l1()));
            LinearLayout linearLayout = this.f6911p0;
            if (linearLayout == null) {
                kotlin.jvm.internal.r.r("endSpeakFrame");
                linearLayout = null;
            }
            linearLayout.setVisibility(8);
            LottieAnimationView lottieAnimationView4 = this.f6916t0;
            if (lottieAnimationView4 == null) {
                kotlin.jvm.internal.r.r("waitingInputLAV");
                lottieAnimationView4 = null;
            }
            lottieAnimationView4.setVisibility(8);
            EditText editText2 = this.f6909n0;
            if (editText2 == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText2 = null;
            }
            editText2.setHint(getString(R.string.text_translation_input_hint_new));
            EditText editText3 = this.f6909n0;
            if (editText3 == null) {
                kotlin.jvm.internal.r.r("inputET");
            } else {
                editText = editText3;
            }
            editText.setEnabled(true);
            getWindow().clearFlags(128);
            return;
        }
        ImageView imageView2 = this.f6912q0;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("textSpeakIcon");
            imageView2 = null;
        }
        imageView2.setVisibility(8);
        ((p0) o0()).b0().n(Boolean.FALSE);
        LinearLayout linearLayout2 = this.f6911p0;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("endSpeakFrame");
            linearLayout2 = null;
        }
        linearLayout2.setVisibility(0);
        LottieAnimationView lottieAnimationView5 = this.f6913r0;
        if (lottieAnimationView5 == null) {
            kotlin.jvm.internal.r.r("textSpeakIconLAV");
            lottieAnimationView5 = null;
        }
        lottieAnimationView5.v();
        if (((p0) o0()).V().length() == 0) {
            EditText editText4 = this.f6909n0;
            if (editText4 == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText4 = null;
            }
            Editable text = editText4.getText();
            kotlin.jvm.internal.r.d(text, "getText(...)");
            if (text.length() == 0) {
                LottieAnimationView lottieAnimationView6 = this.f6916t0;
                if (lottieAnimationView6 == null) {
                    kotlin.jvm.internal.r.r("waitingInputLAV");
                    lottieAnimationView6 = null;
                }
                lottieAnimationView6.setVisibility(0);
                EditText editText5 = this.f6909n0;
                if (editText5 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText5 = null;
                }
                editText5.setHint("");
                LottieAnimationView lottieAnimationView7 = this.f6916t0;
                if (lottieAnimationView7 == null) {
                    kotlin.jvm.internal.r.r("waitingInputLAV");
                    lottieAnimationView7 = null;
                }
                lottieAnimationView7.v();
            }
        }
        EditText editText6 = this.f6909n0;
        if (editText6 == null) {
            kotlin.jvm.internal.r.r("inputET");
        } else {
            editText = editText6;
        }
        editText.setEnabled(false);
        getWindow().addFlags(128);
    }

    private final void R3() {
        Object objE = ((p0) o0()).U().e();
        Boolean bool = Boolean.TRUE;
        LottieAnimationView lottieAnimationView = null;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            ((p0) o0()).B0();
            LottieAnimationView lottieAnimationView2 = this.C0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView2 = null;
            }
            lottieAnimationView2.w();
            LottieAnimationView lottieAnimationView3 = this.C0;
            if (lottieAnimationView3 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView3 = null;
            }
            lottieAnimationView3.setMinFrame(0);
            LottieAnimationView lottieAnimationView4 = this.C0;
            if (lottieAnimationView4 == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView4 = null;
            }
            com.coloros.translate.utils.w.e(lottieAnimationView4);
        }
        if (kotlin.jvm.internal.r.a(((p0) o0()).i0().e(), bool)) {
            ((p0) o0()).A0();
            LottieAnimationView lottieAnimationView5 = this.f6914s0;
            if (lottieAnimationView5 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView5 = null;
            }
            lottieAnimationView5.w();
            LottieAnimationView lottieAnimationView6 = this.f6914s0;
            if (lottieAnimationView6 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView6 = null;
            }
            lottieAnimationView6.setMinFrame(0);
            LottieAnimationView lottieAnimationView7 = this.f6914s0;
            if (lottieAnimationView7 == null) {
                kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                lottieAnimationView7 = null;
            }
            com.coloros.translate.utils.w.e(lottieAnimationView7);
            if (kotlin.text.r.Y(this.X0)) {
                LottieAnimationView lottieAnimationView8 = this.f6914s0;
                if (lottieAnimationView8 == null) {
                    kotlin.jvm.internal.r.r("oriPlaySoundLAV");
                } else {
                    lottieAnimationView = lottieAnimationView8;
                }
                lottieAnimationView.setVisibility(8);
            }
        }
    }

    private final void S2() {
        ValueAnimator valueAnimator = this.J;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.J;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator3 = this.J;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllListeners();
        }
        ValueAnimator valueAnimator4 = this.I;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
        }
        ValueAnimator valueAnimator5 = this.I;
        if (valueAnimator5 != null) {
            valueAnimator5.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator6 = this.I;
        if (valueAnimator6 != null) {
            valueAnimator6.removeAllListeners();
        }
        ValueAnimator valueAnimator7 = this.f6898h1;
        if (valueAnimator7 != null) {
            valueAnimator7.cancel();
        }
        ValueAnimator valueAnimator8 = this.f6898h1;
        if (valueAnimator8 != null) {
            valueAnimator8.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator9 = this.f6898h1;
        if (valueAnimator9 != null) {
            valueAnimator9.removeAllListeners();
        }
        ValueAnimator valueAnimator10 = this.f6896g1;
        if (valueAnimator10 != null) {
            valueAnimator10.cancel();
        }
        ValueAnimator valueAnimator11 = this.f6896g1;
        if (valueAnimator11 != null) {
            valueAnimator11.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator12 = this.f6896g1;
        if (valueAnimator12 != null) {
            valueAnimator12.removeAllListeners();
        }
    }

    public final void S3() {
        COUIAnimateTextView cOUIAnimateTextView = this.B0;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        cOUIAnimateTextView.post(new Runnable() { // from class: com.coloros.translate.ui.texttranslation.x
            @Override // java.lang.Runnable
            public final void run() {
                TextTranslationActivity.T3(this.f7086a);
            }
        });
    }

    private final void T2() {
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new c(null), 2, null);
    }

    public static final void T3(TextTranslationActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        COUIAnimateTextView cOUIAnimateTextView = this$0.B0;
        COUIAnimateTextView cOUIAnimateTextView2 = null;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        cOUIAnimateTextView.scrollTo(0, 0);
        COUIAnimateTextView cOUIAnimateTextView3 = this$0.B0;
        if (cOUIAnimateTextView3 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView3 = null;
        }
        cOUIAnimateTextView3.setScrollY(0);
        COUIAnimateTextView cOUIAnimateTextView4 = this$0.B0;
        if (cOUIAnimateTextView4 == null) {
            kotlin.jvm.internal.r.r("resultTV");
        } else {
            cOUIAnimateTextView2 = cOUIAnimateTextView4;
        }
        cOUIAnimateTextView2.setScrollX(0);
    }

    public final void U2() {
        RelativeLayout relativeLayout = this.f6901j0;
        RelativeLayout relativeLayout2 = null;
        if (relativeLayout == null) {
            kotlin.jvm.internal.r.r("translateFrame");
            relativeLayout = null;
        }
        relativeLayout.setBackground(r.a.e(this, R.drawable.frame_main_text));
        RelativeLayout relativeLayout3 = this.f6901j0;
        if (relativeLayout3 == null) {
            kotlin.jvm.internal.r.r("translateFrame");
            relativeLayout3 = null;
        }
        relativeLayout3.setOutlineProvider(new d());
        RelativeLayout relativeLayout4 = this.f6901j0;
        if (relativeLayout4 == null) {
            kotlin.jvm.internal.r.r("translateFrame");
        } else {
            relativeLayout2 = relativeLayout4;
        }
        relativeLayout2.setClipToOutline(true);
    }

    public final void U3(boolean z10, boolean z11) {
        Object objM59constructorimpl;
        TextHistory textHistoryE;
        i2.i iVar;
        String oriContent;
        i2.i iVar2;
        if (this.D) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "saveHistory fail for isPendingInsertHistory and return");
            return;
        }
        this.C = false;
        if (((p0) o0()).j0()) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "saveHistory fail for isResultSensitive and return");
            return;
        }
        EditText editText = this.f6909n0;
        if (editText == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText = null;
        }
        if (editText.getText().toString().length() != 0) {
            COUIAnimateTextView cOUIAnimateTextView = this.B0;
            if (cOUIAnimateTextView == null) {
                kotlin.jvm.internal.r.r("resultTV");
                cOUIAnimateTextView = null;
            }
            CharSequence text = cOUIAnimateTextView.getText();
            kotlin.jvm.internal.r.d(text, "getText(...)");
            if (text.length() != 0) {
                EditText editText2 = this.f6909n0;
                if (editText2 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText2 = null;
                }
                String string = editText2.getText().toString();
                COUIAnimateTextView cOUIAnimateTextView2 = this.B0;
                if (cOUIAnimateTextView2 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView2 = null;
                }
                if (kotlin.jvm.internal.r.a(string, cOUIAnimateTextView2.getText().toString())) {
                    com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "saveHistory fail for maybe sensitive and return");
                    return;
                }
                this.D = true;
                long jCurrentTimeMillis = System.currentTimeMillis();
                COUIAnimateTextView cOUIAnimateTextView3 = this.B0;
                if (cOUIAnimateTextView3 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView3 = null;
                }
                String string2 = cOUIAnimateTextView3.getText().toString();
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.d("TextTranslationActivity", "saveHistory to add history : " + jCurrentTimeMillis + " , isAiTranslate : " + z11);
                EditText editText3 = this.f6909n0;
                if (editText3 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                    editText3 = null;
                }
                TextHistory textHistory = new TextHistory(editText3.getText().toString(), this.S.getLanguageCode(), string2, this.T.getLanguageCode(), jCurrentTimeMillis, 0, (z11 || this.f6888c1) ? TextHistory.AI_RESULT : "", "", "", "", 0, jCurrentTimeMillis);
                this.G = textHistory;
                try {
                    r.a aVar2 = n8.r.Companion;
                    String oriContent2 = textHistory.getOriContent();
                    if (oriContent2 != null) {
                        i2.i iVar3 = this.T0;
                        if (iVar3 == null) {
                            kotlin.jvm.internal.r.r("historyDao");
                            iVar3 = null;
                        }
                        textHistoryE = iVar3.e(oriContent2, this.T.getLanguageCode());
                    } else {
                        textHistoryE = null;
                    }
                    if (textHistoryE == null || (oriContent = textHistoryE.getOriContent()) == null || oriContent.length() <= 0) {
                        aVar.i("TextTranslationActivity", "saveHistory insert history");
                        this.C = true;
                        TextHistory textHistory2 = this.G;
                        if (textHistory2 != null) {
                            i2.i iVar4 = this.T0;
                            if (iVar4 == null) {
                                kotlin.jvm.internal.r.r("historyDao");
                                iVar = null;
                            } else {
                                iVar = iVar4;
                            }
                            TextHistory textHistory3 = this.G;
                            kotlin.jvm.internal.r.b(textHistory3);
                            textHistory2.setId(iVar.d(textHistory3));
                        }
                    } else {
                        aVar.i("TextTranslationActivity", "saveHistory update history");
                        textHistoryE.setUpdateTimestamp(jCurrentTimeMillis);
                        textHistoryE.setExpandField1(z11 ? TextHistory.AI_RESULT : "");
                        textHistoryE.setResultContent(string2);
                        i2.i iVar5 = this.T0;
                        if (iVar5 == null) {
                            kotlin.jvm.internal.r.r("historyDao");
                            iVar5 = null;
                        }
                        iVar5.c(textHistoryE);
                        if (!z10) {
                            i2.i iVar6 = this.T0;
                            if (iVar6 == null) {
                                kotlin.jvm.internal.r.r("historyDao");
                                iVar2 = null;
                            } else {
                                iVar2 = iVar6;
                            }
                            this.S0 = new ArrayList(iVar2.h());
                        }
                    }
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    com.coloros.translate.utils.c0.f7098a.e("TextTranslationActivity", "saveHistory error : " + thM62exceptionOrNullimpl);
                }
                this.D = false;
                return;
            }
        }
        com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "saveHistory fail for content is empty and return");
    }

    public final void V2() {
        Object systemService = getSystemService("input_method");
        kotlin.jvm.internal.r.c(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        Window window = getWindow();
        if ((window != null ? window.getCurrentFocus() : null) != null) {
            Window window2 = getWindow();
            View currentFocus = window2 != null ? window2.getCurrentFocus() : null;
            kotlin.jvm.internal.r.b(currentFocus);
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        this.V0 = false;
    }

    public final void V3() {
        EditText editText = this.f6909n0;
        ConstraintLayout constraintLayout = null;
        if (editText == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText = null;
        }
        ViewGroup.LayoutParams layoutParams = editText.getLayoutParams();
        layoutParams.height = this.f6917u;
        EditText editText2 = this.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText2 = null;
        }
        editText2.setLayoutParams(layoutParams);
        ConstraintLayout constraintLayout2 = this.A0;
        if (constraintLayout2 == null) {
            kotlin.jvm.internal.r.r("resultFrame");
            constraintLayout2 = null;
        }
        ViewGroup.LayoutParams layoutParams2 = constraintLayout2.getLayoutParams();
        layoutParams2.height = this.f6925y;
        ConstraintLayout constraintLayout3 = this.A0;
        if (constraintLayout3 == null) {
            kotlin.jvm.internal.r.r("resultFrame");
        } else {
            constraintLayout = constraintLayout3;
        }
        constraintLayout.setLayoutParams(layoutParams2);
    }

    public final void W2(boolean z10) {
        com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "completeTranslate isAITranslate : " + z10);
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new e(z10, null), 2, null);
    }

    private final void W3() {
        String quantityString;
        String string;
        com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "showDeleteConfirmDialog selectedCnt: " + this.N);
        if (this.O) {
            quantityString = getString(R.string.history_clear_title);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
        } else if (this.P) {
            quantityString = getString(R.string.if_remove_all_items);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
        } else if (this.N == 1) {
            quantityString = getString(R.string.if_delete_one_item);
            kotlin.jvm.internal.r.d(quantityString, "getString(...)");
        } else {
            Resources resources = getResources();
            int i10 = R.plurals.if_delete_item;
            int i11 = this.N;
            quantityString = resources.getQuantityString(i10, i11, Integer.valueOf(i11));
            kotlin.jvm.internal.r.d(quantityString, "getQuantityString(...)");
        }
        if (this.O) {
            string = getString(R.string.history_clear_content);
            kotlin.jvm.internal.r.d(string, "getString(...)");
        } else if (this.P) {
            string = getString(R.string.remove_all_items);
            kotlin.jvm.internal.r.d(string, "getString(...)");
        } else if (this.N == 1) {
            string = getString(R.string.delete_one_item);
            kotlin.jvm.internal.r.d(string, "getString(...)");
        } else {
            Resources resources2 = getResources();
            int i12 = R.plurals.delete_item;
            int i13 = this.N;
            String quantityString2 = resources2.getQuantityString(i12, i13, Integer.valueOf(i13));
            kotlin.jvm.internal.r.d(quantityString2, "getQuantityString(...)");
            string = quantityString2;
        }
        this.Q = new COUIAlertDialogBuilder(this.f6915t).setCancelable(false).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.coloros.translate.ui.texttranslation.z
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                TextTranslationActivity.X3(this.f7088a, dialogInterface);
            }
        }).setTitle(quantityString).setMessage(string).setNeutralButton(this.O ? R.string.clear : R.string.action_delete, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.a0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i14) {
                TextTranslationActivity.Y3(this.f6965a, dialogInterface, i14);
            }
        }).setNegativeButton(R$string.action_cancel, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.b0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i14) {
                TextTranslationActivity.Z3(this.f6967a, dialogInterface, i14);
            }
        }).show();
    }

    static /* synthetic */ void X2(TextTranslationActivity textTranslationActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        textTranslationActivity.W2(z10);
    }

    public static final void X3(TextTranslationActivity this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.a3();
    }

    private final void Y2() {
        COUIAnimateTextView cOUIAnimateTextView = this.B0;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        String string = cOUIAnimateTextView.getText().toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        com.coloros.translate.widget.k.f7233c.a().d(this, string, R.string.translation_result_copied);
    }

    public static final void Y3(TextTranslationActivity this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.O) {
            this$0.O = false;
            this$0.T2();
        } else if (!this$0.P) {
            this$0.Z2();
        } else {
            this$0.P = false;
            this$0.T2();
        }
    }

    public static final /* synthetic */ p0 Z1(TextTranslationActivity textTranslationActivity) {
        return (p0) textTranslationActivity.o0();
    }

    private final void Z2() {
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new f(System.currentTimeMillis(), null), 2, null);
    }

    public static final void Z3(TextTranslationActivity this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.O = false;
    }

    public final void a3() {
        Dialog dialog;
        Dialog dialog2 = this.Q;
        if (dialog2 == null || !dialog2.isShowing() || (dialog = this.Q) == null) {
            return;
        }
        dialog.dismiss();
    }

    public final void a4() {
        P2();
    }

    private final void b3() {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "enlargeContext");
        Intent intent = new Intent(this, (Class<?>) EnlargeActivity.class);
        COUIAnimateTextView cOUIAnimateTextView = this.B0;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        intent.putExtra("enlarge_text", cOUIAnimateTextView.getText().toString());
        intent.putExtra("enlarge_language_ori", this.S.getLanguageCode());
        intent.putExtra("enlarge_language_result", this.T.getLanguageCode());
        try {
            this.f6906l1.b(intent, androidx.core.app.b.a(this, R.anim.slide_in_right, 0));
        } catch (ActivityNotFoundException e10) {
            com.coloros.translate.utils.c0.f7098a.e("TextTranslationActivity", e10.toString());
        }
    }

    public final void b4(int i10, int i11) {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "showResultFrameAnimation");
        ValueAnimator valueAnimator = this.J;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
        this.J = valueAnimatorOfInt;
        if (valueAnimatorOfInt != null) {
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.texttranslation.v
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextTranslationActivity.c4(this.f7064a, valueAnimator2);
                }
            });
        }
        ValueAnimator valueAnimator2 = this.J;
        if (valueAnimator2 != null) {
            valueAnimator2.addListener(new n0());
        }
        ValueAnimator valueAnimator3 = this.J;
        if (valueAnimator3 != null) {
            valueAnimator3.setDuration(350L);
        }
        ValueAnimator valueAnimator4 = this.J;
        if (valueAnimator4 != null) {
            valueAnimator4.setInterpolator(new COUIMoveEaseInterpolator());
        }
        ValueAnimator valueAnimator5 = this.J;
        if (valueAnimator5 != null) {
            valueAnimator5.start();
        }
    }

    public final void c3(final ImageView imageView) {
        ValueAnimator valueAnimator = this.f6896g1;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f6896g1 = valueAnimatorOfFloat;
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.texttranslation.y
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextTranslationActivity.d3(imageView, valueAnimator2);
                }
            });
        }
        ValueAnimator valueAnimator2 = this.f6896g1;
        if (valueAnimator2 != null) {
            valueAnimator2.addListener(new g(imageView));
        }
        ValueAnimator valueAnimator3 = this.f6896g1;
        if (valueAnimator3 != null) {
            valueAnimator3.setDuration(350L);
        }
        ValueAnimator valueAnimator4 = this.f6896g1;
        if (valueAnimator4 != null) {
            valueAnimator4.setInterpolator(new COUIMoveEaseInterpolator());
        }
        ValueAnimator valueAnimator5 = this.f6896g1;
        if (valueAnimator5 != null) {
            valueAnimator5.start();
        }
    }

    public static final void c4(TextTranslationActivity this$0, ValueAnimator valueAnimator) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        if (animatedValue instanceof Integer) {
            ConstraintLayout constraintLayout = this$0.A0;
            ConstraintLayout constraintLayout2 = null;
            if (constraintLayout == null) {
                kotlin.jvm.internal.r.r("resultFrame");
                constraintLayout = null;
            }
            ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
            layoutParams.height = ((Number) animatedValue).intValue();
            ConstraintLayout constraintLayout3 = this$0.A0;
            if (constraintLayout3 == null) {
                kotlin.jvm.internal.r.r("resultFrame");
            } else {
                constraintLayout2 = constraintLayout3;
            }
            constraintLayout2.setLayoutParams(layoutParams);
        }
    }

    public static final void d3(ImageView imageView, ValueAnimator valueAnimator) {
        kotlin.jvm.internal.r.e(imageView, "$imageView");
        kotlin.jvm.internal.r.e(valueAnimator, "valueAnimator");
        imageView.setAlpha(Float.parseFloat(valueAnimator.getAnimatedValue().toString()));
    }

    private final void d4() {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "showShrinkAnimation:" + this.E);
        if (this.E) {
            P2();
        }
    }

    public final void e3(final ImageView imageView) {
        ValueAnimator valueAnimator = this.f6898h1;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f6898h1 = valueAnimatorOfFloat;
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coloros.translate.ui.texttranslation.u
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextTranslationActivity.f3(imageView, valueAnimator2);
                }
            });
        }
        ValueAnimator valueAnimator2 = this.f6898h1;
        if (valueAnimator2 != null) {
            valueAnimator2.addListener(new h(imageView));
        }
        ValueAnimator valueAnimator3 = this.f6898h1;
        if (valueAnimator3 != null) {
            valueAnimator3.setDuration(350L);
        }
        ValueAnimator valueAnimator4 = this.f6898h1;
        if (valueAnimator4 != null) {
            valueAnimator4.setInterpolator(new COUIMoveEaseInterpolator());
        }
        ValueAnimator valueAnimator5 = this.f6898h1;
        if (valueAnimator5 != null) {
            valueAnimator5.start();
        }
    }

    public static final void e4(TextTranslationActivity this$0, ActivityResult result) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(result, "result");
        if (com.coloros.translate.utils.o0.e()) {
            this$0.setRequestedOrientation(4);
        } else {
            this$0.setRequestedOrientation(5);
            this$0.setRequestedOrientation(1);
        }
    }

    public static final void f3(ImageView imageView, ValueAnimator valueAnimator) {
        kotlin.jvm.internal.r.e(imageView, "$imageView");
        kotlin.jvm.internal.r.e(valueAnimator, "valueAnimator");
        imageView.setAlpha(Float.parseFloat(valueAnimator.getAnimatedValue().toString()));
    }

    public final void f4() {
        ((p0) o0()).B0();
        ((p0) o0()).A0();
    }

    public final int g3() {
        if (!kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), Boolean.TRUE)) {
            return this.f6919v;
        }
        int i10 = this.f6921w;
        COUITextView cOUITextView = this.G0;
        if (cOUITextView == null) {
            kotlin.jvm.internal.r.r("resultSignTV");
            cOUITextView = null;
        }
        return i10 + cOUITextView.getMeasuredHeight();
    }

    private final boolean g4() {
        boolean zA = com.coloros.translate.repository.local.a.INSTANCE.a(this.S.getLanguageCode() + this.T.getLanguageCode());
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "supportLLM llm : " + zA);
        return zA;
    }

    private final GestureDetector h3() {
        return (GestureDetector) this.f6908m1.getValue();
    }

    public final void h4() {
        Object objE = ((p0) o0()).f0().e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "toTranslate return for AI translate");
            return;
        }
        EditText editText = this.f6909n0;
        h5.c cVar = null;
        if (editText == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText = null;
        }
        String string = editText.getText().toString();
        this.X0 = string;
        if (kotlin.text.r.Y(string)) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationActivity", "toTranslate removeMessages");
            this.f6904k1.removeMessages(1995);
            if (kotlin.jvm.internal.r.a(((p0) o0()).e0().e(), Boolean.FALSE)) {
                ((p0) o0()).e0().k(bool);
            }
            m4(true);
            aVar.q("TextTranslationActivity", "toTranslate return , input is null");
            return;
        }
        if (!com.coloros.translate.repository.d.f5439a.b()) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationActivity", "toTranslate return , aiunit not ready");
            return;
        }
        if (kotlin.text.r.Y(this.X0)) {
            return;
        }
        Message messageObtainMessage = this.f6904k1.obtainMessage(1995);
        kotlin.jvm.internal.r.d(messageObtainMessage, "obtainMessage(...)");
        this.f6904k1.removeMessages(1995);
        if (kotlin.jvm.internal.r.a(((p0) o0()).e0().e(), bool)) {
            h5.c cVar2 = this.f6900i1;
            if (cVar2 == null) {
                kotlin.jvm.internal.r.r("languageIdentifier");
            } else {
                cVar = cVar2;
            }
            w3.i iVarV = cVar.V(this.X0);
            final o0 o0Var = new o0();
            iVarV.d(new w3.f() { // from class: com.coloros.translate.ui.texttranslation.w
                @Override // w3.f
                public final void a(Object obj) {
                    TextTranslationActivity.i4(o0Var, obj);
                }
            });
        }
        if (this.U) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "toTranslate sendMessage without delay");
            this.f6904k1.sendMessage(messageObtainMessage);
        } else {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "toTranslate sendMessage delay");
            this.f6904k1.sendMessageDelayed(messageObtainMessage, 300L);
        }
    }

    private final LanguageManager i3() {
        return (LanguageManager) this.f6927z.getValue();
    }

    public static final void i4(w8.l tmp0, Object obj) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public final void j3() {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "[handleBlankInput] inputContent isBlank: " + kotlin.text.r.Y(this.U0));
        if (kotlin.text.r.Y(this.U0)) {
            ((p0) o0()).b0().n(Boolean.FALSE);
        } else {
            ((p0) o0()).b0().n(Boolean.valueOf(l1()));
        }
    }

    public final void j4(Integer num) {
        com.coloros.translate.ui.texttranslation.h hVar = null;
        if (num != null && num.intValue() == 1) {
            LinearLayout linearLayout = this.f6897h0;
            if (linearLayout == null) {
                kotlin.jvm.internal.r.r("normalFrame");
                linearLayout = null;
            }
            linearLayout.setVisibility(8);
            RelativeLayout relativeLayout = this.f6899i0;
            if (relativeLayout == null) {
                kotlin.jvm.internal.r.r("historyFrame");
                relativeLayout = null;
            }
            relativeLayout.setVisibility(0);
            com.coloros.translate.ui.texttranslation.h hVar2 = this.N0;
            if (hVar2 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar2;
            }
            hVar.v(true);
            return;
        }
        LinearLayout linearLayout2 = this.f6897h0;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout2 = null;
        }
        linearLayout2.setVisibility(0);
        RelativeLayout relativeLayout2 = this.f6899i0;
        if (relativeLayout2 == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout2 = null;
        }
        relativeLayout2.setVisibility(8);
        LanguageChooseView languageChooseView = this.f6893f0;
        if (languageChooseView != null) {
            languageChooseView.s();
        }
        com.coloros.translate.ui.texttranslation.h hVar3 = this.N0;
        if (hVar3 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
        } else {
            hVar = hVar3;
        }
        hVar.v(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final boolean k3(TextTranslationActivity this$0, Message it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        int i10 = it.what;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationActivity", "handler msg : " + i10);
        EditText editText = null;
        COUIAnimateTextView cOUIAnimateTextView = null;
        switch (i10) {
            case 1995:
            case 1997:
                EditText editText2 = this$0.f6909n0;
                if (editText2 == null) {
                    kotlin.jvm.internal.r.r("inputET");
                } else {
                    editText = editText2;
                }
                this$0.X0 = editText.getText().toString();
                Conversation conversation = new Conversation();
                conversation.setId(System.currentTimeMillis());
                conversation.setFromLanguage(this$0.S.getLanguageCode());
                conversation.setToLanguage(this$0.T.getLanguageCode());
                conversation.setFromText(kotlin.text.r.N0(this$0.X0).toString());
                aVar.d("TextTranslationActivity", "handler oriLanguage : " + this$0.S.getLanguageCode() + " , resultLanguage : " + this$0.T.getLanguageCode());
                if (aVar.l()) {
                    aVar.d("TextTranslationActivity", "handler fromText : " + aVar.g(conversation.getFromText()));
                }
                boolean z10 = i10 != 1995;
                this$0.f6888c1 = z10;
                aVar.d("TextTranslationActivity", "handler lastResultAI : " + z10);
                ((p0) this$0.o0()).C0(conversation, i10 == 1995 ? "aiunit_translate" : "aiunit_stream_translate");
                return false;
            case 1996:
                z0.d(0L, j.INSTANCE, 1, null);
                return false;
            case 1998:
                aVar.d("TextTranslationActivity", "reset movement method");
                COUIAnimateTextView cOUIAnimateTextView2 = this$0.B0;
                if (cOUIAnimateTextView2 == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                } else {
                    cOUIAnimateTextView = cOUIAnimateTextView2;
                }
                cOUIAnimateTextView.setMovementMethod(ArrowKeyMovementMethod.getInstance());
                this$0.S3();
                if (this$0.f6894f1) {
                    aVar.d("TextTranslationActivity", "reset movement method, recreate and calculate");
                    this$0.f6894f1 = false;
                    this$0.P2();
                }
                return false;
            default:
                return false;
        }
    }

    public final void k4() {
        LottieAnimationView lottieAnimationView = null;
        COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout = null;
        if (!this.S0.isEmpty() && this.U) {
            COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout2 = this.I0;
            if (cOUIPercentWidthRelativeLayout2 == null) {
                kotlin.jvm.internal.r.r("emptyGuideTv");
                cOUIPercentWidthRelativeLayout2 = null;
            }
            cOUIPercentWidthRelativeLayout2.setVisibility(8);
            COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout3 = this.H0;
            if (cOUIPercentWidthRelativeLayout3 == null) {
                kotlin.jvm.internal.r.r("historyNormalLayout");
            } else {
                cOUIPercentWidthRelativeLayout = cOUIPercentWidthRelativeLayout3;
            }
            cOUIPercentWidthRelativeLayout.setVisibility(0);
            return;
        }
        COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout4 = this.H0;
        if (cOUIPercentWidthRelativeLayout4 == null) {
            kotlin.jvm.internal.r.r("historyNormalLayout");
            cOUIPercentWidthRelativeLayout4 = null;
        }
        cOUIPercentWidthRelativeLayout4.setVisibility(8);
        COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout5 = this.I0;
        if (cOUIPercentWidthRelativeLayout5 == null) {
            kotlin.jvm.internal.r.r("emptyGuideTv");
            cOUIPercentWidthRelativeLayout5 = null;
        }
        cOUIPercentWidthRelativeLayout5.setVisibility(this.U ? 0 : 8);
        LottieAnimationView lottieAnimationView2 = this.J0;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("emptyImg");
        } else {
            lottieAnimationView = lottieAnimationView2;
        }
        lottieAnimationView.v();
    }

    public final boolean l1() {
        if (g4() && !com.coloros.translate.observer.e.INSTANCE.k()) {
            EditText editText = this.f6909n0;
            if (editText == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText = null;
            }
            Editable text = editText.getText();
            kotlin.jvm.internal.r.d(text, "getText(...)");
            if (!kotlin.text.r.Y(text) && kotlin.jvm.internal.r.a(((p0) o0()).T().e(), Boolean.FALSE) && !kotlin.text.r.Y(this.U0)) {
                return true;
            }
        }
        return false;
    }

    private final void l3() {
        this.Y0 = com.coloros.translate.utils.o0.b(this);
        int iB = i1.f7126a.b(this);
        this.Z0 = iB;
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "initConfig navigationBarHeight : " + iB + " screenHeight: " + this.Y0);
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void l4() {
        /*
            r5 = this;
            android.widget.ImageView r0 = r5.f6910o0
            r1 = 0
            if (r0 != 0) goto Lb
            java.lang.String r0 = "clearOriBtn"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        Lb:
            boolean r2 = r5.U
            r3 = 0
            r4 = 8
            if (r2 == 0) goto L14
            r2 = r4
            goto L15
        L14:
            r2 = r3
        L15:
            r0.setVisibility(r2)
            boolean r0 = r5.U
            java.lang.String r2 = "oriPlaySoundLAV"
            if (r0 != 0) goto L48
            boolean r0 = r5.E
            if (r0 != 0) goto L48
            android.widget.LinearLayout r0 = r5.f6911p0
            if (r0 != 0) goto L2c
            java.lang.String r0 = "endSpeakFrame"
            kotlin.jvm.internal.r.r(r0)
            r0 = r1
        L2c:
            int r0 = r0.getVisibility()
            if (r0 == 0) goto L48
            java.lang.String r0 = r5.U0
            boolean r0 = kotlin.text.r.Y(r0)
            if (r0 == 0) goto L3b
            goto L48
        L3b:
            com.airbnb.lottie.LottieAnimationView r0 = r5.f6914s0
            if (r0 != 0) goto L43
            kotlin.jvm.internal.r.r(r2)
            goto L44
        L43:
            r1 = r0
        L44:
            r1.setVisibility(r3)
            goto L54
        L48:
            com.airbnb.lottie.LottieAnimationView r0 = r5.f6914s0
            if (r0 != 0) goto L50
            kotlin.jvm.internal.r.r(r2)
            goto L51
        L50:
            r1 = r0
        L51:
            r1.setVisibility(r4)
        L54:
            com.coloros.translate.base.q r0 = r5.o0()
            com.coloros.translate.ui.texttranslation.p0 r0 = (com.coloros.translate.ui.texttranslation.p0) r0
            androidx.lifecycle.a0 r0 = r0.b0()
            boolean r5 = r5.l1()
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            r0.n(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.texttranslation.TextTranslationActivity.l4():void");
    }

    private final void m3() {
        this.T0 = i2.a.INSTANCE.f().v();
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new k(null), 2, null);
    }

    public final void m4(boolean z10) {
        Object objE = ((p0) o0()).f0().e();
        Boolean bool = Boolean.TRUE;
        int i10 = 8;
        Group group = null;
        if (kotlin.jvm.internal.r.a(objE, bool) && !z10) {
            LottieAnimationView lottieAnimationView = this.D0;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("waitingResultLAV");
                lottieAnimationView = null;
            }
            com.coloros.translate.utils.w.e(lottieAnimationView);
            LottieAnimationView lottieAnimationView2 = this.D0;
            if (lottieAnimationView2 == null) {
                kotlin.jvm.internal.r.r("waitingResultLAV");
                lottieAnimationView2 = null;
            }
            lottieAnimationView2.setVisibility(8);
        }
        boolean z11 = this.V;
        int i11 = 0;
        if (z11 != z10) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "updateResultFrameStatus resultStatusEmpty : " + z11);
            this.V = z10;
            ConstraintLayout constraintLayout = this.A0;
            if (constraintLayout == null) {
                kotlin.jvm.internal.r.r("resultFrame");
                constraintLayout = null;
            }
            constraintLayout.setVisibility(z10 ? 8 : 0);
            View view = this.f6928z0;
            if (view == null) {
                kotlin.jvm.internal.r.r("divider");
                view = null;
            }
            view.setVisibility(z10 ? 8 : 0);
            boolean z12 = !((p0) o0()).c0() && kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), bool);
            if (z10 && !z12) {
                COUIAnimateTextView cOUIAnimateTextView = this.B0;
                if (cOUIAnimateTextView == null) {
                    kotlin.jvm.internal.r.r("resultTV");
                    cOUIAnimateTextView = null;
                }
                cOUIAnimateTextView.setText("");
            }
        }
        Object objE2 = ((p0) o0()).f0().e();
        Boolean bool2 = Boolean.FALSE;
        if (kotlin.jvm.internal.r.a(objE2, bool2) && this.f6886b1 > 0) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "updateResultFrameStatus reset lastResultLength");
            this.f6886b1 = 0;
        }
        Group group2 = this.F0;
        if (group2 == null) {
            kotlin.jvm.internal.r.r("resultAiSignGroup");
            group2 = null;
        }
        if (kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), bool) && d1.INSTANCE.d()) {
            i10 = ((p0) o0()).c0() ? 0 : 4;
        }
        group2.setVisibility(i10);
        Group group3 = this.E0;
        if (group3 == null) {
            kotlin.jvm.internal.r.r("resultBtnGroup");
        } else {
            group = group3;
        }
        if ((!kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), bool) || !((p0) o0()).c0()) && !kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), bool2)) {
            i11 = 4;
        }
        group.setVisibility(i11);
    }

    private final void n3() {
        this.N0 = new com.coloros.translate.ui.texttranslation.h();
        LinearLayout linearLayout = this.f6897h0;
        com.coloros.translate.ui.texttranslation.h hVar = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout = null;
        }
        View viewFindViewById = linearLayout.findViewById(R.id.list_history_recyclerview);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        COUIRecyclerView cOUIRecyclerView = (COUIRecyclerView) viewFindViewById;
        this.L0 = cOUIRecyclerView;
        if (cOUIRecyclerView == null) {
            kotlin.jvm.internal.r.r("historyNormalRV");
            cOUIRecyclerView = null;
        }
        com.coloros.translate.ui.texttranslation.h hVar2 = this.N0;
        if (hVar2 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar2 = null;
        }
        cOUIRecyclerView.setAdapter(hVar2);
        RelativeLayout relativeLayout = this.f6899i0;
        if (relativeLayout == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout = null;
        }
        View viewFindViewById2 = relativeLayout.findViewById(R.id.list_history_recyclerview);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIPercentWidthRecyclerView cOUIPercentWidthRecyclerView = (COUIPercentWidthRecyclerView) viewFindViewById2;
        this.M0 = cOUIPercentWidthRecyclerView;
        if (cOUIPercentWidthRecyclerView == null) {
            kotlin.jvm.internal.r.r("historyRV");
            cOUIPercentWidthRecyclerView = null;
        }
        cOUIPercentWidthRecyclerView.setPercentIndentEnabled(com.coloros.translate.utils.o0.e());
        COUIPercentWidthRecyclerView cOUIPercentWidthRecyclerView2 = this.M0;
        if (cOUIPercentWidthRecyclerView2 == null) {
            kotlin.jvm.internal.r.r("historyRV");
            cOUIPercentWidthRecyclerView2 = null;
        }
        com.coloros.translate.ui.texttranslation.h hVar3 = this.N0;
        if (hVar3 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar3 = null;
        }
        cOUIPercentWidthRecyclerView2.setAdapter(hVar3);
        com.coloros.translate.ui.texttranslation.h hVar4 = this.N0;
        if (hVar4 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar4 = null;
        }
        hVar4.w(new l());
        com.coloros.translate.ui.texttranslation.h hVar5 = this.N0;
        if (hVar5 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar5 = null;
        }
        hVar5.x(new m());
        com.coloros.translate.ui.texttranslation.h hVar6 = this.N0;
        if (hVar6 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
        } else {
            hVar = hVar6;
        }
        hVar.y(new n());
    }

    private final void o3() {
        View viewFindViewById = findViewById(R.id.frame_none_histories);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.I0 = (COUIPercentWidthRelativeLayout) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.empty_img);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.J0 = (LottieAnimationView) viewFindViewById2;
        COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout = this.I0;
        View view = null;
        if (cOUIPercentWidthRelativeLayout == null) {
            kotlin.jvm.internal.r.r("emptyGuideTv");
            cOUIPercentWidthRelativeLayout = null;
        }
        cOUIPercentWidthRelativeLayout.setPercentIndentEnabled(com.coloros.translate.utils.o0.e());
        View viewFindViewById3 = findViewById(R.id.frame_history);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        RelativeLayout relativeLayout = (RelativeLayout) viewFindViewById3;
        this.f6899i0 = relativeLayout;
        if (relativeLayout == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout = null;
        }
        View viewFindViewById4 = relativeLayout.findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        COUIToolbar cOUIToolbar = (COUIToolbar) viewFindViewById4;
        this.P0 = cOUIToolbar;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("toolbarHistory");
            cOUIToolbar = null;
        }
        cOUIToolbar.setTitle(getResources().getQuantityString(R.plurals.mark_selected_item, 1, 1));
        cOUIToolbar.setIsTitleCenterStyle(true);
        cOUIToolbar.inflateMenu(R.menu.history_list_selected_mode_menu);
        COUIToolbar cOUIToolbar2 = this.P0;
        if (cOUIToolbar2 == null) {
            kotlin.jvm.internal.r.r("toolbarHistory");
            cOUIToolbar2 = null;
        }
        MenuItem menuItemFindItem = cOUIToolbar2.getMenu().findItem(R.id.action_select_cancel);
        kotlin.jvm.internal.r.d(menuItemFindItem, "findItem(...)");
        this.R0 = menuItemFindItem;
        COUIToolbar cOUIToolbar3 = this.P0;
        if (cOUIToolbar3 == null) {
            kotlin.jvm.internal.r.r("toolbarHistory");
            cOUIToolbar3 = null;
        }
        MenuItem menuItemFindItem2 = cOUIToolbar3.getMenu().findItem(R.id.action_select_all);
        kotlin.jvm.internal.r.d(menuItemFindItem2, "findItem(...)");
        this.Q0 = menuItemFindItem2;
        RelativeLayout relativeLayout2 = this.f6899i0;
        if (relativeLayout2 == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout2 = null;
        }
        androidx.core.view.m0.y0(relativeLayout2, new androidx.core.view.a0() { // from class: com.coloros.translate.ui.texttranslation.p
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view2, a1 a1Var) {
                return TextTranslationActivity.p3(this.f7028a, view2, a1Var);
            }
        });
        MenuItem menuItem = this.R0;
        if (menuItem == null) {
            kotlin.jvm.internal.r.r("menuCancel");
            menuItem = null;
        }
        menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.texttranslation.q
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem2) {
                return TextTranslationActivity.q3(this.f7059a, menuItem2);
            }
        });
        MenuItem menuItem2 = this.Q0;
        if (menuItem2 == null) {
            kotlin.jvm.internal.r.r("menuSelect");
            menuItem2 = null;
        }
        menuItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.texttranslation.r
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem3) {
                return TextTranslationActivity.r3(this.f7060a, menuItem3);
            }
        });
        RelativeLayout relativeLayout3 = this.f6899i0;
        if (relativeLayout3 == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout3 = null;
        }
        View viewFindViewById5 = relativeLayout3.findViewById(R.id.delete);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.O0 = (LinearLayout) viewFindViewById5;
        RelativeLayout relativeLayout4 = this.f6899i0;
        if (relativeLayout4 == null) {
            kotlin.jvm.internal.r.r("historyFrame");
            relativeLayout4 = null;
        }
        TextView textView = (TextView) relativeLayout4.findViewById(R.id.deleteTv);
        if (com.coloros.translate.utils.z.g(null, 1, null) || com.coloros.translate.utils.o0.e()) {
            LinearLayout linearLayout = this.O0;
            if (linearLayout == null) {
                kotlin.jvm.internal.r.r("deleteLayout");
                linearLayout = null;
            }
            linearLayout.setOrientation(0);
            textView.setTextSize(2, 14.0f);
        }
        LinearLayout linearLayout2 = this.O0;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("deleteLayout");
            linearLayout2 = null;
        }
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TextTranslationActivity.s3(this.f7061a, view2);
            }
        });
        View viewFindViewById6 = findViewById(R.id.navigation_bar);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.f6885b0 = viewFindViewById6;
        if (viewFindViewById6 == null) {
            kotlin.jvm.internal.r.r("navigationBarView");
            viewFindViewById6 = null;
        }
        ViewGroup.LayoutParams layoutParams = viewFindViewById6.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = this.Z0;
            View view2 = this.f6885b0;
            if (view2 == null) {
                kotlin.jvm.internal.r.r("navigationBarView");
            } else {
                view = view2;
            }
            view.requestLayout();
        }
    }

    public static final a1 p3(TextTranslationActivity this$0, View view, a1 a1Var) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i10 = a1Var.f(a1.m.e()).f15808b;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, i10, 0, 0);
        COUIToolbar cOUIToolbar = this$0.P0;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("toolbarHistory");
            cOUIToolbar = null;
        }
        cOUIToolbar.setLayoutParams(layoutParams);
        return a1Var;
    }

    public static final boolean q3(TextTranslationActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        com.coloros.translate.ui.texttranslation.h hVar = this$0.N0;
        if (hVar == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar = null;
        }
        hVar.l();
        kotlinx.coroutines.g.b(t0.a(this$0.o0()), kotlinx.coroutines.o0.c(), null, this$0.new o(null), 2, null);
        return true;
    }

    public static final boolean r3(TextTranslationActivity this$0, MenuItem it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        com.coloros.translate.ui.texttranslation.h hVar = null;
        if (this$0.P) {
            com.coloros.translate.ui.texttranslation.h hVar2 = this$0.N0;
            if (hVar2 == null) {
                kotlin.jvm.internal.r.r("historyAdapter");
            } else {
                hVar = hVar2;
            }
            hVar.l();
            return true;
        }
        com.coloros.translate.ui.texttranslation.h hVar3 = this$0.N0;
        if (hVar3 == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
        } else {
            hVar = hVar3;
        }
        hVar.t();
        return true;
    }

    public static final void s3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        if (this$0.N == 0) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "select nothing and return");
        } else {
            this$0.W3();
        }
    }

    private final void t3() {
        LinearLayout linearLayout = this.f6897h0;
        RelativeLayout relativeLayout = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout = null;
        }
        View viewFindViewById = linearLayout.findViewById(R.id.ori_play_sound);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        LottieAnimationView lottieAnimationView = (LottieAnimationView) viewFindViewById;
        this.f6914s0 = lottieAnimationView;
        if (lottieAnimationView == null) {
            kotlin.jvm.internal.r.r("oriPlaySoundLAV");
            lottieAnimationView = null;
        }
        lottieAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws RemoteException {
                TextTranslationActivity.u3(this.f6997a, view);
            }
        });
        LinearLayout linearLayout2 = this.f6897h0;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout2 = null;
        }
        View viewFindViewById2 = linearLayout2.findViewById(R.id.text_speak_frame);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        LinearLayout linearLayout3 = (LinearLayout) viewFindViewById2;
        this.f6911p0 = linearLayout3;
        if (linearLayout3 == null) {
            kotlin.jvm.internal.r.r("endSpeakFrame");
            linearLayout3 = null;
        }
        linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws RemoteException {
                TextTranslationActivity.v3(this.f6996a, view);
            }
        });
        LinearLayout linearLayout4 = this.f6897h0;
        if (linearLayout4 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout4 = null;
        }
        View viewFindViewById3 = linearLayout4.findViewById(R.id.lottie_text_speak);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6913r0 = (LottieAnimationView) viewFindViewById3;
        LinearLayout linearLayout5 = this.f6897h0;
        if (linearLayout5 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout5 = null;
        }
        View viewFindViewById4 = linearLayout5.findViewById(R.id.waiting_input);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6916t0 = (LottieAnimationView) viewFindViewById4;
        LinearLayout linearLayout6 = this.f6897h0;
        if (linearLayout6 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout6 = null;
        }
        View viewFindViewById5 = linearLayout6.findViewById(R.id.result_play_sound);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        LottieAnimationView lottieAnimationView2 = (LottieAnimationView) viewFindViewById5;
        this.C0 = lottieAnimationView2;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("resultPlaySoundLAV");
            lottieAnimationView2 = null;
        }
        lottieAnimationView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws RemoteException {
                TextTranslationActivity.w3(this.f6998a, view);
            }
        });
        LinearLayout linearLayout7 = this.f6897h0;
        if (linearLayout7 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout7 = null;
        }
        View viewFindViewById6 = linearLayout7.findViewById(R.id.waiting_result);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        this.D0 = (LottieAnimationView) viewFindViewById6;
        LinearLayout linearLayout8 = this.f6897h0;
        if (linearLayout8 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout8 = null;
        }
        View viewFindViewById7 = linearLayout8.findViewById(R.id.result_btn_group);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.E0 = (Group) viewFindViewById7;
        LinearLayout linearLayout9 = this.f6897h0;
        if (linearLayout9 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout9 = null;
        }
        View viewFindViewById8 = linearLayout9.findViewById(R.id.ai_sign_group);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        this.F0 = (Group) viewFindViewById8;
        View viewFindViewById9 = findViewById(R.id.frame_translate);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.f6901j0 = (RelativeLayout) viewFindViewById9;
        if (Build.VERSION.SDK_INT < 33 || I3()) {
            U2();
            return;
        }
        com.oplus.vfxsdk.rsview.g gVar = new com.oplus.vfxsdk.rsview.g(this, "frame.coz", false, null, 12, null);
        gVar.h(-98, -54);
        gVar.i("rectCorner", Float.valueOf(getResources().getDimension(R.dimen.dp_24)));
        gVar.i("marginAlpha", Float.valueOf(0.12f));
        gVar.i("margin", Float.valueOf(getResources().getDimension(R.dimen.dp_16)));
        gVar.i("lineWidth", Float.valueOf(getResources().getDimension(R.dimen.dp_1)));
        gVar.i("contentAlpha", Float.valueOf(1.0f));
        if (COUIDarkModeUtil.isNightMode(this.f6915t)) {
            gVar.i("contentColor", Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(0.05f));
        } else {
            gVar.i("contentColor", Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f));
        }
        RuntimeShader runtimeShaderD = gVar.d();
        if (runtimeShaderD != null) {
            runtimeShaderD.setFloatUniform("rotateSpeed", 0.0f);
        }
        this.f6903k0 = gVar;
        RelativeLayout relativeLayout2 = this.f6901j0;
        if (relativeLayout2 == null) {
            kotlin.jvm.internal.r.r("translateFrame");
        } else {
            relativeLayout = relativeLayout2;
        }
        relativeLayout.setBackground(this.f6903k0);
        com.oplus.vfxsdk.rsview.g gVar2 = new com.oplus.vfxsdk.rsview.g(this, "ai_frame.coz", false, new com.oplus.vfxsdk.rsview.p(false, false, false, false, 14, null), 4, null);
        gVar2.h(-98, -54);
        gVar2.i("rectCorner", Float.valueOf(getResources().getDimension(R.dimen.dp_24)));
        gVar2.i("marginAlpha", Float.valueOf(0.3f));
        gVar2.i("margin", Float.valueOf(getResources().getDimension(R.dimen.dp_16)));
        gVar2.i("lineWidth", Float.valueOf(getResources().getDimension(R.dimen.dp_1)));
        gVar2.i("contentAlpha", Float.valueOf(1.0f));
        if (COUIDarkModeUtil.isNightMode(this.f6915t)) {
            gVar2.i("contentColor", Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(0.05f));
        } else {
            gVar2.i("contentColor", Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f), Float.valueOf(1.0f));
        }
        RuntimeShader runtimeShaderD2 = gVar2.d();
        if (runtimeShaderD2 != null) {
            runtimeShaderD2.setFloatUniform("rotateSpeed", 0.0f);
        }
        this.f6905l0 = gVar2;
    }

    public static final void u3(TextTranslationActivity this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        Object objE = ((p0) this$0.o0()).T().e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            ((p0) this$0.o0()).n0(false);
        }
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).U().e(), bool)) {
            ((p0) this$0.o0()).B0();
        }
        x9.c.c().k(new com.coloros.translate.utils.d0("TextTranslationWantToPlayTts"));
        ((p0) this$0.o0()).o0();
        this$0.V2();
    }

    public static final void v3(TextTranslationActivity this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        ((p0) this$0.o0()).n0(false);
        this$0.V2();
    }

    public static final void w3(TextTranslationActivity this$0, View view) throws RemoteException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        Object objE = ((p0) this$0.o0()).T().e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            ((p0) this$0.o0()).n0(false);
        }
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).i0().e(), bool)) {
            ((p0) this$0.o0()).A0();
        }
        f1.f7117a.c(this$0, "event_tts_for_words", this$0.S.getSortIndex(), this$0.T.getSortIndex());
        x9.c.c().k(new com.coloros.translate.utils.d0("TextTranslationWantToPlayTts"));
        ((p0) this$0.o0()).p0();
        this$0.V2();
    }

    private final void x3() {
        View viewFindViewById = findViewById(R.id.frame_normal);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        LinearLayout linearLayout = (LinearLayout) viewFindViewById;
        this.f6897h0 = linearLayout;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout = null;
        }
        View viewFindViewById2 = linearLayout.findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIToolbar cOUIToolbar = (COUIToolbar) viewFindViewById2;
        this.f6887c0 = cOUIToolbar;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("toolBar");
            cOUIToolbar = null;
        }
        cOUIToolbar.setNavigationIcon(R$drawable.coui_back_arrow);
        COUIToolbar cOUIToolbar2 = this.f6887c0;
        if (cOUIToolbar2 == null) {
            kotlin.jvm.internal.r.r("toolBar");
            cOUIToolbar2 = null;
        }
        cOUIToolbar2.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextTranslationActivity.y3(this.f6976a, view);
            }
        });
        LinearLayout linearLayout3 = this.f6897h0;
        if (linearLayout3 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout3 = null;
        }
        View viewFindViewById3 = linearLayout3.findViewById(R.id.choose_language);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        this.f6889d0 = (LanguageChooseView) viewFindViewById3;
        LinearLayout linearLayout4 = this.f6897h0;
        if (linearLayout4 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout4 = null;
        }
        View viewFindViewById4 = linearLayout4.findViewById(R.id.choose_language_tablet);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.f6891e0 = (LanguageChooseView) viewFindViewById4;
        if (com.coloros.translate.utils.o0.e() || com.coloros.translate.utils.z.g(null, 1, null)) {
            LanguageChooseView languageChooseView = this.f6889d0;
            if (languageChooseView == null) {
                kotlin.jvm.internal.r.r("languageChooseView");
                languageChooseView = null;
            }
            languageChooseView.setVisibility(8);
            LanguageChooseView languageChooseView2 = this.f6891e0;
            if (languageChooseView2 == null) {
                kotlin.jvm.internal.r.r("languageChooseViewTablet");
                languageChooseView2 = null;
            }
            languageChooseView2.setVisibility(0);
            LanguageChooseView languageChooseView3 = this.f6891e0;
            if (languageChooseView3 == null) {
                kotlin.jvm.internal.r.r("languageChooseViewTablet");
                languageChooseView3 = null;
            }
            this.f6893f0 = languageChooseView3;
        } else {
            LanguageChooseView languageChooseView4 = this.f6889d0;
            if (languageChooseView4 == null) {
                kotlin.jvm.internal.r.r("languageChooseView");
                languageChooseView4 = null;
            }
            languageChooseView4.setVisibility(0);
            LanguageChooseView languageChooseView5 = this.f6891e0;
            if (languageChooseView5 == null) {
                kotlin.jvm.internal.r.r("languageChooseViewTablet");
                languageChooseView5 = null;
            }
            languageChooseView5.setVisibility(8);
            LanguageChooseView languageChooseView6 = this.f6889d0;
            if (languageChooseView6 == null) {
                kotlin.jvm.internal.r.r("languageChooseView");
                languageChooseView6 = null;
            }
            this.f6893f0 = languageChooseView6;
        }
        LanguageChooseView languageChooseView7 = this.f6893f0;
        if (languageChooseView7 != null) {
            View viewFindViewById5 = languageChooseView7.findViewById(R.id.switchButton);
            kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
            ImageView imageView = (ImageView) viewFindViewById5;
            this.X = imageView;
            if (imageView == null) {
                kotlin.jvm.internal.r.r("pickerSwitchButton");
                imageView = null;
            }
            imageView.setImageResource(R.drawable.switch_language_arrow);
            com.coloros.translate.o oVar = new com.coloros.translate.o(this);
            this.W = oVar;
            oVar.E(R.drawable.switch_language_arrow);
            languageChooseView7.setOnFromLangeClickListener(new p());
            languageChooseView7.setOnToLangeClickListener(new q());
            languageChooseView7.setOnSwitchClickListener(new r());
        }
        LinearLayout linearLayout5 = this.f6897h0;
        if (linearLayout5 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout5 = null;
        }
        View viewFindViewById6 = linearLayout5.findViewById(R.id.copy);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        ImageView imageView2 = (ImageView) viewFindViewById6;
        this.Y = imageView2;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("copyIV");
            imageView2 = null;
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextTranslationActivity.z3(this.f6979a, view);
            }
        });
        LinearLayout linearLayout6 = this.f6897h0;
        if (linearLayout6 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout6 = null;
        }
        View viewFindViewById7 = linearLayout6.findViewById(R.id.enlarge);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        ImageView imageView3 = (ImageView) viewFindViewById7;
        this.Z = imageView3;
        if (imageView3 == null) {
            kotlin.jvm.internal.r.r("enlargeIV");
            imageView3 = null;
        }
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextTranslationActivity.A3(this.f6982a, view);
            }
        });
        LinearLayout linearLayout7 = this.f6897h0;
        if (linearLayout7 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout7 = null;
        }
        View viewFindViewById8 = linearLayout7.findViewById(R.id.divider);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        this.f6928z0 = viewFindViewById8;
        LinearLayout linearLayout8 = this.f6897h0;
        if (linearLayout8 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout8 = null;
        }
        View viewFindViewById9 = linearLayout8.findViewById(R.id.frame_histories);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        COUIPercentWidthRelativeLayout cOUIPercentWidthRelativeLayout = (COUIPercentWidthRelativeLayout) viewFindViewById9;
        this.H0 = cOUIPercentWidthRelativeLayout;
        if (cOUIPercentWidthRelativeLayout == null) {
            kotlin.jvm.internal.r.r("historyNormalLayout");
            cOUIPercentWidthRelativeLayout = null;
        }
        cOUIPercentWidthRelativeLayout.setPercentIndentEnabled(com.coloros.translate.utils.o0.e());
        LinearLayout linearLayout9 = this.f6897h0;
        if (linearLayout9 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout9 = null;
        }
        View viewFindViewById10 = linearLayout9.findViewById(R.id.clear_ori);
        kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(...)");
        ImageView imageView4 = (ImageView) viewFindViewById10;
        this.f6910o0 = imageView4;
        if (imageView4 == null) {
            kotlin.jvm.internal.r.r("clearOriBtn");
            imageView4 = null;
        }
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws RemoteException {
                TextTranslationActivity.B3(this.f6994a, view);
            }
        });
        LinearLayout linearLayout10 = this.f6897h0;
        if (linearLayout10 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout10 = null;
        }
        View viewFindViewById11 = linearLayout10.findViewById(R.id.ai_btn);
        kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(...)");
        this.f6918u0 = (RelativeLayout) viewFindViewById11;
        LinearLayout linearLayout11 = this.f6897h0;
        if (linearLayout11 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout11 = null;
        }
        View viewFindViewById12 = linearLayout11.findViewById(R.id.ai_btn_bg_nor);
        kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(...)");
        this.f6920v0 = (ImageView) viewFindViewById12;
        LinearLayout linearLayout12 = this.f6897h0;
        if (linearLayout12 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout12 = null;
        }
        View viewFindViewById13 = linearLayout12.findViewById(R.id.ai_btn_bg_on);
        kotlin.jvm.internal.r.d(viewFindViewById13, "findViewById(...)");
        this.f6922w0 = (ImageView) viewFindViewById13;
        RelativeLayout relativeLayout = this.f6918u0;
        if (relativeLayout == null) {
            kotlin.jvm.internal.r.r("aiBtn");
            relativeLayout = null;
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextTranslationActivity.C3(this.f6995a, view);
            }
        });
        LinearLayout linearLayout13 = this.f6897h0;
        if (linearLayout13 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
            linearLayout13 = null;
        }
        View viewFindViewById14 = linearLayout13.findViewById(R.id.ai_btn_icon);
        kotlin.jvm.internal.r.d(viewFindViewById14, "findViewById(...)");
        this.f6924x0 = (ImageView) viewFindViewById14;
        LinearLayout linearLayout14 = this.f6897h0;
        if (linearLayout14 == null) {
            kotlin.jvm.internal.r.r("normalFrame");
        } else {
            linearLayout2 = linearLayout14;
        }
        View viewFindViewById15 = linearLayout2.findViewById(R.id.ai_content);
        kotlin.jvm.internal.r.d(viewFindViewById15, "findViewById(...)");
        this.f6926y0 = (AppCompatTextView) viewFindViewById15;
    }

    public static final void y3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null)) {
            return;
        }
        this$0.onBackPressed();
    }

    public static final void z3(TextTranslationActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || kotlin.jvm.internal.r.a(((p0) this$0.o0()).T().e(), Boolean.TRUE)) {
            return;
        }
        this$0.Y2();
        f1.f7117a.c(this$0, "event_copy_for_words", this$0.S.getSortIndex(), this$0.T.getSortIndex());
        this$0.V2();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity
    public void F0(Intent intent) {
        super.F0(intent);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "dispatchIntentActions");
        com.coloros.translate.observer.e.INSTANCE.l(n0());
        h5.c cVarA = h5.a.a(new b.a().b(0.9f).a());
        kotlin.jvm.internal.r.d(cVarA, "getClient(...)");
        this.f6900i1 = cVarA;
        androidx.lifecycle.l lifecycle = getLifecycle();
        h5.c cVar = this.f6900i1;
        if (cVar == null) {
            kotlin.jvm.internal.r.r("languageIdentifier");
            cVar = null;
        }
        lifecycle.a(cVar);
        Message messageObtainMessage = this.f6904k1.obtainMessage(1996);
        kotlin.jvm.internal.r.d(messageObtainMessage, "obtainMessage(...)");
        this.f6904k1.removeMessages(1996);
        this.f6904k1.sendMessageDelayed(messageObtainMessage, 500L);
        String action = intent != null ? intent.getAction() : null;
        if (action != null && action.hashCode() == 227184802 && action.equals("coloros.intent.action.TEXT_TRANS_SHORTCUT")) {
            com.coloros.translate.utils.n.INSTANCE.F("3");
            return;
        }
        if (kotlin.jvm.internal.r.a(intent != null ? intent.getStringExtra("extra_from") : null, "from_home")) {
            com.coloros.translate.utils.n.INSTANCE.F("1");
            return;
        }
        if (kotlin.jvm.internal.r.a(intent != null ? intent.getStringExtra("extra_from") : null, "from_cube")) {
            com.coloros.translate.utils.n.INSTANCE.F("5");
        } else {
            com.coloros.translate.utils.n.INSTANCE.F("4");
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        Object objM59constructorimpl;
        if (motionEvent != null && motionEvent.getAction() == 0 && !K3(motionEvent)) {
            Window window = getWindow();
            View currentFocus = window != null ? window.getCurrentFocus() : null;
            if (currentFocus != null && (currentFocus instanceof EditText)) {
                try {
                    r.a aVar = n8.r.Companion;
                    ((EditText) currentFocus).getLocationOnScreen(new int[2]);
                    float rawX = (motionEvent.getRawX() + ((EditText) currentFocus).getLeft()) - r1[0];
                    float rawY = (motionEvent.getRawY() + ((EditText) currentFocus).getTop()) - r1[1];
                    if (rawX < ((EditText) currentFocus).getLeft() || rawX >= ((EditText) currentFocus).getRight() || rawY < ((EditText) currentFocus).getTop() || rawY > ((EditText) currentFocus).getBottom()) {
                        V2();
                    }
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                    com.coloros.translate.utils.c0.f7098a.e("TextTranslationActivity", "closeSoftInput error");
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) throws RemoteException {
        LanguageChooseView languageChooseView;
        LanguageChooseView languageChooseView2;
        LanguageChooseView languageChooseView3;
        LanguageChooseView languageChooseView4;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationActivity", "onLanguageChanged isFromLanguageChanged : " + bool);
        this.S = i3().m();
        this.T = i3().o();
        f4();
        Object objE = ((p0) o0()).f0().e();
        Boolean bool2 = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool2) && bool != null) {
            aVar.d("TextTranslationActivity", "onLanguageChanged stop AI Translate");
            ((p0) o0()).f0().n(Boolean.FALSE);
        }
        if (kotlin.jvm.internal.r.a(((p0) o0()).T().e(), bool2)) {
            ((p0) o0()).n0(false);
        }
        ((p0) o0()).E0(this.S.getLanguageCode(), this.T.getLanguageCode());
        LanguageChooseView languageChooseView5 = this.f6893f0;
        if (languageChooseView5 != null) {
            languageChooseView5.setFromLanguage(this.S.getFullNameResId());
        }
        LanguageChooseView languageChooseView6 = this.f6893f0;
        if (languageChooseView6 != null) {
            languageChooseView6.setToLanguage(this.T.getFullNameResId());
        }
        if (i3().B()) {
            String languageCode = this.S.getLanguageCode();
            com.coloros.translate.b bVar = com.coloros.translate.b.CHINESE;
            if (kotlin.jvm.internal.r.a(languageCode, bVar.getLanguageCode()) && (languageChooseView4 = this.f6893f0) != null) {
                languageChooseView4.setFromLanguage(R.string.chinese);
            }
            String languageCode2 = this.S.getLanguageCode();
            com.coloros.translate.b bVar2 = com.coloros.translate.b.SPANISH;
            if (kotlin.jvm.internal.r.a(languageCode2, bVar2.getLanguageCode()) && (languageChooseView3 = this.f6893f0) != null) {
                languageChooseView3.setFromLanguage(R.string.spanish_os15);
            }
            if (kotlin.jvm.internal.r.a(this.T.getLanguageCode(), bVar.getLanguageCode()) && (languageChooseView2 = this.f6893f0) != null) {
                languageChooseView2.setToLanguage(R.string.chinese);
            }
            if (kotlin.jvm.internal.r.a(this.T.getLanguageCode(), bVar2.getLanguageCode()) && (languageChooseView = this.f6893f0) != null) {
                languageChooseView.setToLanguage(R.string.spanish_os15);
            }
        }
        ImageView imageView = null;
        if (kotlin.jvm.internal.r.a(bool, bool2)) {
            ImageView imageView2 = this.f6912q0;
            if (imageView2 == null) {
                kotlin.jvm.internal.r.r("textSpeakIcon");
                imageView2 = null;
            }
            imageView2.setVisibility(0);
            LinearLayout linearLayout = this.f6911p0;
            if (linearLayout == null) {
                kotlin.jvm.internal.r.r("endSpeakFrame");
                linearLayout = null;
            }
            linearLayout.setVisibility(8);
            ((p0) o0()).Y().n("");
        } else if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE)) {
            LottieAnimationView lottieAnimationView = this.C0;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("resultPlaySoundLAV");
                lottieAnimationView = null;
            }
            lottieAnimationView.setVisibility(0);
        }
        if (bool != null) {
            ((p0) o0()).v0("");
            h4();
        }
        if ((this.W0 && bool == null) || kotlin.jvm.internal.r.a(((p0) o0()).T().e(), bool2)) {
            aVar.d("TextTranslationActivity", "onLanguageChanged startMic performClick");
            this.W0 = false;
            ImageView imageView3 = this.f6912q0;
            if (imageView3 == null) {
                kotlin.jvm.internal.r.r("textSpeakIcon");
            } else {
                imageView = imageView3;
            }
            imageView.postDelayed(new Runnable() { // from class: com.coloros.translate.ui.texttranslation.o
                @Override // java.lang.Runnable
                public final void run() {
                    TextTranslationActivity.O3(this.f7026a);
                }
            }, 400L);
        }
        if (bool != null) {
            f1.f7117a.c(this.f6915t, "event_switch_language_for_words", this.S.getSortIndex(), this.T.getSortIndex());
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return p0.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_new_text_translation;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new j0(null), 2, null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationActivity", "onConfigurationChanged : " + this.S0.size() + " isSplitScreen: " + d1.e());
        if (d1.e()) {
            aVar.d("TextTranslationActivity", "screen split");
        } else {
            aVar.d("TextTranslationActivity", "screen normal");
        }
        d1.a();
        if (com.coloros.translate.utils.o0.a(this) == this.Y0) {
            aVar.q("TextTranslationActivity", "onConfigurationChanged:screen size is not change!");
            return;
        }
        l3();
        View view = this.f6885b0;
        View view2 = null;
        if (view == null) {
            kotlin.jvm.internal.r.r("navigationBarView");
            view = null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams instanceof RelativeLayout.LayoutParams ? (RelativeLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.height = this.Z0;
            View view3 = this.f6885b0;
            if (view3 == null) {
                kotlin.jvm.internal.r.r("navigationBarView");
            } else {
                view2 = view3;
            }
            view2.requestLayout();
        }
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l3();
        boolean booleanExtra = getIntent().getBooleanExtra("extra_start_mic", false);
        this.W0 = booleanExtra;
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onCreate startMic : " + booleanExtra);
        H3();
        m3();
        L3();
        M3();
        startPostponedEnterTransition();
        if (!this.W0) {
            EditText editText = this.f6909n0;
            if (editText == null) {
                kotlin.jvm.internal.r.r("inputET");
                editText = null;
            }
            com.coloros.translate.screen.utils.o.b(this, editText);
        }
        kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.b(), null, new k0(null), 2, null);
        x9.c.c().o(this);
        g2.a.c();
        g2.a.e(this.M);
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("TextTranslationActivity", "onDestroy");
        d1.a();
        V2();
        com.coloros.translate.observer.e.INSTANCE.n(n0());
        this.f6904k1.removeCallbacksAndMessages(null);
        if (kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), Boolean.TRUE) && !((p0) o0()).c0()) {
            aVar.d("TextTranslationActivity", "onDestroy cancelStreamTranslate");
            ((p0) o0()).K(true, true);
        }
        ((p0) o0()).r0(this);
        S2();
        if (this.H != null) {
            aVar.i("TextTranslationActivity", "onDestroy unregisterInputMethodObserver");
            OplusInputMethodManager.getInstance().unregisterInputMethodObserver(this.H);
            this.H = null;
        }
        COUIAnimateTextView cOUIAnimateTextView = this.B0;
        if (cOUIAnimateTextView == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView = null;
        }
        cOUIAnimateTextView.g();
        x9.c.c().q(this);
        com.coloros.translate.utils.n.INSTANCE.i0(q0());
        EditText editText = this.f6909n0;
        if (editText == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText = null;
        }
        editText.setCustomSelectionActionModeCallback(null);
        COUIAnimateTextView cOUIAnimateTextView2 = this.B0;
        if (cOUIAnimateTextView2 == null) {
            kotlin.jvm.internal.r.r("resultTV");
            cOUIAnimateTextView2 = null;
        }
        cOUIAnimateTextView2.setCustomSelectionActionModeCallback(null);
        g2.a.f(this.M);
    }

    @x9.m(threadMode = ThreadMode.MAIN)
    public final void onMessageEvent(com.coloros.translate.utils.e0 event) {
        kotlin.jvm.internal.r.e(event, "event");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        throw null;
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.onNewIntent(intent);
        com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "onNewIntent");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.i("TextTranslationActivity", "onPause");
        f1.a aVar = f1.f7117a;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.B;
        StringBuilder sb = new StringBuilder();
        sb.append(jCurrentTimeMillis);
        aVar.a(this, "event_showtime_for_words", (60 & 4) != 0 ? null : "result", (60 & 8) != 0 ? null : sb.toString(), (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
        i3().l();
        ((p0) o0()).D0();
        com.coloros.translate.permission.a.f5407c.a().h();
        R3();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(savedInstanceState, "savedInstanceState");
        super.onRestoreInstanceState(savedInstanceState);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationActivity", "onRestoreInstanceState");
        int[] intArray = savedInstanceState.getIntArray("extra_selected_list");
        EditText editText = null;
        if (intArray != null) {
            kotlinx.coroutines.g.b(t0.a(o0()), kotlinx.coroutines.o0.c(), null, new l0(intArray, null), 2, null);
        }
        this.W0 = savedInstanceState.getBoolean("extra_start_mic");
        if (!kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), Boolean.valueOf(savedInstanceState.getBoolean("extra_using_ai")))) {
            ((p0) o0()).f0().n(Boolean.valueOf(savedInstanceState.getBoolean("extra_using_ai")));
        }
        ((p0) o0()).z0(savedInstanceState.getBoolean("extra_translate_done"));
        aVar.d("TextTranslationActivity", "onRestoreInstanceState startMic : " + this.W0 + " , usingAITranslate : " + ((p0) o0()).f0().e() + " , streamTranslateDone : " + ((p0) o0()).c0());
        EditText editText2 = this.f6909n0;
        if (editText2 == null) {
            kotlin.jvm.internal.r.r("inputET");
            editText2 = null;
        }
        ViewGroup.LayoutParams layoutParams = editText2.getLayoutParams();
        layoutParams.height = this.f6917u;
        EditText editText3 = this.f6909n0;
        if (editText3 == null) {
            kotlin.jvm.internal.r.r("inputET");
        } else {
            editText = editText3;
        }
        editText.setLayoutParams(layoutParams);
        this.f6894f1 = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onResume");
        this.B = System.currentTimeMillis();
        float refreshRate = getWindowManager().getDefaultDisplay().getRefreshRate();
        this.K = refreshRate;
        this.L = (long) (1000 / refreshRate);
        i3().O(this, "text");
        ((p0) o0()).q0();
        l4();
        k4();
        j4((Integer) ((p0) o0()).a0().e());
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.r.e(outState, "outState");
        super.onSaveInstanceState(outState);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onSaveInstanceState");
        com.coloros.translate.ui.texttranslation.h hVar = this.N0;
        if (hVar == null) {
            kotlin.jvm.internal.r.r("historyAdapter");
            hVar = null;
        }
        outState.putIntArray("extra_selected_list", kotlin.collections.o.q0(hVar.m()));
        outState.putBoolean("extra_start_mic", false);
        outState.putBoolean("extra_using_ai", kotlin.jvm.internal.r.a(((p0) o0()).f0().e(), Boolean.TRUE));
        outState.putBoolean("extra_translate_done", ((p0) o0()).c0());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            androidx.lifecycle.a0 a0VarH0 = ((p0) o0()).h0();
            Boolean bool = Boolean.FALSE;
            a0VarH0.n(bool);
            ((p0) o0()).k0().n(bool);
        }
    }

    @Override // com.coloros.translate.base.BaseActivity
    public void x0() throws RemoteException {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationActivity", "onNetLost");
        b1.c(R.string.no_network, 0, 2, null);
        if (kotlin.jvm.internal.r.a(((p0) o0()).T().e(), Boolean.TRUE)) {
            ((p0) o0()).n0(false);
            V2();
        }
    }
}
