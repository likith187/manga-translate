package com.oplus.aiunit.speech.asr.client;

import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.speech.asr.client.ASRClient;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.a;

/* JADX INFO: loaded from: classes2.dex */
public final class ASRClient$messenger$2 extends s implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ASRClient f10918a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ASRClient$messenger$2(ASRClient aSRClient) {
        super(0);
        this.f10918a = aSRClient;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.oplus.aiunit.speech.asr.client.ASRClient$messenger$2$1] */
    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final AnonymousClass1 mo8invoke() {
        final ASRClient aSRClient = this.f10918a;
        return new IAIMessenger.Stub() { // from class: com.oplus.aiunit.speech.asr.client.ASRClient$messenger$2.1
            @Override // com.oplus.aiunit.core.callback.IAIMessenger
            public int send(FramePackage framePackage) {
                if (framePackage != null) {
                    int paramInt = framePackage.getParamInt("asr_status");
                    AILog.d(aSRClient.getTAG(), "on Send, status code: " + paramInt);
                    if (paramInt == 0) {
                        boolean zA = r.a(framePackage.getParamStr(ASRClient.KEY_RESULT_TYPE), ASRClient.RESULT_TYPE_FILE);
                        ASRClient aSRClient2 = aSRClient;
                        if (zA) {
                            ASRClient.FileASRExternalCallback fileASRExternalCallback = aSRClient2.getFileASRExternalCallback();
                            if (fileASRExternalCallback != null) {
                                String paramStr = framePackage.getParamStr("asr_result");
                                r.d(paramStr, "getParamStr(...)");
                                fileASRExternalCallback.onFileResult(paramStr);
                            }
                        } else {
                            ASRClient.ASRExternalCallback asrExternalCallback = aSRClient2.getAsrExternalCallback();
                            if (asrExternalCallback != null) {
                                asrExternalCallback.onResult(paramInt, framePackage.getParamStr("asr_result"), framePackage.getParamPackage().getParamBoolean("asr_cache"));
                            }
                        }
                    } else if (paramInt != 3) {
                        switch (paramInt) {
                            case 5:
                                ASRClient.ASRExternalCallback asrExternalCallback2 = aSRClient.getAsrExternalCallback();
                                if (asrExternalCallback2 != null) {
                                    asrExternalCallback2.onHistory(paramInt, framePackage.getParamStr("asr_result"), framePackage.getParamPackage().getParamBoolean("asr_cache"));
                                }
                                break;
                            case 6:
                                ASRClient.ASRExternalCallback asrExternalCallback3 = aSRClient.getAsrExternalCallback();
                                if (asrExternalCallback3 != null) {
                                    asrExternalCallback3.dropOfflineData();
                                }
                                break;
                            case 7:
                                ASRClient.FileASRExternalCallback fileASRExternalCallback2 = aSRClient.getFileASRExternalCallback();
                                if (fileASRExternalCallback2 != null) {
                                    fileASRExternalCallback2.onFileHeart();
                                }
                                break;
                            case 8:
                                ASRClient.FileASRExternalCallback fileASRExternalCallback3 = aSRClient.getFileASRExternalCallback();
                                if (fileASRExternalCallback3 != null) {
                                    String paramStr2 = framePackage.getParamPackage().getParamStr(ASRClient.KEY_FILE_STATUS);
                                    r.d(paramStr2, "getParamStr(...)");
                                    String paramStr3 = framePackage.getParamPackage().getParamStr(ASRClient.KEY_FILE_MESSAGE);
                                    r.d(paramStr3, "getParamStr(...)");
                                    fileASRExternalCallback3.onFileDealStatus(paramStr2, paramStr3);
                                }
                                break;
                            case 9:
                                ASRClient.FileASRExternalCallback fileASRExternalCallback4 = aSRClient.getFileASRExternalCallback();
                                if (fileASRExternalCallback4 != null) {
                                    String paramStr4 = framePackage.getParamPackage().getParamStr(ASRClient.RESULT_REMAIN_COUNT);
                                    r.d(paramStr4, "getParamStr(...)");
                                    fileASRExternalCallback4.onRemainCount(paramStr4);
                                }
                                break;
                        }
                    } else {
                        ASRClient.ASRExternalCallback asrExternalCallback4 = aSRClient.getAsrExternalCallback();
                        if (asrExternalCallback4 != null) {
                            asrExternalCallback4.taskComplete(framePackage.getParamInt(ASRClient.KEY_TASK_COMPLETE_RESULT));
                        }
                    }
                }
                return ErrorCode.kErrorNone.value();
            }
        };
    }
}
