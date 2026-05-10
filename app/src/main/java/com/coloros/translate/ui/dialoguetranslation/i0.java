package com.coloros.translate.ui.dialoguetranslation;

import android.app.Application;
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
import com.coloros.translate.repository.d;
import com.coloros.translate.repository.local.Conversation;
import com.coloros.translate.repository.remote.RtasrEngineHandler;
import com.coloros.translate.repository.remote.TranslationEngineHandler;
import com.coloros.translate.repository.remote.TtsEngineHandler;
import com.coloros.translate.repository.remote.c;
import com.coloros.translate.ui.dialoguetranslation.i0;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f1;
import com.coloros.translate.utils.n;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends com.coloros.translate.base.q {

    /* JADX INFO: renamed from: a0 */
    public static final a f6287a0 = new a(null);
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private long E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private int K;
    private boolean L;
    private boolean M;
    private int N;
    private String O;
    private LinkedHashMap P;
    private LinkedHashMap Q;
    private StringBuilder R;
    private StringBuilder S;
    private boolean T;
    private boolean U;
    private final n8.j V;
    private final n8.j W;
    private final i X;
    private final AsrParams Y;
    private final RtasrEngineHandler.RtasrListener Z;

    /* JADX INFO: renamed from: g */
    private final List f6288g;

    /* JADX INFO: renamed from: h */
    private final androidx.lifecycle.a0 f6289h;

    /* JADX INFO: renamed from: i */
    private final androidx.lifecycle.a0 f6290i;

    /* JADX INFO: renamed from: j */
    private final androidx.lifecycle.a0 f6291j;

    /* JADX INFO: renamed from: k */
    private final androidx.lifecycle.a0 f6292k;

    /* JADX INFO: renamed from: l */
    private final androidx.lifecycle.a0 f6293l;

    /* JADX INFO: renamed from: m */
    private final androidx.lifecycle.a0 f6294m;

    /* JADX INFO: renamed from: n */
    private final androidx.lifecycle.a0 f6295n;

    /* JADX INFO: renamed from: o */
    private final androidx.lifecycle.a0 f6296o;

    /* JADX INFO: renamed from: p */
    private final androidx.lifecycle.a0 f6297p;

    /* JADX INFO: renamed from: q */
    private androidx.lifecycle.a0 f6298q;

    /* JADX INFO: renamed from: r */
    private androidx.lifecycle.a0 f6299r;

    /* JADX INFO: renamed from: s */
    private final n8.q f6300s;

    /* JADX INFO: renamed from: t */
    private String f6301t;

    /* JADX INFO: renamed from: u */
    private String f6302u;

    /* JADX INFO: renamed from: v */
    private Conversation f6303v;

    /* JADX INFO: renamed from: w */
    private Conversation f6304w;

    /* JADX INFO: renamed from: x */
    private HashMap f6305x;

    /* JADX INFO: renamed from: y */
    private Conversation f6306y;

    /* JADX INFO: renamed from: z */
    private boolean f6307z;

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
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.repository.d.f5439a.c().a();
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ List<Conversation> $deleteList;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List<Conversation> list) {
            super(0);
            this.$deleteList = list;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.repository.d.f5439a.c().c(this.$deleteList);
        }
    }

    static final class d extends kotlin.jvm.internal.s implements w8.a {
        d() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return n8.h0.INSTANCE;
        }

        public final void invoke() {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "loadData");
            List listE = com.coloros.translate.repository.d.f5439a.c().e(i0.this.K().size(), 20);
            List listK = i0.this.K();
            if (listE == null) {
                listE = kotlin.collections.o.h();
            }
            listK.addAll(listE);
            i0.this.H().k(Boolean.TRUE);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        public static final e INSTANCE = new e();

        e() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final RtasrEngineHandler mo8invoke() {
            return com.coloros.translate.repository.d.f5439a.e().v();
        }
    }

    public static final class f extends RtasrEngineHandler.RtasrListener {

        /* JADX INFO: renamed from: a */
        private n.a f6308a = new n.a();

        /* JADX INFO: renamed from: b */
        private String f6309b;

        static final class a extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ i0 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(i0 i0Var) {
                super(0);
                this.this$0 = i0Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                if (this.this$0.Y.d() == 2000) {
                    this.this$0.P0(true, false);
                } else {
                    this.this$0.P0(false, false);
                }
                this.this$0.o0(7898);
            }
        }

        static final class b extends kotlin.jvm.internal.s implements w8.a {
            final /* synthetic */ i0 this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(i0 i0Var) {
                super(0);
                this.this$0 = i0Var;
            }

            @Override // w8.a
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo8invoke() {
                invoke();
                return n8.h0.INSTANCE;
            }

            public final void invoke() {
                this.this$0.P0(false, false);
            }
        }

        f() {
        }

        private final void a(String str, boolean z10) {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "buildAndAddNewConversationData asrResult : " + str.length());
            i0.this.P.clear();
            i0.this.Q.clear();
            i0 i0Var = i0.this;
            Conversation conversation = new Conversation(0L, "", "", null, null, System.currentTimeMillis(), 1, z10, null, null, null, 1817, null);
            i0 i0Var2 = i0.this;
            conversation.setRecognizeing(true);
            conversation.setShowEditIcon(false);
            if (conversation.isLeft()) {
                conversation.setFromLanguage(i0Var2.L());
                conversation.setToLanguage(i0Var2.N());
            } else {
                conversation.setFromLanguage(i0Var2.N());
                conversation.setToLanguage(i0Var2.L());
            }
            i0Var.z0(conversation);
            i0.this.M().setFromText(str);
            i0.this.G().k(i0.this.M());
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onRtasrResult(AsrResult asrResult) {
            Bundle bundleA;
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            String string = null;
            aVar.d("DialogueTranslationViewModel", "asr onRtasrResult " + aVar.g(asrResult != null ? asrResult.d() : null));
            aVar.d("DialogueTranslationViewModel", "mIsRecoding : " + i0.this.U());
            if (asrResult != null && (bundleA = asrResult.a()) != null) {
                string = bundleA.getString(ASRInputSlot.KEY_FILE_RECORDID);
            }
            this.f6309b = string;
            if (asrResult == null || asrResult.d().length() == 0) {
                aVar.q("DialogueTranslationViewModel", "asrResult is empty");
                return;
            }
            if (!kotlin.jvm.internal.r.a(this.f6309b, i0.this.O)) {
                aVar.q("DialogueTranslationViewModel", "result msg is not this time request");
                return;
            }
            i0 i0Var = i0.this;
            i0Var.w0(i0Var.h0());
            aVar.d("DialogueTranslationViewModel", "mFromLanguageInPicker:" + i0.this.L());
            String string2 = asrResult.a().getString("asr_language");
            aVar.d("DialogueTranslationViewModel", "mLastFromLanguageCode:" + i0.this.Z() + " currentFromLanguage:" + string2);
            if (string2 == null || string2.length() == 0) {
                aVar.q("DialogueTranslationViewModel", "currentFromLanguage is empty");
                return;
            }
            aVar.d("DialogueTranslationViewModel", "mNeedAppend : " + i0.this.a0());
            if (i0.this.a0() == -1) {
                aVar.q("DialogueTranslationViewModel", "no result only start and stop abandon");
                return;
            }
            if (i0.this.a0() == 1) {
                i0.this.J0(2);
            }
            if (i0.this.Z() == null) {
                a(asrResult.d(), kotlin.jvm.internal.r.a(string2, i0.this.L()));
                i0.this.A(asrResult);
            } else if (!kotlin.jvm.internal.r.a(i0.this.Z(), string2)) {
                if (i0.this.M().isRecognizeing()) {
                    i0.this.M().setRecognizeing(false);
                    if (i0.this.M().getFromText().length() > 0) {
                        i0.this.F0(false);
                    }
                }
                i0 i0Var2 = i0.this;
                String strU0 = i0Var2.u0(i0Var2.P);
                if (strU0 != null) {
                    i0.this.M().setFromText(strU0);
                    if (i0.this.M().getFromText().length() == 0) {
                        aVar.d("DialogueTranslationViewModel", "is remove empty");
                        i0.this.d0().k(i0.this.M());
                        if (i0.this.M().getState() == 0) {
                            aVar.d("DialogueTranslationViewModel", "remove from db");
                            com.coloros.translate.repository.d.f5439a.c().b(i0.this.M());
                        }
                    } else {
                        i0.this.c0().k(i0.this.M());
                    }
                }
                if (i0.this.M().getFromText().length() > 0) {
                    i0.this.M().setShowEditIcon(true);
                    i0.this.c0().k(i0.this.M());
                }
                i0 i0Var3 = i0.this;
                String strU02 = i0Var3.u0(i0Var3.Q);
                if (strU02 != null) {
                    i0.this.M().setToText(strU02);
                    i0.this.c0().k(i0.this.M());
                }
                a(asrResult.d(), kotlin.jvm.internal.r.a(string2, i0.this.L()));
                i0.this.A(asrResult);
            } else if (i0.this.M().getFromText().length() > 0) {
                i0.this.M().setFromText(i0.this.A(asrResult));
                if (!i0.this.U()) {
                    i0.this.M().setShowEditIcon(true);
                }
                i0.this.c0().k(i0.this.M());
            }
            i0.this.I0(string2);
            aVar.d("DialogueTranslationViewModel", "mLastFromLanguageCode : " + i0.this.Z());
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStart() {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "asr onStart:" + i0.this.U());
            if (i0.this.U()) {
                this.f6308a.d(SystemClock.elapsedRealtime());
                i0.this.I().k(Boolean.TRUE);
                i0.this.Q0();
                i0.this.I0(null);
                i0.this.N0(false);
                i0.this.J0(1);
                i0.this.T = true;
            }
        }

        @Override // com.coloros.translate.repository.remote.RtasrEngineHandler.RtasrListener, com.coloros.translate.engine.IRtasrListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.i("DialogueTranslationViewModel", "asr code " + i10 + " msg " + str + " mCommonConfig.macSilence " + i0.this.Y.d() + " mIsRecording:" + i0.this.U());
            if (i0.this.U()) {
                com.coloros.translate.utils.n.INSTANCE.H(i10);
                com.coloros.translate.repository.c.b(i10, str, new a(i0.this), null, new b(i0.this), 8, null);
            } else if (com.coloros.translate.repository.c.d(i10) && i0.this.Y.d() == 20000) {
                i0.this.E0(false);
            }
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogueTranslationViewModel", "asr onStop mIsRecording : " + i0.this.U());
            aVar.d("DialogueTranslationViewModel", "mNeedAppend : " + i0.this.a0());
            this.f6308a.c(SystemClock.elapsedRealtime());
            if (i0.this.a0() == 1) {
                i0.this.J0(-1);
            } else if (i0.this.a0() == 2) {
                i0.this.J0(3);
            }
            i0.this.M().setRecognizeing(false);
            if (i0.this.M().getFromText().length() > 0) {
                i0.this.M().setShowEditIcon(true);
                i0.this.c0().k(i0.this.M());
            }
            if (i0.this.Z() == null) {
                if (!i0.this.X() && !i0.this.W() && !i0.this.l0()) {
                    com.coloros.translate.utils.w.h(R.string.no_sound_detected3, 0, 2, null);
                }
                i0.this.F0(false);
            }
            i0.this.I().k(Boolean.FALSE);
            if (!i0.this.T()) {
                aVar.q("DialogueTranslationViewModel", "onStop() mIsReadyToPlay mIsReadyToPlay");
                return;
            }
            if (i0.this.M().getToText().length() == 0) {
                aVar.q("DialogueTranslationViewModel", "onStop() conversion is empty");
                return;
            }
            if (i0.this.Q()) {
                i0 i0Var = i0.this;
                i0Var.q0(i0Var.M());
            }
            com.coloros.translate.utils.n.INSTANCE.P("2", this.f6308a);
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onTranslateResult(AsrTranslateResult asrTranslateResult) {
            kotlin.jvm.internal.r.e(asrTranslateResult, "asrTranslateResult");
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogueTranslationViewModel", "onTranslateResult result:" + aVar.g(asrTranslateResult.c()));
            aVar.d("DialogueTranslationViewModel", "mNeedAppend : " + i0.this.a0() + " , type : " + asrTranslateResult.d());
            if (i0.this.a0() == -1) {
                return;
            }
            i0.this.T = asrTranslateResult.a().getBoolean("translate_is_safe", true);
            if (asrTranslateResult.d() == 2) {
                com.coloros.translate.utils.n nVar = com.coloros.translate.utils.n.INSTANCE;
                String string = asrTranslateResult.a().getString(ASRInputSlot.KEY_FILE_RECORDID, "");
                kotlin.jvm.internal.r.d(string, "getString(...)");
                nVar.V(string, "dialog", !i0.this.T);
            }
            aVar.d("DialogueTranslationViewModel", "onTranslateResult isResultSafe : " + i0.this.T);
            String strB = i0.this.B(asrTranslateResult);
            i0.this.M().setState(0);
            String strB2 = kotlin.text.r.B(strB, "\\n", "\n", false, 4, null);
            if (strB2.length() == 0) {
                aVar.q("DialogueTranslationViewModel", "onTranslateResult not valid result");
                return;
            }
            if (i0.this.M().getToText().length() == 0) {
                i0.this.M().setId(com.coloros.translate.repository.d.f5439a.c().g(i0.this.M()));
            }
            i0.this.M().setToText(strB2);
            i0.this.M().setTranslated(true);
            i0.this.c0().k(i0.this.M());
            com.coloros.translate.repository.d.f5439a.c().h(i0.this.M());
        }

        @Override // com.coloros.translate.engine.IRtasrListener
        public void onVoiceVolume(double d10) {
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

    public static final class h extends TtsEngineHandler.TtsListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Conversation f6311a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ i0 f6312b;

        h(Conversation conversation, i0 i0Var) {
            this.f6311a = conversation;
            this.f6312b = i0Var;
        }

        public static final void b(i0 this$0, Conversation this_apply) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this_apply, "$this_apply");
            this$0.q0(this_apply);
            this$0.K0(null);
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStart() {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "tts onStart : " + this.f6311a.getId());
            this.f6312b.h(true);
            this.f6312b.F0(false);
            this.f6312b.O().k(new n8.q(Long.valueOf(this.f6311a.getId()), Boolean.TRUE));
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStatus(int i10, String str) {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "tts code : " + i10 + " , msg : " + str);
            com.coloros.translate.utils.n.INSTANCE.k0(i10);
            if (!kotlin.jvm.internal.r.a(this.f6312b.I().e(), Boolean.TRUE)) {
                this.f6312b.h(false);
            }
            if (i10 == -1000) {
                com.coloros.translate.utils.w.h(R.string.no_network, 0, 2, null);
                return;
            }
            if (i10 == -602) {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            } else if (i10 != 601) {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            } else {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            }
        }

        @Override // com.coloros.translate.engine.ITtsListener
        public void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogueTranslationViewModel", "tts onStop : " + this.f6311a.getId());
            n8.q qVar = (n8.q) this.f6312b.O().e();
            if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
                aVar.q("DialogueTranslationViewModel", "tts onStop not start");
                return;
            }
            if (!kotlin.jvm.internal.r.a(this.f6312b.I().e(), Boolean.TRUE)) {
                this.f6312b.h(false);
            }
            this.f6312b.O().k(new n8.q(Long.valueOf(this.f6311a.getId()), Boolean.FALSE));
            final Conversation conversationB0 = this.f6312b.b0();
            if (conversationB0 != null) {
                final i0 i0Var = this.f6312b;
                com.coloros.translate.utils.z0.g(50L, new Runnable() { // from class: com.coloros.translate.ui.dialoguetranslation.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        i0.h.b(i0Var, conversationB0);
                    }
                });
            }
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
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "onServiceDied");
            RtasrEngineHandler.RtasrListener rtasrListener = i0.this.Z;
            com.coloros.translate.repository.b bVar = com.coloros.translate.repository.b.TRANSLATION_SERVICE_DIED;
            rtasrListener.onStatus(bVar.getCode(), bVar.getMessage());
        }

        @Override // com.coloros.translate.repository.remote.c.b
        public void b() {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "onServiceConnected");
        }
    }

    public static final class j extends TranslationEngineHandler.TranslateListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Conversation f6315b;

        j(Conversation conversation) {
            this.f6315b = conversation;
        }

        private final void onStop() {
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogueTranslationViewModel", "onTranslate Stop");
            i0.this.H0(false);
            this.f6315b.setTranslated(true);
            this.f6315b.setRecognizeing(false);
            this.f6315b.setId(com.coloros.translate.repository.d.f5439a.c().g(this.f6315b));
            i0.this.c0().k(this.f6315b);
            if (!i0.this.T()) {
                aVar.q("DialogueTranslationViewModel", "onStop() mIsReadyToPlay and return");
                return;
            }
            i0.this.F0(false);
            if (this.f6315b.getToText().length() == 0) {
                aVar.q("DialogueTranslationViewModel", "onStop() conversion is empty");
            } else if (i0.this.Q()) {
                i0.this.q0(this.f6315b);
            }
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onError(String requestId, String str, int i10) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            com.coloros.translate.utils.n.INSTANCE.g0(i10, requestId, "dialog_text", i10 == 100030, "[SDK][" + (i10 == 100030 ? "SDK_SENSITIVE" : "SDK_ERROR") + "]" + (str == null ? "" : str));
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "text translate on error : " + str + " , errorCode : " + i10);
            i0.this.H0(true);
            if (!com.coloros.translate.observer.e.INSTANCE.k()) {
                com.coloros.translate.utils.w.h(R.string.network_error, 0, 2, null);
            }
            this.f6315b.setTranslated(true);
            this.f6315b.setState(1);
            i0.this.o0(i10);
            onStop();
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResult(OnLineTranslateResult onLineTranslateResult) {
            String str;
            List listD;
            c0.a aVar = com.coloros.translate.utils.c0.f7098a;
            aVar.d("DialogueTranslationViewModel", "translate onResult");
            if (onLineTranslateResult != null && onLineTranslateResult.a() == 100030) {
                com.coloros.translate.utils.n.INSTANCE.g0(onLineTranslateResult.a(), onLineTranslateResult.c(), "dialog_text", true, "[SDK][SDK_SENSITIVE]");
            }
            if (onLineTranslateResult != null) {
                boolean z10 = onLineTranslateResult.a() == 100030 || !onLineTranslateResult.f();
                aVar.d("DialogueTranslationViewModel", "translate onResult isResultSensitive : " + z10);
                com.coloros.translate.utils.n.INSTANCE.V(onLineTranslateResult.c(), "dialog_text", z10);
                onStop();
            }
            this.f6315b.setState(0);
            if (onLineTranslateResult == null || (listD = onLineTranslateResult.d()) == null || (str = (String) listD.get(0)) == null) {
                str = "";
            }
            String strB = kotlin.text.r.B(str, "\\n", "\n", false, 4, null);
            if (aVar.l()) {
                aVar.d("DialogueTranslationViewModel", "translate onResult result : " + aVar.g(strB));
            }
            this.f6315b.setToText(strB);
            this.f6315b.setTranslated(true);
            onStop();
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onResultList(List list) {
        }

        @Override // com.coloros.translate.engine.ITranslateListener
        public void onTranslateStart(String str) {
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "onTranslateStart");
            i0.this.H0(true);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(Application application) {
        super(application);
        kotlin.jvm.internal.r.e(application, "application");
        this.f6288g = kotlin.collections.o.t0(kotlin.collections.o.h());
        Boolean bool = Boolean.FALSE;
        this.f6289h = new androidx.lifecycle.a0(bool);
        this.f6290i = new androidx.lifecycle.a0(new n8.q(-1L, bool));
        this.f6291j = new androidx.lifecycle.a0();
        this.f6292k = new androidx.lifecycle.a0(null);
        this.f6293l = new androidx.lifecycle.a0(null);
        this.f6294m = new androidx.lifecycle.a0(bool);
        this.f6295n = new androidx.lifecycle.a0(bool);
        this.f6296o = new androidx.lifecycle.a0(0);
        this.f6297p = new androidx.lifecycle.a0();
        this.f6298q = new androidx.lifecycle.a0(bool);
        this.f6299r = new androidx.lifecycle.a0(bool);
        n8.q qVarQ = LanguageManager.f4727w.b().q("voice");
        this.f6300s = qVarQ;
        this.f6301t = ((com.coloros.translate.b) qVarQ.getFirst()).getLanguageCode();
        this.f6302u = ((com.coloros.translate.b) qVarQ.getSecond()).getLanguageCode();
        this.f6303v = new Conversation();
        this.f6305x = new HashMap();
        this.A = true;
        this.D = true;
        this.I = true;
        this.N = VibrateUtils.STRENGTH_MAX_STEP;
        this.O = "";
        this.P = new LinkedHashMap();
        this.Q = new LinkedHashMap();
        this.R = new StringBuilder();
        this.S = new StringBuilder();
        this.T = true;
        this.V = n8.k.b(g.INSTANCE);
        this.W = n8.k.b(e.INSTANCE);
        this.X = new i();
        AsrParams asrParams = new AsrParams(7000, "", "", 2, "", "", null, 64, null);
        asrParams.a().putBoolean("asr_param_translate_switch", true);
        asrParams.a().putBoolean("isAutoMaticLanguage", true);
        asrParams.a().putBoolean("enableLlm", false);
        this.Y = asrParams;
        this.Z = new f();
    }

    public final String A(AsrResult asrResult) {
        kotlin.text.r.i(this.R);
        int iB = asrResult.b();
        String strD = asrResult.d();
        this.P.put(Integer.valueOf(iB), new n8.q(strD, Integer.valueOf(asrResult.c())));
        Iterator it = this.P.entrySet().iterator();
        while (it.hasNext()) {
            this.R.append((String) ((n8.q) ((Map.Entry) it.next()).getValue()).getFirst());
        }
        String string = this.R.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    public final String B(AsrTranslateResult asrTranslateResult) {
        kotlin.text.r.i(this.S);
        int iB = asrTranslateResult.b();
        String strC = asrTranslateResult.c();
        this.Q.put(Integer.valueOf(iB), new n8.q(strC, Integer.valueOf(asrTranslateResult.d())));
        Iterator it = this.Q.entrySet().iterator();
        while (it.hasNext()) {
            this.S.append((String) ((n8.q) ((Map.Entry) it.next()).getValue()).getFirst());
        }
        String string = this.S.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }

    private final String E(String str) {
        String strB = kotlin.text.r.B(str, "/[←-⇿]|[☀-⛿]|[✀-➿]|[\u3000-〿]|[ἰ0-ὤF]|[Ὠ0-ὯF]/g", "", false, 4, null);
        Pattern patternCompile = Pattern.compile("[_`~@#$%^&*+=|{}\\[\\]]|\n|\r|");
        kotlin.jvm.internal.r.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(strB);
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        String strReplaceAll = matcher.replaceAll("");
        kotlin.jvm.internal.r.d(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    private final void O0() throws RemoteException {
        if (this.C) {
            return;
        }
        com.coloros.translate.utils.n.INSTANCE.I(this.f6301t, this.f6302u);
        e0().q();
        this.C = true;
        h(true);
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", RealTimeAsrInputSlot.METHOD_START_ASR);
    }

    public final void P0(boolean z10, boolean z11) {
        if (this.C) {
            this.F = z11;
            this.f6307z = z10;
            e0().r();
            this.E = System.currentTimeMillis();
            this.C = false;
            h(false);
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "stopRtasr");
        }
    }

    public static /* synthetic */ void T0(i0 i0Var, Conversation conversation, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = true;
        }
        i0Var.S0(conversation, z10, z11);
    }

    private final RtasrEngineHandler e0() {
        return (RtasrEngineHandler) this.W.getValue();
    }

    private final TtsEngineHandler i0() {
        return (TtsEngineHandler) this.V.getValue();
    }

    public final void o0(int i10) {
        if (i10 == 0) {
            com.coloros.translate.utils.c0.f7098a.q("DialogueTranslationViewModel", "onErrorDataCollection error is zero");
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

    public final String u0(LinkedHashMap linkedHashMap) {
        if (linkedHashMap.size() > 0) {
            StringBuilder sb = new StringBuilder();
            Map.Entry entryLastEntry = linkedHashMap.lastEntry();
            Integer num = (Integer) entryLastEntry.getKey();
            int iIntValue = ((Number) ((n8.q) entryLastEntry.getValue()).getSecond()).intValue();
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "index:" + num + " type:" + iIntValue + " value:" + ((n8.q) entryLastEntry.getValue()).getFirst());
            if (iIntValue != 2) {
                linkedHashMap.remove(num);
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    sb.append((String) ((n8.q) ((Map.Entry) it.next()).getValue()).getFirst());
                }
                com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "result:" + ((Object) sb));
                return sb.toString();
            }
        }
        return null;
    }

    private final void x0() throws RemoteException {
        if (this.B && !this.C) {
            com.coloros.translate.utils.n.INSTANCE.I(this.f6301t, this.f6302u);
            this.C = true;
            h(true);
            com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "resumeAsr");
        }
        w0(7000);
        e0().m();
    }

    public final void A0(Conversation conversation) {
        this.f6304w = conversation;
    }

    public final void B0(boolean z10) {
        this.I = z10;
    }

    public final void C() {
        boolean z10 = false;
        if (this.f6288g.size() == 1 && kotlin.jvm.internal.r.a(((Conversation) this.f6288g.get(0)).getExpandField1(), "sample")) {
            z10 = true;
        }
        this.f6288g.clear();
        this.f6289h.k(Boolean.FALSE);
        Q0();
        com.coloros.translate.utils.z0.d(0L, b.INSTANCE, 1, null);
        if (z10) {
            return;
        }
        this.D = true;
    }

    public final void C0(boolean z10) {
        this.A = z10;
    }

    public final void D() {
        Conversation conversation;
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        if (this.f6288g.size() == 1 && kotlin.jvm.internal.r.a(((Conversation) this.f6288g.get(0)).getExpandField1(), "sample")) {
            z10 = true;
        }
        for (Map.Entry entry : this.f6305x.entrySet()) {
            if (Integer.parseInt((String) entry.getKey()) < this.f6288g.size() && Integer.parseInt((String) entry.getKey()) >= 0 && (conversation = (Conversation) this.f6288g.get(Integer.parseInt((String) entry.getKey()))) != null) {
                arrayList.add(conversation);
            }
        }
        this.f6305x.clear();
        this.f6288g.removeAll(arrayList);
        this.f6289h.k(Boolean.FALSE);
        com.coloros.translate.utils.z0.d(0L, new c(arrayList), 1, null);
        if (!this.f6288g.isEmpty() || z10) {
            return;
        }
        this.D = true;
    }

    public final void D0(boolean z10) {
        this.L = z10;
    }

    public final void E0(boolean z10) {
        this.B = z10;
    }

    public final boolean F() {
        if (com.coloros.translate.utils.d1.INSTANCE.d()) {
            return this.U;
        }
        return false;
    }

    public final void F0(boolean z10) {
        this.f6307z = z10;
    }

    public final androidx.lifecycle.a0 G() {
        return this.f6292k;
    }

    public final void G0(boolean z10) {
        this.G = z10;
    }

    public final androidx.lifecycle.a0 H() {
        return this.f6289h;
    }

    public final void H0(boolean z10) {
        this.M = z10;
    }

    public final androidx.lifecycle.a0 I() {
        return this.f6294m;
    }

    public final void I0(String str) {
        this.J = str;
    }

    public final androidx.lifecycle.a0 J() {
        return this.f6296o;
    }

    public final void J0(int i10) {
        this.K = i10;
    }

    public final List K() {
        return this.f6288g;
    }

    public final void K0(Conversation conversation) {
        this.f6306y = conversation;
    }

    public final String L() {
        return this.f6301t;
    }

    public final void L0(int i10) {
        this.N = i10;
    }

    public final Conversation M() {
        return this.f6303v;
    }

    public final void M0(boolean z10) {
        this.D = z10;
    }

    public final String N() {
        return this.f6302u;
    }

    public final void N0(boolean z10) {
        this.H = z10;
    }

    public final androidx.lifecycle.a0 O() {
        return this.f6290i;
    }

    public final Conversation P() {
        return this.f6304w;
    }

    public final boolean Q() {
        return this.I;
    }

    public final void Q0() {
        n8.q qVar = (n8.q) this.f6290i.e();
        if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
            return;
        }
        i0().g();
    }

    public final boolean R() {
        return this.A;
    }

    public final void R0() {
        P0(false, false);
    }

    public final boolean S() {
        return this.L;
    }

    public final void S0(Conversation conversation, boolean z10, boolean z11) {
        kotlin.jvm.internal.r.e(conversation, "conversation");
        com.coloros.translate.repository.d.f5439a.e().w().f(conversation.getFromLanguage(), conversation.getToLanguage(), conversation.getFromText(), new j(conversation));
    }

    public final boolean T() {
        return this.f6307z;
    }

    public final boolean U() {
        return this.C;
    }

    public final void U0() {
        com.coloros.translate.repository.d.f5439a.e().H(this.X);
        n();
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "unRegisterListener");
        e0().t("DialogueTranslationViewModel");
        Q0();
        if (this.f6303v.isRecognizeing()) {
            this.f6303v.setRecognizeing(false);
            if (this.f6303v.getFromText().length() == 0) {
                this.f6293l.k(this.f6303v);
                this.f6307z = false;
            }
        }
    }

    public final androidx.lifecycle.a0 V() {
        return this.f6295n;
    }

    public final void V0(String fromLanguageCode, String toLanguageCode) {
        kotlin.jvm.internal.r.e(fromLanguageCode, "fromLanguageCode");
        kotlin.jvm.internal.r.e(toLanguageCode, "toLanguageCode");
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "updateLanguage : " + this.C + " , " + this.B);
        this.f6301t = fromLanguageCode;
        this.f6302u = toLanguageCode;
        if (this.C || !this.B) {
            return;
        }
        s0();
    }

    public final boolean W() {
        return this.G;
    }

    public final boolean X() {
        return this.F;
    }

    public final boolean Y() {
        return this.M;
    }

    public final String Z() {
        return this.J;
    }

    public final int a0() {
        return this.K;
    }

    public final Conversation b0() {
        return this.f6306y;
    }

    public final androidx.lifecycle.a0 c0() {
        return this.f6291j;
    }

    @Override // com.coloros.translate.base.q, androidx.lifecycle.s0
    protected void d() {
        super.d();
        i0().d(false);
    }

    public final androidx.lifecycle.a0 d0() {
        return this.f6293l;
    }

    public final androidx.lifecycle.a0 f0() {
        return this.f6297p;
    }

    public final HashMap g0() {
        return this.f6305x;
    }

    public final int h0() {
        return this.N;
    }

    @Override // com.coloros.translate.base.q
    public void j() {
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "onAudioFocusLost");
        R0();
        n8.q qVar = (n8.q) this.f6290i.e();
        if (qVar == null || !((Boolean) qVar.getSecond()).booleanValue()) {
            return;
        }
        Q0();
    }

    public final boolean j0() {
        return this.D;
    }

    @Override // com.coloros.translate.base.q
    public void k() {
        super.k();
        n0();
    }

    public final androidx.lifecycle.a0 k0() {
        return this.f6298q;
    }

    public final boolean l0() {
        return this.H;
    }

    public final androidx.lifecycle.a0 m0() {
        return this.f6299r;
    }

    public final void n0() {
        com.coloros.translate.utils.z0.d(0L, new d(), 1, null);
    }

    public final void p0(boolean z10) {
        if (z10) {
            P0(this.I, true);
            return;
        }
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        aVar.d("DialogueTranslationViewModel", "mIsPreConnectAsr: " + this.B);
        RtasrEngineHandler rtasrEngineHandlerE0 = e0();
        AsrParams asrParams = this.Y;
        asrParams.g(7000);
        asrParams.e("auto");
        asrParams.f("auto");
        asrParams.a().putStringArrayList("autoMaticLanguages", kotlin.collections.o.d(this.f6301t, this.f6302u));
        aVar.d("DialogueTranslationViewModel", "language mCurrentLeftLanguageCode:" + this.f6301t);
        aVar.d("DialogueTranslationViewModel", "language mCurrentRightLanguageCode:" + this.f6302u);
        if (!this.B) {
            this.O = UUID.randomUUID().toString() + "-sensitive";
        }
        asrParams.a().putString("asr_param_call_id", this.O);
        asrParams.a().putInt("sceneId", 1);
        asrParams.a().putString("appVersion", "16.0.26");
        asrParams.a().putBoolean("enableLlm", false);
        rtasrEngineHandlerE0.o(asrParams);
        if (!this.B) {
            O0();
        }
        x0();
        this.B = false;
    }

    public final void q0(Conversation conversation) {
        n8.q qVar;
        kotlin.jvm.internal.r.e(conversation, "conversation");
        c0.a aVar = com.coloros.translate.utils.c0.f7098a;
        n8.q qVar2 = (n8.q) this.f6290i.e();
        Long l10 = qVar2 != null ? (Long) qVar2.getFirst() : null;
        aVar.d("DialogueTranslationViewModel", "playText lastId : " + l10 + " , nowId : " + conversation.getId());
        n8.q qVar3 = (n8.q) this.f6290i.e();
        if (qVar3 != null && ((Number) qVar3.getFirst()).longValue() == conversation.getId() && (qVar = (n8.q) this.f6290i.e()) != null && ((Boolean) qVar.getSecond()).booleanValue()) {
            this.f6306y = null;
            Q0();
            return;
        }
        n8.q qVar4 = (n8.q) this.f6290i.e();
        if (qVar4 != null && ((Boolean) qVar4.getSecond()).booleanValue()) {
            this.f6306y = conversation;
            Q0();
            return;
        }
        if (aVar.l()) {
            aVar.d("DialogueTranslationViewModel", "play text : " + aVar.g(conversation.getToText()));
        }
        TtsEngineHandler ttsEngineHandlerI0 = i0();
        String strE = E(conversation.getToText());
        TtsParams ttsParams = new TtsParams(null, conversation.getToLanguage(), 0, 0, 0, null, 0, false, 253, null);
        h hVar = new h(conversation, this);
        Bundle bundle = new Bundle();
        if (com.coloros.translate.utils.s.c(TranslationApplication.f4754b.a())) {
            bundle.putInt("play_from_phone_mic", conversation.isLeft() ? 1 : 0);
        }
        n8.h0 h0Var = n8.h0.INSTANCE;
        ttsEngineHandlerI0.a(strE, ttsParams, hVar, bundle);
    }

    public final void r0() {
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "preConnectServer" + this.B);
        d.a aVar = com.coloros.translate.repository.d.f5439a;
        aVar.e().D(this.X);
        if (!aVar.e().C()) {
            aVar.e().F();
        }
        e0().l("DialogueTranslationViewModel", this.Z);
        RtasrEngineHandler rtasrEngineHandlerE0 = e0();
        AsrParams asrParams = this.Y;
        asrParams.g(20000);
        asrParams.e("auto");
        asrParams.f("auto");
        asrParams.a().putStringArrayList("autoMaticLanguages", kotlin.collections.o.d(this.f6301t, this.f6302u));
        this.O = UUID.randomUUID().toString() + "-sensitive";
        asrParams.a().putString("asr_param_call_id", this.O);
        asrParams.a().putInt("sceneId", 1);
        asrParams.a().putString("appVersion", "16.0.26");
        asrParams.a().putBoolean("isPreload", true);
        rtasrEngineHandlerE0.o(asrParams);
        e0().q();
        this.B = true;
    }

    public final void s0() throws RemoteException {
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "rePreConnectServer" + this.B);
        RtasrEngineHandler rtasrEngineHandlerE0 = e0();
        AsrParams asrParams = this.Y;
        asrParams.g(20000);
        asrParams.e("auto");
        asrParams.f("auto");
        asrParams.a().putStringArrayList("autoMaticLanguages", kotlin.collections.o.d(this.f6301t, this.f6302u));
        this.O = UUID.randomUUID().toString() + "-sensitive";
        asrParams.a().putString("asr_param_call_id", this.O);
        asrParams.a().putInt("sceneId", 1);
        asrParams.a().putString("appVersion", "16.0.26");
        asrParams.a().putBoolean("isPreload", true);
        rtasrEngineHandlerE0.o(asrParams);
        e0().q();
        this.B = true;
    }

    public final void t0() {
        com.coloros.translate.repository.d.f5439a.e().D(this.X);
        com.coloros.translate.utils.c0.f7098a.d("DialogueTranslationViewModel", "registerListener");
        e0().l("DialogueTranslationViewModel", this.Z);
        l();
    }

    public final void v0(androidx.lifecycle.s owner) {
        kotlin.jvm.internal.r.e(owner, "owner");
        this.f6289h.m(owner);
        this.f6294m.m(owner);
        this.f6290i.m(owner);
        this.f6291j.m(owner);
        this.f6292k.m(owner);
        this.f6293l.m(owner);
        this.f6297p.m(owner);
        this.f6295n.m(owner);
        this.f6296o.m(owner);
        this.f6298q.m(owner);
        this.f6299r.m(owner);
        this.f6292k.n(null);
        this.f6293l.n(null);
        this.f6290i.n(new n8.q(-1L, Boolean.FALSE));
    }

    public final void w0(int i10) {
        if (i10 == this.Y.d()) {
            return;
        }
        RtasrEngineHandler rtasrEngineHandlerE0 = e0();
        AsrParams asrParams = this.Y;
        asrParams.g(i10);
        rtasrEngineHandlerE0.o(asrParams);
    }

    public final void y0(Conversation item) {
        kotlin.jvm.internal.r.e(item, "item");
        this.A = false;
        this.f6297p.k(item);
    }

    public final void z0(Conversation conversation) {
        kotlin.jvm.internal.r.e(conversation, "<set-?>");
        this.f6303v = conversation;
    }
}
