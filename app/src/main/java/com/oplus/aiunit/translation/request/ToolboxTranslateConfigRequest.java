package com.oplus.aiunit.translation.request;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ToolboxTranslateConfigRequest extends BaseRequest {
    private String language = "";
    private String deviceModel = "";

    public final String getDeviceModel() {
        return this.deviceModel;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final void setDeviceModel(String str) {
        r.e(str, "<set-?>");
        this.deviceModel = str;
    }

    public final void setLanguage(String str) {
        r.e(str, "<set-?>");
        this.language = str;
    }
}
