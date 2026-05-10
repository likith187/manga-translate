package com.oplus.aiunit.translation.request;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TranslateConfigRequest {
    public static final String APP_ID = "appid";
    public static final Companion Companion = new Companion(null);
    private Map<String, ? extends Object> extend;
    private String requestId = "";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setRequestId(String requestId) {
        r.e(requestId, "requestId");
        this.requestId = requestId;
    }
}
