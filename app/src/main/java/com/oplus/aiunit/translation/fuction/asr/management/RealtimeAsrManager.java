package com.oplus.aiunit.translation.fuction.asr.management;

import android.annotation.SuppressLint;
import android.content.Context;
import com.oplus.aiunit.translation.callback.AsrRspCallback;
import com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrClient;
import com.oplus.aiunit.translation.fuction.asr.core.RealtimeAsrDetector;
import com.oplus.aiunit.translation.request.StartAsrRequest;
import com.oplus.aiunit.translation.utils.AILogHelper;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"StaticFieldLeak"})
public final class RealtimeAsrManager {
    public static final String TAG = "RealtimeAsrManager";
    private static RealtimeAsrClient asrClient;
    private static Context mContext;
    public static final RealtimeAsrManager INSTANCE = new RealtimeAsrManager();
    private static ConcurrentHashMap<String, RealtimeAsrController> asrMap = new ConcurrentHashMap<>();

    private RealtimeAsrManager() {
    }

    public static /* synthetic */ void abandonAsrAudio$default(RealtimeAsrManager realtimeAsrManager, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        realtimeAsrManager.abandonAsrAudio(str, str2, str3);
    }

    private final RealtimeAsrController createAsrController(String str, String str2, String str3, AsrRspCallback asrRspCallback) {
        Context context;
        RealtimeAsrClient realtimeAsrClient;
        RealtimeAsrController asrController = getAsrController(str2, str3);
        AILogHelper.Companion companion = AILogHelper.Companion;
        companion.i(TAG, "createAsrController: controller = " + asrController);
        if (asrController != null || (context = mContext) == null || (realtimeAsrClient = INSTANCE.getRealtimeAsrClient(context)) == null) {
            return asrController;
        }
        RealtimeAsrController realtimeAsrController = new RealtimeAsrController(str, str2, str3, asrRspCallback, realtimeAsrClient);
        companion.i(TAG, "createAsrController, hashcode: " + str2 + ", asrChannel:" + str3);
        ConcurrentHashMap<String, RealtimeAsrController> concurrentHashMap = asrMap;
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(str3);
        concurrentHashMap.put(sb.toString(), realtimeAsrController);
        return realtimeAsrController;
    }

    public static /* synthetic */ void endAsrAudio$default(RealtimeAsrManager realtimeAsrManager, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        realtimeAsrManager.endAsrAudio(str, str2, str3);
    }

    private final String findPkgNameByHelperHashCode(String str, String str2) {
        RealtimeAsrController asrController = getAsrController(str, str2);
        if (asrController != null) {
            return asrController.getMBizPkgName();
        }
        return null;
    }

    private final RealtimeAsrController getAsrController(String str, String str2) {
        return asrMap.get(str + str2);
    }

    private final RealtimeAsrClient getRealtimeAsrClient(Context context) {
        if (asrClient == null) {
            asrClient = new RealtimeAsrClient(context, new RealtimeAsrDetector(context, "ai_omni"));
        }
        return asrClient;
    }

    private final void removeAsrController(String str, String str2) {
        asrMap.remove(str + str2);
    }

    public static /* synthetic */ void sendAsrAudio$default(RealtimeAsrManager realtimeAsrManager, String str, String str2, byte[] bArr, String str3, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        realtimeAsrManager.sendAsrAudio(str, str2, bArr, str3);
    }

    public final void abandonAsrAudio(String helperHashCode, String str, String str2) {
        r.e(helperHashCode, "helperHashCode");
        if (str == null) {
            str = "";
        }
        RealtimeAsrController asrController = getAsrController(helperHashCode, str);
        if (asrController != null) {
            asrController.abandonAsrAudio(str2);
        }
    }

    public final void endAsrAudio(String helperHashCode, String channel, String str) {
        r.e(helperHashCode, "helperHashCode");
        r.e(channel, "channel");
        RealtimeAsrController asrController = getAsrController(helperHashCode, channel);
        if (asrController != null) {
            asrController.endAsrAudio(channel, str);
        }
    }

    public final void initOmniPlugin(String helperHashCode, String str) {
        r.e(helperHashCode, "helperHashCode");
        if (str == null) {
            str = "";
        }
        RealtimeAsrController asrController = getAsrController(helperHashCode, str);
        if (asrController != null) {
            asrController.initOmniPlugin();
        }
    }

    public final void initRealtimeAsr(String language, String targetLanguage, String helperHashCode, String str, String str2, Boolean bool, String str3, String str4, AsrRspCallback listener) {
        RealtimeAsrController realtimeAsrControllerCreateAsrController;
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
            realtimeAsrControllerCreateAsrController = INSTANCE.createAsrController(str, helperHashCode, str2, listener);
        } else {
            realtimeAsrControllerCreateAsrController = null;
        }
        RealtimeAsrController realtimeAsrController = realtimeAsrControllerCreateAsrController;
        if (realtimeAsrController != null) {
            realtimeAsrController.initRealtimeAsr(language, targetLanguage, bool, str3, str4);
        }
    }

    public final void releaseAsr(String helperHashCode, String str) {
        r.e(helperHashCode, "helperHashCode");
        String str2 = str == null ? "" : str;
        RealtimeAsrController asrController = getAsrController(helperHashCode, str2);
        if (asrController != null) {
            asrController.releaseAsr(str);
        }
        removeAsrController(helperHashCode, str2);
    }

    public final void sendAsrAudio(String helperHashCode, String channel, byte[] audio, String str) {
        r.e(helperHashCode, "helperHashCode");
        r.e(channel, "channel");
        r.e(audio, "audio");
        RealtimeAsrController asrController = getAsrController(helperHashCode, channel);
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
        RealtimeAsrController asrController = getAsrController(helperHashCode, channel);
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
        RealtimeAsrController asrController = getAsrController(request.getHashcode(), wsChannel);
        if (asrController != null) {
            asrController.startRealtimeAsr(request);
            return;
        }
        companion.i(TAG, "Not find asr controller, hashcode: " + request.getHashcode() + ", asrChannel:" + wsChannel);
    }
}
