package com.coloros.translate.screen.translate.download;

import android.content.Context;
import com.coloros.translate.screen.R$string;
import com.coloros.translate.screen.utils.u;
import com.coloros.translate.screen.widget.a0;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.data.DownloadType;
import com.oplus.aiunit.core.data.SceneData;
import com.oplus.aiunit.download.api.AIDownload;
import com.oplus.aiunit.download.api.CustomTerms;
import com.oplus.aiunit.download.api.DownloadRequest;
import com.oplus.aiunit.download.core.DownloadInfo;
import com.oplus.aiunit.download.core.DownloadListener;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.toolkits.callback.SettingsCallback;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f5552c = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f5554b;

    /* JADX INFO: renamed from: com.coloros.translate.screen.translate.download.a$a, reason: collision with other inner class name */
    public static class C0077a implements DownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5555a;

        public C0077a(String label) {
            r.e(label, "label");
            this.f5555a = label;
        }

        public final String a() {
            return this.f5555a;
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onCancel() {
            c0.f7098a.d("AiDownloadManager", "onCancel(), " + this.f5555a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onFail(int i10) {
            c0.f7098a.d("AiDownloadManager", "onFail(), " + this.f5555a + ", " + i10);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onInstall() {
            c0.f7098a.d("AiDownloadManager", "onInstall(), " + this.f5555a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onPrepare(long j10, long j11) {
            c0.f7098a.d("AiDownloadManager", "onPrepare(), " + this.f5555a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onProgress(long j10, long j11, long j12) {
            c0.f7098a.d("AiDownloadManager", "onProgress(), " + this.f5555a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onQuery(DownloadInfo downloadInfo) {
            DownloadListener.DefaultImpls.onQuery(this, downloadInfo);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onStart(long j10, long j11) {
            c0.f7098a.d("AiDownloadManager", "onStart(), " + this.f5555a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onSuccess(long j10, long j11, boolean z10) {
            c0.f7098a.d("AiDownloadManager", "onSuccess(), " + this.f5555a);
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public interface c {
        void a(String str);

        void b();
    }

    static final class d extends s implements l {
        final /* synthetic */ String $sceneName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str) {
            super(1);
            this.$sceneName = str;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Context) obj);
            return h0.INSTANCE;
        }

        public final void invoke(Context it) {
            r.e(it, "it");
            a.this.o(it, this.$sceneName);
        }
    }

    public static final class e extends C0077a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f5556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ a f5557c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, a aVar) {
            super("registerListener");
            this.f5556b = str;
            this.f5557c = aVar;
        }

        @Override // com.coloros.translate.screen.translate.download.a.C0077a, com.oplus.aiunit.download.core.DownloadListener
        public void onCancel() {
            n.INSTANCE.Q(this.f5556b, "CANCEL", "screen_translation");
            c cVarF = this.f5557c.f();
            if (cVarF != null) {
                cVarF.a("download_aiunit_cancel");
            }
            this.f5557c.l(this.f5556b);
        }

        @Override // com.coloros.translate.screen.translate.download.a.C0077a, com.oplus.aiunit.download.core.DownloadListener
        public void onFail(int i10) {
            n.INSTANCE.R(this.f5556b, "SDK_FAIL", "screen_translation", i10);
            c cVarF = this.f5557c.f();
            if (cVarF != null) {
                cVarF.a("download_aiunit_fail");
            }
            this.f5557c.l(this.f5556b);
        }

        @Override // com.coloros.translate.screen.translate.download.a.C0077a, com.oplus.aiunit.download.core.DownloadListener
        public void onInstall() {
            n.INSTANCE.U(this.f5556b, "screen_translation");
            c cVarF = this.f5557c.f();
            if (cVarF != null) {
                cVarF.b();
            }
            this.f5557c.l(this.f5556b);
        }

        @Override // com.coloros.translate.screen.translate.download.a.C0077a, com.oplus.aiunit.download.core.DownloadListener
        public void onSuccess(long j10, long j11, boolean z10) {
            n.INSTANCE.U(this.f5556b, "screen_translation");
            c cVarF = this.f5557c.f();
            if (cVarF != null) {
                cVarF.b();
            }
            this.f5557c.l(this.f5556b);
        }
    }

    public static final class f extends C0077a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f5559c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str) {
            super("queryByName");
            this.f5559c = str;
        }

        @Override // com.coloros.translate.screen.translate.download.a.C0077a, com.oplus.aiunit.download.core.DownloadListener
        public void onQuery(DownloadInfo downloadInfo) {
            Object objM59constructorimpl;
            c0.f7098a.d("AiDownloadManager", "onQuery(), " + a() + ", " + (downloadInfo != null ? Integer.valueOf(downloadInfo.getState()) : null));
            if (downloadInfo != null && downloadInfo.getState() == 4) {
                u.d(R$string.ai_cloud_downloading_tips, 0, 2, null);
                return;
            }
            a.this.k(this.f5559c);
            n.INSTANCE.T(this.f5559c, "screen_translation");
            a aVar = a.this;
            String str = this.f5559c;
            try {
                r.a aVar2 = n8.r.Companion;
                Context context = aVar.f5553a;
                DownloadRequest downloadRequest = new DownloadRequest();
                downloadRequest.setSceneName(str);
                downloadRequest.setEnableProgressUI(true);
                downloadRequest.setEnableProgressCallback(true);
                CustomTerms customTerms = new CustomTerms();
                String string = aVar.f5553a.getString(R$string.ai_cloud_download_title);
                kotlin.jvm.internal.r.d(string, "getString(...)");
                customTerms.setTitle(string);
                String string2 = aVar.f5553a.getString(R$string.ai_cloud_download_desc);
                kotlin.jvm.internal.r.d(string2, "getString(...)");
                customTerms.setDescription(string2);
                downloadRequest.setTerms(customTerms);
                AIDownload.start(context, downloadRequest);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            String str2 = this.f5559c;
            a aVar4 = a.this;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.f("AiDownloadManager", "AIDownload.start exception: " + thM62exceptionOrNullimpl.getMessage(), thM62exceptionOrNullimpl);
                n.S(n.INSTANCE, str2, "START_EXCEPTION: " + thM62exceptionOrNullimpl.getClass().getSimpleName() + ": " + thM62exceptionOrNullimpl.getMessage(), "screen_translation", 0, 8, null);
                c cVarF = aVar4.f();
                if (cVarF != null) {
                    cVarF.a("download_aiunit_fail");
                }
            }
        }
    }

    public static final class g implements SettingsCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ a f5561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f5562c;

        g(String str, a aVar, Context context) {
            this.f5560a = str;
            this.f5561b = aVar;
            this.f5562c = context;
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onError(int i10) {
            c0.f7098a.d("AiDownloadManager", "downloadAiData: onError " + i10);
            n.INSTANCE.R(this.f5560a, "PRIVACY_GUIDE_ERROR", "screen_translation", i10);
            c cVarF = this.f5561b.f();
            if (cVarF != null) {
                cVarF.a("privacy_aiunit_guide_error");
            }
            a0.q(this.f5562c);
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onSwitch(int i10) {
            c0.f7098a.d("AiDownloadManager", "downloadAiData: onSwitch");
            if (i10 == 1) {
                this.f5561b.n(this.f5560a);
            } else {
                n.INSTANCE.Q(this.f5560a, "SWITCH_CLOSE", "screen_translation");
                c cVarF = this.f5561b.f();
                if (cVarF != null) {
                    cVarF.a("privacy_aiunit_guide_switch_close");
                }
            }
            a0.q(this.f5562c);
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onUI(int i10) {
            c0.f7098a.d("AiDownloadManager", "downloadAiData: onUI");
        }
    }

    public a(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f5553a = context;
    }

    private final long g(Context context) {
        try {
            r.a aVar = n8.r.Companion;
            List<AIConfig> configList = AISettings.getDetectData$default(context, "ai_omni", null, 4, null).getConfigList();
            long unitVersion = (configList == null || configList.isEmpty()) ? -1L : ((AIConfig) o.Q(configList)).getUnitVersion();
            c0.f7098a.d("AiDownloadManager", "getUnitVersion: " + unitVersion);
            return unitVersion;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AiDownloadManager", "getUnitVersion: error " + thM62exceptionOrNullimpl.getMessage());
            }
            return -1L;
        }
    }

    private final boolean h(Context context, String str) {
        Object objM59constructorimpl;
        boolean z10 = false;
        if (j(context, str)) {
            return false;
        }
        try {
            r.a aVar = n8.r.Companion;
            SceneData sceneData$default = AISettings.getSceneData$default(context, str, null, 4, null);
            if (sceneData$default != null && sceneData$default.getSupport() == 1 && sceneData$default.getDownloadType() == DownloadType.DOWNLOAD_NONE && !i(context)) {
                z10 = true;
            }
            c0.f7098a.d("AiDownloadManager", "isAiModeDownloadSuccess: " + (sceneData$default != null ? Integer.valueOf(sceneData$default.getSupport()) : null) + ", " + (sceneData$default != null ? sceneData$default.getDownloadType() : null));
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiDownloadManager", "isAiModeDownloadSuccess: error " + thM62exceptionOrNullimpl.getMessage());
        }
        return z10;
    }

    private final boolean i(Context context) {
        boolean z10 = false;
        if (com.coloros.translate.screen.utils.d.a(context)) {
            return false;
        }
        int state = AISettings.getDetectData$default(context, "ai_omni", null, 4, null).getState();
        if (state == 0 || state == 4 || state == 6 || state == 906) {
            c0.f7098a.i("AiDownloadManager", "isOmniPluginUpdate:stateUnavailable false");
            return false;
        }
        long jG = g(context);
        if (1 <= jG && jG < 1007) {
            z10 = true;
        }
        c0.f7098a.d("AiDownloadManager", "isOmniPluginUpdate:" + z10);
        return z10;
    }

    private final boolean j(Context context, String str) {
        int state = AISettings.getDetectData$default(context, str, null, 4, null).getState();
        c0.a aVar = c0.f7098a;
        aVar.d("AiDownloadManager", "isShowPrivacyAgree(), state = " + state);
        boolean z10 = state == 906 || !AISettings.isPrivacyAvailable(context);
        aVar.i("AiDownloadManager", "isShowPrivacyAgree(),  " + z10);
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(String str) {
        AIDownload.register(this.f5553a, str, new e(str, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(Context context, String str) {
        AISettings.startPrivacyGuide(context, new g(str, this, context), true);
    }

    public final void d(String sceneName) {
        kotlin.jvm.internal.r.e(sceneName, "sceneName");
        if (j(this.f5553a, sceneName)) {
            a0.d(this.f5553a, new d(sceneName));
        } else {
            n(sceneName);
        }
    }

    public final boolean e(String sceneName) {
        kotlin.jvm.internal.r.e(sceneName, "sceneName");
        return h(this.f5553a, sceneName);
    }

    public final c f() {
        return this.f5554b;
    }

    public final void l(String sceneName) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(sceneName, "sceneName");
        c0.f7098a.d("AiDownloadManager", "removeOnlyDownloadListener()");
        try {
            r.a aVar = n8.r.Companion;
            AIDownload.removeOnly(sceneName);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.d("AiDownloadManager", "removeOnlyDownloadListener(), removeOnly error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void m(c cVar) {
        this.f5554b = cVar;
    }

    public final void n(String sceneName) {
        kotlin.jvm.internal.r.e(sceneName, "sceneName");
        c0.a aVar = c0.f7098a;
        aVar.d("AiDownloadManager", "startDownload " + sceneName);
        h0 h0Var = null;
        SceneData sceneData$default = AISettings.getSceneData$default(this.f5553a, sceneName, null, 4, null);
        if (sceneData$default != null) {
            aVar.d("AiDownloadManager", "download: " + sceneData$default.getSupport() + ", " + sceneData$default.getDownloadType());
            if (sceneData$default.getSupport() != 1) {
                n.S(n.INSTANCE, sceneName, "NOT_SUPPORT", "screen_translation", 0, 8, null);
                c cVar = this.f5554b;
                if (cVar != null) {
                    cVar.a("download_aiunit_not_support");
                    h0Var = h0.INSTANCE;
                }
            } else if (sceneData$default.getDownloadType() != DownloadType.DOWNLOAD_NONE) {
                AIDownload.queryByName(this.f5553a, sceneName, new f(sceneName), 0, true);
                h0Var = h0.INSTANCE;
            } else {
                c cVar2 = this.f5554b;
                if (cVar2 != null) {
                    cVar2.b();
                    h0Var = h0.INSTANCE;
                }
            }
            if (h0Var != null) {
                return;
            }
        }
        aVar.e("AiDownloadManager", "download: getSceneData is null");
        n.S(n.INSTANCE, sceneName, "SCENE_NONE", "screen_translation", 0, 8, null);
        c cVar3 = this.f5554b;
        if (cVar3 != null) {
            cVar3.a("download_aiunit_scene_data_is_null");
            h0 h0Var2 = h0.INSTANCE;
        }
    }
}
