package com.oplus.aiunit.translation.request;

import android.os.Bundle;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.w;

/* JADX INFO: loaded from: classes2.dex */
public final class SynthesisRequest {
    public static final String ALGO_MODEL = "model";
    public static final String APPID_CALL = "call";
    public static final String APPID_VOICEBOX = "voicebox";
    public static final String APP_ID = "appid";
    public static final Companion Companion = new Companion(null);
    public static final String LANGUAGES = "languages";
    public static final String PITCH = "pitch";
    public static final String SPEED = "speed";
    public static final String TEXT_TYPE = "type";
    public static final String VOICE_GENDER = "speaker";
    private Map<String, ? extends Object> extend;
    private Bundle params;
    private String requestId = "";
    private CharSequence content = "";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final CharSequence getContent() {
        return this.content;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final Bundle getParams() {
        return this.params;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setAppId(String appid) {
        r.e(appid, "appid");
        this.extend = j0.f(w.a("appid", appid));
    }

    public final void setContent(CharSequence content) {
        r.e(content, "content");
        this.content = content;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setParams(Bundle bundle) {
        this.params = bundle;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }
}
