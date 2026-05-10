package com.oplus.aiunit.translation.request;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BaseRequest {
    private CharSequence content;
    private Map<String, ? extends Object> extend;
    private Bundle params;
    private String requestId;
    private String uid;

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

    public final String getUid() {
        return this.uid;
    }

    public final void setContent(CharSequence charSequence) {
        this.content = charSequence;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setParams(Bundle bundle) {
        this.params = bundle;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public String toString() {
        return "BaseRequest{content=" + ((Object) this.content) + ", params=" + this.params + ", requestId='" + this.requestId + "', uid='" + this.uid + "'}";
    }
}
