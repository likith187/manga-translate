package com.oplus.aiunit.antispam.client;

import android.content.Context;
import com.google.gson.d;
import com.google.gson.q;
import com.oplus.aisubsystem.core.client.AiClient;
import com.oplus.aiunit.antispam.client.AntiSpamRequest;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.IInferenceCallback;
import com.oplus.aiunit.core.callback.IProcessCallback;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import java.util.UUID;
import java.util.function.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes.dex */
public final class AntiSpamClient extends AiClient {
    private static final String ANTISPAM_DETECT_NAME = "nlp_base_antispam_schedule";
    private static final String ANTISPAM_JSON_RESULT = "custom::antispam_json_result";
    public static final Companion Companion = new Companion(null);
    private static final String METHOD_CHECK_TEXT = "method_check_text";
    private static final String PROCESS_CALLBACK_NAME = "antispam_process_callback";
    private static final String SDK_TYPE_AISDK = "AISDK";
    private static final int SDK_VERSION_NO = 1001;
    private static final String TAG = "AntiSpamClient";
    private final d gson;

    private final class AntiSpamFinishCallback extends IInferenceCallback.Stub {
        private final AntiSpamCallback callback;

        public AntiSpamFinishCallback(AntiSpamCallback antiSpamCallback) {
            this.callback = antiSpamCallback;
        }

        private final void onInferenceFailure(int i10, String str) {
            AILog.e(AntiSpamClient.TAG, "onInferenceFailure: err = " + i10 + ", msg = " + str);
            AntiSpamCallback antiSpamCallback = this.callback;
            if (antiSpamCallback != null) {
                antiSpamCallback.onFailure(i10, str);
            }
        }

        private final void onInferenceSuccess(FramePackage framePackage) {
            String paramStr = framePackage.getParamStr(AntiSpamClient.ANTISPAM_JSON_RESULT);
            AILog.d(AntiSpamClient.TAG, "onInferenceSuccess: jsonResult = " + paramStr);
            AntiSpamClient antiSpamClient = AntiSpamClient.this;
            r.b(paramStr);
            AntiSpamResult antiSpamFinalResult = antiSpamClient.getAntiSpamFinalResult(paramStr);
            AILog.i(AntiSpamClient.TAG, "onInferenceSuccess: final result = " + antiSpamFinalResult);
            if ((antiSpamFinalResult != null ? antiSpamFinalResult.getStatus() : null) == null) {
                AntiSpamCallback antiSpamCallback = this.callback;
                if (antiSpamCallback != null) {
                    antiSpamCallback.onFailure(ErrorCode.kErrorProcessFail.value(), "AntiSpamResult is null");
                    return;
                }
                return;
            }
            AntiSpamCallback antiSpamCallback2 = this.callback;
            if (antiSpamCallback2 != null) {
                antiSpamCallback2.onSuccess(antiSpamFinalResult);
            }
        }

        @Override // com.oplus.aiunit.core.callback.IInferenceCallback
        public void onInferenceCallback(FramePackage framePackage) {
            if (framePackage == null) {
                onInferenceFailure(ErrorCode.kErrorProcessFail.value(), "framePackage is null");
                return;
            }
            int intErrorCode = framePackage.getIntErrorCode();
            if (intErrorCode == ErrorCode.kErrorNone.value()) {
                onInferenceSuccess(framePackage);
            } else {
                onInferenceFailure(intErrorCode, framePackage.getErrorMessage());
            }
        }
    }

    private final class AntiSpamProcessCallback extends IProcessCallback.Stub {
        private final AntiSpamCallback callback;

