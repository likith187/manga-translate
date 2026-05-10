package com.oplus.aiunit.realtime_asr.client;

import android.content.Context;
import com.oplus.aiunit.core.AIConnector;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.callback.AICallback;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.realtime_asr.callback.TranslateConfigCallback;
import com.oplus.aiunit.realtime_asr.data.AsrInitData;
import com.oplus.aiunit.realtime_asr.data.AsrStartData;
import com.oplus.aiunit.realtime_asr.detector.RealTimeAsrDetector;
import com.oplus.aiunit.realtime_asr.request.TranslateConfigRequest;
import com.oplus.aiunit.realtime_asr.result.AsrAckMessage;
import com.oplus.aiunit.realtime_asr.result.AudioText;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrOutputSlot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.j;
import n8.k;
import r8.a;
import r8.b;

/* JADX INFO: loaded from: classes2.dex */
public final class RealTimeASRClient extends AIConnector<RealTimeAsrInputSlot, RealTimeAsrOutputSlot> {
    public static final String CALLBACK_METHOD_ONERROR = "callback_method_onerror";
    public static final String CALLBACK_METHOD_ONSUCCESS = "callback_method_onsuccess";
    public static final Companion Companion = new Companion(null);
    public static final String KEY_TRANSLATION_CALLBACK_TYPE = "custom::translation_callback_type";
    public static final String KEY_TRANSLATION_METHOD = "custom::translation_method";
    public static final String PARAM_ASR_STRING = "param_asr_string";
    private static final String PARAM_KEY_AUDIO_RESULT = "audio_text_result";
    public static final String PARAM_KEY_ERROR_CODE = "errorCode";
    public static final String PARAM_KEY_ERROR_REASON = "errorReason";
    private static final String PARAM_KEY_STATUS_CODE = "rtAsrStatusCode";
    private static final String PARAM_KEY_STATUS_DESC = "rtAsrStatusDesc";
    public static final String PARAM_MT_STRING = "param_mt_string";
    public static final String PARAM_TTS_STRING = "param_tts_string";
    public static final String TAG = "RealTimeASRClient";
    private AppState appState;
    private AsrInitData asrInitData;
    private final List<AsrStartData> asrStartDataList;
    private AudioTextCallback audioTextCallback;
    private AtomicBoolean isEndAsr;
    private final j messenger$delegate;
    private boolean removeModalWord;
    private TimerTask setCheckFinalTimerTask;
    private final j speechAsrClient$delegate;
    private Timer timer;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AppState {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ AppState[] $VALUES;
        private final int value;
        public static final AppState NOT_INIT = new AppState("NOT_INIT", 0, 0);
        public static final AppState INITED = new AppState("INITED", 1, 1);
        public static final AppState STARTED = new AppState("STARTED", 2, 2);
        public static final AppState STOPPED = new AppState("STOPPED", 3, 0);

        private static final /* synthetic */ AppState[] $values() {
            return new AppState[]{NOT_INIT, INITED, STARTED, STOPPED};
        }

        static {
            AppState[] appStateArr$values = $values();
            $VALUES = appStateArr$values;
            $ENTRIES = b.a(appStateArr$values);
        }

        private AppState(String str, int i10, int i11) {
            this.value = i11;
        }

        public static a getEntries() {
            return $ENTRIES;
        }

        public static AppState valueOf(String str) {
            return (AppState) Enum.valueOf(AppState.class, str);
        }

        public static AppState[] values() {
            return (AppState[]) $VALUES.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    public interface AudioTextCallback {
        void onResult(AsrAckMessage asrAckMessage);

        void taskComplete(int i10);
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RealTimeASRStatus {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ RealTimeASRStatus[] $VALUES;
        public static final Companion Companion;
        private final int code;
        private String statusDesc;
        public static final RealTimeASRStatus ERROR_INVALID_PARAMS = new RealTimeASRStatus("ERROR_INVALID_PARAMS", 0, 3000400, "请求参数错误");
        public static final RealTimeASRStatus ERROR_INVALID_REQBODY = new RealTimeASRStatus("ERROR_INVALID_REQBODY", 1, 3000403, "请求体格式异常");
        public static final RealTimeASRStatus ERROR_INVALID_HEADER = new RealTimeASRStatus("ERROR_INVALID_HEADER", 2, 3000404, "请求头缺失");
        public static final RealTimeASRStatus ERROR_INVALID_START_MULTI = new RealTimeASRStatus("ERROR_INVALID_START_MULTI", 3, 3000405, "请求中start收到两次");
        public static final RealTimeASRStatus ERROR_INVALID_START_LATE = new RealTimeASRStatus("ERROR_INVALID_START_LATE", 4, 3000406, "请求中start比audio晚");
        public static final RealTimeASRStatus ERROR_SERVER_UNKNOWN = new RealTimeASRStatus("ERROR_SERVER_UNKNOWN", 5, 3000500, "服务端未知错误");
        public static final RealTimeASRStatus ERROR_ALGO_NOT_READY = new RealTimeASRStatus("ERROR_ALGO_NOT_READY", 6, 3000501, "算法服务不可用");
        public static final RealTimeASRStatus ERROR_REQ_TIMEOUT = new RealTimeASRStatus("ERROR_REQ_TIMEOUT", 7, 3000502, "接口请求超时");
        public static final RealTimeASRStatus ERROR_INVALID_ALGO = new RealTimeASRStatus("ERROR_INVALID_ALGO", 8, 3000503, "未知的算法模型");
        public static final RealTimeASRStatus ERROR_REQ_POST = new RealTimeASRStatus("ERROR_REQ_POST", 9, 3000504, "请求转发错误");
        public static final RealTimeASRStatus ERROR_ALGO_INTERNAL = new RealTimeASRStatus("ERROR_ALGO_INTERNAL", 10, 3000400, "算法服务内部错误");
        public static final RealTimeASRStatus ERROR_INVALID_TASK = new RealTimeASRStatus("ERROR_INVALID_TASK", 11, 3000506, "未知的任务ID");
        public static final RealTimeASRStatus ERROR_PROCESS_RESP = new RealTimeASRStatus("ERROR_PROCESS_RESP", 12, 3000507, "处理异步响应时发生异常");
        public static final RealTimeASRStatus ERROR_DECRYPT_REQ = new RealTimeASRStatus("ERROR_DECRYPT_REQ", 13, 3000508, "请求解密时发生异常");
        public static final RealTimeASRStatus ERROR_ENCRYPT_ACK = new RealTimeASRStatus("ERROR_ENCRYPT_ACK", 14, 3000509, "响应加密时发生异常");
        public static final RealTimeASRStatus ERROR_CONTENT_CHECK = new RealTimeASRStatus("ERROR_CONTENT_CHECK", 15, 3000600, "内容检测未知错误");
        public static final RealTimeASRStatus ERROR_CONTENT_SAFE_CHECK = new RealTimeASRStatus("ERROR_CONTENT_SAFE_CHECK", 16, 3000702, "内容完整校验失败");
        public static final RealTimeASRStatus ERROR_DATA_UPLOAD = new RealTimeASRStatus("ERROR_DATA_UPLOAD", 17, 3000703, "数据未上传完成");
        public static final RealTimeASRStatus ERROR_UNKNOWN = new RealTimeASRStatus("ERROR_UNKNOWN", 18, 3009999, "未知错误");
        public static final RealTimeASRStatus ERROR_DECRYPT_ACK = new RealTimeASRStatus("ERROR_DECRYPT_ACK", 19, 100100, "响应解密时发生异常");
        public static final RealTimeASRStatus ERROR_WAIT_FINAL_TIMEOUT = new RealTimeASRStatus("ERROR_WAIT_FINAL_TIMEOUT", 20, 100101, "等待FINAL超时");
        public static final RealTimeASRStatus ERROR_PROCESS = new RealTimeASRStatus("ERROR_PROCESS", 21, 100102, "语音识别处理异常");
        public static final RealTimeASRStatus ERROR_NO_INIT = new RealTimeASRStatus("ERROR_NO_INIT", 22, 100103, "网络未初始化");
        public static final RealTimeASRStatus ERROR_NET_FAILURE = new RealTimeASRStatus("ERROR_NET_FAILURE", 23, 100104, "网络返回异常");
        public static final RealTimeASRStatus ERROR_NET_DISCONNECT = new RealTimeASRStatus("ERROR_NET_DISCONNECT", 24, 100105, "网络未连接");
        public static final RealTimeASRStatus STATUS_NET_CONNECTED = new RealTimeASRStatus("STATUS_NET_CONNECTED", 25, 100201, "网络已连接");
        public static final RealTimeASRStatus STATUS_RESULT_DATA = new RealTimeASRStatus("STATUS_RESULT_DATA", 26, 100202, "识别到结果数据");
        public static final RealTimeASRStatus STATUS_INIT_SUCCESS = new RealTimeASRStatus("STATUS_INIT_SUCCESS", 27, 100203, "initAsr成功");
        public static final RealTimeASRStatus STATUS_INIT_ERROR = new RealTimeASRStatus("STATUS_INIT_ERROR", 28, 100204, "initAsr失败");
        public static final RealTimeASRStatus STATUS_ASR_COMPLETE_SUCCESS = new RealTimeASRStatus("STATUS_ASR_COMPLETE_SUCCESS", 29, 100205, "接收到ASR END回调");

        public static final class Companion {
            private Companion() {
            }

            public static /* synthetic */ RealTimeASRStatus toExtStatusCode$default(Companion companion, int i10, String str, int i11, Object obj) {
                if ((i11 & 2) != 0) {
                    str = null;
                }
                return companion.toExtStatusCode(i10, str);
            }

            public final RealTimeASRStatus toExtStatusCode(int i10, String str) {
                Object next;
                RealTimeASRStatus realTimeASRStatusStatusDesc;
                Iterator<E> it = RealTimeASRStatus.getEntries().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (((RealTimeASRStatus) next).getCode() == i10) {
                        break;
                    }
                }
                RealTimeASRStatus realTimeASRStatus = (RealTimeASRStatus) next;
                return (realTimeASRStatus == null || (realTimeASRStatusStatusDesc = realTimeASRStatus.statusDesc(str)) == null) ? RealTimeASRStatus.ERROR_UNKNOWN.statusDesc(str) : realTimeASRStatusStatusDesc;
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private static final /* synthetic */ RealTimeASRStatus[] $values() {
            return new RealTimeASRStatus[]{ERROR_INVALID_PARAMS, ERROR_INVALID_REQBODY, ERROR_INVALID_HEADER, ERROR_INVALID_START_MULTI, ERROR_INVALID_START_LATE, ERROR_SERVER_UNKNOWN, ERROR_ALGO_NOT_READY, ERROR_REQ_TIMEOUT, ERROR_INVALID_ALGO, ERROR_REQ_POST, ERROR_ALGO_INTERNAL, ERROR_INVALID_TASK, ERROR_PROCESS_RESP, ERROR_DECRYPT_REQ, ERROR_ENCRYPT_ACK, ERROR_CONTENT_CHECK, ERROR_CONTENT_SAFE_CHECK, ERROR_DATA_UPLOAD, ERROR_UNKNOWN, ERROR_DECRYPT_ACK, ERROR_WAIT_FINAL_TIMEOUT, ERROR_PROCESS, ERROR_NO_INIT, ERROR_NET_FAILURE, ERROR_NET_DISCONNECT, STATUS_NET_CONNECTED, STATUS_RESULT_DATA, STATUS_INIT_SUCCESS, STATUS_INIT_ERROR, STATUS_ASR_COMPLETE_SUCCESS};
        }

        static {
            RealTimeASRStatus[] realTimeASRStatusArr$values = $values();
            $VALUES = realTimeASRStatusArr$values;
            $ENTRIES = b.a(realTimeASRStatusArr$values);
            Companion = new Companion(null);
        }

        private RealTimeASRStatus(String str, int i10, int i11, String str2) {
            this.code = i11;
            this.statusDesc = str2;
        }

        public static a getEntries() {
            return $ENTRIES;
        }

        public static RealTimeASRStatus valueOf(String str) {
            return (RealTimeASRStatus) Enum.valueOf(RealTimeASRStatus.class, str);
        }

        public static RealTimeASRStatus[] values() {
            return (RealTimeASRStatus[]) $VALUES.clone();
        }

        public final int getCode() {
            return this.code;
        }

        public final String getStatusDesc() {
            return this.statusDesc;
        }

        public final void setStatusDesc(String str) {
            r.e(str, "<set-?>");
            this.statusDesc = str;
        }

        public final RealTimeASRStatus statusDesc(String str) {
            if (str != null) {
                this.statusDesc = str;
            }
            return this;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Speaker {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ Speaker[] $VALUES;
        public static final Companion Companion;
        private final String value;
        public static final Speaker OUR_SIDE = new Speaker("OUR_SIDE", 0, "ourSide");
        public static final Speaker THIRD_SIDE = new Speaker("THIRD_SIDE", 1, "thirdSide");
        public static final Speaker OTHER_SIDE = new Speaker("OTHER_SIDE", 2, "otherSide");
        public static final Speaker VIDEO_SIDE = new Speaker("VIDEO_SIDE", 3, "videoSide");

        public static final class Companion {
            private Companion() {
            }

            public final Speaker toSpeaker(String speakerSide) {
                Object next;
                r.e(speakerSide, "speakerSide");
                Iterator<E> it = Speaker.getEntries().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (r.a(((Speaker) next).getValue(), speakerSide)) {
                        break;
                    }
                }
                return (Speaker) next;
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        private static final /* synthetic */ Speaker[] $values() {
            return new Speaker[]{OUR_SIDE, THIRD_SIDE, OTHER_SIDE, VIDEO_SIDE};
        }

        static {
            Speaker[] speakerArr$values = $values();
            $VALUES = speakerArr$values;
            $ENTRIES = b.a(speakerArr$values);
            Companion = new Companion(null);
        }

        private Speaker(String str, int i10, String str2) {
            this.value = str2;
        }

        public static a getEntries() {
            return $ENTRIES;
        }

        public static Speaker valueOf(String str) {
            return (Speaker) Enum.valueOf(Speaker.class, str);
        }

        public static Speaker[] values() {
            return (Speaker[]) $VALUES.clone();
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealTimeASRClient(Context context, boolean z10) {
        super(context, new RealTimeAsrDetector(context, z10), TAG);
        r.e(context, "context");
        this.isEndAsr = new AtomicBoolean(false);
        this.appState = AppState.NOT_INIT;
        this.asrStartDataList = new ArrayList();
        this.speechAsrClient$delegate = k.b(new RealTimeASRClient$speechAsrClient$2(context));
        this.messenger$delegate = k.b(new RealTimeASRClient$messenger$2(this));
        getDetector().setMessenger(getMessenger());
        AILog.INSTANCE.setDebugMode(true);
        add(new AICallback() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.1
            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onAllDestroy(String detectName) {
                r.e(detectName, "detectName");
                AILog.i(RealTimeASRClient.this.getTAG(), "[onAllDestroy] detectName: " + detectName);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onAllFail(String detectName, int i10, String str) {
                r.e(detectName, "detectName");
                AILog.i(RealTimeASRClient.this.getTAG(), "onAllFail detectName : " + detectName + ", err: " + i10 + ", msg: " + str);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onDestroy() {
                AICallback.DefaultImpls.onDestroy(this);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onFail(int i10, String str) {
                AICallback.DefaultImpls.onFail(this, i10, str);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onOneDestroy(AIConfig config) {
                r.e(config, "config");
                AILog.i(RealTimeASRClient.this.getTAG(), "onOneDestroy config : " + config);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onOneFail(AIConfig config, int i10, String str) {
                r.e(config, "config");
                AILog.i(RealTimeASRClient.this.getTAG(), "onOneFail config : " + config + ", err: " + i10 + ", msg: " + str);
            }

            @Override // com.oplus.aiunit.core.callback.AICallback, com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnect() {
                AICallback.DefaultImpls.onServiceConnect(this);
            }

            @Override // com.oplus.aiunit.core.callback.AICallback, com.oplus.aiunit.core.callback.ConnectionCallback
            public void onServiceConnectFailed(int i10) {
                AICallback.DefaultImpls.onServiceConnectFailed(this, i10);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onStart() {
                AICallback.DefaultImpls.onStart(this);
            }

            @Override // com.oplus.aiunit.core.callback.DetectStateCallback
            public void onStart(AIConfig config) {
                r.e(config, "config");
                AILog.i(RealTimeASRClient.this.getTAG(), "onStart config : " + config);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAsrStartData(AsrStartData asrStartData) {
        Object next;
        AILog.d(getTAG(), "addAsrStartData: " + asrStartData);
        Iterator<T> it = this.asrStartDataList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (r.a(((AsrStartData) next).getSpeaker().getValue(), asrStartData.getSpeaker().getValue())) {
                    break;
                }
            }
        }
        AsrStartData asrStartData2 = (AsrStartData) next;
        if (asrStartData2 != null) {
            this.asrStartDataList.remove(asrStartData2);
        }
        this.asrStartDataList.add(asrStartData);
    }

    private final IAIMessenger getMessenger() {
        return (IAIMessenger) this.messenger$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SpeechAsrClient getSpeechAsrClient() {
        return (SpeechAsrClient) this.speechAsrClient$delegate.getValue();
    }

    public static /* synthetic */ void initAsr$default(RealTimeASRClient realTimeASRClient, String str, String str2, String str3, Speaker speaker, boolean z10, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            speaker = null;
        }
        Speaker speaker2 = speaker;
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        realTimeASRClient.initAsr(str, str2, str3, speaker2, z10);
    }

    public static /* synthetic */ void reconnect$default(RealTimeASRClient realTimeASRClient, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        realTimeASRClient.reconnect(str, z10);
    }

    private final void reinitializeAndStartAsr() {
        Speaker speaker;
        String tag = getTAG();
        AsrInitData asrInitData = this.asrInitData;
        String value = (asrInitData == null || (speaker = asrInitData.getSpeaker()) == null) ? null : speaker.getValue();
        AILog.i(tag, "[reinitializeAndStartAsr] asrInitData: " + value + ", asrStartDataList: " + this.asrStartDataList.size());
        AsrInitData asrInitData2 = this.asrInitData;
        if (asrInitData2 != null) {
            initAsr(asrInitData2.getCallId(), asrInitData2.getLanguage(), asrInitData2.getTargetLanguage(), asrInitData2.getSpeaker(), asrInitData2.isRemoveModalWord());
        }
        for (AsrStartData asrStartData : this.asrStartDataList) {
            startAsrData(asrStartData.getCallId(), asrStartData.getSpeaker(), false);
        }
    }

    public static /* synthetic */ void retryOnFailure$default(RealTimeASRClient realTimeASRClient, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = null;
        }
        realTimeASRClient.retryOnFailure(l10);
    }

    private final void sendStatus(RealTimeASRStatus realTimeASRStatus, String str) {
        try {
            AsrAckMessage asrAckMessage = new AsrAckMessage(realTimeASRStatus.getCode(), str == null ? realTimeASRStatus.getStatusDesc() : str, (String) null, (AudioText) null, 12, (DefaultConstructorMarker) null);
            AudioTextCallback audioTextCallback = this.audioTextCallback;
            if (audioTextCallback != null) {
                audioTextCallback.onResult(asrAckMessage);
            }
        } catch (Exception e10) {
            AILog.e(getTAG(), "message send error:" + realTimeASRStatus + "-" + str, e10);
        }
    }

    public static /* synthetic */ void sendStatus$default(RealTimeASRClient realTimeASRClient, RealTimeASRStatus realTimeASRStatus, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        realTimeASRClient.sendStatus(realTimeASRStatus, str);
    }

    private final void startAsrData(final String str, final Speaker speaker, final boolean z10) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.startAsrData.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "startAsrData failure code: " + code + ",msg:" + msg);
                if (code == ErrorCode.kErrorNoInternet) {
                    String tag = RealTimeASRClient.this.getTAG();
                    RealTimeASRStatus realTimeASRStatus = RealTimeASRStatus.ERROR_NET_DISCONNECT;
                    AILog.i(tag, "startAsrData sendStatus code: " + realTimeASRStatus.getCode() + ",msg:" + realTimeASRStatus.getStatusDesc());
                    RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, realTimeASRStatus, null, 2, null);
                } else {
                    RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                }
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                RealTimeASRClient.this.appState = AppState.STARTED;
                AILog.d(RealTimeASRClient.this.getTAG(), "start realtime Asr");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callStartAsrMethod(str, speaker);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.i(RealTimeASRClient.this.getTAG(), "startAsr ret, process code: " + errorCodeProcess);
                if (z10) {
                    RealTimeASRClient.this.addAsrStartData(new AsrStartData(str, speaker));
                }
            }
        });
    }

    public static /* synthetic */ void startAsrData$default(RealTimeASRClient realTimeASRClient, String str, Speaker speaker, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        realTimeASRClient.startAsrData(str, speaker, z10);
    }

    public final void abandon(final String callId) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.abandon.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "abandon failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "abandon remains data cached by framework");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callAbandonMethod(callId);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.i(RealTimeASRClient.this.getTAG(), "abandon ret, process code: " + errorCodeProcess);
            }
        });
    }

    public final void aiRelease(final String callId) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.aiRelease.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "aiRelease failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "release ai");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callAiReleaseMethod(callId);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.i(RealTimeASRClient.this.getTAG(), "aiRelease, process code: " + errorCodeProcess);
            }
        });
    }

