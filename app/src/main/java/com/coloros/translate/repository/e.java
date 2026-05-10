package com.coloros.translate.repository;

import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.w;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.DownloadType;
import com.oplus.aiunit.core.data.SceneData;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.toolkits.callback.RequestCallback;
import com.oplus.os.OplusBuild;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final e INSTANCE = new e();

    public static final class a implements RequestCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f5443a;

        a(l lVar) {
            this.f5443a = lVar;
        }

        @Override // com.oplus.aiunit.toolkits.callback.RequestCallback
        public void onResult(int i10) {
            c0.f7098a.i("SettingUtils", "requestConfigurationUpdate resultCode " + i10);
            if (i10 == 1 || i10 == 400) {
                this.f5443a.invoke(Boolean.TRUE);
                return;
            }
            if (i10 == 401) {
                w.h(R.string.plugin_down_fail, 0, 2, null);
            } else if (i10 != 2) {
                w.h(R.string.plugin_down_fail, 0, 2, null);
            } else {
                this.f5443a.invoke(Boolean.FALSE);
                w.h(R.string.plugin_down_fail, 0, 2, null);
            }
        }
    }

    private e() {
    }

    public static final boolean a(l callback) {
        Object objM59constructorimpl;
        r.e(callback, "callback");
        TranslationApplication.a aVar = TranslationApplication.f4754b;
        int state = AISettings.getDetectData$default(aVar.a(), "ai_omni", null, 4, null).getState();
        c0.a aVar2 = c0.f7098a;
        aVar2.i("SettingUtils", "checkPluginUpdate(),  state " + state);
        if (state == 0 || state == 4 || state == 6 || state == 906) {
            callback.invoke(Boolean.TRUE);
            return false;
        }
        if (!e()) {
            aVar2.i("SettingUtils", "checkPluginUpdate  noNeedUpdate");
            return true;
        }
        if (state == 5) {
            w.h(R.string.plugin_down_fail, 0, 2, null);
            return false;
        }
        long lastProvisionTimestamp = AISettings.getLastProvisionTimestamp(aVar.a());
        if (lastProvisionTimestamp > 0 && System.currentTimeMillis() - lastProvisionTimestamp < 3600000) {
            aVar2.i("SettingUtils", "checkPluginUpdate updateTime short");
            return true;
        }
        try {
            r.a aVar3 = n8.r.Companion;
            Boolean boolRequestConfigurationUpdate = AISettings.requestConfigurationUpdate(aVar.a(), new a(callback));
            if (!kotlin.jvm.internal.r.a(boolRequestConfigurationUpdate, Boolean.TRUE)) {
                aVar2.q("SettingUtils", "requestConfigurationUpdate, method result " + boolRequestConfigurationUpdate);
                w.h(R.string.plugin_down_fail, 0, 2, null);
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar4 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SettingUtils", "checkPluginUpdate(), error " + thM62exceptionOrNullimpl.getMessage());
            w.h(R.string.plugin_down_fail, 0, 2, null);
        }
        return false;
    }

    public static final String b() {
        Object objM59constructorimpl;
        SceneData sceneData$default;
        try {
            r.a aVar = n8.r.Companion;
            sceneData$default = AISettings.getSceneData$default(TranslationApplication.f4754b.a(), "translation_app", null, 4, null);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (sceneData$default != null && sceneData$default.getSupport() == 1 && OplusBuild.getOplusOSVERSION() >= 37) {
            c0.f7098a.i("SettingUtils", "getSceneName translation_app");
            return "translation_app";
        }
        objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SettingUtils", "getSceneName error : " + thM62exceptionOrNullimpl.getMessage());
        }
        c0.f7098a.i("SettingUtils", "getSceneName ai_omni");
        return "ai_omni";
    }

    private static final long c() {
        try {
            r.a aVar = n8.r.Companion;
            List<AIConfig> configList = AISettings.getDetectData$default(TranslationApplication.f4754b.a(), "ai_omni", null, 4, null).getConfigList();
            long unitVersion = (configList == null || configList.isEmpty()) ? -1L : ((AIConfig) o.Q(configList)).getUnitVersion();
            c0.f7098a.d("SettingUtils", "getUnitVersion(), " + unitVersion);
            return unitVersion;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("SettingUtils", "getUnitVersion(), error " + thM62exceptionOrNullimpl.getMessage());
            }
            return -1L;
        }
    }

    public static final boolean d() {
        Object objM59constructorimpl;
        boolean z10 = false;
        if (f()) {
            return false;
        }
        try {
            r.a aVar = n8.r.Companion;
            SceneData sceneData$default = AISettings.getSceneData$default(TranslationApplication.f4754b.a(), b(), null, 4, null);
            if (sceneData$default != null && sceneData$default.getSupport() == 1 && sceneData$default.getDownloadType() == DownloadType.DOWNLOAD_NONE) {
                z10 = true;
            }
            c0.f7098a.d("SettingUtils", "isAiModeDownloadSuccess(), " + (sceneData$default != null ? Integer.valueOf(sceneData$default.getSupport()) : null) + ", " + (sceneData$default != null ? sceneData$default.getDownloadType() : null));
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("SettingUtils", "isAiModeDownloadSuccess(), error " + thM62exceptionOrNullimpl.getMessage());
        }
        return z10;
    }

    public static final boolean e() {
        long jC = c();
        return 1 <= jC && jC < 1005;
    }

    public static final boolean f() {
        TranslationApplication.a aVar = TranslationApplication.f4754b;
        int state = AISettings.getDetectData$default(aVar.a(), "ai_omni", null, 4, null).getState();
        c0.a aVar2 = c0.f7098a;
        aVar2.d("SettingUtils", "isShowPrivacyAgree(), state = " + state);
        boolean z10 = state == 906 || !AISettings.isPrivacyAvailable(aVar.a());
        aVar2.i("SettingUtils", "isShowPrivacyAgree(),  " + z10);
        return z10;
    }
}
