package com.oplus.aiunit.translation.fuction.asr.dynamic;

import android.annotation.SuppressLint;
import android.content.Context;
import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import com.oplus.aiunit.translation.utils.AILogHelper;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"StaticFieldLeak"})
public final class DynamicRealtimeAsrManager {
    public static final String TAG = "DynamicRealtimeAsrManager";
    private static DynamicRealtimeAsrClient asrClient;
    private static Context mContext;
    public static final DynamicRealtimeAsrManager INSTANCE = new DynamicRealtimeAsrManager();
    private static ConcurrentHashMap<String, DynamicRealtimeAsrController> asrMap = new ConcurrentHashMap<>();

    private DynamicRealtimeAsrManager() {
    }

    public static /* synthetic */ void abandonAsrAudio$default(DynamicRealtimeAsrManager dynamicRealtimeAsrManager, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        dynamicRealtimeAsrManager.abandonAsrAudio(str, str2, str3);
    }

    private final DynamicRealtimeAsrController createAsrController(String str, String str2, String str3, AsrRspCallback asrRspCallback) {
        Context context;
        DynamicRealtimeAsrClient realtimeAsrClient;
        DynamicRealtimeAsrController asrController = getAsrController(str2, str3);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(TAG, "createAsrController: controller = " + asrController);
        if (asrController != null || (context = mContext) == null || (realtimeAsrClient = INSTANCE.getRealtimeAsrClient(context)) == null) {
            return asrController;
        }
        DynamicRealtimeAsrController dynamicRealtimeAsrController = new DynamicRealtimeAsrController(str, str2, str3, asrRspCallback, realtimeAsrClient);
        companion.i(TAG, "createAsrController, hashcode: " + str2 + ", asrChannel:" + str3);
        ConcurrentHashMap<String, DynamicRealtimeAsrController> concurrentHashMap = asrMap;
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(str3);
        concurrentHashMap.put(sb.toString(), dynamicRealtimeAsrController);
        return dynamicRealtimeAsrController;
    }

    public static /* synthetic */ void endAsrAudio$default(DynamicRealtimeAsrManager dynamicRealtimeAsrManager, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        dynamicRealtimeAsrManager.endAsrAudio(str, str2, str3);
    }

    private final String findPkgNameByHelperHashCode(String str, String str2) {
        DynamicRealtimeAsrController asrController = getAsrController(str, str2);
        if (asrController != null) {
            return asrController.getMBizPkgName();
        }
        return null;
    }

    private final DynamicRealtimeAsrController getAsrController(String str, String str2) {
        return asrMap.get(str + str2);
    }

    private final DynamicRealtimeAsrClient getRealtimeAsrClient(Context context) {
        if (asrClient == null) {
            asrClient = new DynamicRealtimeAsrClient(context, "ai_omni");
        }
        return asrClient;
    }

    private final void removeAsrController(String str, String str2) {
        asrMap.remove(str + str2);
    }

    public static /* synthetic */ void sendAsrAudio$default(DynamicRealtimeAsrManager dynamicRealtimeAsrManager, String str, String str2, byte[] bArr, String str3, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        dynamicRealtimeAsrManager.sendAsrAudio(str, str2, bArr, str3);
    }

    public final void abandonAsrAudio(String helperHashCode, String str, String str2) {
        r.e(helperHashCode, "helperHashCode");
        if (str == null) {
            str = "";
        }
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, str);
        if (asrController != null) {
            asrController.abandonAsrAudio(str2);
        }
    }

    public final void endAsrAudio(String helperHashCode, String channel, String str) {
        r.e(helperHashCode, "helperHashCode");
        r.e(channel, "channel");
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, channel);
        if (asrController != null) {
            asrController.endAsrAudio(channel, str);
        }
    }

    public final void initOmniPlugin(String helperHashCode, String str) {
        r.e(helperHashCode, "helperHashCode");
        if (str == null) {
            str = "";
        }
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, str);
        if (asrController != null) {
            asrController.initOmniPlugin();
        }
    }

    public final void initRealtimeAsr(String language, String targetLanguage, String helperHashCode, String str, String str2, Boolean bool, String str3, AsrRspCallback listener) {
        DynamicRealtimeAsrController dynamicRealtimeAsrControllerCreateAsrController;
        r.e(language, "language");
        r.e(targetLanguage, "targetLanguage");
        r.e(helperHashCode, "helperHashCode");
        r.e(listener, "listener");
        if (str == null || str.length() == 0) {
            AILogHelper.Companion.e(TAG, "initRealtimeAsr error: pkgName is empty.");
            return;
        }
        if (str2 == null) {
            str2 = "";
        }
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(TAG, "initRealtimeAsr: mContext = " + mContext);
        if (mContext != null) {
            companion.i(TAG, "createAsrController: pkgName = " + str + ", helperHashCode = " + helperHashCode + ", asrChannel = " + str2);
            dynamicRealtimeAsrControllerCreateAsrController = INSTANCE.createAsrController(str, helperHashCode, str2, listener);
        } else {
            dynamicRealtimeAsrControllerCreateAsrController = null;
        }
        if (dynamicRealtimeAsrControllerCreateAsrController != null) {
            dynamicRealtimeAsrControllerCreateAsrController.initRealtimeAsr(language, targetLanguage, bool, str3);
        }
    }

    public final void releaseAsr(String helperHashCode, String str) {
        r.e(helperHashCode, "helperHashCode");
        String str2 = str == null ? "" : str;
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, str2);
        if (asrController != null) {
            asrController.releaseAsr(str);
        }
        removeAsrController(helperHashCode, str2);
    }

    public final void sendAsrAudio(String helperHashCode, String channel, byte[] audio, String str) {
        r.e(helperHashCode, "helperHashCode");
        r.e(channel, "channel");
        r.e(audio, "audio");
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, channel);
        if (asrController != null) {
            asrController.sendAsrAudio(channel, audio, str);
        }
    }

    public final void setContext(Context cxt) {
        r.e(cxt, "cxt");
        mContext = cxt;
    }

    public final void setRecognizeFeature(String helperHashCode, String channel, Boolean bool, Boolean bool2, String str, String str2, String str3) {
        r.e(helperHashCode, "helperHashCode");
        r.e(channel, "channel");
        DynamicRealtimeAsrController asrController = getAsrController(helperHashCode, channel);
        if (asrController != null) {
            asrController.setRecognizeFeature(channel, bool, bool2, str, str2, str3);
        }
    }

    public final void startRealtimeAsr(StartAsrRequest request) {
        r.e(request, "request");
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(TAG, "startRealtimeAsr:");
        String wsChannel = request.getWsChannel();
        if (wsChannel == null) {
            wsChannel = "";
        }
        companion.i(TAG, "startRealtimeAsr: hashcode = " + request + ".hashcode, asrChannel = " + wsChannel);
        DynamicRealtimeAsrController asrController = getAsrController(request.getHashcode(), wsChannel);
        if (asrController != null) {
            asrController.startRealtimeAsr(request);
            return;
        }
        companion.i(TAG, "Not find asr controller, hashcode: " + request.getHashcode() + ", asrChannel:" + wsChannel);
    }
}