    public final void endAsr(final String callId, final Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.endAsr.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "endAsr failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "end realtime Asr");
                RealTimeASRClient.this.appState = AppState.STOPPED;
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callEndAsrMethod(callId, speaker);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                RealTimeASRClient.this.isEndAsr.set(true);
                RealTimeASRClient realTimeASRClient = RealTimeASRClient.this;
                final RealTimeASRClient realTimeASRClient2 = RealTimeASRClient.this;
                realTimeASRClient.setCheckFinalTimerTask = new TimerTask() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$endAsr$1$run$1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        realTimeASRClient2.isEndAsr.set(false);
                    }
                };
                RealTimeASRClient.this.timer = new Timer();
                Timer timer = RealTimeASRClient.this.timer;
                if (timer != null) {
                    timer.schedule(RealTimeASRClient.this.setCheckFinalTimerTask, 5100L);
                }
                AILog.i(RealTimeASRClient.this.getTAG(), "endAsr ret, process code: " + errorCodeProcess);
                RealTimeASRClient.this.asrInitData = null;
                RealTimeASRClient.this.asrStartDataList.clear();
            }
        });
    }

    public final Integer getAppState() {
        return (Integer) runAction(new AIConnector.Action<Integer>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.getAppState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public Integer failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "getAppState failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (Integer) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public Integer run() {
                AILog.d(RealTimeASRClient.this.getTAG(), "get AppState");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callGetAppStateMethod();
                int iValue = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot()).value();
                AILog.d(RealTimeASRClient.this.getTAG(), "get AppState: " + iValue);
                return Integer.valueOf(iValue);
            }
        });
    }

    public final AudioTextCallback getAudioTextCallback() {
        return this.audioTextCallback;
    }

    public final void getTranslationConfig(final TranslateConfigRequest request, final TranslateConfigCallback callback) {
        r.e(request, "request");
        r.e(callback, "callback");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.getTranslationConfig.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                callback.onError(code.value(), msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                this.appState = AppState.STARTED;
                AILog.d(this.getTAG(), "start getTranslationConfig");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) this.getDetector().createInputSlot();
                realTimeAsrInputSlot.getOnlineConfig(request);
                final RealTimeASRClient realTimeASRClient = this;
                final TranslateConfigCallback translateConfigCallback = callback;
                realTimeAsrInputSlot.setMessenger(new IAIMessenger.Stub() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient$getTranslationConfig$1$run$1
                    @Override // com.oplus.aiunit.core.callback.IAIMessenger
                    public int send(FramePackage framePackage) {
                        h0 h0Var;
                        if (framePackage != null) {
                            realTimeASRClient.handleResult(framePackage, translateConfigCallback);
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
                ErrorCode errorCodeProcess = this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) this.getDetector().createOutputSlot());
                AILog.d(this.getTAG(), "getTranslationConfig, process code: " + errorCodeProcess);
            }
        });
    }

    public final void handleResult(FramePackage framePackage, TranslateConfigCallback resultCallback) {
        r.e(resultCallback, "resultCallback");
        if (framePackage != null) {
            if (framePackage.getParamStr("custom::translation_callback_type").equals("callback_method_onsuccess")) {
                String paramStr = framePackage.getParamStr("param_asr_string");
                String paramStr2 = framePackage.getParamStr("param_mt_string");
                String paramStr3 = framePackage.getParamStr("param_tts_string");
                r.b(paramStr);
                r.b(paramStr2);
                r.b(paramStr3);
                resultCallback.onSuccess(paramStr, paramStr2, paramStr3);
                return;
            }
            String paramStr4 = framePackage.getParamStr("errorReason");
            String paramStr5 = framePackage.getParamStr("errorCode");
            r.d(paramStr5, "getParamStr(...)");
            int i10 = Integer.parseInt(paramStr5);
            AILog.i(getTAG(), "handleGetOnlineResult onError errorCode:" + i10 + ",errorString:" + paramStr4);
            resultCallback.onError(i10, paramStr4);
        }
    }

    public final void initAsr(final String callId, final String language, final String targetLanguage, final Speaker speaker, final boolean z10) {
        r.e(callId, "callId");
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.initAsr.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "initAsr failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.STATUS_INIT_ERROR, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "init realtime Asr");
                RealTimeASRClient.this.removeModalWord = z10;
                RealTimeASRClient.this.appState = AppState.INITED;
                RealTimeASRClient.this.isEndAsr.set(false);
                TimerTask timerTask = RealTimeASRClient.this.setCheckFinalTimerTask;
                if (timerTask != null) {
                    timerTask.cancel();
                }
                Timer timer = RealTimeASRClient.this.timer;
                if (timer != null) {
                    timer.cancel();
                }
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                r.b(realTimeAsrInputSlot);
                RealTimeAsrInputSlot.callInitAsrMethod$default(realTimeAsrInputSlot, callId, language, targetLanguage, speaker, z10, false, 32, null);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.d(RealTimeASRClient.this.getTAG(), "init ret, process code: " + errorCodeProcess);
                RealTimeASRClient.this.asrInitData = new AsrInitData(callId, language, targetLanguage, speaker, z10);
            }
        });
    }

    public final void processDownAudioFrame(final String callId, final long j10, final String timeStamp, final byte[] audioData, final int i10, final Speaker speaker) {
        r.e(callId, "callId");
        r.e(timeStamp, "timeStamp");
        r.e(audioData, "audioData");
        r.e(speaker, "speaker");
        if (!getDetector().checkActive().booleanValue()) {
            AILog.i(getTAG(), "[processDownAudioFrame] active false, need restart");
            reinitializeAndStartAsr();
        }
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.processDownAudioFrame.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "processDownAudioFrame failure code: " + code + ",msg:" + msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "process down Asr");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callProcessDownAsr(callId, j10, timeStamp, audioData, i10, speaker.getValue());
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.d(RealTimeASRClient.this.getTAG(), "processDownAudioFrame ret, process code: " + errorCodeProcess);
            }
        });
    }

    public final void processUpAudioFrame(final String callId, final long j10, final String timeStamp, final byte[] audioData, final int i10) {
        r.e(callId, "callId");
        r.e(timeStamp, "timeStamp");
        r.e(audioData, "audioData");
        if (!getDetector().checkActive().booleanValue()) {
            AILog.i(getTAG(), "[processUpAudioFrame] active false, need restart");
            reinitializeAndStartAsr();
        }
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.processUpAudioFrame.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "processUpAudioFrame failure code: " + code + ",msg:" + msg);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "process up Asr");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callProcessUpAsr(callId, j10, timeStamp, audioData, i10);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.d(RealTimeASRClient.this.getTAG(), "processUpAudioFrame ret, process code: " + errorCodeProcess);
            }
        });
    }

    public final void reconnect(final String callId, final boolean z10) {
        r.e(callId, "callId");
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.reconnect.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "reconnect failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "Asr reconnect");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callReconnectMethod(callId, z10);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.i(RealTimeASRClient.this.getTAG(), "reconnect ret, process code: " + errorCodeProcess);
            }
        });
    }

    public final void retryOnFailure(final Long l10) {
        runAction(new AIConnector.Action<h0>() { // from class: com.oplus.aiunit.realtime_asr.client.RealTimeASRClient.retryOnFailure.1
            @Override // com.oplus.aiunit.core.AIConnector.Action
            public /* bridge */ /* synthetic */ h0 run() {
                run2();
                return h0.INSTANCE;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public h0 failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.i(RealTimeASRClient.this.getTAG(), "retryOnFailure failure code: " + code + ",msg:" + msg);
                RealTimeASRClient.sendStatus$default(RealTimeASRClient.this, RealTimeASRStatus.ERROR_PROCESS, null, 2, null);
                return (h0) AIConnector.Action.DefaultImpls.failure(this, code, msg);
            }

            /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
            public void run2() {
                AILog.d(RealTimeASRClient.this.getTAG(), "start realtime Asr");
                RealTimeAsrInputSlot realTimeAsrInputSlot = (RealTimeAsrInputSlot) RealTimeASRClient.this.getDetector().createInputSlot();
                realTimeAsrInputSlot.callRetryOnFailureMethod(l10);
                ErrorCode errorCodeProcess = RealTimeASRClient.this.getDetector().process(realTimeAsrInputSlot, (RealTimeAsrOutputSlot) RealTimeASRClient.this.getDetector().createOutputSlot());
                AILog.i(RealTimeASRClient.this.getTAG(), "retryOnFailure ret, process code: " + errorCodeProcess);
            }
        });
    }

    public final void setAudioTextCallback(AudioTextCallback audioTextCallback) {
        this.audioTextCallback = audioTextCallback;
    }

    public final void startAsr(String callId, Speaker speaker) {
        r.e(callId, "callId");
        r.e(speaker, "speaker");
        startAsrData$default(this, callId, speaker, false, 4, null);
    }

    public /* synthetic */ RealTimeASRClient(Context context, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? false : z10);
    }
}
