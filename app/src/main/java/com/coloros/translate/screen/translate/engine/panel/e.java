package com.coloros.translate.screen.translate.engine.panel;

import android.content.Context;
import android.os.RemoteException;
import com.coloros.translate.panel.TextTranslationPanel;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.R$style;
import com.coloros.translate.screen.translate.engine.language.j;
import com.coloros.translate.screen.translate.engine.panel.e;
import com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener;
import com.coloros.translate.screen.translate.engine.translate.TextTranslateParams;
import com.coloros.translate.screen.translate.engine.translate.TranslateManager;
import com.coloros.translate.screen.translate.engine.tts.d;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.screen.utils.u;
import com.coloros.translate.screen.utils.v;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.o;
import com.oplus.aiunit.translation.model.ImageTranslateResult;
import f2.a;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class e implements com.coloros.translate.screen.translate.engine.language.e, f2.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final a f5594t = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w8.a f5596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w8.a f5597c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.picker.e f5598f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f5599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f5600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ExecutorService f5601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.tts.d f5602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f5603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f5604m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d.b f5605n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d.b f5606o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.language.a f5607p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.coloros.translate.screen.translate.engine.language.a f5608q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Pattern f5609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final n8.j f5610s;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements ImageTranslateListener {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(e this$0, int i10, String message, String requestId) {
            r.e(this$0, "this$0");
            r.e(message, "$message");
            r.e(requestId, "$requestId");
            if (com.coloros.translate.observer.e.INSTANCE.k()) {
                this$0.w().c(this$0.v().getResources().getString(R$string.translate_unified_no_network));
            } else {
                a.C0140a.b(this$0.w(), null, 1, null);
            }
            n.INSTANCE.g0(i10, requestId, "screen", i10 == 100030, "[SDK][" + (i10 == 100030 ? "SDK_SENSITIVE" : "SDK_ERROR") + "]" + message);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(e this$0, String result, int i10, boolean z10, String requestId) {
            r.e(this$0, "this$0");
            r.e(result, "$result");
            r.e(requestId, "$requestId");
            this$0.H(this$0.f5599h, result);
            n.INSTANCE.V(requestId, "screen", i10 == 100030 || !z10);
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onError(final String requestId, final String message, final int i10) {
            r.e(requestId, "requestId");
            r.e(message, "message");
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.g
                @Override // java.lang.Runnable
                public final void run() {
                    e.b.c(eVar, i10, message, requestId);
                }
            });
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onImageResult(String requestId, ImageTranslateResult result) {
            r.e(requestId, "requestId");
            r.e(result, "result");
        }

        @Override // com.coloros.translate.screen.translate.engine.translate.ImageTranslateListener
        public void onTextResult(final String requestId, final String result, final int i10, final boolean z10) {
            r.e(requestId, "requestId");
            r.e(result, "result");
            c0.f7098a.d("ScreenTranslationPanel", "doTranslate: onTextResult " + requestId);
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.f
                @Override // java.lang.Runnable
                public final void run() {
                    e.b.d(eVar, result, i10, z10, requestId);
                }
            });
        }
    }

    public static final class c extends d.b {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(e this$0) {
            r.e(this$0, "this$0");
            c0.f7098a.q("ScreenTranslationPanel", "onClickFromLanguageSpeaker:onStatus");
            this$0.f5603l = false;
            this$0.w().B0(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(e this$0) {
            r.e(this$0, "this$0");
            c0.f7098a.d("ScreenTranslationPanel", "onClickFromLanguageSpeaker:onStopPlay");
            this$0.f5603l = false;
            this$0.w().A0(false);
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStart() {
            super.onStart();
            c0.f7098a.d("ScreenTranslationPanel", "onClickFromLanguageSpeaker:onStart");
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            super.onStatus(i10, str);
            com.coloros.translate.screen.translate.engine.tts.d dVar = e.this.f5602k;
            if (dVar != null) {
                dVar.h(i10, str);
            }
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.h
                @Override // java.lang.Runnable
                public final void run() {
                    e.c.c(eVar);
                }
            });
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStop() {
            super.onStop();
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.i
                @Override // java.lang.Runnable
                public final void run() {
                    e.c.d(eVar);
                }
            });
        }
    }

    public static final class d extends d.b {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(e this$0) {
            r.e(this$0, "this$0");
            c0.f7098a.q("ScreenTranslationPanel", "onClickToLanguageSpeaker:onStatus");
            this$0.f5604m = false;
            this$0.w().B0(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(e this$0) {
            r.e(this$0, "this$0");
            c0.f7098a.d("ScreenTranslationPanel", "onClickToLanguageSpeaker:onStopPlay");
            this$0.f5604m = false;
            this$0.w().B0(false);
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStart() {
            super.onStart();
            c0.f7098a.d("ScreenTranslationPanel", "onClickToLanguageSpeaker:onStart");
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            super.onStatus(i10, str);
            com.coloros.translate.screen.translate.engine.tts.d dVar = e.this.f5602k;
            if (dVar != null) {
                dVar.h(i10, str);
            }
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.k
                @Override // java.lang.Runnable
                public final void run() {
                    e.d.c(eVar);
                }
            });
        }

        @Override // com.coloros.translate.screen.translate.engine.tts.d.b, com.coloros.translate.engine.ITtsListener
        public void onStop() {
            super.onStop();
            final e eVar = e.this;
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.j
                @Override // java.lang.Runnable
                public final void run() {
                    e.d.d(eVar);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.screen.translate.engine.panel.e$e, reason: collision with other inner class name */
    static final class C0078e extends s implements w8.a {
        C0078e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TextTranslationPanel mo8invoke() {
            return new TextTranslationPanel(e.this.v());
        }
    }

    static final class f extends s implements w8.a {
        final /* synthetic */ String $resultText;
        final /* synthetic */ boolean $sourcePlayerEnable;
        final /* synthetic */ String $sourceText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, String str2, boolean z10) {
            super(0);
            this.$sourceText = str;
            this.$resultText = str2;
            this.$sourcePlayerEnable = z10;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            a.C0140a.c(e.this.w(), this.$sourceText, this.$resultText, this.$sourcePlayerEnable, false, 8, null);
        }
    }

    public e(Context context, w8.a onCloseClicked, w8.a onPanelDismiss) {
        r.e(context, "context");
        r.e(onCloseClicked, "onCloseClicked");
        r.e(onPanelDismiss, "onPanelDismiss");
        this.f5595a = context;
        this.f5596b = onCloseClicked;
        this.f5597c = onPanelDismiss;
        this.f5599h = "";
        this.f5600i = "";
        this.f5601j = Executors.newSingleThreadExecutor();
        Pattern patternCompile = Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        r.d(patternCompile, "compile(...)");
        this.f5609r = patternCompile;
        this.f5610s = n8.k.b(new C0078e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(e this$0) {
        r.e(this$0, "this$0");
        this$0.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(e this$0) {
        r.e(this$0, "this$0");
        this$0.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(e this$0, com.coloros.translate.screen.translate.engine.language.a sourceLanguage) throws RemoteException {
        com.coloros.translate.screen.translate.engine.tts.d dVar;
        r.e(this$0, "this$0");
        r.e(sourceLanguage, "$sourceLanguage");
        d.b bVar = this$0.f5605n;
        if (bVar == null || (dVar = this$0.f5602k) == null) {
            return;
        }
        dVar.k(this$0.u(this$0.f5599h), sourceLanguage.getLanguageCode(), bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(e this$0, com.coloros.translate.screen.translate.engine.language.a targetLanguage) throws RemoteException {
        com.coloros.translate.screen.translate.engine.tts.d dVar;
        r.e(this$0, "this$0");
        r.e(targetLanguage, "$targetLanguage");
        d.b bVar = this$0.f5606o;
        if (bVar == null || (dVar = this$0.f5602k) == null) {
            return;
        }
        dVar.k(this$0.u(this$0.f5600i), targetLanguage.getLanguageCode(), bVar);
    }

    private final void t() {
        if (this.f5599h.length() == 0) {
            c0.f7098a.q("ScreenTranslationPanel", "translate srcText is empty, doTranslate");
            return;
        }
        j.b bVar = com.coloros.translate.screen.translate.engine.language.j.f5577i;
        String strT = bVar.a().t();
        if (r.a(strT, com.coloros.translate.screen.translate.engine.language.a.AUTO.getLanguageCode())) {
            strT = "";
        }
        String strZ = bVar.a().z();
        String strA = o.a();
        String str = this.f5599h;
        r.b(strA);
        TranslateManager.Companion.getINSTANCE().translateText(new TextTranslateParams(strT, strZ, str, strA), new b());
    }

    private final String u(String str) {
        Matcher matcher = this.f5609r.matcher(kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null));
        r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextTranslationPanel w() {
        return (TextTranslationPanel) this.f5610s.getValue();
    }

    public final boolean A() {
        return w().r0();
    }

    public final void F() {
        c0.f7098a.d("ScreenTranslationPanel", "showTranslatePanel");
        TextTranslationPanel textTranslationPanelW = w();
        String string = this.f5595a.getResources().getString(R$string.scan_translation);
        r.d(string, "getString(...)");
        textTranslationPanelW.a(string, R$style.ThemeCOUIBottomSheetDialog, 2038, true);
        w().t0(this);
        w().w0();
        com.coloros.translate.screen.translate.engine.language.j.f5577i.a().H(this);
    }

    public final void G() {
        if (this.f5603l) {
            this.f5605n = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar = this.f5602k;
            if (dVar != null) {
                dVar.o();
            }
            w().A0(false);
            this.f5603l = false;
        }
        if (this.f5604m) {
            this.f5606o = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar2 = this.f5602k;
            if (dVar2 != null) {
                dVar2.o();
            }
            w().B0(false);
            this.f5604m = false;
        }
    }

    public final void H(String sourceText, String str) {
        r.e(sourceText, "sourceText");
        c0.f7098a.d("ScreenTranslationPanel", "updateTranslateData");
        G();
        this.f5599h = sourceText;
        this.f5600i = str == null ? "" : str;
        if (str != null && str.length() != 0) {
            w().a0(new f(sourceText, str, com.coloros.translate.screen.translate.engine.language.j.f5577i.a().l() != com.coloros.translate.screen.translate.engine.language.a.AUTO));
        } else if (com.coloros.translate.observer.e.INSTANCE.k()) {
            w().c(this.f5595a.getResources().getString(R$string.translate_unified_no_network));
        } else {
            a.C0140a.b(w(), null, 1, null);
        }
    }

    @Override // com.coloros.translate.screen.translate.engine.language.e
    public void a() {
        c0.f7098a.d("ScreenTranslationPanel", "onLanguageLoaded");
        j.b bVar = com.coloros.translate.screen.translate.engine.language.j.f5577i;
        com.coloros.translate.screen.translate.engine.language.a aVarL = bVar.a().l();
        com.coloros.translate.screen.translate.engine.language.a aVarN = bVar.a().n();
        this.f5607p = aVarL;
        this.f5608q = aVarN;
        boolean zJ = bVar.a().j(aVarL, aVarN);
        if (r.a(Locale.getDefault().getLanguage(), com.coloros.translate.screen.translate.engine.language.a.CHINESE.getLanguageCode())) {
            String string = this.f5595a.getResources().getString(aVarL.getFullNameResId());
            r.d(string, "getString(...)");
            String string2 = this.f5595a.getResources().getString(aVarN.getFullNameResId());
            r.d(string2, "getString(...)");
            w().F0(string, string2, zJ);
            return;
        }
        String string3 = this.f5595a.getResources().getString(aVarL.getSimpleNameResId());
        r.d(string3, "getString(...)");
        String string4 = this.f5595a.getResources().getString(aVarN.getSimpleNameResId());
        r.d(string4, "getString(...)");
        w().F0(string3, string4, zJ);
    }

    @Override // com.coloros.translate.screen.translate.engine.language.e
    public void b() {
        c0.f7098a.d("ScreenTranslationPanel", "onLanguageSwitched");
        G();
        a();
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            u.d(R$string.translate_unified_no_network, 0, 2, null);
        } else {
            this.f5601j.execute(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.a
                @Override // java.lang.Runnable
                public final void run() {
                    e.B(this.f5588a);
                }
            });
        }
    }

    @Override // f2.b
    public void d() {
        c0.f7098a.d("ScreenTranslationPanel", "onTargetPlayerClicked");
        if (this.f5604m) {
            this.f5606o = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar = this.f5602k;
            if (dVar != null) {
                dVar.o();
            }
            w().B0(false);
            this.f5604m = false;
            return;
        }
        if (this.f5603l) {
            this.f5605n = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar2 = this.f5602k;
            if (dVar2 != null) {
                dVar2.o();
            }
            w().A0(false);
            this.f5603l = false;
        }
        if (this.f5602k == null) {
            this.f5602k = new com.coloros.translate.screen.translate.engine.tts.d(this.f5595a);
        }
        this.f5604m = true;
        w().B0(true);
        if (this.f5606o == null) {
            this.f5606o = new d();
        }
        com.coloros.translate.screen.translate.engine.tts.d dVar3 = this.f5602k;
        if (dVar3 != null) {
            dVar3.g();
        }
        final com.coloros.translate.screen.translate.engine.language.a aVarN = com.coloros.translate.screen.translate.engine.language.j.f5577i.a().n();
        t.h(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.d
            @Override // java.lang.Runnable
            public final void run() throws RemoteException {
                e.E(this.f5592a, aVarN);
            }
        }, 100L);
    }

    @Override // f2.b
    public void h() {
        c0.f7098a.d("ScreenTranslationPanel", "onSourcePlayerClicked");
        if (this.f5603l) {
            this.f5605n = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar = this.f5602k;
            if (dVar != null) {
                dVar.o();
            }
            w().A0(false);
            this.f5603l = false;
            return;
        }
        if (this.f5604m) {
            this.f5606o = null;
            com.coloros.translate.screen.translate.engine.tts.d dVar2 = this.f5602k;
            if (dVar2 != null) {
                dVar2.o();
            }
            w().B0(false);
            this.f5604m = false;
        }
        if (this.f5602k == null) {
            this.f5602k = new com.coloros.translate.screen.translate.engine.tts.d(this.f5595a);
        }
        this.f5603l = true;
        w().A0(true);
        if (this.f5605n == null) {
            this.f5605n = new c();
        }
        com.coloros.translate.screen.translate.engine.tts.d dVar3 = this.f5602k;
        if (dVar3 != null) {
            dVar3.g();
        }
        final com.coloros.translate.screen.translate.engine.language.a aVarL = com.coloros.translate.screen.translate.engine.language.j.f5577i.a().l();
        t.h(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.c
            @Override // java.lang.Runnable
            public final void run() throws RemoteException {
                e.D(this.f5590a, aVarL);
            }
        }, 100L);
    }

    @Override // f2.b
    public void k() {
        c0.f7098a.d("ScreenTranslationPanel", "onCopyClicked");
        v.a(this.f5595a, "NoTextIntent", this.f5600i, R$string.translate_toast_copy);
        com.coloros.translate.screen.utils.f.c(this.f5595a, "event_screen_result_copy", null, 4, null);
    }

    @Override // f2.b
    public void m(boolean z10) {
        c0.f7098a.d("ScreenTranslationPanel", "onLanguageClicked");
        G();
        if (this.f5598f == null) {
            this.f5598f = new com.coloros.translate.screen.translate.engine.picker.e(this.f5595a);
        }
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5598f;
        if (eVar != null) {
            eVar.H(z10, true);
        }
    }

    @Override // f2.b
    public void n() {
        com.coloros.translate.screen.translate.engine.tts.d dVar = this.f5602k;
        if (dVar != null) {
            dVar.o();
        }
        com.coloros.translate.screen.translate.engine.language.j.f5577i.a().T(this);
        this.f5597c.mo8invoke();
    }

    public final void q() {
        c0.f7098a.d("ScreenTranslationPanel", "dismiss");
        w().t0(null);
        com.coloros.translate.screen.translate.engine.tts.d dVar = this.f5602k;
        if (dVar != null) {
            dVar.o();
        }
        w().U();
        com.coloros.translate.screen.translate.engine.language.j.f5577i.a().T(this);
        com.coloros.translate.screen.translate.engine.picker.e eVar = this.f5598f;
        if (eVar == null || !eVar.B()) {
            return;
        }
        eVar.E();
        eVar.s();
    }

    @Override // f2.b
    public void r() {
        c0.f7098a.d("ScreenTranslationPanel", "onSwitchLanguageClicked");
        G();
        com.coloros.translate.screen.translate.engine.language.j.f5577i.a().S();
    }

    @Override // f2.b
    public void s() {
        c0.f7098a.d("ScreenTranslationPanel", "onExportClicked");
        Context context = this.f5595a;
        String str = this.f5599h + System.lineSeparator() + System.lineSeparator() + this.f5600i;
        r.d(str, "toString(...)");
        com.coloros.translate.screen.utils.j.c(context, str);
    }

    public final Context v() {
        return this.f5595a;
    }

    public final void x() {
        c0.f7098a.d("ScreenTranslationPanel", "hide");
        w().Z();
    }

    @Override // f2.b
    public void y() {
        c0.f7098a.d("ScreenTranslationPanel", "onRetryClicked");
        if (com.coloros.translate.observer.e.INSTANCE.k()) {
            u.d(R$string.translate_unified_no_network, 0, 2, null);
        } else {
            this.f5601j.execute(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.panel.b
                @Override // java.lang.Runnable
                public final void run() {
                    e.C(this.f5589a);
                }
            });
        }
    }

    @Override // f2.b
    public void z() {
        c0.f7098a.d("ScreenTranslationPanel", "onCloseClicked");
        this.f5596b.mo8invoke();
    }
}
