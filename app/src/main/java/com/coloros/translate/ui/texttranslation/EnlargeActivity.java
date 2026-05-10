package com.coloros.translate.ui.texttranslation;

import android.animation.Animator;
import android.content.Intent;
import android.os.Bundle;
import android.text.method.ArrowKeyMovementMethod;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.a1;
import androidx.core.view.y0;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.R;
import com.coloros.translate.base.BaseActivity;
import com.coui.appcompat.button.COUIButton;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class EnlargeActivity extends BaseActivity<p0> {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f6874u = new a(null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f6875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private COUIButton f6876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LottieAnimationView f6877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f6878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f6879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f6880t;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.l {

        public static final class a implements Animator.AnimatorListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ EnlargeActivity f6881a;

            a(EnlargeActivity enlargeActivity) {
                this.f6881a = enlargeActivity;
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
                LottieAnimationView lottieAnimationView = this.f6881a.f6877q;
                if (lottieAnimationView == null) {
                    kotlin.jvm.internal.r.r("playLAV");
                    lottieAnimationView = null;
                }
                lottieAnimationView.setMinFrame(15);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
                kotlin.jvm.internal.r.e(animation, "animation");
            }
        }

        b() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            com.coloros.translate.utils.c0.f7098a.d("EnlargeActivity", "mIsTTsRunning value is: " + bool);
            LottieAnimationView lottieAnimationView = EnlargeActivity.this.f6877q;
            LottieAnimationView lottieAnimationView2 = null;
            if (lottieAnimationView == null) {
                kotlin.jvm.internal.r.r("playLAV");
                lottieAnimationView = null;
            }
            lottieAnimationView.setVisibility(0);
            kotlin.jvm.internal.r.b(bool);
            if (!bool.booleanValue()) {
                LottieAnimationView lottieAnimationView3 = EnlargeActivity.this.f6877q;
                if (lottieAnimationView3 == null) {
                    kotlin.jvm.internal.r.r("playLAV");
                    lottieAnimationView3 = null;
                }
                lottieAnimationView3.w();
                LottieAnimationView lottieAnimationView4 = EnlargeActivity.this.f6877q;
                if (lottieAnimationView4 == null) {
                    kotlin.jvm.internal.r.r("playLAV");
                    lottieAnimationView4 = null;
                }
                lottieAnimationView4.setMinFrame(0);
                LottieAnimationView lottieAnimationView5 = EnlargeActivity.this.f6877q;
                if (lottieAnimationView5 == null) {
                    kotlin.jvm.internal.r.r("playLAV");
                } else {
                    lottieAnimationView2 = lottieAnimationView5;
                }
                com.coloros.translate.utils.w.e(lottieAnimationView2);
                return;
            }
            LottieAnimationView lottieAnimationView6 = EnlargeActivity.this.f6877q;
            if (lottieAnimationView6 == null) {
                kotlin.jvm.internal.r.r("playLAV");
                lottieAnimationView6 = null;
            }
            lottieAnimationView6.x();
            LottieAnimationView lottieAnimationView7 = EnlargeActivity.this.f6877q;
            if (lottieAnimationView7 == null) {
                kotlin.jvm.internal.r.r("playLAV");
                lottieAnimationView7 = null;
            }
            lottieAnimationView7.setMinFrame(0);
            LottieAnimationView lottieAnimationView8 = EnlargeActivity.this.f6877q;
            if (lottieAnimationView8 == null) {
                kotlin.jvm.internal.r.r("playLAV");
                lottieAnimationView8 = null;
            }
            lottieAnimationView8.setMaxFrame(69);
            LottieAnimationView lottieAnimationView9 = EnlargeActivity.this.f6877q;
            if (lottieAnimationView9 == null) {
                kotlin.jvm.internal.r.r("playLAV");
                lottieAnimationView9 = null;
            }
            lottieAnimationView9.g(new a(EnlargeActivity.this));
            LottieAnimationView lottieAnimationView10 = EnlargeActivity.this.f6877q;
            if (lottieAnimationView10 == null) {
                kotlin.jvm.internal.r.r("playLAV");
            } else {
                lottieAnimationView2 = lottieAnimationView10;
            }
            lottieAnimationView2.v();
        }
    }

    private final void G0() {
        View viewFindViewById = findViewById(R.id.textView);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById;
        this.f6875o = textView;
        LottieAnimationView lottieAnimationView = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("enlargeTextView");
            textView = null;
        }
        textView.setTextIsSelectable(true);
        TextView textView2 = this.f6875o;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("enlargeTextView");
            textView2 = null;
        }
        textView2.setMovementMethod(ArrowKeyMovementMethod.getInstance());
        TextView textView3 = this.f6875o;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("enlargeTextView");
            textView3 = null;
        }
        TextView textView4 = this.f6875o;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("enlargeTextView");
            textView4 = null;
        }
        textView3.setCustomSelectionActionModeCallback(new com.coloros.translate.ui.texttranslation.a(textView4));
        View viewFindViewById2 = findViewById(R.id.close);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        COUIButton cOUIButton = (COUIButton) viewFindViewById2;
        this.f6876p = cOUIButton;
        if (cOUIButton == null) {
            kotlin.jvm.internal.r.r("closeBtn");
            cOUIButton = null;
        }
        cOUIButton.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EnlargeActivity.H0(this.f6966a, view);
            }
        });
        View viewFindViewById3 = findViewById(R.id.play);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        LottieAnimationView lottieAnimationView2 = (LottieAnimationView) viewFindViewById3;
        this.f6877q = lottieAnimationView2;
        if (lottieAnimationView2 == null) {
            kotlin.jvm.internal.r.r("playLAV");
        } else {
            lottieAnimationView = lottieAnimationView2;
        }
        lottieAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.texttranslation.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EnlargeActivity.I0(this.f6968a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(EnlargeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(EnlargeActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(((p0) this$0.o0()).U().e(), Boolean.TRUE)) {
            ((p0) this$0.o0()).B0();
        } else {
            ((p0) this$0.o0()).p0();
        }
    }

    private final void J0() {
        s0(((p0) o0()).U(), new b());
    }

    private final void K0() {
        com.coloros.translate.utils.c0.f7098a.d("EnlargeActivity", "enlarge_text");
        TextView textView = this.f6875o;
        String str = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("enlargeTextView");
            textView = null;
        }
        String str2 = this.f6878r;
        if (str2 == null) {
            kotlin.jvm.internal.r.r("enlargeString");
        } else {
            str = str2;
        }
        textView.setText(str);
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return p0.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.full_screen;
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str = null;
        String stringExtra = intent != null ? intent.getStringExtra("enlarge_text") : null;
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.f6878r = stringExtra;
        Intent intent2 = getIntent();
        String stringExtra2 = intent2 != null ? intent2.getStringExtra("enlarge_language_ori") : null;
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        this.f6879s = stringExtra2;
        Intent intent3 = getIntent();
        String stringExtra3 = intent3 != null ? intent3.getStringExtra("enlarge_language_result") : null;
        String str2 = stringExtra3 != null ? stringExtra3 : "";
        this.f6880t = str2;
        com.coloros.translate.utils.c0.f7098a.i("EnlargeActivity", "onCreate languageResultCode : " + str2);
        androidx.lifecycle.a0 a0VarY = ((p0) o0()).Y();
        String str3 = this.f6878r;
        if (str3 == null) {
            kotlin.jvm.internal.r.r("enlargeString");
            str3 = null;
        }
        a0VarY.n(str3);
        p0 p0Var = (p0) o0();
        String str4 = this.f6879s;
        if (str4 == null) {
            kotlin.jvm.internal.r.r("languageOriCode");
            str4 = null;
        }
        String str5 = this.f6880t;
        if (str5 == null) {
            kotlin.jvm.internal.r.r("languageResultCode");
        } else {
            str = str5;
        }
        p0Var.E0(str4, str);
        y0.a(getWindow(), getWindow().getDecorView()).a(a1.m.f());
        setRequestedOrientation(0);
        G0();
        J0();
        K0();
    }

    @Override // com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((p0) o0()).r0(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        kotlin.jvm.internal.r.e(intent, "intent");
        super.onNewIntent(intent);
        K0();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.coloros.translate.utils.c0.f7098a.i("EnlargeActivity", "onPause and unRegisterListener");
        ((p0) o0()).D0();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        ((p0) o0()).q0();
    }
}
