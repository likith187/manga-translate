package com.coloros.translate.ui.dialoguetranslation;

import android.app.Application;
import android.bluetooth.BluetoothDevice;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import com.coloros.translate.LanguageManager;
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
import com.coloros.translate.repository.remote.c;
import com.coloros.translate.ui.dialoguetranslation.c1;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.n;
import com.coui.appcompat.scrollbar.COUIScrollBar;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class c1 extends com.coloros.translate.base.q {
    public static final a N = new a(null);
    private List A;
    private boolean B;
    private String C;
    private String D;
    private String E;
    private boolean F;
    private final f G;
    private final n8.j H;
    private final n8.j I;
    private final AsrParams J;
    private volatile boolean K;
    private final Runnable L;
    private final RtasrEngineHandler.RtasrListener M;

    /* JADX INFO: renamed from: g */
    private final List f6215g;

    /* JADX INFO: renamed from: h */
    private final List f6216h;

    /* JADX INFO: renamed from: i */
    private final androidx.lifecycle.a0 f6217i;

    /* JADX INFO: renamed from: j */
    private final androidx.lifecycle.a0 f6218j;

    /* JADX INFO: renamed from: k */
    private final androidx.lifecycle.a0 f6219k;

    /* JADX INFO: renamed from: l */
    private final androidx.lifecycle.a0 f6220l;

    /* JADX INFO: renamed from: m */
    private final androidx.lifecycle.a0 f6221m;

    /* JADX INFO: renamed from: n */
    private final androidx.lifecycle.a0 f6222n;

    /* JADX INFO: renamed from: o */
    private final Pattern f6223o;

    /* JADX INFO: renamed from: p */
    private Conversation f6224p;

    /* JADX INFO: renamed from: q */
    private boolean f6225q;

    /* JADX INFO: renamed from: r */
    private boolean f6226r;

    /* JADX INFO: renamed from: s */
    private boolean f6227s;

    /* JADX INFO: renamed from: t */
    private boolean f6228t;

    /* JADX INFO: renamed from: u */
    private AtomicBoolean f6229u;

    /* JADX INFO: renamed from: v */
    private final n8.q f6230v;

    /* JADX INFO: renamed from: w */
    private String f6231w;

    /* JADX INFO: renamed from: x */
    private String f6232x;

    /* JADX INFO: renamed from: y */
    private boolean f6233y;

    /* JADX INFO: renamed from: z */
    private Conversation f6234z;

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
        public final RtasrEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().v();
        }
    }

    public static final class c extends RtasrEngineHandler.RtasrListener {

        /* JADX INFO: renamed from: a */
        private n.a f6235a = new n.a();

        /* JADX INFO: renamed from: b */
        private String f6236b;

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ c1 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(c1 c1Var) {
                super(0);
                this.this$0 = c1Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                if (this.this$0.J.d() == 3000) {
                    this.this$0.n0(true, false);
                } else {
                    this.this$0.n0(false, false);
                }
                this.this$0.a0(7898);
            }
        }

        static final class b extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ int $code;
            final /* synthetic */ c1 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(int i10, c1 c1Var) {
                super(0);
                this.$code = i10;
                this.this$0 = c1Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                if (this.$code == com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED.getCode()) {
                    com.coloros.translate.utils.z0.j(COUIScrollBar.SCROLLER_FADE_TIMEOUT, this.this$0.L);
                }
                this.this$0.n0(false, false);
            }
        }

        c() {
        }

        private final void a() {
            c1.this.A.clear();
            c1 c1Var = c1.this;
            Conversation conversation = new Conversation(0L, "", "", null, null, System.currentTimeMillis(), 1, c1.this.f6233y, null, null, null, 1817, null);
            c1 c1Var2 = c1.this;
            conversation.setRecognizeing(true);
            if (conversation.isLeft()) {
                conversation.setFromLanguage(c1Var2.f6231w);
                conversation.setToLanguage(c1Var2.f6232x);
            } else {
                conversation.setFromLanguage(c1Var2.f6232x);
                conversation.setToLanguage(c1Var2.f6231w);
            }
            c1Var.f6234z = conversation;
            if (c1.this.f6233y) {
                c1.this.N().add(c1.this.f6234z);
            } else {
                c1.this.Y().add(c1.this.f6234z);
            }
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onRtasrResult(AsrResult asrResult) {
            Bundle bundleA;
            String string = (asrResult == null || (bundleA = asrResult.a()) == null) ? null : bundleA.getString(ASRInputSlot.KEY_FILE_RECORDID);
            this.f6236b = string;
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "asr onRtasrResult resultId: " + string);
            aVar.d("FaceToFaceTranslationViewModel", "asr onRtasrResult result: " + aVar.g(asrResult != null ? asrResult.d() : null));
            if (asrResult == null || asrResult.d().length() == 0) {
                aVar.q("FaceToFaceTranslationViewModel", "onRtasrResult asrResult.voiceResult is empty");
                return;
            }
            if (!kotlin.jvm.internal.r.a(this.f6236b, c1.this.C)) {
                aVar.q("FaceToFaceTranslationViewModel", "onRtasrResult result msg is not this time request");
                return;
            }
            if (kotlin.jvm.internal.r.a(c1.this.M().e(), Boolean.FALSE)) {
                aVar.q("FaceToFaceTranslationViewModel", "onRtasrResult conversion data is not recognizing");
                return;
            }
            c1.this.f0(3000);
            aVar.d("FaceToFaceTranslationViewModel", "onRtasrResult mLastRequestId: " + c1.this.E + ", isRecognizeing: " + c1.this.f6234z.isRecognizeing());
            if (c1.this.f6234z.isRecognizeing()) {
                c1.this.f6234z.setFromText(c1.this.E(asrResult));
                if (c1.this.f6233y) {
                    c1.this.U().k(c1.this.f6234z);
                    return;
                } else {
                    c1.this.V().k(c1.this.f6234z);
                    return;
                }
            }
            if (!kotlin.jvm.internal.r.a(c1.this.E, c1.this.C)) {
                a();
                c1.this.f6234z.setFromText(asrResult.d());
                c1.this.L().k(c1.this.f6234z);
            } else {
                c1.this.f6234z.setFromText(c1.this.E(asrResult));
                if (c1.this.f6233y) {
                    c1.this.U().k(c1.this.f6234z);
                } else {
                    c1.this.V().k(c1.this.f6234z);
                }
            }
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStart() {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "asr onStart");
            c1.this.J().set(false);
            this.f6235a.d(SystemClock.elapsedRealtime());
            c1.this.M().k(Boolean.TRUE);
            if (!c1.this.N().isEmpty() && c1.this.N().contains(c1.this.f6234z)) {
                c1 c1Var = c1.this;
                Conversation conversation = c1Var.f6234z;
                c1Var.f6234z = conversation.copy((2047 & 1) != 0 ? conversation.id : 0L, (2047 & 2) != 0 ? conversation.fromText : null, (2047 & 4) != 0 ? conversation.toText : null, (2047 & 8) != 0 ? conversation.fromLanguage : null, (2047 & 16) != 0 ? conversation.toLanguage : null, (2047 & 32) != 0 ? conversation.timestamp : 0L, (2047 & 64) != 0 ? conversation.state : 0, (2047 & 128) != 0 ? conversation.isLeft : false, (2047 & COUIToolTips.ALIGN_TOP) != 0 ? conversation.expandField1 : null, (2047 & ConfigPackage.FRAME_SIZE_1) != 0 ? conversation.expandField2 : null, (2047 & 1024) != 0 ? conversation.expandField3 : null);
            }
            c1.this.f6234z.setFromText("");
            c1.this.o0();
        }

        @Override // com.coloros.translate.repository.remote.RtasrEngineHandler.RtasrListener, com.coloros.translate.engine.IRtasrListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.n.INSTANCE.M(i10);
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "onStatus asr code : " + i10 + " , msg : " + str + " , macSilence : " + c1.this.J.d());
            com.coloros.translate.repository.c.b(i10, str, new a(c1.this), null, new b(i10, c1.this), 8, null);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "asr onStop isRecognizing : " + c1.this.f6234z.isRecognizeing());
            this.f6235a.c(SystemClock.elapsedRealtime());
            Object objE = c1.this.M().e();
            Boolean bool = Boolean.FALSE;
            if (kotlin.jvm.internal.r.a(objE, bool)) {
                aVar.d("FaceToFaceTranslationViewModel", "onStop reject");
                return;
            }
            if (!c1.this.f6234z.isRecognizeing()) {
                if (!c1.this.S() && !c1.this.R()) {
                    com.coloros.translate.utils.w.h(R.string.no_sound_detected3, 0, 2, null);
                }
                c1.this.h0(false);
            } else if (c1.this.f6234z.getFromText().length() > 0) {
                c1 c1Var = c1.this;
                c1Var.p0(c1Var.f6234z, true);
            }
            c1.this.f6234z.setRecognizeing(false);
            c1.this.M().k(bool);
            com.coloros.translate.utils.n.INSTANCE.P("4", this.f6235a);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onTranslateResult(AsrTranslateResult asrTranslateResult) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "asr onTranslateResult");
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onVoiceVolume(double d10) {
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final TtsEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().x();
        }
    }

    public static final class e extends TtsEngineHandler.TtsListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Conversation f6239b;

        e(Conversation conversation) {
            this.f6239b = conversation;
        }

        public static final void b(c1 this$0, Conversation this_apply) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this_apply, "$this_apply");
            this$0.b0(this_apply);
            this$0.j0(null);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            c1.this.h(true);
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "tts onStart");
            c1.this.h0(false);
            c1.this.O().k(new n8.q(Long.valueOf(this.f6239b.getId()), Boolean.TRUE));
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "tts code:" + i10 + " msg:" + str);
            if (!kotlin.jvm.internal.r.a(c1.this.M().e(), Boolean.TRUE)) {
                c1.this.h(false);
            }
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
            if (com.coloros.translate.observer.e.INSTANCE.k()) {
                aVar.q("FaceToFaceTranslationViewModel", "no net work");
            } else {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            }
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "tts onStop");
            n8.q qVar = (n8.q) c1.this.O().e();
            if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
                aVar.q("FaceToFaceTranslationViewModel", "tts not start");
                return;
            }
            if (!kotlin.jvm.internal.r.a(c1.this.M().e(), Boolean.TRUE)) {
                c1.this.h(false);
            }
            c1.this.O().k(new n8.q(Long.valueOf(this.f6239b.getId()), Boolean.FALSE));
            final Conversation conversationT = c1.this.T();
            if (conversationT != null) {
                final c1 c1Var = c1.this;
                com.coloros.translate.utils.z0.g(50L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.d1
                    @Override // java.lang.Runnable
                    public final void run() {
                        c1.e.b(c1Var, conversationT);
                    }
                });
            }
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onTtsResult(byte[] bArr) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "tts onTtsResult");
        }
    }

    public static final class f implements c.b {
        f() {
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void a() {
            c1.this.M().k(Boolean.FALSE);
            RtasrEngineHandler.RtasrListener rtasrListener = c1.this.M;
            com.coloros.translate.repository.b bVar = com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED;
            rtasrListener.onStatus(bVar.getCode(), bVar.getMessage());
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void b() {
        }
    }

    static final class g extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ boolean $isBottomButtonClick;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(boolean z10) {
            super(0);
            this.$isBottomButtonClick = z10;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            c1.m0(c1.this, false, false, this.$isBottomButtonClick, 3, null);
        }
    }

    public static final class h extends TranslationEngineHandler.TranslateListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Conversation f6241a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ c1 f6242b;

        h(Conversation conversation, c1 c1Var) {
            this.f6241a = conversation;
            this.f6242b = c1Var;
        }

        private final void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "translate onStop");
            this.f6242b.J().set(true);
            this.f6241a.setTranslated(true);
            this.f6241a.setRecognizeing(false);
            this.f6241a.setId(com.coloros.translate.repository.d.f5439a.c().g(this.f6241a));
            if (this.f6241a.getToText().length() > 0) {
                if (this.f6241a.isLeft()) {
                    this.f6242b.Y().add(this.f6241a);
                } else {
                    this.f6242b.N().add(this.f6241a);
                }
                this.f6242b.L().k(this.f6241a);
            }
            aVar.d("FaceToFaceTranslationViewModel", "translate playText:" + this.f6242b.Q());
            if (!this.f6242b.Q()) {
                aVar.q("FaceToFaceTranslationViewModel", "onStop() mIsReadyToPlay mIsReadyToPlay");
            } else if (this.f6241a.getToText().length() == 0) {
                aVar.q("FaceToFaceTranslationViewModel", "onStop() conversion is empty");
            } else if (this.f6242b.P()) {
                this.f6242b.b0(this.f6241a);
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onError(String requestId, String str, int i10) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            com.coloros.translate.utils.n.INSTANCE.g0(i10, requestId, "dialog", i10 == 100030, "[SDK][" + (i10 == 100030 ? "SDK_SENSITIVE" : "SDK_ERROR") + "]" + (str == null ? "" : str));
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "translate onError : " + str + " , errorCode : " + i10);
            this.f6242b.J().set(true);
            if (!com.coloros.translate.observer.e.INSTANCE.k()) {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            }
            this.f6241a.setTranslated(true);
            this.f6241a.setState(1);
            this.f6242b.a0(i10);
            onStop();
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResult(OnLineTranslateResult onLineTranslateResult) {
            String str;
            List listD;
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("FaceToFaceTranslationViewModel", "translate onResult");
            if ((onLineTranslateResult != null && onLineTranslateResult.a() == 100030) || (onLineTranslateResult != null && !onLineTranslateResult.f())) {
                com.coloros.translate.utils.n.INSTANCE.g0(onLineTranslateResult.a(), onLineTranslateResult.c(), "dialog", true, "[SDK][SDK_SENSITIVE]");
            }
            this.f6241a.setState(0);
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str = (String) listD.get(0)) == null) {
                str = "";
            }
            String strB = kotlin.text.r.B(str, "\\n", "\n", false, 4, null);
            aVar.d("FaceToFaceTranslationViewModel", "translate text:" + aVar.g(strB));
            this.f6241a.setToText(strB);
            this.f6241a.setTranslated(true);
            onStop();
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResultList(List list) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "translate onResultList");
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onTranslateStart(String str) {
            com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "translate onTranslateStart");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        this.f6215g = kotlin.collections.o.t0(kotlin.collections.o.h());
        this.f6216h = kotlin.collections.o.t0(kotlin.collections.o.h());
        this.f6217i = new androidx.lifecycle.a0(new n8.q(-1L, Boolean.FALSE));
        this.f6218j = new androidx.lifecycle.a0(null);
        this.f6219k = new androidx.lifecycle.a0(null);
        this.f6220l = new androidx.lifecycle.a0(null);
        this.f6221m = new androidx.lifecycle.a0(null);
        this.f6222n = new androidx.lifecycle.a0(null);
        this.f6223o = Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        this.f6228t = true;
        this.f6229u = new AtomicBoolean(false);
        n8.q qVarQ = LanguageManager.f4727w.b().q("voice");
        this.f6230v = qVarQ;
        this.f6231w = ((com.coloros.translate.b) qVarQ.getFirst()).getLanguageCode();
        this.f6232x = ((com.coloros.translate.b) qVarQ.getSecond()).getLanguageCode();
        this.f6233y = true;
        this.f6234z = new Conversation();
        this.A = new ArrayList();
        this.C = "";
        this.D = "";
        this.E = "";
        this.G = new f();
        this.H = n8.k.b(d.INSTANCE);
        this.I = n8.k.b(b.INSTANCE);
        AsrParams asrParams = new AsrParams(5000, "", "", 2, "", "", null, 64, null);
        asrParams.a().putBoolean("asr_param_translate_switch", true);
        asrParams.a().putBoolean("enableLlm", false);
        this.J = asrParams;
        this.L = new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.b1
            @Override // java.lang.Runnable
            public final void run() {
                c1.H(this.f6211a);
            }
        };
        this.M = new c();
    }

    public final String E(AsrResult asrResult) {
        int size;
        int iB;
        if (asrResult.b() >= this.A.size() && (size = this.A.size()) <= (iB = asrResult.b())) {
            while (true) {
                this.A.add("");
                if (size == iB) {
                    break;
                }
                size++;
            }
        }
        this.A.set(asrResult.b(), asrResult.d());
        StringBuilder sb = new StringBuilder();
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    private final void F(boolean z10) {
        boolean z11 = this.K && z10 && com.coloros.translate.utils.s.c(e());
        com.coloros.translate.utils.c0.f7098a.i("FaceToFaceTranslationViewModel", "controlUseBluetoothMic " + z11);
        X().u(z11);
    }

    public static final void H(c1 this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "delayRegister");
        this$0.d0();
    }

    private final String I(String str) {
        Matcher matcher = this.f6223o.matcher(kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null));
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    private final RtasrEngineHandler X() {
        return (RtasrEngineHandler) this.I.getValue();
    }

    private final TtsEngineHandler Z() {
        return (TtsEngineHandler) this.H.getValue();
    }

    public final void a0(int i10) {
        if (i10 == 0) {
            com.coloros.translate.utils.c0.f7098a.q("FaceToFaceTranslationViewModel", "error is zero");
            return;
        }
        if (i10 == 7898) {
            f1.f7117a.a(TranslationApplication.f4754b.a(), "event_asr_silence_for_dialog", (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
            return;
        }
        f1.a aVar = f1.f7117a;
        Application applicationA = TranslationApplication.f4754b.a();
        StringBuilder sb = new StringBuilder();
        sb.append(i10);
        aVar.a(applicationA, "event_translate_fial_for_dialog", (60 & 4) != 0 ? null : "reason", (60 & 8) != 0 ? null : sb.toString(), (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? null : null);
    }

    public final void f0(int i10) {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "resetSliceTime:" + i10);
        if (i10 == this.J.d()) {
            return;
        }
        RtasrEngineHandler rtasrEngineHandlerX = X();
        AsrParams asrParams = this.J;
        asrParams.g(i10);
        rtasrEngineHandlerX.o(asrParams);
    }

    private final void k0() throws RemoteException {
        if (this.B) {
            return;
        }
        com.coloros.translate.utils.n.INSTANCE.N(this.f6231w, this.f6232x);
        d0();
        X().q();
        this.B = true;
        h(true);
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "asr onStart");
        F(true);
    }

    public static /* synthetic */ void m0(c1 c1Var, boolean z10, boolean z11, boolean z12, int i10, Object obj) throws RemoteException {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            z12 = true;
        }
        c1Var.l0(z10, z11, z12);
    }

    public final void p0(Conversation conversation, boolean z10) {
        com.coloros.translate.repository.d.f5439a.e().w().f(conversation.getFromLanguage(), conversation.getToLanguage(), conversation.getFromText(), new h(conversation, this));
    }

    public final void G(BluetoothDevice bluetoothDevice) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.i("FaceToFaceTranslationViewModel", "controlUseBluetoothMicEx " + bluetoothDevice);
        if (!this.B || bluetoothDevice == null) {
            return;
        }
        boolean z10 = this.K && com.coloros.translate.utils.s.c(e());
        aVar.i("FaceToFaceTranslationViewModel", "controlUseBluetoothMicEx " + z10);
        X().u(z10);
    }

    public final AtomicBoolean J() {
        return this.f6229u;
    }

    public final boolean K() {
        if (com.coloros.translate.utils.d1.INSTANCE.d()) {
            return this.F;
        }
        return false;
    }

    public final androidx.lifecycle.a0 L() {
        return this.f6220l;
    }

    public final androidx.lifecycle.a0 M() {
        return this.f6222n;
    }

    public final List N() {
        return this.f6216h;
    }

    public final androidx.lifecycle.a0 O() {
        return this.f6217i;
    }

    public final boolean P() {
        return this.f6228t;
    }

    public final boolean Q() {
        return this.f6225q;
    }

    public final boolean R() {
        return this.f6227s;
    }

    public final boolean S() {
        return this.f6226r;
    }

    public final Conversation T() {
        return this.f6224p;
    }

    public final androidx.lifecycle.a0 U() {
        return this.f6218j;
    }

    public final androidx.lifecycle.a0 V() {
        return this.f6219k;
    }

    public final androidx.lifecycle.a0 W() {
        return this.f6221m;
    }

    public final List Y() {
        return this.f6215g;
    }

    public final void b0(Conversation conversation) {
        n8.q qVar;
        kotlin.jvm.internal.r.e(conversation, "conversation");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        n8.q qVar2 = (n8.q) this.f6217i.e();
        Long l10 = qVar2 != null ? (Long) qVar2.getFirst() : null;
        aVar.d("FaceToFaceTranslationViewModel", "playText lastId=" + l10 + "  nowId=" + conversation.getId());
        n8.q qVar3 = (n8.q) this.f6217i.e();
        if (qVar3 != null && ((Number) qVar3.getFirst()).longValue() == conversation.getId() && (qVar = (n8.q) this.f6217i.e()) != null && ((Boolean) qVar.getSecond()).booleanValue()) {
            this.f6224p = null;
            o0();
            return;
        }
        n8.q qVar4 = (n8.q) this.f6217i.e();
        if (qVar4 != null && ((Boolean) qVar4.getSecond()).booleanValue()) {
            this.f6224p = conversation;
            o0();
            return;
        }
        aVar.d("FaceToFaceTranslationViewModel", "play text:" + aVar.g(conversation.getToText()));
        TtsEngineHandler ttsEngineHandlerZ = Z();
        String strI = I(conversation.getToText());
        TtsParams ttsParams = new TtsParams(null, conversation.getToLanguage(), 0, 0, 0, null, 0, false, 253, null);
        e eVar = new e(conversation);
        Bundle bundle = new Bundle();
        if (com.coloros.translate.utils.s.c(TranslationApplication.f4754b.a())) {
            bundle.putInt("play_from_phone_mic", conversation.isLeft() ? 1 : 0);
        }
        n8.h0 h0Var = n8.h0.INSTANCE;
        ttsEngineHandlerZ.a(strI, ttsParams, eVar, bundle);
    }

    public final void c0() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        boolean z10 = this.f6234z.getFromText().length() > 0;
        aVar.d("FaceToFaceTranslationViewModel", "[reTranslate] from: " + z10 + ", lastTranslateComplete: " + this.f6229u.get());
        if (this.f6234z.getFromText().length() <= 0 || this.f6229u.get()) {
            return;
        }
        aVar.d("FaceToFaceTranslationViewModel", "do reTranslate !!!");
        p0(this.f6234z, false);
    }

    @Override // com.coloros.translate.base.q, androidx.lifecycle.s0
    protected void d() {
        super.d();
        X().u(false);
        Z().d(false);
        com.coloros.translate.utils.z0.i(this.L);
    }

    public final void d0() {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "registerListener");
        com.coloros.translate.repository.d.f5439a.e().D(this.G);
        X().l("FaceToFaceTranslationViewModel", this.M);
        l();
    }

    public final void e0(androidx.lifecycle.s owner) {
        kotlin.jvm.internal.r.e(owner, "owner");
        this.f6222n.m(owner);
        this.f6219k.m(owner);
        this.f6218j.m(owner);
        this.f6220l.m(owner);
        this.f6221m.m(owner);
        this.f6217i.m(owner);
        this.f6222n.n(null);
        this.f6219k.n(null);
        this.f6218j.n(null);
        this.f6220l.n(null);
        this.f6221m.n(null);
        this.f6217i.n(new n8.q(-1L, Boolean.FALSE));
    }

    public final void g0(boolean z10) {
        this.f6228t = z10;
    }

    public final void h0(boolean z10) {
        this.f6225q = z10;
    }

    public final void i0(boolean z10) {
        this.f6227s = z10;
    }

    @Override // com.coloros.translate.base.q
    public void j() {
        com.coloros.translate.utils.c0.f7098a.d("FaceToFaceTranslationViewModel", "onAudioFocusLost");
        n0(false, false);
        n8.q qVar = (n8.q) this.f6217i.e();
        if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
            return;
        }
        o0();
    }

    public final void j0(Conversation conversation) {
        this.f6224p = conversation;
    }

    public final void l0(boolean z10, boolean z11, boolean z12) throws RemoteException {
        String str;
        if (z10 || z11) {
            if ((z10 && z12) || (z11 && !z12)) {
                n0(true, true);
                return;
            } else {
                n0(false, true);
                com.coloros.translate.utils.z0.c(600L, new g(z12));
                return;
            }
        }
        RtasrEngineHandler rtasrEngineHandlerX = X();
        AsrParams asrParams = this.J;
        asrParams.g(5000);
        asrParams.e(z12 ? this.f6231w : this.f6232x);
        asrParams.f(z12 ? this.f6232x : this.f6231w);
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogueTranslationViewModel", "language from:" + asrParams.b());
        aVar.d("DialogueTranslationViewModel", "language to:" + asrParams.c());
        if (kotlin.jvm.internal.r.a(this.D, "")) {
            this.D = UUID.randomUUID().toString() + "-sensitive";
        }
        aVar.d("FaceToFaceTranslationViewModel", "mCurrentRequestIdCommonPart: " + this.D);
        if (z12) {
            str = this.D + "_user1";
        } else {
            str = this.D + "_user2";
        }
        this.C = str;
        asrParams.a().putString("asr_param_call_id", this.C);
        asrParams.a().putInt("sceneId", 2);
        asrParams.a().putString("appVersion", "16.0.26");
        asrParams.a().putBoolean("enableLlm", false);
        rtasrEngineHandlerX.o(asrParams);
        this.f6233y = z12;
        k0();
    }

    public final void n0(boolean z10, boolean z11) {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("FaceToFaceTranslationViewModel", "stopRtasr isReadyToPlay : " + z10 + " , mIsRecoding : " + this.B + ", mIsStopByManual: " + this.f6226r);
        if (this.B) {
            this.f6226r = z11;
            this.f6225q = z10;
            X().r();
            this.B = false;
            h(false);
            aVar.d("FaceToFaceTranslationViewModel", "stopRtasr");
            F(false);
        }
    }

    public final void o0() {
        n8.q qVar = (n8.q) this.f6217i.e();
        if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
            return;
        }
        Z().g();
    }

    public final void q0() {
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("FaceToFaceTranslationViewModel", "unRegisterListener");
        com.coloros.translate.repository.d.f5439a.e().H(this.G);
        n();
        X().t("FaceToFaceTranslationViewModel");
        X().h();
        o0();
        if (this.f6234z.isRecognizeing()) {
            aVar.d("FaceToFaceTranslationViewModel", "unRegisterListener stopRtasr");
            this.f6234z.setRecognizeing(false);
            this.f6225q = false;
        }
    }

    public final void r0(String fromLanguageCode, String toLanguageCode) {
        kotlin.jvm.internal.r.e(fromLanguageCode, "fromLanguageCode");
        kotlin.jvm.internal.r.e(toLanguageCode, "toLanguageCode");
        this.f6231w = fromLanguageCode;
        this.f6232x = toLanguageCode;
    }

    public final void s0(boolean z10) {
        this.K = z10;
        com.coloros.translate.utils.c0.f7098a.i("FaceToFaceTranslationViewModel", "useBluetoothMic " + z10);
    }
}
