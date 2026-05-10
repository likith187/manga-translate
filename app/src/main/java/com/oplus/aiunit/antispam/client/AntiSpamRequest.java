package com.oplus.aiunit.antispam.client;

import com.oplus.aisubsystem.core.client.a;
import com.oplus.aiunit.core.utils.AuthUtil;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class AntiSpamRequest extends com.oplus.aisubsystem.core.client.a {
    public static final Companion Companion = new Companion(null);
    public static final String PARAM_ANTISPAM_CONTENT = "custom::antispam_content";
    public static final String PARAM_ANTISPAM_METHOD = "custom::antispam_method";
    public static final String PARAM_ANTISPAM_SAMPLE = "custom::antispam_sample";
    public static final String PARAM_ANTISPAM_SCENE_ID = "custom::antispam_scene_id";
    public static final String PARAM_ANTISPAM_SDK_TYPE = "custom::antispam_sdk_type";
    public static final String PARAM_ANTISPAM_SDK_VERSION_NO = "custom::antispam_sdk_version_no";
    public static final String PARAM_ANTISPAM_SESSION_ID = "custom::antispam_session_id";
    private static final String TAG = "AntiSpamRequest";

    public static final class Builder extends a.b {
        public final AntiSpamRequest build() {
            return (AntiSpamRequest) buildRequest(AntiSpamRequest.class);
        }

        public final Builder setContent(String content) {
            r.e(content, "content");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_CONTENT, content);
            return this;
        }

        public final Builder setMethod(String method) {
            r.e(method, "method");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_METHOD, method);
            return this;
        }

        public final Builder setSDKType(String type) {
            r.e(type, "type");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_SDK_TYPE, type);
            return this;
        }

        public final Builder setSDKVersionNo(String version) {
            r.e(version, "version");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_SDK_VERSION_NO, version);
            return this;
        }

        public final Builder setSample(boolean z10) {
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_SAMPLE, z10 ? "1" : AuthUtil.AUTH_STYLE_INNER);
            return this;
        }

        public final Builder setSceneId(String sceneId) {
            r.e(sceneId, "sceneId");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_SCENE_ID, sceneId);
            return this;
        }

        public final Builder setSessionId(String sessionId) {
            r.e(sessionId, "sessionId");
            getParamPackage().setParam(AntiSpamRequest.PARAM_ANTISPAM_SESSION_ID, sessionId);
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AntiSpamRequest build(l block) {
            r.e(block, "block");
            Builder builder = new Builder();
            block.invoke(builder);
            return builder.build();
        }

        private Companion() {
        }
    }

    public static final AntiSpamRequest build(l lVar) {
        return Companion.build(lVar);
    }
}
