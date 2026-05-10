package com.coloros.translate.ui.texttranslation;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.t0;
import androidx.lifecycle.v0;
import com.coloros.translate.LanguageManager;
import com.coloros.translate.R;
import com.coloros.translate.panel.TextTranslationPanel;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.utils.b1;
import com.coloros.translate.utils.c0;
import com.coui.appcompat.theme.COUIThemeOverlay;
import com.oplus.aiunit.antispam.client.AntiSpamClient;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.zoomwindow.OplusZoomWindowManager;
import f2.a;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public final class TextTranslationPanelActivity extends AppCompatActivity implements com.coloros.translate.d, f2.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final a f6943u = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6944a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6946c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6947f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.coloros.translate.o f6951k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f6952l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.coloros.translate.b f6953m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.coloros.translate.b f6954n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f6955o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f6956p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Runnable f6957q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f6958r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f6959s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Boolean f6960t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6945b = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n8.j f6948h = n8.k.b(new i());

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n8.j f6949i = n8.k.b(new j());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n8.j f6950j = n8.k.b(b.INSTANCE);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LanguageManager mo8invoke() {
            return LanguageManager.f4727w.b();
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.l {
        c() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Boolean) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(Boolean bool) {
            TextTranslationPanel textTranslationPanelO0 = TextTranslationPanelActivity.this.o0();
            kotlin.jvm.internal.r.b(bool);
            textTranslationPanelO0.A0(bool.booleanValue());
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
            TextTranslationPanel textTranslationPanelO0 = TextTranslationPanelActivity.this.o0();
            kotlin.jvm.internal.r.b(bool);
            textTranslationPanelO0.B0(bool.booleanValue());
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.l {

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ String $it;
            final /* synthetic */ boolean $sourcePlayerEnable;
            final /* synthetic */ TextTranslationPanelActivity this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(TextTranslationPanelActivity textTranslationPanelActivity, String str, boolean z10) {
                super(0);
                this.this$0 = textTranslationPanelActivity;
                this.$it = str;
                this.$sourcePlayerEnable = z10;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                TextTranslationPanel textTranslationPanelO0 = this.this$0.o0();
                String str = this.this$0.f6946c;
                if (str == null) {
                    str = "";
                }
                a.C0140a.c(textTranslationPanelO0, str, this.$it, this.$sourcePlayerEnable, false, 8, null);
            }
        }

        e() {
            super(1);
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return n8.h0.INSTANCE;
        }

        public final void invoke(String str) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationPanelActivity", "observe: result = " + aVar.g(str));
            if (str != null) {
                TextTranslationPanelActivity textTranslationPanelActivity = TextTranslationPanelActivity.this;
                textTranslationPanelActivity.o0().A0(false);
                textTranslationPanelActivity.o0().B0(false);
                if (str.length() != 0) {
                    textTranslationPanelActivity.o0().a0(new a(textTranslationPanelActivity, str, textTranslationPanelActivity.n0().m() != com.coloros.translate.b.AUTO));
                    return;
                }
                textTranslationPanelActivity.z0(textTranslationPanelActivity.n0().m(), textTranslationPanelActivity.n0().o());
                aVar.e("TextTranslationPanelActivity", "observe: result is empty: " + aVar.g(str));
            }
        }
    }

    static final class f extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        f(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return TextTranslationPanelActivity.this.new f(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.b.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8.s.b(obj);
            TextTranslationPanelActivity.this.p0().C(AISettings.isDetectAvailable(TextTranslationPanelActivity.this, AntiSpamClient.Companion.getDetectName(), null));
            return n8.h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((f) create(c0Var, dVar)).invokeSuspend(n8.h0.INSTANCE);
        }
    }

    static final class g implements androidx.lifecycle.b0, kotlin.jvm.internal.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ w8.l f6961a;

        g(w8.l function) {
            kotlin.jvm.internal.r.e(function, "function");
            this.f6961a = function;
        }

        @Override // kotlin.jvm.internal.l
        public final n8.g a() {
            return this.f6961a;
        }

        @Override // androidx.lifecycle.b0
        public final /* synthetic */ void b(Object obj) {
            this.f6961a.invoke(obj);
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

    public static final class h implements e2.b {
        h() {
        }

        @Override // e2.b
        public void a() {
            TextTranslationPanelActivity.this.o0().U();
            TextTranslationPanelActivity.this.t0();
        }

        @Override // e2.b
        public void b() {
            TextTranslationPanelActivity.this.f6947f = true;
            TextTranslationPanelActivity.x0(TextTranslationPanelActivity.this, false, 1, null);
        }

        @Override // e2.b
        public void c() {
        }
    }

    static final class i extends kotlin.jvm.internal.s implements w8.a {
        i() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TextTranslationPanel mo8invoke() {
            return new TextTranslationPanel(TextTranslationPanelActivity.this);
        }
    }

    static final class j extends kotlin.jvm.internal.s implements w8.a {
        j() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final m0 mo8invoke() {
            return (m0) v0.b(TextTranslationPanelActivity.this).b(m0.class);
        }
    }

    private final void A0(String str) {
        if (str.length() > 1500) {
            b1.c(R.string.tip_max_length, 0, 2, null);
            String strSubstring = str.substring(0, 1500);
            kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
            u0(strSubstring);
        } else {
            u0(str);
        }
        m0 m0VarP0 = p0();
        String str2 = this.f6946c;
        if (str2 == null) {
            str2 = "";
        }
        m0VarP0.I(str2);
    }

    private final void m0() {
        if (com.coloros.translate.base.a.INSTANCE.b()) {
            v0();
        } else {
            this.f6947f = true;
            x0(this, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LanguageManager n0() {
        return (LanguageManager) this.f6950j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextTranslationPanel o0() {
        return (TextTranslationPanel) this.f6948h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final m0 p0() {
        return (m0) this.f6949i.getValue();
    }

    private final void q0() {
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.getDecorView().setSystemUiVisibility(1024);
        }
    }

    private final boolean r0() {
        if (!com.coloros.translate.utils.z.a(this)) {
            return false;
        }
        boolean zF = com.coloros.translate.utils.z.f(this);
        Boolean bool = this.f6960t;
        if (bool == null) {
            this.f6960t = Boolean.valueOf(zF);
            return false;
        }
        boolean z10 = !kotlin.jvm.internal.r.a(bool, Boolean.valueOf(zF));
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "isFoldScreenSizeChanged: foldStateChanged=" + z10 + ", lastFoldState=" + this.f6960t + ", currentFoldState=" + zF);
        this.f6960t = Boolean.valueOf(zF);
        return z10;
    }

    private final void s0() {
        p0().z().g(this, new g(new c()));
        p0().A().g(this, new g(new d()));
        p0().w().g(this, new g(new e()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
        View decorView;
        Runnable runnable = this.f6957q;
        if (runnable != null) {
            Window window = getWindow();
            if (window != null && (decorView = window.getDecorView()) != null) {
                decorView.removeCallbacks(runnable);
            }
            this.f6957q = null;
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "readyToFinish: cancelled pending show dialog task");
        }
        if (this.f6944a) {
            setResult(-1);
        }
        finish();
        overridePendingTransition(0, 0);
    }

    private final void u0(String str) {
        if (str != null && str.length() != 0) {
            str = new kotlin.text.n("^[\\n\\r]+|[\\n\\r]+$").replace(kotlin.text.r.N0(str).toString(), "");
        }
        this.f6946c = str;
    }

    private final void v0() {
        com.coloros.translate.base.a.INSTANCE.a(this, 2, new h());
    }

    private final void w0(final boolean z10) {
        View decorView;
        View decorView2;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationPanelActivity", "startTextTranslation:" + this.f6952l);
        if (!com.coloros.translate.repository.d.f5439a.b()) {
            aVar.q("TextTranslationPanelActivity", "startTextTranslation:checkAiDownload and finish");
            t0();
            return;
        }
        if (isFinishing() || isDestroyed()) {
            aVar.q("TextTranslationPanelActivity", "startTextTranslation: Activity is finishing or destroyed, skip show dialog");
            return;
        }
        Runnable runnable = this.f6957q;
        if (runnable != null) {
            Window window = getWindow();
            if (window != null && (decorView2 = window.getDecorView()) != null) {
                decorView2.removeCallbacks(runnable);
            }
            this.f6957q = null;
        }
        Runnable runnable2 = new Runnable() { // from class: com.coloros.translate.ui.texttranslation.l0
            @Override // java.lang.Runnable
            public final void run() {
                TextTranslationPanelActivity.y0(this.f7001a, z10);
            }
        };
        this.f6957q = runnable2;
        Window window2 = getWindow();
        if (window2 == null || (decorView = window2.getDecorView()) == null) {
            return;
        }
        decorView.post(runnable2);
    }

    static /* synthetic */ void x0(TextTranslationPanelActivity textTranslationPanelActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        textTranslationPanelActivity.w0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(TextTranslationPanelActivity this$0, boolean z10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.isFinishing() || this$0.isDestroyed()) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelActivity", "startTextTranslation: Activity is finishing or destroyed after post, skip show dialog");
            this$0.f6957q = null;
            return;
        }
        if (this$0.getWindow() == null) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelActivity", "startTextTranslation: Window is null, skip show dialog");
            this$0.f6957q = null;
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            TextTranslationPanel textTranslationPanelO0 = this$0.o0();
            String string = this$0.getResources().getString(R.string.app_name_new);
            kotlin.jvm.internal.r.d(string, "getString(...)");
            a.C0140a.a(textTranslationPanelO0, string, R.style.AppNoTitleTheme, null, false, 12, null);
            if (z10) {
                this$0.o0().w0();
            }
            if (this$0.f6952l) {
                com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "startTextTranslation doTranslate!!!!!!");
                this$0.p0().s();
            }
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("TextTranslationPanelActivity", "startTextTranslation: Failed to show dialog : " + thM62exceptionOrNullimpl);
            this$0.f6957q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(com.coloros.translate.b bVar, com.coloros.translate.b bVar2) {
        Object objM59constructorimpl;
        if (!com.coloros.translate.observer.e.INSTANCE.k()) {
            a.C0140a.b(o0(), null, 1, null);
            return;
        }
        String languageCode = bVar.getLanguageCode();
        String languageCode2 = bVar2.getLanguageCode();
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "showErrorView:" + languageCode + "," + languageCode2);
        String string = getResources().getString(R$string.translate_unified_no_network);
        kotlin.jvm.internal.r.d(string, "getString(...)");
        int languageResIdByModel = com.coloros.translate.engine.offline.g.getLanguageResIdByModel(languageCode + languageCode2, languageCode2 + languageCode);
        if (languageResIdByModel == 0) {
            o0().c(string);
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            String string2 = getResources().getString(languageResIdByModel);
            kotlin.jvm.internal.r.d(string2, "getString(...)");
            String string3 = getResources().getString(com.coloros.translate.base.R$string.download_offline_package_tips, string2);
            kotlin.jvm.internal.r.d(string3, "getString(...)");
            o0().c(string3);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.c0.f7098a.e("TextTranslationPanelActivity", "showErrorView:" + thM62exceptionOrNullimpl);
            o0().c(string);
        }
    }

    @Override // f2.b
    public void d() {
        x9.c.c().k(new com.coloros.translate.utils.d0("TextTranslationPanelWantToPlayTts"));
        p0().E();
    }

    @Override // f2.b
    public void h() {
        x9.c.c().k(new com.coloros.translate.utils.d0("TextTranslationPanelWantToPlayTts"));
        p0().D();
    }

    @Override // com.coloros.translate.d
    public void i(Boolean bool) {
        String string;
        String string2;
        CharSequence charSequence;
        this.f6952l = true;
        p0().F();
        com.coloros.translate.b bVarM = n0().m();
        com.coloros.translate.b bVarO = n0().o();
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationPanelActivity", "onLanguageChanged:" + bVarM.getLanguageCode() + "," + bVarO.getLanguageCode());
        com.coloros.translate.b bVar = com.coloros.translate.b.NONE;
        if (bVarM == bVar || bVarO == bVar) {
            z0(bVarM, bVarO);
            return;
        }
        String language = Locale.getDefault().getLanguage();
        com.coloros.translate.b bVar2 = com.coloros.translate.b.CHINESE;
        if (kotlin.jvm.internal.r.a(language, bVar2.getLanguageCode())) {
            string = getResources().getString(bVarM.getFullNameResId());
            kotlin.jvm.internal.r.d(string, "getString(...)");
            string2 = getResources().getString(bVarO.getFullNameResId());
            kotlin.jvm.internal.r.d(string2, "getString(...)");
        } else {
            string = getResources().getString(bVarM.getSimpleNameResId());
            kotlin.jvm.internal.r.d(string, "getString(...)");
            string2 = getResources().getString(bVarO.getSimpleNameResId());
            kotlin.jvm.internal.r.d(string2, "getString(...)");
        }
        if (n0().B()) {
            if (kotlin.jvm.internal.r.a(bVarM.getLanguageCode(), bVar2.getLanguageCode())) {
                string = getResources().getString(R.string.chinese);
                kotlin.jvm.internal.r.d(string, "getString(...)");
            }
            String languageCode = bVarM.getLanguageCode();
            com.coloros.translate.b bVar3 = com.coloros.translate.b.SPANISH;
            if (kotlin.jvm.internal.r.a(languageCode, bVar3.getLanguageCode())) {
                string = getResources().getString(R.string.spanish_os15);
                kotlin.jvm.internal.r.d(string, "getString(...)");
            }
            if (kotlin.jvm.internal.r.a(bVarO.getLanguageCode(), bVar2.getLanguageCode())) {
                string2 = getResources().getString(R.string.chinese);
                kotlin.jvm.internal.r.d(string2, "getString(...)");
            }
            if (kotlin.jvm.internal.r.a(bVarO.getLanguageCode(), bVar3.getLanguageCode())) {
                string2 = getResources().getString(R.string.spanish_os15);
                kotlin.jvm.internal.r.d(string2, "getString(...)");
            }
        }
        o0().F0(string, string2, bVarM != com.coloros.translate.b.AUTO);
        if (this.f6953m == bVarM && this.f6954n == bVarO && (charSequence = (CharSequence) p0().w().e()) != null && charSequence.length() != 0) {
            aVar.q("TextTranslationPanelActivity", "onLanguageChanged: language is not change");
            return;
        }
        this.f6953m = bVarM;
        this.f6954n = bVarO;
        p0().H(bVarM, bVarO);
        if (this.f6947f) {
            x0(this, false, 1, null);
        }
    }

    @Override // f2.b
    public void k() {
        p0().r(this);
    }

    @Override // f2.b
    public void m(boolean z10) {
        p0().F();
        if (this.f6951k == null) {
            com.coloros.translate.o oVar = new com.coloros.translate.o(this);
            this.f6951k = oVar;
            oVar.E(R.drawable.right_single_arrow);
        }
        com.coloros.translate.o oVar2 = this.f6951k;
        if (oVar2 != null) {
            oVar2.G(z10);
        }
    }

    @Override // f2.b
    public void n() {
        p0().F();
        com.coloros.translate.o oVar = this.f6951k;
        if (oVar != null) {
            oVar.t();
        }
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onPanelDismiss");
        t0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        p0().F();
        int i10 = newConfig.orientation;
        int i11 = newConfig.uiMode & 48;
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationPanel", "onConfigurationChanged: currentNightMode=" + this.f6959s + ", newNightMode=" + i11);
        int i12 = this.f6958r;
        boolean z10 = (i12 == 0 || i12 == i10 || (i10 != 2 && i10 != 1)) ? false : true;
        boolean z11 = this.f6959s != i11;
        if (z10 || z11) {
            aVar.d("TextTranslationPanelActivity", "onConfigurationChanged: screen rotation or night mode changed, closing panel");
            n();
        } else {
            this.f6958r = i10;
            this.f6959s = i11;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        q0();
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        Window window = getWindow();
        kotlin.jvm.internal.r.d(window, "getWindow(...)");
        com.coloros.translate.utils.f0.b(window);
        string = "";
        if (getIntent().hasExtra("extra_source")) {
            String stringExtra = getIntent().getStringExtra("extra_from_package");
            if (stringExtra == null) {
                stringExtra = "";
            }
            if (kotlin.jvm.internal.r.a(stringExtra, "com.oplus.aiwriter")) {
                o0().u0(false);
            } else {
                o0().u0(true);
            }
            String stringExtra2 = getIntent().getStringExtra("extra_source");
            if (stringExtra2 == null) {
                stringExtra2 = "";
            }
            String stringExtra3 = getIntent().getStringExtra("extra_type");
            this.f6945b = stringExtra3 != null ? stringExtra3 : "";
            this.f6944a = getIntent().getBooleanExtra("extra_result", false);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onCreate:extraPackage :" + stringExtra + "," + this.f6945b);
            string = stringExtra2;
        } else if (getIntent().hasExtra("android.intent.extra.PROCESS_TEXT")) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onCreate:EXTRA_PROCESS_TEXT");
            this.f6945b = "7";
            CharSequence charSequenceExtra = getIntent().getCharSequenceExtra("android.intent.extra.PROCESS_TEXT");
            if (charSequenceExtra != null) {
                string = charSequenceExtra.toString();
            }
        } else if (getIntent().hasExtra("android.intent.extra.TEXT")) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onCreate:EXTRA_TEXT");
            this.f6945b = "7";
            CharSequence charSequenceExtra2 = getIntent().getCharSequenceExtra("android.intent.extra.TEXT");
            if (charSequenceExtra2 != null) {
                string = charSequenceExtra2.toString();
            }
        }
        if (string.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelActivity", "onCreate:sourceText is empty");
            t0();
            return;
        }
        this.f6955o = getIntent().getStringExtra("src_language");
        String stringExtra4 = getIntent().getStringExtra("dist_language");
        this.f6956p = stringExtra4;
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onCreate: defaultLanguageCode:" + this.f6955o + "," + stringExtra4);
        o0().t0(this);
        kotlinx.coroutines.g.b(t0.a(p0()), kotlinx.coroutines.o0.b(), null, new f(null), 2, null);
        A0(string);
        m0();
        s0();
        if (this.f6945b.length() > 0) {
            com.coloros.translate.utils.n.INSTANCE.F(this.f6945b);
        }
        x9.c.c().o(this);
        this.f6958r = getResources().getConfiguration().orientation;
        this.f6959s = getResources().getConfiguration().uiMode & 48;
        if (com.coloros.translate.utils.z.a(this)) {
            this.f6960t = Boolean.valueOf(com.coloros.translate.utils.z.f(this));
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onDestroy");
        if (o0().r0()) {
            o0().U();
        }
        com.coloros.translate.o oVar = this.f6951k;
        if (oVar != null) {
            oVar.t();
        }
        x9.c.c().q(this);
        p0().B(this);
    }

    @x9.m(threadMode = ThreadMode.MAIN)
    public final void onMessageEvent(com.coloros.translate.utils.d0 event) {
        kotlin.jvm.internal.r.e(event, "event");
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "Received eventbus: " + event.a());
        if (kotlin.jvm.internal.r.a(event.a(), "TextTranslationWantToPlayTts")) {
            p0().F();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        String string;
        kotlin.jvm.internal.r.e(intent, "intent");
        super.onNewIntent(intent);
        string = "";
        if (intent.hasExtra("extra_source")) {
            String stringExtra = intent.getStringExtra("extra_from_package");
            if (stringExtra == null) {
                stringExtra = "";
            }
            if (kotlin.jvm.internal.r.a(stringExtra, "com.oplus.aiwriter")) {
                o0().u0(false);
            } else {
                o0().u0(true);
            }
            String stringExtra2 = intent.getStringExtra("extra_source");
            string = stringExtra2 != null ? stringExtra2 : "";
            this.f6944a = intent.getBooleanExtra("extra_result", false);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onNewIntent:extraPackage :" + stringExtra);
        } else if (intent.hasExtra("android.intent.extra.PROCESS_TEXT")) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onNewIntent:EXTRA_PROCESS_TEXT");
            CharSequence charSequenceExtra = intent.getCharSequenceExtra("android.intent.extra.PROCESS_TEXT");
            if (charSequenceExtra != null) {
                string = charSequenceExtra.toString();
            }
        } else if (intent.hasExtra("android.intent.extra.TEXT")) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onNewIntent:EXTRA_TEXT");
            CharSequence charSequenceExtra2 = intent.getCharSequenceExtra("android.intent.extra.TEXT");
            if (charSequenceExtra2 != null) {
                string = charSequenceExtra2.toString();
            }
        }
        if (!this.f6947f) {
            com.coloros.translate.utils.c0.f7098a.e("TextTranslationPanelActivity", "onNewIntent:isGrantedPrivacyPolicy is false");
            return;
        }
        A0(string);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onNewIntent:isGrantedPrivacyPolicy is true startTextTranslation");
        x0(this, false, 1, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationPanelActivity", "onPause");
        if (r0()) {
            aVar.d("TextTranslationPanelActivity", "onPause: Detected foldable screen size change due to fold/unfold");
            t0();
        }
        n0().l();
        p0().F();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("TextTranslationPanelActivity", "onResume");
        if (this.f6947f && com.coloros.translate.base.a.INSTANCE.b()) {
            aVar.q("TextTranslationPanelActivity", "PrivacyPolicy is changed,force finish");
            t0();
            return;
        }
        n0().R(this.f6955o, this.f6956p);
        n0().O(this, "text_panel");
        if (o0() == null || !o0().r0()) {
            return;
        }
        OplusZoomWindowManager.getInstance().hideZoomWindow(12);
    }

    @Override // f2.b
    public void r() {
        p0().F();
        LanguageManager.f4727w.b().U();
    }

    @Override // f2.b
    public void s() {
        p0().t();
    }

    @Override // f2.b
    public void y() {
        com.coloros.translate.b bVarM = n0().m();
        com.coloros.translate.b bVarO = n0().o();
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "onRetryClicked:" + bVarM.getLanguageCode() + "," + bVarO.getLanguageCode());
        com.coloros.translate.b bVar = com.coloros.translate.b.NONE;
        if (bVarM == bVar || bVarO == bVar) {
            z0(bVarM, bVarO);
        } else {
            x0(this, false, 1, null);
        }
    }

    @Override // f2.b
    public void z() {
        if (!o0().r0()) {
            n();
        } else {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelActivity", "readyToFinish: panel is showing, waiting for dismiss");
            o0().U();
        }
    }
}
