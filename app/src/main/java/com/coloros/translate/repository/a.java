package com.coloros.translate.repository;

import android.app.Application;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.n0;
import com.coloros.translate.utils.w;
import com.oplus.aiunit.core.data.DownloadType;
import com.oplus.aiunit.core.data.SceneData;
import com.oplus.aiunit.download.api.AIDownload;
import com.oplus.aiunit.download.api.CustomTerms;
import com.oplus.aiunit.download.api.DownloadRequest;
import com.oplus.aiunit.download.core.DownloadInfo;
import com.oplus.aiunit.download.core.DownloadListener;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.toolkits.callback.SettingsCallback;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0071a f5432b = new C0071a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5433a;

    /* JADX INFO: renamed from: com.coloros.translate.repository.a$a, reason: collision with other inner class name */
    public static final class C0071a {
        public /* synthetic */ C0071a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0071a() {
        }
    }

    public interface b {
        void a(String str);

        void b();
    }

    public static class c implements DownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5434a;

        public c(String label) {
            r.e(label, "label");
            this.f5434a = label;
        }

        public final String a() {
            return this.f5434a;
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onCancel() {
            c0.f7098a.d("DownloadAiManager", "onCancel(), " + this.f5434a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onFail(int i10) {
            c0.f7098a.d("DownloadAiManager", "onFail(), " + this.f5434a + ", " + i10);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onInstall() {
            c0.f7098a.d("DownloadAiManager", "onInstall(), " + this.f5434a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onPrepare(long j10, long j11) {
            c0.f7098a.d("DownloadAiManager", "onPrepare(), " + this.f5434a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onProgress(long j10, long j11, long j12) {
            c0.f7098a.d("DownloadAiManager", "onProgress(), " + this.f5434a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onQuery(DownloadInfo downloadInfo) {
            DownloadListener.DefaultImpls.onQuery(this, downloadInfo);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onStart(long j10, long j11) {
            c0.f7098a.d("DownloadAiManager", "onStart(), " + this.f5434a);
        }

        @Override // com.oplus.aiunit.download.core.DownloadListener
        public void onSuccess(long j10, long j11, boolean z10) {
            c0.f7098a.d("DownloadAiManager", "onSuccess(), " + this.f5434a);
        }
    }

    public static final class d implements SettingsCallback {
        d() {
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onError(int i10) {
            c0.f7098a.d("DownloadAiManager", "downloadAiData: onError " + i10);
            n.INSTANCE.R(com.coloros.translate.repository.e.b(), "PRIVACY_GUIDE_ERROR", "main_app", i10);
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("privacy_aiunit_guide_error");
            }
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onSwitch(int i10) {
            c0.f7098a.d("DownloadAiManager", "downloadAiData: onSwitch");
            if (i10 == 1) {
                a.k(a.this, false, 1, null);
                return;
            }
            n.INSTANCE.Q(com.coloros.translate.repository.e.b(), "SWITCH_CLOSE", "main_app");
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("privacy_aiunit_guide_switch_close");
            }
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onUI(int i10) {
            c0.f7098a.d("DownloadAiManager", "downloadAiData: onUI");
        }
    }

    public static final class e implements SettingsCallback {
        e() {
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onError(int i10) {
            c0.f7098a.d("DownloadAiManager", "configUpdate, code " + i10);
            n.INSTANCE.R(com.coloros.translate.repository.e.b(), "CONFIG_UPDATE_ERROR", "main_app", i10);
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("privacy_aiunit_guide_error");
            }
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onSwitch(int i10) {
            c0.f7098a.d("DownloadAiManager", "configUpdate, onSwitch " + i10);
            if (i10 == 1) {
                a.this.j(true);
                return;
            }
            n.INSTANCE.Q(com.coloros.translate.repository.e.b(), "CONFIG_UPDATE_SWITCH_CLOSE", "main_app");
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("privacy_aiunit_guide_switch_close");
            }
        }

        @Override // com.oplus.aiunit.toolkits.callback.SettingsCallback
        public void onUI(int i10) {
            c0.f7098a.d("DownloadAiManager", "configUpdate, onUI " + i10);
        }
    }

    public static final class f extends c {
        f() {
            super("queryByName");
        }

        @Override // com.coloros.translate.repository.a.c, com.oplus.aiunit.download.core.DownloadListener
        public void onQuery(DownloadInfo downloadInfo) {
            Object objM59constructorimpl;
            c0.f7098a.d("DownloadAiManager", "realDownPlugin onQuery(), " + a() + ", " + (downloadInfo != null ? Integer.valueOf(downloadInfo.getState()) : null));
            if (downloadInfo != null && downloadInfo.getState() == 4) {
                w.h(R.string.ai_cloud_downloading_tips, 0, 2, null);
                return;
            }
            a.this.g();
            String strB = com.coloros.translate.repository.e.b();
            n.INSTANCE.T(strB, "main_app");
            try {
                r.a aVar = n8.r.Companion;
                Application applicationA = TranslationApplication.f4754b.a();
                DownloadRequest downloadRequest = new DownloadRequest();
                downloadRequest.setSceneName(strB);
                downloadRequest.setEnableProgressUI(true);
                downloadRequest.setEnableProgressCallback(true);
                CustomTerms customTerms = new CustomTerms();
                customTerms.setTitle(n0.b(R.string.ai_cloud_download_title));
                customTerms.setDescription(n0.b(R.string.ai_cloud_download_desc));
                downloadRequest.setTerms(customTerms);
                AIDownload.start(applicationA, downloadRequest);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            a aVar3 = a.this;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.f("DownloadAiManager", "AIDownload.start exception: " + thM62exceptionOrNullimpl.getMessage(), thM62exceptionOrNullimpl);
                n.S(n.INSTANCE, strB, "START_EXCEPTION: " + thM62exceptionOrNullimpl.getClass().getSimpleName() + ": " + thM62exceptionOrNullimpl.getMessage(), "main_app", 0, 8, null);
                b bVarE = aVar3.e();
                if (bVarE != null) {
                    bVarE.a("download_aiunit_fail");
                }
            }
        }
    }

    public static final class g extends c {
        g() {
            super("registerListener");
        }

        @Override // com.coloros.translate.repository.a.c, com.oplus.aiunit.download.core.DownloadListener
        public void onCancel() {
            c0.f7098a.d("DownloadAiManager", "onCancel");
            n.INSTANCE.Q(com.coloros.translate.repository.e.b(), "CANCEL", "main_app");
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("download_aiunit_cancel");
            }
            a.this.h();
        }

        @Override // com.coloros.translate.repository.a.c, com.oplus.aiunit.download.core.DownloadListener
        public void onFail(int i10) {
            c0.f7098a.d("DownloadAiManager", "onFail, err=" + i10);
            n.INSTANCE.R(com.coloros.translate.repository.e.b(), "SDK_FAIL", "main_app", i10);
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.a("download_aiunit_fail");
            }
            a.this.h();
        }

        @Override // com.coloros.translate.repository.a.c, com.oplus.aiunit.download.core.DownloadListener
        public void onInstall() {
            c0.f7098a.d("DownloadAiManager", "onInstall");
        }

        @Override // com.coloros.translate.repository.a.c, com.oplus.aiunit.download.core.DownloadListener
        public void onSuccess(long j10, long j11, boolean z10) {
            c0.f7098a.d("DownloadAiManager", "onSuccess");
            n.INSTANCE.U(com.coloros.translate.repository.e.b(), "main_app");
            b bVarE = a.this.e();
            if (bVarE != null) {
                bVarE.b();
            }
            a.this.h();
        }
    }

    private final void d() {
        Object objM59constructorimpl;
        c0.f7098a.d("DownloadAiManager", "configUpdate");
        try {
            r.a aVar = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(Boolean.valueOf(AISettings.checkUpdate$default(TranslationApplication.f4754b.a(), true, new e(), null, 8, null)));
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("DownloadAiManager", "configUpdate error");
        }
    }

    private final void f(SceneData sceneData) {
        if (sceneData.getDownloadType() != DownloadType.DOWNLOAD_NONE) {
            AIDownload.queryByName(TranslationApplication.f4754b.a(), com.coloros.translate.repository.e.b(), new f(), 0, true);
            return;
        }
        b bVar = this.f5433a;
        if (bVar != null) {
            bVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(boolean z10) {
        h0 h0Var = null;
        SceneData sceneData$default = AISettings.getSceneData$default(TranslationApplication.f4754b.a(), com.coloros.translate.repository.e.b(), null, 4, null);
        if (sceneData$default != null) {
            c0.a aVar = c0.f7098a;
            aVar.d("DownloadAiManager", "startDownLoad isSupport : " + sceneData$default.getSupport() + " , downloadType : " + sceneData$default.getDownloadType());
            if (sceneData$default.getSupport() == 1) {
                f(sceneData$default);
                h0Var = h0.INSTANCE;
            } else if (z10) {
                aVar.d("DownloadAiManager", "startDownLoad download config fail");
                n.S(n.INSTANCE, com.coloros.translate.repository.e.b(), "NOT_SUPPORT", "main_app", 0, 8, null);
                b bVar = this.f5433a;
                if (bVar != null) {
                    bVar.a("download_aiunit_not_support");
                    h0Var = h0.INSTANCE;
                }
            } else {
                aVar.d("DownloadAiManager", "startDownLoad download config start");
                d();
                h0Var = h0.INSTANCE;
            }
            if (h0Var != null) {
                return;
            }
        }
        c0.f7098a.e("DownloadAiManager", "startDownLoad: getSceneData is null");
        n.S(n.INSTANCE, com.coloros.translate.repository.e.b(), "SCENE_NONE", "main_app", 0, 8, null);
        b bVar2 = this.f5433a;
        if (bVar2 != null) {
            bVar2.a("download_aiunit_scene_data_is_null");
        }
    }

    static /* synthetic */ void k(a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        aVar.j(z10);
    }

    public final void b() {
        if (com.coloros.translate.repository.e.f()) {
            AISettings.startPrivacyGuide(TranslationApplication.f4754b.a(), new d(), true);
        } else {
            k(this, false, 1, null);
        }
    }

    public final boolean c() {
        return com.coloros.translate.repository.e.d();
    }

    public final b e() {
        return this.f5433a;
    }

    public final void g() {
        AIDownload.register(TranslationApplication.f4754b.a(), com.coloros.translate.repository.e.b(), new g());
    }

    public final void h() {
        Object objM59constructorimpl;
        c0.f7098a.d("DownloadAiManager", "removeOnlyDownloadListener()");
        try {
            r.a aVar = n8.r.Companion;
            AIDownload.removeOnly(com.coloros.translate.repository.e.b());
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.d("DownloadAiManager", "removeOnlyDownloadListener(), removeOnly error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void i(b bVar) {
        this.f5433a = bVar;
    }
}
