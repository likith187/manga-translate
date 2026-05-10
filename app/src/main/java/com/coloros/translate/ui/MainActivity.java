package com.coloros.translate.ui;

import android.app.ActivityOptions;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.BasePrivateActivity;
import com.coloros.translate.base.q;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.ui.dialoguetranslation.DialogTranslationActivity;
import com.coloros.translate.ui.setting.SettingActivity;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.ui.texttranslation.TextTranslationActivity;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.j;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.o0;
import com.coloros.translate.utils.z;
import com.coui.appcompat.dialog.COUIAlertDialogBuilder;
import com.coui.appcompat.grid.COUIPercentWidthConstraintLayout;
import com.coui.appcompat.pressfeedback.COUIPressFeedbackHelper;
import com.coui.appcompat.toolbar.COUIToolbar;
import com.oplus.aiunit.core.data.DetectName;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.d0;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BasePrivateActivity<q> implements com.coloros.translate.d {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final a f6127a0 = new a(null);
    private ConstraintLayout A;
    private Flow B;
    private ImageView C;
    private TextView D;
    private TextView E;
    private TextView F;
    private TextView G;
    private TextView H;
    private LinearLayout I;
    private final n8.q J;
    private com.coloros.translate.b K;
    private com.coloros.translate.b L;
    private ImageView M;
    private TextView N;
    private TextView O;
    private com.coloros.translate.o P;
    private HashMap Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private final n8.j W;
    private final int X;
    private androidx.appcompat.app.c Y;
    private float Z;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f6128t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private COUIToolbar f6129u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private LinearLayout f6130v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private COUIPercentWidthConstraintLayout f6131w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RelativeLayout f6132x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RelativeLayout f6133y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ConstraintLayout f6134z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MainActivity.this.k1(this);
        }
    }

    public static final class c implements e2.a {
        c() {
        }

        @Override // e2.a
        public void a() {
        }

        @Override // e2.a
        public void b() {
            c0.f7098a.d("MainActivity", "start jump DialogueTranslationActivity");
            MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) DialogTranslationActivity.class));
        }

        @Override // e2.a
        public void c() {
        }
    }

    public static final class d implements e2.a {
        d() {
        }

        @Override // e2.a
        public void a() {
        }

        @Override // e2.a
        public void b() {
            c0.f7098a.d("MainActivity", "jump to SimultaneousMainActivity");
            MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) SimultaneousMainActivity.class));
        }

        @Override // e2.a
        public void c() {
        }
    }

    public static final class e extends ViewOutlineProvider {
        e() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = view != null ? view.getWidth() : 0;
            int height = view != null ? view.getHeight() : 0;
            c0.f7098a.d("MainActivity", "frameText getOutline :" + width + " ," + height);
            if (width == 0 || height == 0 || outline == null) {
                return;
            }
            outline.setRoundRect(0, 0, width, height, MainActivity.this.getResources().getDimension(R.dimen.dp_17));
        }
    }

    static final class f extends s implements w8.a {
        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            MainActivity mainActivity = MainActivity.this;
            String packageName = mainActivity.getPackageName();
            r.d(packageName, "getPackageName(...)");
            com.coloros.translate.ui.a.d(mainActivity, packageName);
        }
    }

    public static final class g implements e2.a {

        static final class a extends s implements w8.a {
            final /* synthetic */ MainActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MainActivity mainActivity) {
                super(0);
                this.this$0 = mainActivity;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return h0.INSTANCE;
            }

            public final void invoke() {
                MainActivity mainActivity = this.this$0;
                String packageName = mainActivity.getPackageName();
                r.d(packageName, "getPackageName(...)");
                com.coloros.translate.ui.a.d(mainActivity, packageName);
            }
        }

        g() {
        }

        @Override // e2.a
        public void a() {
        }

        @Override // e2.a
        public void b() {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.M1(new a(mainActivity));
        }

        @Override // e2.a
        public void c() {
        }
    }

    static final class h extends s implements w8.a {
        h() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            MainActivity.this.l1();
        }
    }

    static final class i extends s implements w8.a {
        public static final i INSTANCE = new i();

        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    static final class j extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        j(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return MainActivity.this.new j(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                MainActivity mainActivity = MainActivity.this;
                mainActivity.K = mainActivity.n1().m();
                MainActivity mainActivity2 = MainActivity.this;
                mainActivity2.L = mainActivity2.n1().o();
                TextView textView = MainActivity.this.N;
                TextView textView2 = null;
                if (textView == null) {
                    r.r("pickerLanguageOri");
                    textView = null;
                }
                textView.setText(MainActivity.this.V ? MainActivity.this.K.getFullNameResId() : MainActivity.this.K.getSimpleNameResId());
                TextView textView3 = MainActivity.this.O;
                if (textView3 == null) {
                    r.r("pickerLanguageResult");
                    textView3 = null;
                }
                textView3.setText(MainActivity.this.V ? MainActivity.this.L.getFullNameResId() : MainActivity.this.L.getSimpleNameResId());
                if (MainActivity.this.n1().B()) {
                    String languageCode = MainActivity.this.K.getLanguageCode();
                    com.coloros.translate.b bVar = com.coloros.translate.b.CHINESE;
                    if (r.a(languageCode, bVar.getLanguageCode())) {
                        TextView textView4 = MainActivity.this.N;
                        if (textView4 == null) {
                            r.r("pickerLanguageOri");
                            textView4 = null;
                        }
                        textView4.setText(R.string.chinese);
                    }
                    if (r.a(MainActivity.this.L.getLanguageCode(), bVar.getLanguageCode())) {
                        TextView textView5 = MainActivity.this.O;
                        if (textView5 == null) {
                            r.r("pickerLanguageResult");
                            textView5 = null;
                        }
                        textView5.setText(R.string.chinese);
                    }
                    String languageCode2 = MainActivity.this.K.getLanguageCode();
                    com.coloros.translate.b bVar2 = com.coloros.translate.b.SPANISH;
                    if (r.a(languageCode2, bVar2.getLanguageCode())) {
                        TextView textView6 = MainActivity.this.N;
                        if (textView6 == null) {
                            r.r("pickerLanguageOri");
                            textView6 = null;
                        }
                        textView6.setText(R.string.spanish_os15);
                    }
                    if (r.a(MainActivity.this.L.getLanguageCode(), bVar2.getLanguageCode())) {
                        TextView textView7 = MainActivity.this.O;
                        if (textView7 == null) {
                            r.r("pickerLanguageResult");
                        } else {
                            textView2 = textView7;
                        }
                        textView2.setText(R.string.spanish_os15);
                    }
                }
                MainActivity mainActivity3 = MainActivity.this;
                this.label = 1;
                if (mainActivity3.k1(this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((j) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    public MainActivity() {
        n8.q qVarQ = LanguageManager.f4727w.b().q("text");
        this.J = qVarQ;
        this.K = (com.coloros.translate.b) qVarQ.getFirst();
        this.L = (com.coloros.translate.b) qVarQ.getSecond();
        this.Q = new HashMap();
        this.R = 2;
        this.V = true;
        this.W = n8.k.b(i.INSTANCE);
        this.X = (int) TranslationApplication.f4754b.a().getResources().getDimension(R.dimen.dp_100);
        this.Z = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(MainActivity this$0, View view) {
        com.coloros.translate.o oVar;
        r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || (oVar = this$0.P) == null) {
            return;
        }
        oVar.G(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(MainActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.n1().U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(MainActivity this$0, View view) {
        r.e(this$0, "this$0");
        c0.f7098a.d("MainActivity", "jump to TextTranslationActivity");
        J1(this$0, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(MainActivity this$0, View view) {
        r.e(this$0, "this$0");
        c0.f7098a.d("MainActivity", "jump to TextTranslationActivity startMic");
        this$0.I1(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(MainActivity this$0, View view) {
        r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.o();
        if (PrivacyPolicyManager.f5415i.b()) {
            this$0.G0().O(this$0, this$0.new g());
        } else {
            this$0.M1(this$0.new f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(MainActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.K1(this$0.new h());
        com.coloros.translate.utils.n.INSTANCE.n();
    }

    private final boolean G1() {
        return (o0.e() && !com.coloros.translate.utils.j.f7127a.d(this)) || z.g(null, 1, null);
    }

    private final void H1() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d("MainActivity", "jump to document translate");
            Intent intent = new Intent();
            intent.setAction("andes.oplus.documentsreader.translate_select_file_and_history");
            intent.setFlags(268468224);
            intent.setPackage("andes.oplus.documentsreader");
            startActivity(intent);
            overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("MainActivity", "jump to document err: " + thM62exceptionOrNullimpl);
        }
    }

    private final void I1(boolean z10) {
        com.coloros.translate.utils.n.INSTANCE.q();
        if (!com.coloros.translate.repository.d.f5439a.b()) {
            c0.f7098a.d("MainActivity", "launchTextTranslate ai not download and return");
            return;
        }
        if (z10 && com.coloros.translate.permission.a.f5407c.a().d(this)) {
            c0.f7098a.d("MainActivity", "launchTextTranslate permission and return");
            return;
        }
        Intent intent = new Intent(this, (Class<?>) TextTranslationActivity.class);
        intent.putExtra("extra_from", "from_home");
        intent.putExtra("extra_start_mic", z10);
        TextView textView = this.D;
        LinearLayout linearLayout = null;
        if (textView == null) {
            kotlin.jvm.internal.r.r("frameText");
            textView = null;
        }
        Pair pair = new Pair(textView, "frame_trans");
        ImageView imageView = this.C;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("mic");
            imageView = null;
        }
        Pair pair2 = new Pair(imageView, "mic_trans");
        LinearLayout linearLayout2 = this.f6130v;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("chooseLanguageView");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setVisibility(4);
        startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(this, pair, pair2).toBundle());
    }

    static /* synthetic */ void J1(MainActivity mainActivity, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: launchTextTranslate");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        mainActivity.I1(z10);
    }

    private final void K1(final w8.a aVar) {
        androidx.appcompat.app.c cVar;
        l0.a aVar2 = l0.f7130a;
        if (((Boolean) l0.a.g(aVar2, "subtitle_translate_guide", Boolean.FALSE, null, 4, null)).booleanValue()) {
            aVar.mo8invoke();
            return;
        }
        androidx.appcompat.app.c cVar2 = this.Y;
        if (cVar2 != null && cVar2.isShowing() && (cVar = this.Y) != null) {
            cVar.dismiss();
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_guide_layout, (ViewGroup) null);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.caption_translation);
        ((TextView) viewInflate.findViewById(R.id.summary)).setText(R.string.caption_translation_guide_context);
        final LottieAnimationView lottieAnimationView = (LottieAnimationView) viewInflate.findViewById(R.id.guide_lottie);
        int i10 = R.raw.subtitle_translate_introduction;
        if (z.g(null, 1, null)) {
            i10 = R.raw.subtitle_translate_introduction_fold_screen;
        } else if (o0.e()) {
            i10 = R.raw.subtitle_translate_introduction_tablet;
        }
        lottieAnimationView.setAnimation(i10);
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this);
        cOUIAlertDialogBuilder.setView(viewInflate);
        cOUIAlertDialogBuilder.setPositiveButton(R.string.experience_now, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                MainActivity.L1(lottieAnimationView, aVar, dialogInterface, i11);
            }
        }, true);
        this.Y = cOUIAlertDialogBuilder.show();
        l0.a.l(aVar2, "subtitle_translate_guide", Boolean.TRUE, false, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L1(LottieAnimationView lottieAnimationView, w8.a callback, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(callback, "$callback");
        lottieAnimationView.j();
        dialogInterface.dismiss();
        callback.mo8invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M1(final w8.a aVar) {
        androidx.appcompat.app.c cVar;
        l0.a aVar2 = l0.f7130a;
        if (((Boolean) l0.a.g(aVar2, "screen_translate_guide", Boolean.FALSE, null, 4, null)).booleanValue()) {
            aVar.mo8invoke();
            return;
        }
        androidx.appcompat.app.c cVar2 = this.Y;
        if (cVar2 != null && cVar2.isShowing() && (cVar = this.Y) != null) {
            cVar.dismiss();
        }
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_guide_layout, (ViewGroup) null);
        kotlin.jvm.internal.r.d(viewInflate, "inflate(...)");
        ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.screen_translation);
        ((TextView) viewInflate.findViewById(R.id.summary)).setText(R.string.screen_translate_guide_context);
        int i10 = R.raw.screen_translate_introduction;
        if (z.g(null, 1, null)) {
            i10 = R.raw.screen_translate_introduction_fold_screen;
        } else if (o0.e()) {
            i10 = R.raw.screen_translate_introduction_tablet;
        }
        final LottieAnimationView lottieAnimationView = (LottieAnimationView) viewInflate.findViewById(R.id.guide_lottie);
        lottieAnimationView.setAnimation(i10);
        COUIAlertDialogBuilder cOUIAlertDialogBuilder = new COUIAlertDialogBuilder(this);
        cOUIAlertDialogBuilder.setView(viewInflate);
        cOUIAlertDialogBuilder.setPositiveButton(R.string.experience_now, new DialogInterface.OnClickListener() { // from class: com.coloros.translate.ui.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                MainActivity.N1(lottieAnimationView, aVar, dialogInterface, i11);
            }
        }, true);
        this.Y = cOUIAlertDialogBuilder.show();
        l0.a.l(aVar2, "screen_translate_guide", Boolean.TRUE, false, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(LottieAnimationView lottieAnimationView, w8.a callback, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.r.e(callback, "$callback");
        lottieAnimationView.j();
        dialogInterface.dismiss();
        callback.mo8invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k1(kotlin.coroutines.d r8) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.ui.MainActivity.k1(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d("MainActivity", "start caption translate");
            Intent intent = new Intent();
            intent.setAction("action.oplus.accessibilityassistant.subtitle");
            intent.putExtra("target", "subtitle");
            intent.putExtra("from", "translate_app");
            intent.setPackage("com.coloros.accessibilityassistant");
            objM59constructorimpl = n8.r.m59constructorimpl(startForegroundService(intent));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("MainActivity", "start caption err: " + thM62exceptionOrNullimpl);
        }
    }

    private final void m1() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            String stringExtra = getIntent().getStringExtra("request_package");
            if (stringExtra == null) {
                stringExtra = "";
            }
            objM59constructorimpl = n8.r.m59constructorimpl(stringExtra);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m65isFailureimpl(objM59constructorimpl)) {
            objM59constructorimpl = null;
        }
        String str = (String) objM59constructorimpl;
        if (kotlin.jvm.internal.r.a(str != null ? str : "", "com.coloros.smartsidebar")) {
            f1.f7117a.a(this, "event_start_translate_from", (60 & 4) != 0 ? null : "entrance", (60 & 8) != 0 ? null : "sidebar", (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
            return;
        }
        Intent intent = getIntent();
        if (kotlin.jvm.internal.r.a("coloros.intent.action.TRANSLATION.ASSISTANT", intent != null ? intent.getAction() : null)) {
            f1.f7117a.a(this, "event_start_translate_from", (60 & 4) != 0 ? null : "entrance", (60 & 8) != 0 ? null : "assistant_screen", (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LanguageManager n1() {
        return (LanguageManager) this.W.getValue();
    }

    private final void o1() {
        boolean zA;
        if (com.coloros.translate.ui.a.b()) {
            c0.f7098a.i("MainActivity", "initEntrance has photo translate");
            this.S = true;
            this.R++;
        }
        l0.a aVar = l0.f7130a;
        if (l0.a.b(aVar, "isAiDocSupport", null, 2, null)) {
            zA = ((Boolean) l0.a.g(aVar, "isAiDocSupport", Boolean.FALSE, null, 4, null)).booleanValue();
        } else {
            zA = com.coloros.translate.ui.a.a(this, DetectName.AIDOC_TRANSLATE);
            l0.a.l(aVar, "isAiDocSupport", Boolean.valueOf(zA), false, null, 12, null);
        }
        c0.a aVar2 = c0.f7098a;
        aVar2.i("MainActivity", "initEntrance isAiDocSupport: " + zA);
        if (zA && com.coloros.translate.utils.c.a("andes.oplus.documentsreader") && com.coloros.translate.utils.c.c("andes.oplus.documentsreader", "andes.oplus.documentsreader.translate_select_file_and_history")) {
            aVar2.i("MainActivity", "initEntrance has document translate");
            this.T = true;
            this.R++;
        }
        aVar2.i("MainActivity", "initEntrance type : " + this.R);
        if (com.coloros.translate.utils.c.a("com.coloros.accessibilityassistant") && com.coloros.translate.utils.c.e("com.coloros.accessibilityassistant", "support_direct_subtitle", 1) && com.coloros.translate.utils.a.a()) {
            aVar2.i("MainActivity", "initEntrance has caption");
            this.U = true;
        }
    }

    private final void p1() {
        ConstraintLayout constraintLayout = null;
        if (G1()) {
            Flow flow = this.B;
            if (flow == null) {
                kotlin.jvm.internal.r.r("entranceFlow");
                flow = null;
            }
            flow.setMaxElementsWrap(4);
        } else {
            Flow flow2 = this.B;
            if (flow2 == null) {
                kotlin.jvm.internal.r.r("entranceFlow");
                flow2 = null;
            }
            flow2.setMaxElementsWrap(2);
        }
        int i10 = this.R;
        if (i10 == 2) {
            ConstraintLayout constraintLayout2 = this.f6134z;
            if (constraintLayout2 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout2 = null;
            }
            constraintLayout2.setVisibility(0);
            ConstraintLayout constraintLayout3 = this.A;
            if (constraintLayout3 == null) {
                kotlin.jvm.internal.r.r("mainThreeLayout");
                constraintLayout3 = null;
            }
            constraintLayout3.setVisibility(8);
            ConstraintLayout constraintLayout4 = this.f6134z;
            if (constraintLayout4 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout4 = null;
            }
            this.E = (TextView) constraintLayout4.findViewById(R.id.translation_1);
            ConstraintLayout constraintLayout5 = this.f6134z;
            if (constraintLayout5 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout5 = null;
            }
            this.F = (TextView) constraintLayout5.findViewById(R.id.translation_2);
            ConstraintLayout constraintLayout6 = this.f6134z;
            if (constraintLayout6 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout6 = null;
            }
            this.G = (TextView) constraintLayout6.findViewById(R.id.translation_3);
            ConstraintLayout constraintLayout7 = this.f6134z;
            if (constraintLayout7 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
            } else {
                constraintLayout = constraintLayout7;
            }
            this.H = (TextView) constraintLayout.findViewById(R.id.translation_4);
            TextView textView = this.E;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.H;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            HashMap map = this.Q;
            TextView textView3 = this.F;
            kotlin.jvm.internal.r.c(textView3, "null cannot be cast to non-null type android.view.View");
            map.put("dialog", textView3);
            HashMap map2 = this.Q;
            TextView textView4 = this.G;
            kotlin.jvm.internal.r.c(textView4, "null cannot be cast to non-null type android.view.View");
            map2.put("simultaneous", textView4);
        } else if (i10 != 3) {
            ConstraintLayout constraintLayout8 = this.f6134z;
            if (constraintLayout8 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout8 = null;
            }
            constraintLayout8.setVisibility(0);
            ConstraintLayout constraintLayout9 = this.A;
            if (constraintLayout9 == null) {
                kotlin.jvm.internal.r.r("mainThreeLayout");
                constraintLayout9 = null;
            }
            constraintLayout9.setVisibility(8);
            ConstraintLayout constraintLayout10 = this.f6134z;
            if (constraintLayout10 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout10 = null;
            }
            this.E = (TextView) constraintLayout10.findViewById(R.id.translation_1);
            ConstraintLayout constraintLayout11 = this.f6134z;
            if (constraintLayout11 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout11 = null;
            }
            this.F = (TextView) constraintLayout11.findViewById(R.id.translation_2);
            ConstraintLayout constraintLayout12 = this.f6134z;
            if (constraintLayout12 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
                constraintLayout12 = null;
            }
            this.G = (TextView) constraintLayout12.findViewById(R.id.translation_3);
            ConstraintLayout constraintLayout13 = this.f6134z;
            if (constraintLayout13 == null) {
                kotlin.jvm.internal.r.r("mainNormalLayout");
            } else {
                constraintLayout = constraintLayout13;
            }
            this.H = (TextView) constraintLayout.findViewById(R.id.translation_4);
            HashMap map3 = this.Q;
            TextView textView5 = this.E;
            kotlin.jvm.internal.r.c(textView5, "null cannot be cast to non-null type android.view.View");
            map3.put("photo", textView5);
            HashMap map4 = this.Q;
            TextView textView6 = this.F;
            kotlin.jvm.internal.r.c(textView6, "null cannot be cast to non-null type android.view.View");
            map4.put("dialog", textView6);
            HashMap map5 = this.Q;
            TextView textView7 = this.G;
            kotlin.jvm.internal.r.c(textView7, "null cannot be cast to non-null type android.view.View");
            map5.put("simultaneous", textView7);
            HashMap map6 = this.Q;
            TextView textView8 = this.H;
            kotlin.jvm.internal.r.c(textView8, "null cannot be cast to non-null type android.view.View");
            map6.put("document", textView8);
        } else {
            if (G1()) {
                ConstraintLayout constraintLayout14 = this.A;
                if (constraintLayout14 == null) {
                    kotlin.jvm.internal.r.r("mainThreeLayout");
                    constraintLayout14 = null;
                }
                constraintLayout14.setVisibility(8);
                ConstraintLayout constraintLayout15 = this.f6134z;
                if (constraintLayout15 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout15 = null;
                }
                constraintLayout15.setVisibility(0);
                ConstraintLayout constraintLayout16 = this.f6134z;
                if (constraintLayout16 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout16 = null;
                }
                this.E = (TextView) constraintLayout16.findViewById(R.id.translation_1);
                ConstraintLayout constraintLayout17 = this.f6134z;
                if (constraintLayout17 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout17 = null;
                }
                this.F = (TextView) constraintLayout17.findViewById(R.id.translation_2);
                ConstraintLayout constraintLayout18 = this.f6134z;
                if (constraintLayout18 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout18 = null;
                }
                this.G = (TextView) constraintLayout18.findViewById(R.id.translation_3);
                ConstraintLayout constraintLayout19 = this.f6134z;
                if (constraintLayout19 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout19 = null;
                }
                TextView textView9 = (TextView) constraintLayout19.findViewById(R.id.translation_4);
                this.H = textView9;
                if (textView9 != null) {
                    textView9.setVisibility(8);
                }
            } else {
                ConstraintLayout constraintLayout20 = this.f6134z;
                if (constraintLayout20 == null) {
                    kotlin.jvm.internal.r.r("mainNormalLayout");
                    constraintLayout20 = null;
                }
                constraintLayout20.setVisibility(8);
                ConstraintLayout constraintLayout21 = this.A;
                if (constraintLayout21 == null) {
                    kotlin.jvm.internal.r.r("mainThreeLayout");
                    constraintLayout21 = null;
                }
                constraintLayout21.setVisibility(0);
                ConstraintLayout constraintLayout22 = this.A;
                if (constraintLayout22 == null) {
                    kotlin.jvm.internal.r.r("mainThreeLayout");
                    constraintLayout22 = null;
                }
                LinearLayout linearLayout = (LinearLayout) constraintLayout22.findViewById(R.id.translation_1);
                this.I = linearLayout;
                TextView textView10 = linearLayout != null ? (TextView) linearLayout.findViewById(R.id.translation_detail) : null;
                if (textView10 != null) {
                    textView10.setTextSize(2, this.V ? 16.0f : 12.0f);
                }
                ConstraintLayout constraintLayout23 = this.A;
                if (constraintLayout23 == null) {
                    kotlin.jvm.internal.r.r("mainThreeLayout");
                    constraintLayout23 = null;
                }
                this.F = (TextView) constraintLayout23.findViewById(R.id.translation_2);
                ConstraintLayout constraintLayout24 = this.A;
                if (constraintLayout24 == null) {
                    kotlin.jvm.internal.r.r("mainThreeLayout");
                    constraintLayout24 = null;
                }
                this.G = (TextView) constraintLayout24.findViewById(R.id.translation_3);
            }
            if (this.S) {
                if (G1()) {
                    HashMap map7 = this.Q;
                    TextView textView11 = this.E;
                    kotlin.jvm.internal.r.c(textView11, "null cannot be cast to non-null type android.view.View");
                    map7.put("photo", textView11);
                } else {
                    HashMap map8 = this.Q;
                    LinearLayout linearLayout2 = this.I;
                    kotlin.jvm.internal.r.c(linearLayout2, "null cannot be cast to non-null type android.view.View");
                    map8.put("photo", linearLayout2);
                }
                HashMap map9 = this.Q;
                TextView textView12 = this.F;
                kotlin.jvm.internal.r.c(textView12, "null cannot be cast to non-null type android.view.View");
                map9.put("dialog", textView12);
                HashMap map10 = this.Q;
                TextView textView13 = this.G;
                kotlin.jvm.internal.r.c(textView13, "null cannot be cast to non-null type android.view.View");
                map10.put("simultaneous", textView13);
            } else {
                if (G1()) {
                    TextView textView14 = this.E;
                    if (textView14 != null) {
                        textView14.setText(getString(R.string.dialog_translation));
                    }
                    TextView textView15 = this.E;
                    if (textView15 != null) {
                        textView15.setCompoundDrawablesWithIntrinsicBounds(getDrawable(R.drawable.icon_dialog_translation), (Drawable) null, (Drawable) null, (Drawable) null);
                    }
                    HashMap map11 = this.Q;
                    TextView textView16 = this.E;
                    kotlin.jvm.internal.r.c(textView16, "null cannot be cast to non-null type android.view.View");
                    map11.put("dialog", textView16);
                } else {
                    LinearLayout linearLayout3 = this.I;
                    TextView textView17 = linearLayout3 != null ? (TextView) linearLayout3.findViewById(R.id.translation_detail) : null;
                    if (textView17 != null) {
                        textView17.setText(getString(R.string.dialog_translation));
                    }
                    if (textView17 != null) {
                        textView17.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, getDrawable(R.drawable.icon_dialog_translation_40), (Drawable) null, (Drawable) null);
                    }
                    HashMap map12 = this.Q;
                    LinearLayout linearLayout4 = this.I;
                    kotlin.jvm.internal.r.c(linearLayout4, "null cannot be cast to non-null type android.view.View");
                    map12.put("dialog", linearLayout4);
                }
                TextView textView18 = this.F;
                if (textView18 != null) {
                    textView18.setText(getString(R.string.simultaneous));
                }
                TextView textView19 = this.F;
                if (textView19 != null) {
                    textView19.setCompoundDrawablesWithIntrinsicBounds(getDrawable(R.drawable.icon_simultaneous), (Drawable) null, (Drawable) null, (Drawable) null);
                }
                TextView textView20 = this.G;
                if (textView20 != null) {
                    textView20.setText(getString(R.string.document_translation));
                }
                TextView textView21 = this.G;
                if (textView21 != null) {
                    textView21.setCompoundDrawablesWithIntrinsicBounds(getDrawable(R.drawable.icon_document), (Drawable) null, (Drawable) null, (Drawable) null);
                }
                HashMap map13 = this.Q;
                TextView textView22 = this.F;
                kotlin.jvm.internal.r.c(textView22, "null cannot be cast to non-null type android.view.View");
                map13.put("simultaneous", textView22);
                HashMap map14 = this.Q;
                TextView textView23 = this.G;
                kotlin.jvm.internal.r.c(textView23, "null cannot be cast to non-null type android.view.View");
                map14.put("document", textView23);
            }
        }
        TextView textView24 = this.E;
        if (textView24 != null) {
            textView24.setTextSize(2, this.V ? 16.0f : 12.0f);
        }
        TextView textView25 = this.F;
        if (textView25 != null) {
            textView25.setTextSize(2, this.V ? 16.0f : 12.0f);
        }
        TextView textView26 = this.G;
        if (textView26 != null) {
            textView26.setTextSize(2, this.V ? 16.0f : 12.0f);
        }
        TextView textView27 = this.H;
        if (textView27 != null) {
            textView27.setTextSize(2, this.V ? 16.0f : 12.0f);
        }
        View view = (View) this.Q.get("photo");
        if (view != null) {
            view.setBackground(r.a.e(this, R.drawable.main_bg_photo));
        }
        View view2 = (View) this.Q.get("dialog");
        if (view2 != null) {
            view2.setBackground(r.a.e(this, R.drawable.main_bg_dialog));
        }
        View view3 = (View) this.Q.get("simultaneous");
        if (view3 != null) {
            view3.setBackground(r.a.e(this, R.drawable.main_bg_simultaneous));
        }
        View view4 = (View) this.Q.get("document");
        if (view4 != null) {
            view4.setBackground(r.a.e(this, R.drawable.main_bg_document));
        }
        View view5 = (View) this.Q.get("photo");
        if (view5 != null) {
            view5.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view6) {
                    MainActivity.q1(this.f6139a, view6);
                }
            });
        }
        View view6 = (View) this.Q.get("dialog");
        if (view6 != null) {
            view6.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view7) {
                    MainActivity.r1(this.f6400a, view7);
                }
            });
        }
        View view7 = (View) this.Q.get("simultaneous");
        if (view7 != null) {
            view7.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view8) {
                    MainActivity.s1(this.f6401a, view8);
                }
            });
        }
        View view8 = (View) this.Q.get("document");
        if (view8 != null) {
            view8.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view9) {
                    MainActivity.t1(this.f6402a, view9);
                }
            });
        }
        Iterator it = this.Q.entrySet().iterator();
        while (it.hasNext()) {
            u1((View) this.Q.get((String) ((Map.Entry) it.next()).getKey()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(MainActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String packageName = this$0.getPackageName();
        kotlin.jvm.internal.r.d(packageName, "getPackageName(...)");
        com.coloros.translate.ui.a.c(this$0, packageName);
        com.coloros.translate.utils.n.INSTANCE.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(MainActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.l();
        if (com.coloros.translate.repository.d.f5439a.b()) {
            if (this$0.G0().B()) {
                this$0.G0().E(this$0, true, this$0.new c());
            } else {
                c0.f7098a.d("MainActivity", "start jump DialogueTranslationActivity");
                this$0.startActivity(new Intent(this$0, (Class<?>) DialogTranslationActivity.class));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(MainActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.n.INSTANCE.p();
        if (com.coloros.translate.repository.d.f5439a.b()) {
            if (this$0.G0().B()) {
                this$0.G0().E(this$0, false, this$0.new d());
            } else {
                c0.f7098a.d("MainActivity", "jump to SimultaneousMainActivity");
                this$0.startActivity(new Intent(this$0, (Class<?>) SimultaneousMainActivity.class));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(MainActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.H1();
        com.coloros.translate.utils.n.INSTANCE.m();
    }

    private final void u1(View view) {
        final COUIPressFeedbackHelper cOUIPressFeedbackHelper = new COUIPressFeedbackHelper(view, 0);
        if (view != null) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.coloros.translate.ui.e
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return MainActivity.v1(cOUIPressFeedbackHelper, view2, motionEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v1(COUIPressFeedbackHelper feedbackUtils, View view, MotionEvent motionEvent) {
        kotlin.jvm.internal.r.e(feedbackUtils, "$feedbackUtils");
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            feedbackUtils.executeFeedbackAnimator(true);
        } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
            feedbackUtils.executeFeedbackAnimator(false);
        }
        return false;
    }

    private final void w1() {
        COUIToolbar cOUIToolbar = this.f6129u;
        COUIToolbar cOUIToolbar2 = null;
        if (cOUIToolbar == null) {
            kotlin.jvm.internal.r.r("toolbar");
            cOUIToolbar = null;
        }
        cOUIToolbar.inflateMenu(R.menu.main_toolbar_menu);
        COUIToolbar cOUIToolbar3 = this.f6129u;
        if (cOUIToolbar3 == null) {
            kotlin.jvm.internal.r.r("toolbar");
        } else {
            cOUIToolbar2 = cOUIToolbar3;
        }
        cOUIToolbar2.getMenu().findItem(R.id.setting).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.coloros.translate.ui.d
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return MainActivity.x1(this.f6157a, menuItem);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x1(MainActivity this$0, MenuItem it) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        c0.f7098a.d("MainActivity", "click setting");
        Intent intent = new Intent(this$0, (Class<?>) SettingActivity.class);
        try {
            r.a aVar = n8.r.Companion;
            this$0.startActivity(intent);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("MainActivity", "jumpToSetting failure， " + thM62exceptionOrNullimpl.getMessage());
        }
        com.coloros.translate.utils.n.INSTANCE.t();
        return true;
    }

    private final void y1() {
        View viewFindViewById = findViewById(R.id.toolbar);
        kotlin.jvm.internal.r.d(viewFindViewById, "findViewById(...)");
        this.f6129u = (COUIToolbar) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.choose_language);
        kotlin.jvm.internal.r.d(viewFindViewById2, "findViewById(...)");
        this.f6130v = (LinearLayout) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.percent_frame);
        kotlin.jvm.internal.r.d(viewFindViewById3, "findViewById(...)");
        COUIPercentWidthConstraintLayout cOUIPercentWidthConstraintLayout = (COUIPercentWidthConstraintLayout) viewFindViewById3;
        this.f6131w = cOUIPercentWidthConstraintLayout;
        RelativeLayout relativeLayout = null;
        if (cOUIPercentWidthConstraintLayout == null) {
            kotlin.jvm.internal.r.r("percentFrame");
            cOUIPercentWidthConstraintLayout = null;
        }
        cOUIPercentWidthConstraintLayout.setPercentIndentEnabled(o0.e());
        LinearLayout linearLayout = this.f6130v;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("chooseLanguageView");
            linearLayout = null;
        }
        View viewFindViewById4 = linearLayout.findViewById(R.id.language_ori);
        kotlin.jvm.internal.r.d(viewFindViewById4, "findViewById(...)");
        this.N = (TextView) viewFindViewById4;
        LinearLayout linearLayout2 = this.f6130v;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.r.r("chooseLanguageView");
            linearLayout2 = null;
        }
        View viewFindViewById5 = linearLayout2.findViewById(R.id.language_result);
        kotlin.jvm.internal.r.d(viewFindViewById5, "findViewById(...)");
        this.O = (TextView) viewFindViewById5;
        LinearLayout linearLayout3 = this.f6130v;
        if (linearLayout3 == null) {
            kotlin.jvm.internal.r.r("chooseLanguageView");
            linearLayout3 = null;
        }
        View viewFindViewById6 = linearLayout3.findViewById(R.id.switchButton);
        kotlin.jvm.internal.r.d(viewFindViewById6, "findViewById(...)");
        ImageView imageView = (ImageView) viewFindViewById6;
        this.M = imageView;
        if (imageView == null) {
            kotlin.jvm.internal.r.r("pickerSwitchButton");
            imageView = null;
        }
        imageView.setImageResource(R.drawable.switch_language_arrow);
        com.coloros.translate.o oVar = new com.coloros.translate.o(this);
        this.P = oVar;
        oVar.E(R.drawable.switch_language_arrow);
        findViewById(R.id.language_ori).setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.z1(this.f6403a, view);
            }
        });
        findViewById(R.id.language_result).setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.A1(this.f6404a, view);
            }
        });
        findViewById(R.id.switchButton).setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.B1(this.f6405a, view);
            }
        });
        View viewFindViewById7 = findViewById(R.id.mic);
        kotlin.jvm.internal.r.d(viewFindViewById7, "findViewById(...)");
        this.C = (ImageView) viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.input_text);
        kotlin.jvm.internal.r.d(viewFindViewById8, "findViewById(...)");
        TextView textView = (TextView) viewFindViewById8;
        this.D = textView;
        if (textView == null) {
            kotlin.jvm.internal.r.r("frameText");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.C1(this.f6406a, view);
            }
        });
        ImageView imageView2 = this.C;
        if (imageView2 == null) {
            kotlin.jvm.internal.r.r("mic");
            imageView2 = null;
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.D1(this.f6407a, view);
            }
        });
        TextView textView2 = this.D;
        if (textView2 == null) {
            kotlin.jvm.internal.r.r("frameText");
            textView2 = null;
        }
        textView2.setBackground(r.a.e(this, R.drawable.frame_main_text));
        TextView textView3 = this.D;
        if (textView3 == null) {
            kotlin.jvm.internal.r.r("frameText");
            textView3 = null;
        }
        textView3.setOutlineProvider(new e());
        TextView textView4 = this.D;
        if (textView4 == null) {
            kotlin.jvm.internal.r.r("frameText");
            textView4 = null;
        }
        textView4.setClipToOutline(true);
        View viewFindViewById9 = findViewById(R.id.main_normal_layout);
        kotlin.jvm.internal.r.d(viewFindViewById9, "findViewById(...)");
        this.f6134z = (ConstraintLayout) viewFindViewById9;
        View viewFindViewById10 = findViewById(R.id.main_three_function_layout);
        kotlin.jvm.internal.r.d(viewFindViewById10, "findViewById(...)");
        this.A = (ConstraintLayout) viewFindViewById10;
        View viewFindViewById11 = findViewById(R.id.entrance_flow);
        kotlin.jvm.internal.r.d(viewFindViewById11, "findViewById(...)");
        this.B = (Flow) viewFindViewById11;
        p1();
        View viewFindViewById12 = findViewById(R.id.screen_translation);
        kotlin.jvm.internal.r.d(viewFindViewById12, "findViewById(...)");
        RelativeLayout relativeLayout2 = (RelativeLayout) viewFindViewById12;
        this.f6132x = relativeLayout2;
        if (relativeLayout2 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout2 = null;
        }
        ((ImageView) relativeLayout2.findViewById(R.id.img)).setImageResource(R.drawable.icon_screen_translation);
        RelativeLayout relativeLayout3 = this.f6132x;
        if (relativeLayout3 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout3 = null;
        }
        ((TextView) relativeLayout3.findViewById(R.id.title)).setText(getResources().getString(R.string.screen_translation));
        RelativeLayout relativeLayout4 = this.f6132x;
        if (relativeLayout4 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout4 = null;
        }
        ((TextView) relativeLayout4.findViewById(R.id.sub_title)).setText(getResources().getString(R.string.screen_translation_content_new));
        RelativeLayout relativeLayout5 = this.f6132x;
        if (relativeLayout5 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout5 = null;
        }
        relativeLayout5.findViewById(R.id.item_divider).setVisibility(this.U ? 0 : 8);
        RelativeLayout relativeLayout6 = this.f6132x;
        if (relativeLayout6 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout6 = null;
        }
        relativeLayout6.setBackground(r.a.e(this, this.U ? R.drawable.circle_rectangle_bg_up : R.drawable.selector_circle_rectangle_bg));
        RelativeLayout relativeLayout7 = this.f6132x;
        if (relativeLayout7 == null) {
            kotlin.jvm.internal.r.r("screenTranslationLayout");
            relativeLayout7 = null;
        }
        relativeLayout7.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.E1(this.f6408a, view);
            }
        });
        View viewFindViewById13 = findViewById(R.id.caption_translation);
        kotlin.jvm.internal.r.d(viewFindViewById13, "findViewById(...)");
        RelativeLayout relativeLayout8 = (RelativeLayout) viewFindViewById13;
        this.f6133y = relativeLayout8;
        if (relativeLayout8 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout8 = null;
        }
        ((ImageView) relativeLayout8.findViewById(R.id.img)).setImageResource(R.drawable.icon_caption_translation);
        RelativeLayout relativeLayout9 = this.f6133y;
        if (relativeLayout9 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout9 = null;
        }
        ((TextView) relativeLayout9.findViewById(R.id.title)).setText(getResources().getString(R.string.caption_translation));
        RelativeLayout relativeLayout10 = this.f6133y;
        if (relativeLayout10 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout10 = null;
        }
        ((TextView) relativeLayout10.findViewById(R.id.sub_title)).setText(getResources().getString(R.string.caption_translation_content_new));
        RelativeLayout relativeLayout11 = this.f6133y;
        if (relativeLayout11 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout11 = null;
        }
        relativeLayout11.findViewById(R.id.item_divider).setVisibility(8);
        RelativeLayout relativeLayout12 = this.f6133y;
        if (relativeLayout12 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout12 = null;
        }
        relativeLayout12.setBackground(r.a.e(this, R.drawable.circle_rectangle_bg_down));
        RelativeLayout relativeLayout13 = this.f6133y;
        if (relativeLayout13 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
            relativeLayout13 = null;
        }
        relativeLayout13.setOnClickListener(new View.OnClickListener() { // from class: com.coloros.translate.ui.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.F1(this.f6140a, view);
            }
        });
        if (this.U) {
            RelativeLayout relativeLayout14 = this.f6133y;
            if (relativeLayout14 == null) {
                kotlin.jvm.internal.r.r("captionTranslationLayout");
            } else {
                relativeLayout = relativeLayout14;
            }
            relativeLayout.setVisibility(0);
            return;
        }
        RelativeLayout relativeLayout15 = this.f6133y;
        if (relativeLayout15 == null) {
            kotlin.jvm.internal.r.r("captionTranslationLayout");
        } else {
            relativeLayout = relativeLayout15;
        }
        relativeLayout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(MainActivity this$0, View view) {
        com.coloros.translate.o oVar;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (j.a.c(com.coloros.translate.utils.j.f7127a, 0L, 1, null) || (oVar = this$0.P) == null) {
            return;
        }
        oVar.G(true);
    }

    @Override // com.coloros.translate.base.BasePrivateActivity
    public void F0(Intent intent) {
        Object objM59constructorimpl;
        String str;
        String string;
        Object objM59constructorimpl2;
        super.F0(intent);
        com.coloros.translate.observer.e.INSTANCE.l(n0());
        if (intent != null) {
            String action = intent.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode != -1792433254) {
                    if (iHashCode != 898219540) {
                        if (iHashCode == 1477304776 && action.equals("coloros.intent.action.TRANSLATION.COMPASS")) {
                            com.coloros.translate.utils.n.INSTANCE.K("5");
                            return;
                        }
                    } else if (action.equals("coloros.intent.action.TRANSLATION.ASSISTANT")) {
                        com.coloros.translate.utils.n.INSTANCE.K("3");
                        return;
                    }
                } else if (action.equals("coloros.intent.action.TRANSLATION_MAIN_PAGE")) {
                    try {
                        r.a aVar = n8.r.Companion;
                        String stringExtra = intent.getStringExtra("request_package");
                        if (stringExtra == null) {
                            stringExtra = "";
                        }
                        objM59constructorimpl2 = n8.r.m59constructorimpl(stringExtra);
                    } catch (Throwable th) {
                        r.a aVar2 = n8.r.Companion;
                        objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th));
                    }
                    String str2 = (String) (n8.r.m65isFailureimpl(objM59constructorimpl2) ? null : objM59constructorimpl2);
                    str = str2 != null ? str2 : "";
                    kotlin.jvm.internal.r.b(str);
                    if (kotlin.jvm.internal.r.a(str, "com.redteamobile.roaming")) {
                        com.coloros.translate.utils.n.INSTANCE.K("6");
                        return;
                    } else {
                        com.coloros.translate.utils.n.INSTANCE.K("4");
                        return;
                    }
                }
            }
            try {
                r.a aVar3 = n8.r.Companion;
                Bundle extras = intent.getExtras();
                if (extras == null || (string = extras.getString("from_package")) == null) {
                    string = "";
                }
                objM59constructorimpl = n8.r.m59constructorimpl(string);
            } catch (Throwable th2) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th2));
            }
            if (n8.r.m65isFailureimpl(objM59constructorimpl)) {
                objM59constructorimpl = null;
            }
            String str3 = (String) objM59constructorimpl;
            str = str3 != null ? str3 : "";
            kotlin.jvm.internal.r.b(str);
            if (kotlin.jvm.internal.r.a(str, "com.coloros.smartsidebar")) {
                com.coloros.translate.utils.n.INSTANCE.K("2");
                return;
            }
            if (!intent.getBooleanExtra("fromSecondPage", false)) {
                com.coloros.translate.utils.n.L(com.coloros.translate.utils.n.INSTANCE, null, 1, null);
                return;
            }
            String stringExtra2 = intent.getStringExtra("fromSecondAction");
            c0.f7098a.d("MainActivity", "dispatchIntentActions fromSecondPage:" + stringExtra2);
            com.coloros.translate.utils.n.INSTANCE.K("4");
        }
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) {
        c0.f7098a.i("MainActivity", "onLanguageChanged");
        kotlinx.coroutines.g.b(d0.a(kotlinx.coroutines.o0.c()), null, null, new j(null), 3, null);
    }

    @Override // com.coloros.translate.base.BaseActivity
    public Class k0() {
        return q.class;
    }

    @Override // com.coloros.translate.base.BaseActivity
    protected int l0() {
        return R.layout.activity_main;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        c0.f7098a.d("MainActivity", "onBackPressed");
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        try {
            r.a aVar = n8.r.Companion;
            if (this.f6134z != null) {
                p1();
            }
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(n8.s.a(th));
        }
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6128t = findViewById(R.id.main_layout);
        c0.a aVar = c0.f7098a;
        aVar.d("MainActivity", "onCreate");
        if (!kotlin.jvm.internal.r.a(Locale.getDefault().getLanguage(), "zh")) {
            this.V = false;
            aVar.i("MainActivity", "onCreate language is not zh");
        }
        int iA = z.g(null, 1, null) ? com.coloros.translate.utils.j.f7127a.a(8.0f) : o0.e() ? com.coloros.translate.utils.j.f7127a.a(24.0f) : 0;
        View view = this.f6128t;
        if (view != null) {
            view.setPadding(iA, 0, iA, 0);
        }
        o1();
        y1();
        w1();
        m1();
    }

    @Override // com.coloros.translate.base.BasePrivateActivity, com.coloros.translate.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c0.f7098a.d("MainActivity", "onDestroy");
        com.coloros.translate.observer.e.INSTANCE.n(n0());
        com.coloros.translate.utils.n.INSTANCE.j0(q0());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        n1().l();
        com.coloros.translate.permission.a.f5407c.a().h();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.Z = getWindowManager().getDefaultDisplay().getRefreshRate();
        LinearLayout linearLayout = this.f6130v;
        if (linearLayout == null) {
            kotlin.jvm.internal.r.r("chooseLanguageView");
            linearLayout = null;
        }
        linearLayout.setVisibility(0);
        n1().O(this, "text");
    }

    public final void setRootView(View view) {
        this.f6128t = view;
    }
}
