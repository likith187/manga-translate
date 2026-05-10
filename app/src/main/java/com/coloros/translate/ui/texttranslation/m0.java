package com.coloros.translate.ui.texttranslation;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.repository.d;
import com.coloros.translate.repository.remote.TranslationEngineHandler;
import com.coloros.translate.repository.remote.TtsEngineHandler;
import com.coloros.translate.repository.remote.a;
import com.coloros.translate.repository.remote.c;
import com.oplus.aiunit.antispam.client.AntiSpamCallback;
import com.oplus.aiunit.antispam.client.AntiSpamClient;
import com.oplus.aiunit.antispam.client.AntiSpamResult;
import com.oplus.aiunit.antispam.client.AntiSpamSettings;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class m0 extends com.coloros.translate.base.q {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f7004s = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Application f7005g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n8.j f7006h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7007i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7008j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7009k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f7010l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.coloros.translate.b f7011m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.coloros.translate.b f7012n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Pattern f7013o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final n8.j f7014p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7015q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final c f7016r;

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
        public final AntiSpamClient mo8invoke() {
            return new AntiSpamClient(TranslationApplication.f4754b.a(), AntiSpamSettings.Companion.build());
        }
    }

    public static final class c implements c.b {
        c() {
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void a() {
            c.b.a.a(this);
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void b() {
            m0.this.G();
            com.coloros.translate.repository.d.f5439a.e().H(this);
        }
    }

    public static final class d extends TtsEngineHandler.TtsListener {
        d() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "tts onStart");
            m0.this.h(true);
            m0.this.z().k(Boolean.TRUE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "code " + i10 + " msg " + str);
            m0.this.h(false);
            com.coloros.translate.repository.c.c(i10, str);
            m0.this.A().k(Boolean.FALSE);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "tts onStop");
            m0.this.h(false);
            m0.this.z().k(Boolean.FALSE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "tts onTtsResult");
        }
    }

    public static final class e extends TtsEngineHandler.TtsListener {
        e() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer: onStart");
            m0.this.h(true);
            m0.this.A().k(Boolean.TRUE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer:code " + i10 + " msg " + str);
            m0.this.A().k(Boolean.FALSE);
            m0.this.h(false);
            com.coloros.translate.repository.c.c(i10, str);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer: onStop");
            m0.this.h(false);
            m0.this.A().k(Boolean.FALSE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer: onTtsResult");
        }
    }

    public static final class f extends TranslationEngineHandler.TranslateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f7021b;

        public static final class a implements AntiSpamCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ m0 f7022a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f7023b;

            a(m0 m0Var, String str) {
                this.f7022a = m0Var;
                this.f7023b = str;
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onFailure(int i10, String str) {
                com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelViewMode", "translate onResult onFailure errCode : " + i10);
                this.f7022a.w().k(this.f7022a.f7010l);
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onProcess(AntiSpamResult result) {
                kotlin.jvm.internal.r.e(result, "result");
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onSuccess(AntiSpamResult antiResult) {
                kotlin.jvm.internal.r.e(antiResult, "antiResult");
                com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "translate onResult onSuccess antiResult : " + antiResult.getStatus());
                Integer status = antiResult.getStatus();
                if (status != null && status.intValue() == 0) {
                    this.f7022a.w().k(this.f7023b);
                } else {
                    this.f7022a.w().k(this.f7022a.f7010l);
                }
                com.coloros.translate.utils.n nVar = com.coloros.translate.utils.n.INSTANCE;
                Integer status2 = antiResult.getStatus();
                nVar.V("-2000", "text_panel", status2 == null || status2.intValue() != 0);
            }
        }

        f(String str) {
            this.f7021b = str;
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onError(String requestId, String str, int i10) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelViewMode", "onError :" + str + " " + i10);
            String str2 = i10 == 100030 ? "SDK_SENSITIVE" : "SDK_ERROR";
            if (str == null) {
                str = "";
            }
            com.coloros.translate.utils.n.INSTANCE.g0(i10, requestId, "text_panel", i10 == 100030, "[SDK][" + str2 + "]" + str);
            m0.this.w().k(i10 == 100030 ? m0.this.f7010l : "");
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResult(OnLineTranslateResult onLineTranslateResult) {
            String str;
            List listD;
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "onResult:" + (onLineTranslateResult != null ? Integer.valueOf(onLineTranslateResult.a()) : null));
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str = (String) listD.get(0)) == null) {
                str = "";
            }
            String strB = kotlin.text.r.B(kotlin.text.r.B(str, "\\\\", "\\", false, 4, null), "\\n", "\n", false, 4, null);
            if ((onLineTranslateResult == null || !onLineTranslateResult.e()) && m0.this.y() && kotlin.jvm.internal.r.a(this.f7021b, com.coloros.translate.b.CHINESE.getLanguageCode())) {
                m0.this.v().checkText(strB, "900003", "", true, new a(m0.this, strB));
                return;
            }
            if (onLineTranslateResult != null) {
                com.coloros.translate.utils.n.INSTANCE.V(onLineTranslateResult.c(), "text_panel", onLineTranslateResult.a() == 100030 || !onLineTranslateResult.f());
            }
            m0.this.w().k(strB);
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResultList(List list) {
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onTranslateStart(String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "onTranslateStart");
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.a {
        public static final g INSTANCE = new g();

        g() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().x();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        this.f7005g = application;
        this.f7006h = n8.k.b(g.INSTANCE);
        Boolean bool = Boolean.FALSE;
        this.f7007i = new androidx.lifecycle.a0(bool);
        this.f7008j = new androidx.lifecycle.a0(bool);
        this.f7009k = new androidx.lifecycle.a0();
        this.f7010l = "";
        com.coloros.translate.b bVar = com.coloros.translate.b.ENGLISH;
        this.f7011m = bVar;
        this.f7012n = bVar;
        Pattern patternCompile = Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        this.f7013o = patternCompile;
        this.f7014p = n8.k.b(b.INSTANCE);
        this.f7016r = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        String languageCode = this.f7011m.getLanguageCode();
        String languageCode2 = this.f7012n.getLanguageCode();
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "doTranslate:" + languageCode + "," + languageCode2);
        com.coloros.translate.repository.d.f5439a.e().w().f(languageCode, languageCode2, this.f7010l, new f(languageCode2));
    }

    private final String u(String str) {
        Matcher matcher = this.f7013o.matcher(kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null));
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AntiSpamClient v() {
        return (AntiSpamClient) this.f7014p.getValue();
    }

    private final TtsEngineHandler x() {
        return (TtsEngineHandler) this.f7006h.getValue();
    }

    public final androidx.lifecycle.a0 A() {
        return this.f7008j;
    }

    public final void B(androidx.lifecycle.s owner) {
        kotlin.jvm.internal.r.e(owner, "owner");
        this.f7007i.m(owner);
        this.f7008j.m(owner);
        this.f7009k.m(owner);
        this.f7009k.n(null);
        com.coloros.translate.repository.d.f5439a.e().H(this.f7016r);
    }

    public final void C(boolean z10) {
        this.f7015q = z10;
    }

    public final void D() {
        Object objE = this.f7008j.e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startSourcePlayer: TargetPlayer is running, return");
            return;
        }
        if (kotlin.jvm.internal.r.a(this.f7007i.e(), bool)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startSourcePlayer: SourcePlayer is running, force to stop then return");
            x().g();
        } else if (this.f7010l.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelViewMode", "startSourcePlayer: sourceText is empty, force return");
        } else {
            x().g();
            a.C0075a.a(x(), u(this.f7010l), new TtsParams(null, this.f7011m.getLanguageCode(), 0, 0, 0, null, 0, false, 253, null), new d(), null, 8, null);
        }
    }

    public final void E() {
        Object objE = this.f7007i.e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer: sourcePlayer is running, return");
            return;
        }
        if (kotlin.jvm.internal.r.a(this.f7008j.e(), bool)) {
            x().g();
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "startTargetPlayer: TargetPlayer is running, force to stop then return");
            return;
        }
        String str = (String) this.f7009k.e();
        if (str == null || str.length() == 0) {
            com.coloros.translate.utils.c0.f7098a.q("TextTranslationPanelViewMode", "startTargetPlayer: resultText is empty, force return");
        } else {
            x().g();
            a.C0075a.a(x(), u(str), new TtsParams(null, this.f7012n.getLanguageCode(), 0, 0, 0, null, 0, false, 253, null), new e(), null, 8, null);
        }
    }

    public final void F() {
        Object objE = this.f7007i.e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "stopTTs: is running,force to stop");
            x().g();
            this.f7007i.k(Boolean.FALSE);
        }
        if (kotlin.jvm.internal.r.a(this.f7008j.e(), bool)) {
            x().g();
            this.f7008j.k(Boolean.FALSE);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "stopTTs: TargetPlayer is running,force to stop");
        }
    }

    public final void H(com.coloros.translate.b fromLanguage, com.coloros.translate.b toLanguage) {
        kotlin.jvm.internal.r.e(fromLanguage, "fromLanguage");
        kotlin.jvm.internal.r.e(toLanguage, "toLanguage");
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "updateLanguage: " + fromLanguage.getLanguageCode() + "," + toLanguage.getLanguageCode());
        this.f7011m = fromLanguage;
        this.f7012n = toLanguage;
    }

    public final void I(String sourceText) {
        kotlin.jvm.internal.r.e(sourceText, "sourceText");
        this.f7010l = sourceText;
    }

    public final void r(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        String str = (String) this.f7009k.e();
        if (TextUtils.isEmpty(str) || str == null) {
            return;
        }
        com.coloros.translate.widget.k.f7233c.a().d(context, str, R.string.translation_result_copied);
    }

    public final void s() {
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        if (aVar.e().C()) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "[doTranslate] TranslationService connected");
            G();
        } else {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationPanelViewMode", "[doTranslate] TranslationService not connected");
            aVar.e().D(this.f7016r);
            aVar.e().F();
        }
    }

    public final void t() {
        Application application = this.f7005g;
        String str = this.f7010l + System.lineSeparator() + System.lineSeparator() + String.valueOf(this.f7009k.e());
        kotlin.jvm.internal.r.d(str, "toString(...)");
        com.coloros.translate.utils.i0.c(application, str);
    }

    public final androidx.lifecycle.a0 w() {
        return this.f7009k;
    }

    public final boolean y() {
        return this.f7015q;
    }

    public final androidx.lifecycle.a0 z() {
        return this.f7007i;
    }
}
