package com.coloros.translate.screen.translate.engine.translate;

import com.coloros.translate.screen.translate.engine.language.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class TranslateManager {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final TranslateManager f5687b = new TranslateManager();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AiUitOnlineTranslateClient f5688a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TranslateManager getINSTANCE() {
            return TranslateManager.f5687b;
        }

        private Companion() {
        }
    }

    private final void a() {
        if (this.f5688a == null) {
            this.f5688a = new AiUitOnlineTranslateClient(com.coloros.translate.base.a.INSTANCE.f());
        }
    }

    public final void cancelTranslate() {
        AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5688a;
        if (aiUitOnlineTranslateClient != null) {
            aiUitOnlineTranslateClient.cancelTranslate();
        }
    }

    public final void destroy() {
        AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5688a;
        if (aiUitOnlineTranslateClient != null) {
            aiUitOnlineTranslateClient.destroy();
        }
        this.f5688a = null;
    }

    public final void getImgTransConfig(f listener) {
        r.e(listener, "listener");
        a();
        AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5688a;
        if (aiUitOnlineTranslateClient != null) {
            aiUitOnlineTranslateClient.getImgTransConfig(listener);
        }
    }

    public final void translateImage(ScreenTranslateRequest request, ImageTranslateListener listener) {
        r.e(request, "request");
        r.e(listener, "listener");
        a();
        AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5688a;
        if (aiUitOnlineTranslateClient != null) {
            aiUitOnlineTranslateClient.translateImage(request, listener);
        }
    }

    public final void translateText(TextTranslateParams textTranslateParams, ImageTranslateListener listener) {
        r.e(textTranslateParams, "textTranslateParams");
        r.e(listener, "listener");
        a();
        AiUitOnlineTranslateClient aiUitOnlineTranslateClient = this.f5688a;
        if (aiUitOnlineTranslateClient != null) {
            aiUitOnlineTranslateClient.translateText(textTranslateParams, listener);
        }
    }
}
