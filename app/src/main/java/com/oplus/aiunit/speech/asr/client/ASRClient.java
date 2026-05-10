package com.oplus.aiunit.speech.asr.client;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.AIConnector;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.speech.asr.callback.RequestCallback;
import com.oplus.aiunit.speech.asr.detector.ASRDetector;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASROutputSlot;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import n8.h0;
import n8.j;
import n8.k;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ASRClient extends AIConnector<ASRInputSlot, ASROutputSlot> {
    public static final Companion Companion = new Companion(null);
    public static final String DEFAULT_DETECTOR_NAME = "audio_asr";
    public static final int ERROR_CODE_DROP_DATA = 6;
    public static final int ERROR_CODE_FILE_DEAL_STATUS = 8;
    public static final int ERROR_CODE_FILE_HEART = 7;
    public static final int ERROR_CODE_FILE_REMAIN_COUNT = 9;
    public static final int ERROR_CODE_HISTORY = 5;
    public static final int ERROR_CODE_INIT_FAILED = 2;
    public static final int ERROR_CODE_INIT_SUCCESSFUL = 1;
    public static final int ERROR_CODE_NONE = 0;
    public static final int ERROR_CODE_TASK_COMPLETE = 3;
    public static final String KEY_CALLBACK_ONERROR = "asr_callback_onerror";
    public static final String KEY_CALLBACK_ONSUCCESS = "asr_callback_onsuccess";
    public static final String KEY_FILE_MESSAGE = "asr_file_message";
    public static final String KEY_FILE_STATUS = "asr_file_status";
    public static final String KEY_METHOD_CALLBACK_TYPE = "asr_method_callback_type";
    public static final String KEY_RESULT_CODE = "asr_result_code";
    public static final String KEY_RESULT_DATA = "asr_result_data";
    public static final String KEY_RESULT_MSG = "asr_result_msg";
    public static final String KEY_RESULT_TYPE = "asr_result_type";
    public static final String KEY_RETRY_RESULT = "asr_retry_result";
    public static final String KEY_TASK_COMPLETE_RESULT = "asr_task_complete_result";
    public static final String RESULT_REMAIN_COUNT = "asr_remain_count";
    public static final String RESULT_TYPE_FILE = "asr_result_file";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ASRExternalCallback f10885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FileASRExternalCallback f10886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f10887c;

    public interface ASRExternalCallback {
        void dropOfflineData();

        void onHistory(int i10, String str, boolean z10);

        void onResult(int i10, String str, boolean z10);

        void taskComplete(int i10);
    }

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface FileASRExternalCallback {
        void onFileDealStatus(String str, String str2);

        void onFileHeart();

        void onFileResult(String str);

        void onRemainCount(String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ASRClient(Context context, int i10, boolean z10, String detectName) {
        super(context, new ASRDetector(context, i10, z10, detectName), "ASRClient");
        r.e(context, "context");
        r.e(detectName, "detectName");
        this.f10887c = k.b(new ASRClient$messenger$2(this));
        getDetector().setMessenger(a());
        AILog.init(context, true);
    }

    public static final void access$runFailure(ASRClient aSRClient, ErrorCode errorCode, String str) throws JSONException {
        aSRClient.getClass();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("code", errorCode.value());
        jSONObject.put("msg", str);
        jSONObject.put("message", str);
        FramePackage framePackage = new FramePackage();
        framePackage.setParam("asr_status", 0);
        framePackage.setParam("asr_result", jSONObject.toString());
        ((IAIMessenger) aSRClient.f10887c.getValue()).send(framePackage);
    }

    public final IAIMessenger a() {
        return (IAIMessenger) this.f10887c.getValue();
    }

    public final void abandon(final String callId) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.abandon.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "abandon()");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.abandon(callId);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "abandon(), errorCode: " + errorCodeProcess);
            }
        });
        AILog.d(getTAG(), "abandon super.stop() to detach()");
        stop();
    }

    public final void aiRelease(final String callId) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.aiRelease.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "aiRelease()");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.aiRelease(callId);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "aiRelease result, code: " + errorCodeProcess);
            }
        });
        AILog.d(getTAG(), "aiRelease super.stop() to detach()");
        stop();
    }

    public final boolean currentHasCache() {
        final z zVar = new z();
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.currentHasCache.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "currentHasCache()");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.currentHasCache();
                ASROutputSlot aSROutputSlot = (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot();
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, aSROutputSlot);
                if (errorCodeProcess != ErrorCode.kErrorNone) {
                    AILog.e(ASRClient.this.getTAG(), "currentHasCache, errorCode: " + errorCodeProcess);
                    return;
                }
                zVar.element = aSROutputSlot.getFramePackage().getParamPackage().getParamBoolean("asr_cache");
                AILog.d(ASRClient.this.getTAG(), "currentHasCache, errorCode: " + errorCodeProcess + ", hasCache: " + zVar.element);
            }
        });
        return zVar.element;
    }

    public final void doConsumeCount(String duid) {
        r.e(duid, "duid");
        doConsumeCount(duid, null);
    }

    public final boolean fileInit(final String duid) {
        r.e(duid, "duid");
        final z zVar = new z();
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.fileInit.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "fileInit start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.fileInit(duid);
                ASROutputSlot aSROutputSlot = (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot();
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, aSROutputSlot);
                zVar.element = Boolean.parseBoolean(aSROutputSlot.getFramePackage().getParamPackage().getParamStr("asr_result"));
                AILog.d(ASRClient.this.getTAG(), "fileInit result, process code: " + errorCodeProcess + ", init result: " + zVar.element);
            }
        });
        return zVar.element;
    }

    public final void fileRetry() {
        fileRetry(null);
    }

    public final ASRExternalCallback getAsrExternalCallback() {
        return this.f10885a;
    }

    public final FileASRExternalCallback getFileASRExternalCallback() {
        return this.f10886b;
    }

    public final void getRemainCount(String duid) {
        r.e(duid, "duid");
        getRemainCount(duid, null);
    }

    public final void getTranslationConfig(final Bundle bundle, final RequestCallback requestCallback) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.getTranslationConfig.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                RequestCallback requestCallback2 = requestCallback;
                if (requestCallback2 != null) {
                    requestCallback2.onError(code.value(), msg);
                }
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(this.getTAG(), "start getTranslationConfig");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) this.getDetector().createInputSlot();
                aSRInputSlot.getOnlineConfig(bundle);
                final ASRClient aSRClient = this;
                final RequestCallback requestCallback2 = requestCallback;
                aSRInputSlot.setMessenger(new IAIMessenger.Stub() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient$getTranslationConfig$1$run$1
                    @Override // com.oplus.aiunit.core.callback.IAIMessenger
                    public int send(FramePackage framePackage) {
                        h0 h0Var;
                        if (framePackage != null) {
                            aSRClient.a(framePackage, requestCallback2);
                            h0Var = h0.INSTANCE;
                        } else {
                            h0Var = null;
                        }
                        if (h0Var != null) {
                            return ErrorCode.kErrorNone.value();
                        }
                        throw new IllegalStateException("IAIMessenger framePackage null");
                    }
                });
                ErrorCode errorCodeProcess = this.getDetector().process(aSRInputSlot, (ASROutputSlot) this.getDetector().createOutputSlot());
                AILog.d(this.getTAG(), "getTranslationConfig, process code: " + errorCodeProcess);
            }
        });
    }

    public final boolean initAsr(final boolean z10, final String callId, final long j10, final long j11, final boolean z11, final long j12) {
        r.e(callId, "callId");
        removeUnitCache();
        final z zVar = new z();
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.initAsr.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "initASR");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.initASR(z10, callId, j10, j11, z11, j12);
                ASROutputSlot aSROutputSlot = (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot();
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, aSROutputSlot);
                if (errorCodeProcess != ErrorCode.kErrorNone) {
                    AILog.e(ASRClient.this.getTAG(), "initASR, errorCode: " + errorCodeProcess);
                    return;
                }
                int paramInt = aSROutputSlot.getFramePackage().getParamPackage().getParamInt("asr_status");
                zVar.element = 1 == paramInt;
                AILog.d(ASRClient.this.getTAG(), "initASR, initCode: " + paramInt + ", result: " + zVar.element + ", errorCode: " + errorCodeProcess);
            }
        });
        AILog.d(getTAG(), "init out result: " + zVar.element);
        return zVar.element;
    }

    public final int retry(final String callId) {
        r.e(callId, "callId");
        final a0 a0Var = new a0();
        a0Var.element = -2;
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.retry.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "retry()");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.retry(callId);
                ASROutputSlot aSROutputSlot = (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot();
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, aSROutputSlot);
                if (errorCodeProcess != ErrorCode.kErrorNone) {
                    AILog.e(ASRClient.this.getTAG(), "retry(), errorCode: " + errorCodeProcess);
                    return;
                }
                a0Var.element = aSROutputSlot.getFramePackage().getParamPackage().getParamInt(ASRClient.KEY_RETRY_RESULT);
                AILog.d(ASRClient.this.getTAG(), "retry(), errorCode: " + errorCodeProcess + ", retryResult: " + a0Var.element);
            }
        });
        return a0Var.element;
    }

    public final void sendFileData(final Bundle bundle) {
        r.e(bundle, "bundle");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.sendFileData.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "sendFileData start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.setFileData(bundle);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "sendFileData result, process code: " + errorCodeProcess);
            }
        });
    }

    public final void sendPCMData(final byte[] byteArray, final String peerId, final long j10, final long j11) {
        r.e(byteArray, "byteArray");
        r.e(peerId, "peerId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.sendPCMData.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "sendPCMData start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.setPCMData(byteArray, peerId, j10, j11);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "sendPCMData result, process code: " + errorCodeProcess);
            }
        });
    }

    public final void setAsrExternalCallback(ASRExternalCallback aSRExternalCallback) {
        this.f10885a = aSRExternalCallback;
    }

    public final void setFileASRExternalCallback(FileASRExternalCallback fileASRExternalCallback) {
        this.f10886b = fileASRExternalCallback;
    }

    public final void setLanguage(final String str, final List<String> list) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.setLanguage.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.setLanguage(str, list);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.i(ASRClient.this.getTAG(), "setLanguage: " + str + ",errorCode:" + errorCodeProcess);
            }
        });
    }

    public final void stopAsr(final String callId) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.stopAsr.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "stopAsr()");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.aiEndCall(callId);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "stopAsr result, code: " + errorCodeProcess);
            }
        });
    }

    public final void stopFileData() {
        stopFileData(null);
    }

    public /* synthetic */ ASRClient(Context context, int i10, boolean z10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? 0 : i10, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? "audio_asr" : str);
    }

    public final void a(FramePackage framePackage, RequestCallback requestCallback) {
        if (framePackage != null) {
            String paramStr = framePackage.getParamStr(KEY_METHOD_CALLBACK_TYPE);
            AILog.i(getTAG(), "handleTranslateConfigResult callbackMethod:" + paramStr);
            if (paramStr.equals(KEY_CALLBACK_ONSUCCESS)) {
                String paramStr2 = framePackage.getParamStr(KEY_RESULT_DATA);
                AILog.i(getTAG(), "handleTranslateConfigResult:" + paramStr2);
                if (requestCallback != null) {
                    requestCallback.onSuccess(paramStr2);
                    return;
                }
                return;
            }
            String paramStr3 = framePackage.getParamStr(KEY_RESULT_MSG);
            int paramInt = framePackage.getParamInt(KEY_RESULT_CODE);
            AILog.i(getTAG(), "handleTranslateConfigResult onError errorCode:" + paramInt + ",errorString:" + paramStr3);
            if (requestCallback != null) {
                requestCallback.onError(paramInt, paramStr3);
            }
        }
    }

    public final void doConsumeCount(final String duid, final Bundle bundle) {
        r.e(duid, "duid");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.doConsumeCount.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "doConsumeCount start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.doConsumeCount(duid, bundle);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "doConsumeCount result, process code: " + errorCodeProcess);
            }
        });
    }

    public final void fileRetry(final Bundle bundle) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.fileRetry.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "fileRetry start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.fileRetry(bundle);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "fileRetry result, process code: " + errorCodeProcess);
            }
        });
    }

    public final void getRemainCount(final String duid, final Bundle bundle) {
        r.e(duid, "duid");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.getRemainCount.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "getRemainCount start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.getRemainCount(duid, bundle);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "getRemainCount result, process code: " + errorCodeProcess);
            }
        });
    }

    public final void stopFileData(final Bundle bundle) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient.stopFileData.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) throws JSONException {
                r.e(code, "code");
                r.e(msg, "msg");
                ASRClient.access$runFailure(ASRClient.this, code, msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(ASRClient.this.getTAG(), "stopFileData start");
                ASRInputSlot aSRInputSlot = (ASRInputSlot) ASRClient.this.getDetector().createInputSlot();
                aSRInputSlot.stopFileData(bundle);
                ErrorCode errorCodeProcess = ASRClient.this.getDetector().process(aSRInputSlot, (ASROutputSlot) ASRClient.this.getDetector().createOutputSlot());
                AILog.d(ASRClient.this.getTAG(), "stopFileData result, process code: " + errorCodeProcess);
            }
        });
    }
}
