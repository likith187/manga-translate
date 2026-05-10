package com.coloros.translate.ui.texttranslation;

import android.app.Application;
import android.os.RemoteException;
import android.os.SystemClock;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.engine.info.AsrParams;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.repository.remote.RtasrEngineHandler;
import com.coloros.translate.repository.remote.TranslationEngineHandler;
import com.coloros.translate.repository.remote.TtsEngineHandler;
import com.coloros.translate.repository.remote.a;
import com.coloros.translate.repository.remote.c;
import com.coloros.translate.utils.b1;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.v0;
import com.oplus.aiunit.antispam.client.AntiSpamCallback;
import com.oplus.aiunit.antispam.client.AntiSpamClient;
import com.oplus.aiunit.antispam.client.AntiSpamResult;
import com.oplus.aiunit.antispam.client.AntiSpamSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class p0 extends com.coloros.translate.base.q {
    public static final a T = new a(null);
    private androidx.lifecycle.a0 A;
    private String B;
    private String C;
    private String D;
    private String E;
    private final n8.j F;
    private long G;
    private long H;
    private final String I;
    private final Pattern J;
    private final n8.j K;
    private final n8.j L;
    private final n8.j M;
    private final Runnable N;
    private final Runnable O;
    private final RtasrEngineHandler.RtasrListener P;
    private final AsrParams Q;
    private final String R;
    private final i S;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7029g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7030h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7031i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.lifecycle.a0 f7032j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private androidx.lifecycle.a0 f7033k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.lifecycle.a0 f7034l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7035m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7036n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7037o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7038p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.lifecycle.a0 f7039q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7040r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private List f7041s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f7042t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f7043u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f7044v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f7045w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f7046x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f7047y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.lifecycle.a0 f7048z;

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

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final RtasrEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().v();
        }
    }

    public static final class d extends RtasrEngineHandler.RtasrListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private n.a f7049a = new n.a();

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ p0 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(p0 p0Var) {
                super(0);
                this.this$0 = p0Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                if (this.this$0.Q.d() != 5000) {
                    this.this$0.W().r();
                    return;
                }
                if (!this.this$0.g() && kotlin.jvm.internal.r.a(this.this$0.T().e(), Boolean.TRUE)) {
                    com.coloros.translate.utils.w.h(R.string.sound_too_small, 0, 2, null);
                }
                this.this$0.s0(3500);
                this.this$0.X().g(this.this$0.O);
                this.this$0.X().d(this.this$0.O, 5000L);
            }
        }

        static final class b extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ p0 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(p0 p0Var) {
                super(0);
                this.this$0 = p0Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                this.this$0.W().r();
            }
        }

        d() {
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onRtasrResult(AsrResult asrResult) {
            if (asrResult == null) {
                return;
            }
            if (p0.this.M()) {
                com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onRtasrResult alreadyMaxLength and return");
                return;
            }
            p0.this.X().g(p0.this.O);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onRtasrResult");
            p0.this.R().k(p0.this.J(asrResult));
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStart() {
            this.f7049a.d(SystemClock.elapsedRealtime());
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onStart");
            p0.this.Q().clear();
            p0.this.R().k(p0.this.V());
            p0.this.T().k(Boolean.TRUE);
            p0.this.X().g(p0.this.N);
            p0.this.X().g(p0.this.O);
            p0.this.X().d(p0.this.N, 60000L);
        }

        @Override // com.coloros.translate.repository.remote.RtasrEngineHandler.RtasrListener, com.coloros.translate.engine.IRtasrListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.n.INSTANCE.e0(i10, str == null ? "" : str);
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "onStatus code : " + i10 + " , msg : " + str);
            com.coloros.translate.repository.c.b(i10, str, new a(p0.this), null, new b(p0.this), 8, null);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStop() {
            this.f7049a.c(SystemClock.elapsedRealtime());
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onStop");
            p0.this.T().k(Boolean.FALSE);
            p0.this.X().g(p0.this.N);
            p0.this.X().g(p0.this.O);
            if (p0.this.S()) {
                p0.this.R().k("");
                p0.this.w0(false);
            }
            com.coloros.translate.utils.n.INSTANCE.P("1", this.f7049a);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onTranslateResult(AsrTranslateResult asrTranslateResult) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onTranslateResult");
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onVoiceVolume(double d10) {
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        public static final e INSTANCE = new e();

        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final v0 mo8invoke() {
            return new v0("Timeout_HandlerTread");
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        public static final f INSTANCE = new f();

        f() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().x();
        }
    }

    public static final class g extends TtsEngineHandler.TtsListener {
        g() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            p0.this.h(true);
            p0.this.i0().k(Boolean.TRUE);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "playOriText onStart");
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "playOriText onStatus code : " + i10 + " , msg : " + str);
            p0.this.h(false);
            com.coloros.translate.repository.c.c(i10, str);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            p0.this.h(false);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "playOriText onStop");
            p0.this.i0().k(Boolean.FALSE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
        }
    }

    public static final class h extends TtsEngineHandler.TtsListener {
        h() {
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            p0.this.h(true);
            p0.this.U().k(Boolean.TRUE);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "playText onStart");
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "playText onStatus code : " + i10 + " , msg : " + str);
            p0.this.h(false);
            com.coloros.translate.repository.c.c(i10, str);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            p0.this.h(false);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "playText onStop");
            p0.this.U().k(Boolean.FALSE);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
        }
    }

    public static final class i implements c.b {
        i() {
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void a() {
            RtasrEngineHandler.RtasrListener rtasrListener = p0.this.P;
            com.coloros.translate.repository.b bVar = com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED;
            rtasrListener.onStatus(bVar.getCode(), bVar.getMessage());
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void b() {
        }
    }

    public static final class j extends TranslationEngineHandler.TranslateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Conversation f7055b;

        public static final class a implements AntiSpamCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p0 f7056a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Conversation f7057b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ j f7058c;

            a(p0 p0Var, Conversation conversation, j jVar) {
                this.f7056a = p0Var;
                this.f7057b = conversation;
                this.f7058c = jVar;
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onFailure(int i10, String str) {
                com.coloros.translate.utils.c0.f7098a.q("TextTranslationViewModel", "translate onResult onFailure errCode : " + i10);
                this.f7056a.y0(false);
                this.f7058c.onStop();
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onProcess(AntiSpamResult result) {
                kotlin.jvm.internal.r.e(result, "result");
            }

            @Override // com.oplus.aiunit.antispam.client.AntiSpamCallback
            public void onSuccess(AntiSpamResult antiResult) {
                kotlin.jvm.internal.r.e(antiResult, "antiResult");
                com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "translate onResult onSuccess antiResult : " + antiResult.getStatus());
                p0 p0Var = this.f7056a;
                Integer status = antiResult.getStatus();
                p0Var.y0(status == null || status.intValue() != 0);
                com.coloros.translate.utils.n.INSTANCE.V("-2000", "text", this.f7056a.j0());
                Integer status2 = antiResult.getStatus();
                if (status2 == null || status2.intValue() != 0) {
                    Conversation conversation = this.f7057b;
                    conversation.setToText(conversation.getFromText());
                }
                this.f7058c.onStop();
            }
        }

        j(Conversation conversation) {
            this.f7055b = conversation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onStop() {
            p0.this.Y().k(this.f7055b.getToText());
            p0.this.E = "";
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onError(String requestId, String str, int i10) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            p0.this.y0(i10 == 100030);
            p0.this.E = "";
            com.coloros.translate.utils.n.INSTANCE.g0(i10, requestId, "text", p0.this.j0(), "[" + ((i10 == -1000 || i10 == 102) ? "APP" : "SDK") + "][" + (i10 != -1000 ? i10 != 102 ? i10 != 100030 ? "SDK_ERROR" : "SDK_SENSITIVE" : "PARAM_INVALID" : "NETWORK_ERROR") + "]" + (str == null ? "" : str));
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            StringBuilder sb = new StringBuilder();
            sb.append("translate onError translation message : ");
            sb.append(str);
            sb.append(" , errorCode : ");
            sb.append(i10);
            aVar.i("TextTranslationViewModel", sb.toString());
            this.f7055b.setState(1);
            Conversation conversation = this.f7055b;
            conversation.setToText(i10 == 100030 ? conversation.getFromText() : "");
            if (kotlin.jvm.internal.r.a(p0.this.f0().e(), Boolean.TRUE)) {
                p0.this.f0().k(Boolean.FALSE);
            }
            onStop();
            if (com.coloros.translate.observer.e.INSTANCE.k()) {
                aVar.d("TextTranslationViewModel", "translate onError network not available");
                b1.c(R.string.no_network, 0, 2, null);
                return;
            }
            if (i10 == -2000) {
                b1.c(R.string.translate_error, 0, 2, null);
                return;
            }
            if (i10 == -1000) {
                b1.c(R.string.no_network, 0, 2, null);
            } else if (i10 == 102) {
                b1.c(R.string.guide_to_download_offline_package_settings, 0, 2, null);
            } else if (i10 != 100030) {
                com.coloros.translate.utils.w.i(str != null ? str : "", 0, 2, null);
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResult(OnLineTranslateResult onLineTranslateResult) {
            String str;
            List listD;
            if (!kotlin.jvm.internal.r.a(p0.this.E, onLineTranslateResult != null ? onLineTranslateResult.c() : null)) {
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "onResult already cancel and return");
                return;
            }
            if (kotlin.jvm.internal.r.a(p0.this.f0().e(), Boolean.TRUE)) {
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "translate onResult already use AI translate and return");
                return;
            }
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("TextTranslationViewModel", "translate onResult : " + (onLineTranslateResult != null ? Integer.valueOf(onLineTranslateResult.a()) : null) + " , isSafe : " + (onLineTranslateResult != null ? Boolean.valueOf(onLineTranslateResult.f()) : null));
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str = (String) listD.get(0)) == null) {
                str = "";
            }
            String str2 = str;
            if (aVar.l()) {
                aVar.d("TextTranslationViewModel", "translate onResult result : " + aVar.g(str2));
            }
            String strB = kotlin.text.r.B(kotlin.text.r.B(str2, "\\\\", "\\", false, 4, null), "\\n", "\n", false, 4, null);
            this.f7055b.setToText(strB);
            p0.this.v0(strB);
            if ((onLineTranslateResult == null || !onLineTranslateResult.e()) && p0.this.g0() && kotlin.jvm.internal.r.a(this.f7055b.getToLanguage(), com.coloros.translate.b.CHINESE.getLanguageCode())) {
                p0.this.N().checkText(this.f7055b.getToText(), "900003", "", true, new a(p0.this, this.f7055b, this));
                return;
            }
            if (onLineTranslateResult != null) {
                p0 p0Var = p0.this;
                p0Var.y0(onLineTranslateResult.a() == 100030 || !onLineTranslateResult.f());
                aVar.d("TextTranslationViewModel", "translate onResult isResultSensitive : " + p0Var.j0());
                com.coloros.translate.utils.n.INSTANCE.V(onLineTranslateResult.c(), "text", p0Var.j0());
                onStop();
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResultList(List list) {
        }

        @Override // com.coloros.translate.repository.remote.TranslationEngineHandler.TranslateListener, com.coloros.translate.engine.ITranslateListener
        public void onStreamResult(String str, boolean z10, OnLineTranslateResult onLineTranslateResult) {
            String str2;
            Object objM59constructorimpl;
            List listD;
            super.onStreamResult(str, z10, onLineTranslateResult);
            if (!kotlin.jvm.internal.r.a(str, p0.this.D)) {
                com.coloros.translate.utils.c0.f7098a.i("TextTranslationViewModel", "onStreamResult already cancel and return");
                return;
            }
            p0 p0Var = p0.this;
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str2 = (String) listD.get(0)) == null) {
                str2 = "";
            }
            p0Var.B = str2;
            p0 p0Var2 = p0.this;
            p0Var2.C = kotlin.text.r.B(kotlin.text.r.B(p0Var2.B, "\\\\", "\\", false, 4, null), "\\n", "\n", false, 4, null);
            if (z10) {
                c0.a aVar = com.coloros.translate.utils.c0.f7098a;
                aVar.d("TextTranslationViewModel", "onStreamResult isFinalResult");
                p0.this.y0(false);
                if (onLineTranslateResult != null) {
                    int iA = onLineTranslateResult.a();
                    p0 p0Var3 = p0.this;
                    p0Var3.y0(iA == 100030);
                    if (str != null) {
                        com.coloros.translate.utils.n.INSTANCE.g0(iA, str, "text", p0Var3.j0(), "[SDK][" + (iA == 100030 ? "SDK_SENSITIVE" : "SDK_ERROR") + "]");
                    }
                }
                aVar.d("TextTranslationViewModel", "onStreamResult isFinalResult isResultSensitive : " + p0.this.j0());
                p0.this.G = 0L;
                p0.this.z0(true);
                this.f7055b.setToText(p0.this.C);
                onStop();
                p0.this.K(false, false);
                return;
            }
            p0.this.H = System.currentTimeMillis() - p0.this.G;
            if (p0.this.G == 0) {
                com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onStreamResult first");
                Conversation conversation = this.f7055b;
                conversation.setToText(conversation.getToText() + p0.this.C);
                onStop();
            } else {
                p0 p0Var4 = p0.this;
                Conversation conversation2 = this.f7055b;
                try {
                    r.a aVar2 = n8.r.Companion;
                    if (p0Var4.H < 20) {
                        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onStreamResult quick");
                        Thread.sleep(80L);
                    }
                    if (kotlin.jvm.internal.r.a(p0Var4.f0().e(), Boolean.TRUE)) {
                        conversation2.setToText(conversation2.getToText() + p0Var4.C);
                        onStop();
                    } else {
                        p0Var4.K(false, true);
                    }
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar3 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    com.coloros.translate.utils.c0.f7098a.e("TextTranslationViewModel", "onStreamResult failure : " + thM62exceptionOrNullimpl.getMessage());
                }
            }
            p0.this.G = System.currentTimeMillis();
        }

        @Override // com.coloros.translate.repository.remote.TranslationEngineHandler.TranslateListener, com.coloros.translate.engine.ITranslateListener
        public void onStreamTranslateStart(String str) throws RemoteException {
            super.onStreamTranslateStart(str);
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "translate onStreamTranslateStart");
            p0.this.D = str;
            p0.this.z0(false);
            this.f7055b.setToText("");
            p0.this.G = 0L;
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onTranslateStart(String str) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "translate onTranslateStart");
            p0.this.z0(false);
            this.f7055b.setToText("");
            p0.this.E = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        Boolean bool = Boolean.FALSE;
        this.f7029g = new androidx.lifecycle.a0(bool);
        this.f7030h = new androidx.lifecycle.a0(bool);
        this.f7031i = new androidx.lifecycle.a0("");
        this.f7032j = new androidx.lifecycle.a0(bool);
        this.f7033k = new androidx.lifecycle.a0(0);
        this.f7034l = new androidx.lifecycle.a0("");
        this.f7035m = new androidx.lifecycle.a0(Boolean.TRUE);
        this.f7036n = new androidx.lifecycle.a0(bool);
        this.f7037o = new androidx.lifecycle.a0(bool);
        this.f7038p = new androidx.lifecycle.a0("");
        this.f7039q = new androidx.lifecycle.a0("");
        this.f7041s = new ArrayList();
        this.f7042t = "";
        this.f7045w = "";
        this.f7048z = new androidx.lifecycle.a0(bool);
        this.A = new androidx.lifecycle.a0(bool);
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "";
        this.F = n8.k.b(e.INSTANCE);
        this.I = "[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|";
        Pattern patternCompile = Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        this.J = patternCompile;
        this.K = n8.k.b(f.INSTANCE);
        this.L = n8.k.b(c.INSTANCE);
        this.M = n8.k.b(b.INSTANCE);
        this.N = new Runnable() { // from class: com.coloros.translate.ui.texttranslation.n0
            @Override // java.lang.Runnable
            public final void run() {
                p0.l0(this.f7025a);
            }
        };
        this.O = new Runnable() { // from class: com.coloros.translate.ui.texttranslation.o0
            @Override // java.lang.Runnable
            public final void run() {
                p0.m0(this.f7027a);
            }
        };
        this.P = new d();
        this.Q = new AsrParams(3000, "", "", 2, "", "", null, 64, null);
        this.R = UUID.randomUUID().toString() + "-sensitive";
        this.S = new i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String J(AsrResult asrResult) {
        int size;
        int iB;
        if (this.f7041s.size() <= asrResult.b() && (size = this.f7041s.size()) <= (iB = asrResult.b())) {
            while (true) {
                this.f7041s.add("");
                if (size == iB) {
                    break;
                }
                size++;
            }
        }
        this.f7041s.set(asrResult.b(), asrResult.d());
        StringBuilder sb = new StringBuilder(this.f7042t);
        Iterator it = this.f7041s.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v0 X() {
        return (v0) this.F.getValue();
    }

    private final TtsEngineHandler Z() {
        return (TtsEngineHandler) this.K.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(p0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "tip_max_record_time");
        com.coloros.translate.utils.w.h(R.string.tip_max_record_time, 0, 2, null);
        this$0.W().r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(p0 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "tip_mUnTalkTimeStop");
        this$0.W().r();
    }

    public final void A0() {
        if (kotlin.jvm.internal.r.a(this.f7030h.e(), Boolean.TRUE)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "stopOriTTs");
            Z().g();
        }
    }

    public final void B0() {
        if (kotlin.jvm.internal.r.a(this.f7029g.e(), Boolean.TRUE)) {
            com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "stopTTs");
            Z().g();
        }
    }

    public final void C0(Conversation conversation, String type) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        kotlin.jvm.internal.r.e(type, "type");
        conversation.setToText("");
        (kotlin.jvm.internal.r.a(type, "aiunit_stream_translate") ? com.coloros.translate.repository.d.f5439a.e().z() : com.coloros.translate.repository.d.f5439a.e().w()).f(conversation.getFromLanguage(), conversation.getToLanguage(), conversation.getFromText(), new j(conversation));
    }

    public final void D0() {
        com.coloros.translate.repository.d.f5439a.e().H(this.S);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "unRegisterListener");
        W().t("TextTranslationViewModel");
        W().r();
        B0();
        A0();
        this.f7032j.k(Boolean.FALSE);
        X().g(this.N);
        n();
    }

    public final void E0(String fromCode, String toCode) {
        kotlin.jvm.internal.r.e(fromCode, "fromCode");
        kotlin.jvm.internal.r.e(toCode, "toCode");
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "updateLanguage fromCode : " + fromCode + " , toCode : " + toCode);
        this.f7038p.n(fromCode);
        this.f7039q.n(toCode);
    }

    public final void K(boolean z10, boolean z11) {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "cancelStreamTranslate streamRequestId : " + this.D + " , clearResult : " + z10);
        String str = this.D;
        if (str != null && str.length() > 0) {
            if (z11) {
                com.coloros.translate.repository.d.f5439a.e().z().c(this.D);
            }
            if (z10) {
                this.f7031i.k("");
            }
            this.D = "";
        }
        if (z11) {
            this.f7044v = false;
        }
    }

    public final String L(String str) {
        kotlin.jvm.internal.r.e(str, "str");
        Matcher matcher = this.J.matcher(kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null));
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    public final boolean M() {
        return this.f7043u;
    }

    public final AntiSpamClient N() {
        return (AntiSpamClient) this.M.getValue();
    }

    public final androidx.lifecycle.a0 O() {
        return this.f7038p;
    }

    public final String P() {
        return this.f7045w;
    }

    public final List Q() {
        return this.f7041s;
    }

    public final androidx.lifecycle.a0 R() {
        return this.f7034l;
    }

    public final boolean S() {
        return this.f7040r;
    }

    public final androidx.lifecycle.a0 T() {
        return this.f7032j;
    }

    public final androidx.lifecycle.a0 U() {
        return this.f7029g;
    }

    public final String V() {
        return this.f7042t;
    }

    public final RtasrEngineHandler W() {
        return (RtasrEngineHandler) this.L.getValue();
    }

    public final androidx.lifecycle.a0 Y() {
        return this.f7031i;
    }

    public final androidx.lifecycle.a0 a0() {
        return this.f7033k;
    }

    public final androidx.lifecycle.a0 b0() {
        return this.f7037o;
    }

    public final boolean c0() {
        return this.f7044v;
    }

    public final androidx.lifecycle.a0 d0() {
        return this.f7039q;
    }

    public final androidx.lifecycle.a0 e0() {
        return this.f7035m;
    }

    public final androidx.lifecycle.a0 f0() {
        return this.f7036n;
    }

    public final boolean g0() {
        return this.f7046x;
    }

    public final androidx.lifecycle.a0 h0() {
        return this.f7048z;
    }

    public final androidx.lifecycle.a0 i0() {
        return this.f7030h;
    }

    @Override // com.coloros.translate.base.q
    public void j() {
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "onAudioFocusLost");
        com.coloros.translate.repository.remote.c cVarE = com.coloros.translate.repository.d.f5439a.e();
        Object objE = this.f7029g.e();
        Boolean bool = Boolean.TRUE;
        if (kotlin.jvm.internal.r.a(objE, bool) || kotlin.jvm.internal.r.a(this.f7030h.e(), bool)) {
            cVarE.x().g();
        }
        if (kotlin.jvm.internal.r.a(this.f7032j.e(), bool)) {
            cVarE.v().r();
        }
    }

    public final boolean j0() {
        return this.f7047y;
    }

    public final androidx.lifecycle.a0 k0() {
        return this.A;
    }

    public final void n0(boolean z10) throws RemoteException {
        if (!z10) {
            W().r();
            h(false);
            return;
        }
        RtasrEngineHandler rtasrEngineHandlerW = W();
        AsrParams asrParams = this.Q;
        asrParams.e(((String) this.f7038p.e()).toString());
        asrParams.f(((String) this.f7039q.e()).toString());
        asrParams.g(5000);
        asrParams.a().putString("asr_param_call_id", this.R);
        asrParams.a().putBoolean("asr_param_translate_switch", false);
        asrParams.a().putBoolean("enableLlm", false);
        rtasrEngineHandlerW.o(asrParams);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "fromLanguageCode : " + this.f7038p.e() + " , toLanguageCode : " + this.f7039q.e());
        com.coloros.translate.utils.n.INSTANCE.f0(((String) this.f7038p.e()).toString(), ((String) this.f7039q.e()).toString());
        W().q();
        B0();
        h(true);
    }

    public final void o0() {
        if (kotlin.jvm.internal.r.a(this.f7030h.e(), Boolean.TRUE)) {
            A0();
            return;
        }
        W().r();
        CharSequence charSequence = (CharSequence) this.f7034l.e();
        if (charSequence == null || kotlin.text.r.Y(charSequence)) {
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "playOriText fromLanguageCode : " + this.f7038p.e());
        TtsEngineHandler ttsEngineHandlerZ = Z();
        Object objE = this.f7034l.e();
        kotlin.jvm.internal.r.b(objE);
        a.C0075a.a(ttsEngineHandlerZ, L((String) objE), new TtsParams(null, ((String) this.f7038p.e()).toString(), 0, 0, 0, null, 0, false, 253, null), new g(), null, 8, null);
    }

    public final void p0() {
        if (kotlin.jvm.internal.r.a(this.f7029g.e(), Boolean.TRUE)) {
            B0();
            return;
        }
        W().r();
        CharSequence charSequence = (CharSequence) this.f7031i.e();
        if (charSequence == null || kotlin.text.r.Y(charSequence)) {
            return;
        }
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "toLanguageCode : " + this.f7039q.e());
        TtsEngineHandler ttsEngineHandlerZ = Z();
        Object objE = this.f7031i.e();
        kotlin.jvm.internal.r.b(objE);
        a.C0075a.a(ttsEngineHandlerZ, L((String) objE), new TtsParams(null, ((String) this.f7039q.e()).toString(), 0, 0, 0, null, 0, false, 253, null), new h(), null, 8, null);
    }

    public final void q0() {
        com.coloros.translate.repository.d.f5439a.e().D(this.S);
        com.coloros.translate.utils.c0.f7098a.d("TextTranslationViewModel", "registerListener");
        W().l("TextTranslationViewModel", this.P);
        l();
    }

    public final void r0(androidx.lifecycle.s owner) {
        kotlin.jvm.internal.r.e(owner, "owner");
        this.f7029g.m(owner);
        this.f7031i.m(owner);
        this.f7032j.m(owner);
        this.f7034l.m(owner);
        this.f7030h.m(owner);
        this.f7033k.m(owner);
        this.f7035m.m(owner);
        this.f7036n.m(owner);
        this.f7037o.m(owner);
        this.f7038p.m(owner);
        this.f7039q.m(owner);
        this.f7048z.m(owner);
        this.A.m(owner);
        this.f7042t = "";
        this.f7041s.clear();
    }

    public final void s0(int i10) {
        if (i10 == this.Q.d()) {
            return;
        }
        RtasrEngineHandler rtasrEngineHandlerW = W();
        AsrParams asrParams = this.Q;
        asrParams.g(i10);
        rtasrEngineHandlerW.o(asrParams);
    }

    public final void t0(boolean z10) {
        this.f7043u = z10;
    }

    public final void u0(boolean z10) {
        this.f7046x = z10;
    }

    public final void v0(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.f7045w = str;
    }

    public final void w0(boolean z10) {
        this.f7040r = z10;
    }

    public final void x0(String str) {
        kotlin.jvm.internal.r.e(str, "<set-?>");
        this.f7042t = str;
    }

    public final void y0(boolean z10) {
        this.f7047y = z10;
    }

    public final void z0(boolean z10) {
        this.f7044v = z10;
    }
}
