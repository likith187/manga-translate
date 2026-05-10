package com.coloros.translate.engine.asr.voicetranslate;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.b0;
import com.coloros.translate.engine.asr.voicetranslate.c;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.l0;
import com.coloros.translate.utils.q;
import com.coloros.translate.utils.t;
import com.coloros.translate.utils.v0;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.realtime_asr.client.RealTimeASRClient;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.translation.RealTimeAsrHelper;
import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.data.AsrAudioAck;
import com.oplus.aiunit.translation.data.AsrBaseResponse;
import com.oplus.aiunit.translation.data.AsrMtAck;
import com.oplus.aiunit.translation.data.AsrTtsAck;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import x1.p;

/* JADX INFO: loaded from: classes.dex */
public final class c implements y1.b {
    public static final a C = new a(null);
    private String A;
    private int B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private p f4864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f4867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f4868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f4869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicLong f4870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f4871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f4872k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private RealTimeAsrHelper f4873l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Boolean f4874m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private AtomicBoolean f4875n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4876o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private v0 f4877p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.coloros.translate.engine.tts.k f4878q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final n8.j f4879r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final w8.a f4880s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final C0063c f4881t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f4882u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f4883v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f4884w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f4885x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ArrayList f4886y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f4887z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            r.e(context, "context");
            try {
                r.a aVar = n8.r.Companion;
                AILog.init(context, false);
                Bundle bundle = new Bundle();
                bundle.putBoolean(ParamsKt.PARAM_KEY_FILTER_LOCAL_LLM, true);
                bundle.putBoolean(ParamsKt.PARAM_KEY_FILTER_ATTACH_LOCAL_LLM, true);
                DetectData detectData = AISettings.getDetectData(context, RealTimeAsrHelper.Companion.getDetectorName(), bundle);
                if (!detectData.isSupport()) {
                    c0.f7098a.e("AsrForTranslateRecord", "asr not support, reason is " + detectData);
                }
                return detectData.isSupport();
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("AsrForTranslateRecord", "isSupportAsr error: " + thM62exceptionOrNullimpl);
                }
                return false;
            }
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        b() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(c this$0, Boolean bool) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE)) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.AIUNIT_DISCONNECT;
                this$0.y(-1, kVar.getCode(), kVar.getMessage());
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b0 mo8invoke() {
            final c cVar = c.this;
            return new b0() { // from class: com.coloros.translate.engine.asr.voicetranslate.d
                @Override // androidx.lifecycle.b0
                public final void b(Object obj) {
                    c.b.invoke$lambda$0(cVar, (Boolean) obj);
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.engine.asr.voicetranslate.c$c, reason: collision with other inner class name */
    public static final class C0063c implements AsrRspCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4888a;

        C0063c() {
        }

        private final void d(AsrBaseResponse asrBaseResponse) {
            if (RealTimeASRClient.RealTimeASRStatus.STATUS_NET_CONNECTED.getCode() == asrBaseResponse.getCode()) {
                c.this.f4875n.set(false);
                c0.f7098a.i(c.this.f4863b, "onResponseResult, ws socket connect must start asr task: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
                v0 v0Var = c.this.f4877p;
                final w8.a aVar = c.this.f4880s;
                v0Var.d(new Runnable() { // from class: com.coloros.translate.engine.asr.voicetranslate.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.C0063c.e(aVar);
                    }
                }, 300L);
            }
            if (kotlin.jvm.internal.r.a(asrBaseResponse.getBizType(), "INIT_ASR_ASK") && asrBaseResponse.getCode() == ErrorCode.kErrorNoInternet.value()) {
                c.this.f4875n.set(false);
                c0.f7098a.i(c.this.f4863b, "onResponseResult, init asr error origin: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
            }
            if (kotlin.jvm.internal.r.a(asrBaseResponse.getBizType(), "START_ASK") && asrBaseResponse.getCode() == 0) {
                c.this.f4875n.set(true);
                c0.f7098a.i(c.this.f4863b, "onResponseResult, start asr success origin: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
                return;
            }
            if (kotlin.jvm.internal.r.a(asrBaseResponse.getBizType(), "END_ASK")) {
                c0.f7098a.i(c.this.f4863b, "onResponseResult, stop asr success origin: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
                c.this.f4875n.set(false);
                return;
            }
            if (!kotlin.jvm.internal.r.a(asrBaseResponse.getBizType(), "SERVER_END_ASK")) {
                c.this.A(asrBaseResponse.getCode(), asrBaseResponse.getMessage());
                if (RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_SUCCESS.getCode() == asrBaseResponse.getCode()) {
                    c0.f7098a.q(c.this.f4863b, "onResponseResult, ws socket on open success: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
                    v0 v0Var2 = c.this.f4877p;
                    final w8.a aVar2 = c.this.f4880s;
                    v0.e(v0Var2, new Runnable() { // from class: com.coloros.translate.engine.asr.voicetranslate.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            c.C0063c.f(aVar2);
                        }
                    }, 0L, 2, null);
                    return;
                }
                return;
            }
            if (c.this.f4865d) {
                c cVar = c.this;
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_SERVICE_END_TASK;
                cVar.y(2, kVar.getCode(), kVar.getMessage() + " in AiUnit, origin: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
            }
            if (c.this.f4875n.get()) {
                c0.f7098a.i(c.this.f4863b, "onResponseResult, auto stop asr success reject");
                return;
            }
            c0.f7098a.i(c.this.f4863b, "onResponseResult, auto stop asr success");
            c.this.f4875n.set(false);
            c cVar2 = c.this;
            com.coloros.translate.utils.k kVar2 = com.coloros.translate.utils.k.ASR_SERVICE_END_TASK;
            cVar2.y(2, kVar2.getCode(), kVar2.getMessage() + " in AiUnit, origin: [" + asrBaseResponse.getCode() + ", " + asrBaseResponse.getMessage() + "]");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(w8.a tmp0) {
            kotlin.jvm.internal.r.e(tmp0, "$tmp0");
            tmp0.mo8invoke();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(w8.a tmp0) {
            kotlin.jvm.internal.r.e(tmp0, "$tmp0");
            tmp0.mo8invoke();
        }

        public final void c() {
            this.f4888a = true;
        }

        @Override // com.oplus.aiunit.translation.callback.AsrRspCallback
        public void onAsr(AsrAudioAck ackMessage) {
            kotlin.jvm.internal.r.e(ackMessage, "ackMessage");
            c0.a aVar = c0.f7098a;
            if (aVar.l()) {
                aVar.d(c.this.f4863b, "onAsr,  startOffset:" + ackMessage.getStartOffset() + " endOffset:" + ackMessage.getEndOffset() + " src:" + aVar.g(ackMessage.getText()) + " type:" + ackMessage.getType());
            }
            if (kotlin.jvm.internal.r.a(ackMessage.getType(), "FINAL")) {
                aVar.q(c.this.f4863b, "abandon final msg");
                return;
            }
            boolean zX = c.this.x(ackMessage.getType());
            aVar.d(c.this.f4863b, "onAsr,  isEnd:" + zX + "  msgId:" + ackMessage.getMsgId() + " lid:" + ackMessage.getLid() + " type:" + ackMessage.getType());
            if (this.f4888a) {
                aVar.q(c.this.f4863b, "onAsr, reject dispose");
                return;
            }
            if (!c.this.f4876o) {
                aVar.d(c.this.f4863b, "onAsr, reject no hasStartAsr");
            }
            String text = ackMessage.getText();
            if (text == null || text.length() == 0) {
                p pVar = c.this.f4864c;
                if (pVar != null) {
                    pVar.d();
                    return;
                }
                return;
            }
            p pVar2 = c.this.f4864c;
            if (pVar2 != null) {
                AsrResult asrResult = new AsrResult(null, 0, 0, null, 15, null);
                c cVar = c.this;
                String msgId = ackMessage.getMsgId();
                asrResult.f(msgId != null ? Integer.parseInt(msgId) : 0);
                asrResult.g(zX ? 2 : 1);
                String text2 = ackMessage.getText();
                if (text2 == null) {
                    text2 = "";
                }
                asrResult.h(text2);
                Bundle bundle = new Bundle();
                bundle.putString(ASRInputSlot.KEY_FILE_RECORDID, ackMessage.getRecordId());
                Integer startOffset = ackMessage.getStartOffset();
                bundle.putInt("startOffset", startOffset != null ? startOffset.intValue() : 0);
                Integer endOffset = ackMessage.getEndOffset();
                bundle.putInt("endOffset", endOffset != null ? endOffset.intValue() : 0);
                String lid = ackMessage.getLid();
                if (lid == null) {
                    lid = cVar.f4882u;
                }
                bundle.putString("asr_language", lid);
                asrResult.e(bundle);
                pVar2.onRtasrResult(asrResult);
            }
        }

        @Override // com.oplus.aiunit.translation.callback.AsrRspCallback
        public void onMt(AsrMtAck ackMessage) {
            kotlin.jvm.internal.r.e(ackMessage, "ackMessage");
            c0.a aVar = c0.f7098a;
            if (aVar.l()) {
                String str = c.this.f4863b;
                String strG = aVar.g(ackMessage.getSrcText());
                String strG2 = aVar.g(ackMessage.getTargetText());
                String type = ackMessage.getType();
                Map<String, Object> extend = ackMessage.getExtend();
                aVar.d(str, "onMt srcText : " + strG + " , targetText : " + strG2 + " , type : " + type + " , extend : " + (extend != null ? com.coloros.translate.utils.b0.b(extend) : null) + "}");
            }
            if (kotlin.jvm.internal.r.a(ackMessage.getType(), "FINAL")) {
                aVar.q(c.this.f4863b, "abandon final msg");
                return;
            }
            boolean zX = c.this.x(ackMessage.getType());
            aVar.d(c.this.f4863b, "onMt, isEnd:" + zX + " msgId:" + ackMessage.getMsgId() + " src:" + ackMessage.getSrcLanguage() + " target:" + ackMessage.getTargetLanguge());
            if (this.f4888a) {
                aVar.q(c.this.f4863b, "onMt, reject dispose");
                return;
            }
            if (!c.this.f4876o) {
                aVar.d(c.this.f4863b, "onMt, reject no hasStartAsr");
            }
            p pVar = c.this.f4864c;
            if (pVar != null) {
                AsrTranslateResult asrTranslateResult = new AsrTranslateResult(null, 0, 0, null, 15, null);
                c cVar = c.this;
                String msgId = ackMessage.getMsgId();
                asrTranslateResult.f(msgId != null ? Integer.parseInt(msgId) : 0);
                asrTranslateResult.h(zX ? 2 : 1);
                String targetText = ackMessage.getTargetText();
                if (targetText == null) {
                    targetText = "";
                }
                asrTranslateResult.g(targetText);
                Bundle bundle = new Bundle();
                bundle.putString(ASRInputSlot.KEY_FILE_RECORDID, ackMessage.getRecordId());
                String srcLanguage = ackMessage.getSrcLanguage();
                if (srcLanguage == null) {
                    srcLanguage = cVar.f4882u;
                }
                bundle.putString("asr_language", srcLanguage);
                String targetLanguge = ackMessage.getTargetLanguge();
                if (targetLanguge == null) {
                    targetLanguge = cVar.f4883v;
                }
                bundle.putString("translate_language", targetLanguge);
                Map<String, Object> extend2 = ackMessage.getExtend();
                if ((extend2 != null ? extend2.get("is_content_safe") : null) != null) {
                    Map<String, Object> extend3 = ackMessage.getExtend();
                    Object obj = extend3 != null ? extend3.get("is_content_safe") : null;
                    kotlin.jvm.internal.r.c(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    bundle.putBoolean("translate_is_safe", ((Boolean) obj).booleanValue());
                }
                asrTranslateResult.e(bundle);
                pVar.onTranslateResult(asrTranslateResult);
            }
        }

        @Override // com.oplus.aiunit.translation.callback.AsrRspCallback
        public void onResult(AsrBaseResponse result) {
            kotlin.jvm.internal.r.e(result, "result");
            c0.a aVar = c0.f7098a;
            aVar.d(c.this.f4863b, "onResponseResult,  " + com.coloros.translate.utils.b0.b(result));
            if (this.f4888a) {
                aVar.i(c.this.f4863b, "onResponseResult, reject dispose");
                return;
            }
            if (kotlin.jvm.internal.r.a(result.getBizType(), "ASR_ASK")) {
                aVar.i(c.this.f4863b, "onResponseResult, asr task reject origin: [" + result.getCode() + ", " + result.getMessage() + "]");
                return;
            }
            if (c.this.f4874m == null || !kotlin.jvm.internal.r.a(c.this.f4874m, Boolean.TRUE) || !kotlin.jvm.internal.r.a(result.getBizType(), "START_ASK") || result.getCode() != 0) {
                if (!c.this.f4876o && result.getCode() != RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_SUCCESS.getCode() && result.getCode() != RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_ERROR.getCode() && result.getCode() != ErrorCode.kErrorNoInternet.value()) {
                    aVar.i(c.this.f4863b, "onResponseResult, reject no hasStartAsr");
                    return;
                } else if (kotlin.jvm.internal.r.a(result.getBizType(), "AUDIO") && result.getCode() == 1002) {
                    aVar.i(c.this.f4863b, "onResponseResult, audio channel not found");
                    return;
                } else {
                    d(result);
                    return;
                }
            }
            c.this.f4875n.set(true);
            aVar.i(c.this.f4863b, "onResponseResult, start asr success origin: [" + result.getCode() + ", " + result.getMessage() + "]");
            if (kotlin.jvm.internal.r.a(result.getMessage(), "DOUBAO_TONGCHUAN_02")) {
                q.b(true);
            } else {
                q.b(false);
            }
        }

        @Override // com.oplus.aiunit.translation.callback.AsrRspCallback
        public void onTts(AsrTtsAck ackMessage) {
            kotlin.jvm.internal.r.e(ackMessage, "ackMessage");
            c0.a aVar = c0.f7098a;
            aVar.d(c.this.f4863b, "onTts");
            if (!t.a() || !((Boolean) l0.a.g(l0.f7130a, "simultaneous_auto_play", Boolean.TRUE, null, 4, null)).booleanValue() || !c.this.f4875n.get()) {
                aVar.d(c.this.f4863b, "don't play tts");
                return;
            }
            if (c.this.f4878q == null) {
                c.this.f4878q = new com.coloros.translate.engine.tts.k(c.this.f4862a);
            }
            byte[] bArrN = w9.a.n(ackMessage.getPayload());
            com.coloros.translate.engine.tts.k kVar = c.this.f4878q;
            if (kVar != null) {
                kVar.h(bArrN, ackMessage.getFormat());
            }
        }

        @Override // com.oplus.aiunit.translation.callback.AsrRspCallback
        public void taskComplete(int i10) {
            c0.f7098a.d(c.this.f4863b, "taskComplete, errorCode = " + i10);
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
            return h0.INSTANCE;
        }

        public final void invoke() {
            c.this.E();
        }
    }

    public c(Context context, boolean z10) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f4862a = context;
        this.f4863b = "AsrForTranslateRecord" + this;
        this.f4868g = "ourSide";
        this.f4869h = 1;
        this.f4870i = new AtomicLong(0L);
        this.f4872k = "";
        this.f4875n = new AtomicBoolean(false);
        this.f4877p = new v0("asrUpload");
        this.f4879r = n8.k.b(new b());
        this.f4880s = new d();
        this.f4881t = new C0063c();
        this.f4873l = new RealTimeAsrHelper(context);
        this.f4882u = "zh";
        this.f4883v = "en";
        this.f4884w = true;
        this.A = "0.0.0";
        this.B = -1;
    }

    private final void D(String str) {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d(this.f4863b, "startAsr, callId = " + str);
            RealTimeAsrHelper realTimeAsrHelper = this.f4873l;
            if (realTimeAsrHelper != null) {
                realTimeAsrHelper.startAsr(h.INSTANCE.a(this.f4866e, this.f4868g, this.f4882u, this.f4883v, this.f4869h, this.f4884w, this.f4885x, this.f4886y, this.f4887z, this.B));
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q(this.f4863b, "startAsr error, callId = " + str);
            com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_INIT_ERROR;
            y(2, kVar.getCode(), "[APP_ERROR][START_EXCEPTION]" + kVar.getMessage() + ", exception: " + thM62exceptionOrNullimpl.getClass().getSimpleName() + ": " + thM62exceptionOrNullimpl.getMessage() + ", stackTrace: " + kotlin.text.r.W0(n8.e.b(thM62exceptionOrNullimpl), 500));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        String str;
        c0.a aVar = c0.f7098a;
        aVar.q(this.f4863b, "startAsrTask initResult:" + this.f4874m + " " + this.f4875n.get() + " asrClient:" + this.f4873l);
        if (kotlin.jvm.internal.r.a(this.f4874m, Boolean.TRUE) && (str = this.f4866e) != null && str.length() != 0) {
            this.f4876o = true;
            String str2 = this.f4866e;
            if (str2 == null) {
                str2 = "";
            }
            D(str2);
            return;
        }
        String str3 = this.f4863b;
        Boolean bool = this.f4874m;
        boolean z10 = this.f4875n.get();
        String str4 = this.f4866e;
        boolean z11 = str4 == null || str4.length() == 0;
        StringBuilder sb = new StringBuilder();
        sb.append("startAsrTask initResult:");
        sb.append(bool);
        sb.append(" ");
        sb.append(z10);
        sb.append(" ");
        sb.append(!z11);
        aVar.e(str3, sb.toString());
    }

    private final void F(final byte[] bArr) {
        Object objM59constructorimpl;
        h0 h0Var;
        if (bArr == null || bArr.length == 0) {
            c0.f7098a.q(this.f4863b, "startRecognizeSingleRecord data is null or empty");
            com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_EMPTY_VOICE;
            y(2, kVar.getCode(), kVar.getMessage());
            return;
        }
        if (!this.f4875n.get()) {
            c0.f7098a.d(this.f4863b, "startRecognize init asrTaskStart false");
        }
        try {
            r.a aVar = n8.r.Companion;
            final long andIncrement = this.f4870i.getAndIncrement();
            this.f4877p.c(new Runnable() { // from class: com.coloros.translate.engine.asr.voicetranslate.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.G(this.f4859a, bArr, andIncrement);
                }
            });
            Context context = this.f4862a;
            String str = this.f4866e;
            kotlin.jvm.internal.r.b(str);
            i.g(context, str, andIncrement);
            p pVar = this.f4864c;
            if (pVar != null) {
                pVar.onRecordTime(andIncrement);
            }
            p pVar2 = this.f4864c;
            if (pVar2 != null) {
                pVar2.a(bArr, andIncrement);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q(this.f4863b, "startRecognizeSingleRecord, callId = " + this.f4866e + ", seqNum = " + this.f4870i + ", error: " + thM62exceptionOrNullimpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(c this$0, byte[] bArr, long j10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        RealTimeAsrHelper realTimeAsrHelper = this$0.f4873l;
        if (realTimeAsrHelper != null) {
            String str = this$0.f4868g;
            if (str == null) {
                str = "";
            }
            realTimeAsrHelper.processAudio(str, bArr, String.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(w8.a tmp0) {
        kotlin.jvm.internal.r.e(tmp0, "$tmp0");
        tmp0.mo8invoke();
    }

    private final void u() {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            c0.f7098a.d(this.f4863b, "endAsr, callId = " + this.f4866e + " asrClient:" + this.f4873l);
            RealTimeAsrHelper realTimeAsrHelper = this.f4873l;
            if (realTimeAsrHelper != null) {
                String str = this.f4868g;
                String str2 = this.f4866e;
                if (str2 == null) {
                    str2 = "";
                }
                realTimeAsrHelper.endAsr(str, str2);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q(this.f4863b, "endAsr asr,  error: " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final void v() {
        String str;
        Object objM59constructorimpl;
        h0 h0Var;
        if (this.f4875n.get() && (str = this.f4867f) != null) {
            try {
                r.a aVar = n8.r.Companion;
                c0.f7098a.d(this.f4863b, "initAsr endAsr, recordOldId = " + str);
                RealTimeAsrHelper realTimeAsrHelper = this.f4873l;
                if (realTimeAsrHelper != null) {
                    String str2 = this.f4868g;
                    String str3 = this.f4867f;
                    if (str3 == null) {
                        str3 = "";
                    }
                    realTimeAsrHelper.endAsr(str2, str3);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.q(this.f4863b, "initAsr endAsr asr,  error: " + thM62exceptionOrNullimpl.getMessage());
            }
            this.f4876o = false;
            this.f4875n.set(false);
        }
        this.f4867f = this.f4866e;
    }

    private final b0 w() {
        return (b0) this.f4879r.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean x(String str) {
        return kotlin.jvm.internal.r.a(str, "VAD_FINAL");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(int i10, int i11, String str) {
        c0.a aVar = c0.f7098a;
        aVar.i(this.f4863b, "onStatusInner from:" + i10 + " code:" + i11 + " msg:" + str);
        if (i11 == com.coloros.translate.utils.k.ASR_INIT_SUCCESS.getCode()) {
            aVar.i(this.f4863b, "initAsr success");
            this.f4874m = Boolean.TRUE;
            return;
        }
        if (i11 != com.coloros.translate.utils.k.ASR_INIT_ERROR.getCode()) {
            p pVar = this.f4864c;
            if (pVar != null) {
                pVar.f(i10, i11, str);
                return;
            }
            return;
        }
        aVar.i(this.f4863b, "initAsr failed");
        this.f4874m = Boolean.FALSE;
        p pVar2 = this.f4864c;
        if (pVar2 != null) {
            pVar2.f(i10, i11, str);
        }
    }

    private final void z() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            h0 h0Var = null;
            this.f4874m = null;
            v();
            c0.f7098a.d(this.f4863b, "realInitAsr callId = " + this.f4866e + ", languageFrom = " + this.f4882u + ", languageTo = " + this.f4883v + " asrClient:" + this.f4873l);
            com.google.gson.l lVar = new com.google.gson.l();
            lVar.n("appVersion", this.A);
            RealTimeAsrHelper realTimeAsrHelper = this.f4873l;
            if (realTimeAsrHelper != null) {
                realTimeAsrHelper.initAsr(this.f4882u, this.f4883v, this.f4872k, this.f4868g, Boolean.TRUE, null, lVar.toString(), this.f4881t);
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.ASR_INIT_ERROR;
            y(2, kVar.getCode(), "[APP_ERROR][INIT_EXCEPTION]" + kVar.getMessage() + ", exception: " + thM62exceptionOrNullimpl.getClass().getSimpleName() + ": " + thM62exceptionOrNullimpl.getMessage() + ", stackTrace: " + kotlin.text.r.W0(n8.e.b(thM62exceptionOrNullimpl), 500));
        }
    }

    public final void A(int i10, String str) {
        String str2;
        com.coloros.translate.utils.k kVar = i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_INVALID_PARAMS.getCode() ? com.coloros.translate.utils.k.ASR_PARAM_INVALID : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_INVALID_REQBODY.getCode() ? com.coloros.translate.utils.k.ASR_DATA_ERROR : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_SERVER_UNKNOWN.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_SERVER_UNKNOWN : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_ALGO_NOT_READY.getCode() ? com.coloros.translate.utils.k.ASR_ALGO_NOT_READY : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_REQ_TIMEOUT.getCode() ? com.coloros.translate.utils.k.ASR_REQ_TIMEOUT : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_INVALID_ALGO.getCode() ? com.coloros.translate.utils.k.ASR_INVALID_ALGO : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_REQ_POST.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_REQ_POST : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_ALGO_INTERNAL.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_ALGO_INTERNAL : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_INVALID_TASK.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_INVALID_TASK : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_PROCESS_RESP.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_PROCESS_RESP : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_DECRYPT_REQ.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_DECRYPT_REQ : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_ENCRYPT_ACK.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_ENCRYPT_ACK : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_CONTENT_CHECK.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_CONTENT_CHECK : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_CONTENT_SAFE_CHECK.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_CONTENT_SAFE_CHECK : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_DATA_UPLOAD.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_DATA_UPLOAD : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_UNKNOWN.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_OTHER : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_DECRYPT_ACK.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_DECRYPT_ACK : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_PROCESS.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_PROCESS : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_WAIT_FINAL_TIMEOUT.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_WAIT_FINAL_TIMEOUT : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_NO_INIT.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_NOT_INIT : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_NET_FAILURE.getCode() ? com.coloros.translate.utils.k.ASR_ERROR_NET_FAILURE : i10 == RealTimeASRClient.RealTimeASRStatus.ERROR_NET_DISCONNECT.getCode() ? com.coloros.translate.utils.k.ASR_TASK_NET_ERROR : i10 == RealTimeASRClient.RealTimeASRStatus.STATUS_NET_CONNECTED.getCode() ? com.coloros.translate.utils.k.ASR_NET_CONNECT : i10 == RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_SUCCESS.getCode() ? com.coloros.translate.utils.k.ASR_INIT_SUCCESS : i10 == RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_ERROR.getCode() ? com.coloros.translate.utils.k.ASR_INIT_ERROR : i10 == ErrorCode.kErrorNoInternet.value() ? com.coloros.translate.utils.k.ASR_PLUGIN_ERROR_NO_INTERNET : com.coloros.translate.utils.k.ASR_ERROR_OTHER;
        if (i10 == RealTimeASRClient.RealTimeASRStatus.STATUS_INIT_ERROR.getCode()) {
            str2 = "[SDK_ERROR][STATUS_INIT_ERROR]" + kVar.getMessage() + " in AiUnit, origin: [" + i10 + ", " + str + "]";
        } else {
            str2 = "[SDK_ERROR]" + kVar.getMessage() + " in AiUnit, origin: [" + i10 + ", " + str + "]";
        }
        y(2, kVar.getCode(), str2);
    }

    public final void B(p callBack) {
        kotlin.jvm.internal.r.e(callBack, "callBack");
        this.f4864c = callBack;
        c0.f7098a.i(this.f4863b, "setAsrCallBack " + callBack);
    }

    public final void C(boolean z10) {
        this.f4865d = z10;
    }

    @Override // y1.b
    public void a(String callId, Bundle bundle) {
        kotlin.jvm.internal.r.e(callId, "callId");
        this.f4866e = callId;
        this.f4887z = bundle != null ? bundle.getBoolean("enableLlm", false) : false;
        long j10 = bundle != null ? bundle.getLong("OffsetMsgId", 0L) : 0L;
        if (i.c(this.f4862a, callId) != 0 || j10 <= 0) {
            this.f4870i.set(i.c(this.f4862a, callId) + 1);
        } else {
            c0.f7098a.i(this.f4863b, "initAsr translation clear data died offsetPageId= " + j10);
            this.f4870i.set(j10 + 1);
        }
        i.g(this.f4862a, callId, this.f4870i.get());
        this.f4871j = bundle != null ? bundle.getBoolean("asr_param_smooth_switch", false) : false;
        this.f4872k = "com.coloros.translate";
        String string = bundle != null ? bundle.getString("asr_param_language_from", "zh") : null;
        this.f4882u = string != null ? string : "zh";
        this.f4884w = bundle != null ? bundle.getBoolean("asr_param_translate_switch", true) : false;
        this.f4885x = bundle != null ? bundle.getBoolean("isAutoMaticLanguage", false) : false;
        String string2 = bundle != null ? bundle.getString("asr_param_language_to", "en") : null;
        this.f4883v = string2 != null ? string2 : "en";
        String string3 = bundle != null ? bundle.getString("appVersion", "0.0.0") : null;
        this.A = string3 != null ? string3 : "0.0.0";
        this.f4886y = bundle != null ? bundle.getStringArrayList("autoMaticLanguages") : null;
        int i10 = bundle != null ? bundle.getInt("sceneId", -1) : -1;
        this.B = i10;
        c0.f7098a.d(this.f4863b, "sceneId= " + i10);
        if (this.f4878q == null) {
            this.f4878q = new com.coloros.translate.engine.tts.k(this.f4862a);
        }
        z();
    }

    @Override // y1.b
    public void b(byte[] bArr, byte[] bArr2) {
        F(bArr);
    }

    @Override // y1.b
    public void destroy() {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            RealTimeAsrHelper realTimeAsrHelper = this.f4873l;
            if (realTimeAsrHelper != null) {
                String str = this.f4866e;
                if (str == null) {
                    str = "";
                }
                realTimeAsrHelper.abandon(str);
            }
            RealTimeAsrHelper realTimeAsrHelper2 = this.f4873l;
            if (realTimeAsrHelper2 != null) {
                realTimeAsrHelper2.releaseAsr(this.f4868g);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q(this.f4863b, "destroy, error: " + thM62exceptionOrNullimpl);
        }
        this.f4877p.f();
        this.f4873l = null;
        this.f4864c = null;
        this.f4874m = null;
        this.f4866e = null;
        this.f4870i.set(0L);
        this.f4876o = false;
        this.f4875n.set(false);
        this.f4881t.c();
        com.coloros.translate.observer.c.f5327o.e(w());
    }

    @Override // y1.b
    public Bundle invokeMethod(String str, String str2, Bundle bundle) {
        return null;
    }

    @Override // y1.b
    public void stop() {
        Object objM59constructorimpl;
        v0 v0Var = this.f4877p;
        final w8.a aVar = this.f4880s;
        v0Var.g(new Runnable() { // from class: com.coloros.translate.engine.asr.voicetranslate.a
            @Override // java.lang.Runnable
            public final void run() {
                c.H(aVar);
            }
        });
        c0.f7098a.d(this.f4863b, "stop, callId = " + this.f4866e + " asrClient:" + this.f4873l);
        try {
            r.a aVar2 = n8.r.Companion;
            u();
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar3 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q(this.f4863b, "stop asr error: " + thM62exceptionOrNullimpl);
        }
        this.f4876o = false;
        this.f4874m = null;
        this.f4875n.set(false);
    }
}