        public AntiSpamProcessCallback(AntiSpamCallback antiSpamCallback) {
            this.callback = antiSpamCallback;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public String name() {
            return AntiSpamClient.PROCESS_CALLBACK_NAME;
        }

        @Override // com.oplus.aiunit.core.callback.IProcessCallback
        public int onCallback(ParamPackage paramPackage) {
            if (paramPackage == null) {
                AILog.e(AntiSpamClient.TAG, "onCallback: paramPackage is null");
                return ErrorCode.kErrorProcessFail.value();
            }
            String paramStr = paramPackage.getParamStr(AntiSpamClient.ANTISPAM_JSON_RESULT);
            if (paramStr == null) {
                AILog.e(AntiSpamClient.TAG, "onCallback: jsonResult is null");
                return ErrorCode.kErrorProcessFail.value();
            }
            AntiSpamClient antiSpamClient = AntiSpamClient.this;
            AILog.i(AntiSpamClient.TAG, "onCallback: jsonResult = " + paramStr);
            AntiSpamResult antiSpamFinalResult = antiSpamClient.getAntiSpamFinalResult(paramStr);
            AILog.i(AntiSpamClient.TAG, "onCallback: final result = " + antiSpamFinalResult);
            if ((antiSpamFinalResult != null ? antiSpamFinalResult.getStatus() : null) == null) {
                return ErrorCode.kErrorProcessFail.value();
            }
            AntiSpamCallback antiSpamCallback = this.callback;
            if (antiSpamCallback != null) {
                antiSpamCallback.onProcess(antiSpamFinalResult);
            }
            return ErrorCode.kErrorNone.value();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getClientVersion() {
            return AntiSpamClient.SDK_VERSION_NO;
        }

        public final String getDetectName() {
            return AntiSpamClient.ANTISPAM_DETECT_NAME;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AntiSpamClient(Context context, AntiSpamSettings antiSpamSettings) {
        super(context, ANTISPAM_DETECT_NAME, antiSpamSettings);
        r.e(context, "context");
        r.e(antiSpamSettings, "antiSpamSettings");
        this.gson = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h0 checkText$lambda$0(AntiSpamClient this$0, String content, String sceneId, String sessionId, boolean z10, AntiSpamCallback antiSpamCallback) {
        r.e(this$0, "this$0");
        r.e(content, "$content");
        r.e(sceneId, "$sceneId");
        r.e(sessionId, "$sessionId");
        this$0.checkTextSync(content, sceneId, sessionId, z10, antiSpamCallback);
        return h0.INSTANCE;
    }

    private final void checkTextSync(final String str, final String str2, final String str3, final boolean z10, final AntiSpamCallback antiSpamCallback) {
        runAction(new AiClient.a() { // from class: com.oplus.aiunit.antispam.client.AntiSpamClient.checkTextSync.1
            @Override // com.oplus.aisubsystem.core.client.AiClient.a
            public String failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                AILog.e(AntiSpamClient.TAG, "checkTextSync failure: errCode = " + code + ", errMsg = " + msg);
                AntiSpamCallback antiSpamCallback2 = antiSpamCallback;
                if (antiSpamCallback2 == null) {
                    return null;
                }
                antiSpamCallback2.onFailure(code.value(), msg);
                return null;
            }

            @Override // com.oplus.aisubsystem.core.client.AiClient.a
            public String run() {
                AILog.i(AntiSpamClient.TAG, "antispam sdk version = 1001");
                FrameInputSlot frameInputSlotCreateInputSlot = AntiSpamClient.this.createInputSlot();
                FrameOutputSlot frameOutputSlotCreateOutputSlot = AntiSpamClient.this.createOutputSlot();
                AntiSpamRequest.Companion companion = AntiSpamRequest.Companion;
                String str4 = str;
                String str5 = str2;
                String str6 = str3;
                boolean z11 = z10;
                AntiSpamClient antiSpamClient = AntiSpamClient.this;
                AntiSpamCallback antiSpamCallback2 = antiSpamCallback;
                AntiSpamRequest.Builder builder = new AntiSpamRequest.Builder();
                builder.setMethod(AntiSpamClient.METHOD_CHECK_TEXT);
                builder.setContent(str4);
                builder.setSceneId(str5);
                builder.setSessionId(str6);
                builder.setSample(z11);
                builder.setSDKVersionNo("1001");
                builder.setSDKType(AntiSpamClient.SDK_TYPE_AISDK);
                builder.addProcessCallback(antiSpamClient.new AntiSpamProcessCallback(antiSpamCallback2));
                builder.setInferenceCallback(antiSpamClient.new AntiSpamFinishCallback(antiSpamCallback2));
                FramePackage framePackage = builder.build().getFramePackage();
                AILog.i(AntiSpamClient.TAG, "run: content = " + str + ", sceneId = " + str2);
                AntiSpamClient.this.infer(frameInputSlotCreateInputSlot, frameOutputSlotCreateOutputSlot, framePackage);
                return str3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AntiSpamResult getAntiSpamFinalResult(String str) {
        if (str.length() == 0) {
            return null;
        }
        try {
            return (AntiSpamResult) this.gson.m(str, AntiSpamResult.class);
        } catch (q e10) {
            AILog.e(TAG, "getAntiSpamFinalResult", e10);
            return null;
        }
    }

    public static final int getClientVersion() {
        return Companion.getClientVersion();
    }

    public static final String getDetectName() {
        return Companion.getDetectName();
    }

    public final void checkText(String content, String sceneId, boolean z10, AntiSpamCallback antiSpamCallback) {
        r.e(content, "content");
        r.e(sceneId, "sceneId");
        String string = UUID.randomUUID().toString();
        r.d(string, "toString(...)");
        checkText(content, sceneId, string, z10, antiSpamCallback);
    }

    public final x5.a checkText(final String content, final String sceneId, final String sessionId, final boolean z10, final AntiSpamCallback antiSpamCallback) {
        r.e(content, "content");
        r.e(sceneId, "sceneId");
        r.e(sessionId, "sessionId");
        return x5.d.a(new Supplier() { // from class: com.oplus.aiunit.antispam.client.a
            @Override // java.util.function.Supplier
            public final Object get() {
                return AntiSpamClient.checkText$lambda$0(this.f10832a, content, sceneId, sessionId, z10, antiSpamCallback);
            }
        });
    }
}
