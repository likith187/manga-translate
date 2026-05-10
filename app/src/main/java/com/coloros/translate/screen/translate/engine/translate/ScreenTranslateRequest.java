package com.coloros.translate.screen.translate.engine.translate;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslateRequest {
    private final String imageBytes;
    private final int imageModel;
    private final String requestId;
    private final String sourceLanguage;
    private final String targetLanguage;

    public ScreenTranslateRequest(String requestId, String str, String targetLanguage, int i10, String imageBytes) {
        r.e(requestId, "requestId");
        r.e(targetLanguage, "targetLanguage");
        r.e(imageBytes, "imageBytes");
        this.requestId = requestId;
        this.sourceLanguage = str;
        this.targetLanguage = targetLanguage;
        this.imageModel = i10;
        this.imageBytes = imageBytes;
    }

    public static /* synthetic */ ScreenTranslateRequest copy$default(ScreenTranslateRequest screenTranslateRequest, String str, String str2, String str3, int i10, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = screenTranslateRequest.requestId;
        }
        if ((i11 & 2) != 0) {
            str2 = screenTranslateRequest.sourceLanguage;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = screenTranslateRequest.targetLanguage;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            i10 = screenTranslateRequest.imageModel;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            str4 = screenTranslateRequest.imageBytes;
        }
        return screenTranslateRequest.copy(str, str5, str6, i12, str4);
    }

    public final String component1() {
        return this.requestId;
    }

    public final String component2() {
        return this.sourceLanguage;
    }

    public final String component3() {
        return this.targetLanguage;
    }

    public final int component4() {
        return this.imageModel;
    }

    public final String component5() {
        return this.imageBytes;
    }

    public final ScreenTranslateRequest copy(String requestId, String str, String targetLanguage, int i10, String imageBytes) {
        r.e(requestId, "requestId");
        r.e(targetLanguage, "targetLanguage");
        r.e(imageBytes, "imageBytes");
        return new ScreenTranslateRequest(requestId, str, targetLanguage, i10, imageBytes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScreenTranslateRequest)) {
            return false;
        }
        ScreenTranslateRequest screenTranslateRequest = (ScreenTranslateRequest) obj;
        return r.a(this.requestId, screenTranslateRequest.requestId) && r.a(this.sourceLanguage, screenTranslateRequest.sourceLanguage) && r.a(this.targetLanguage, screenTranslateRequest.targetLanguage) && this.imageModel == screenTranslateRequest.imageModel && r.a(this.imageBytes, screenTranslateRequest.imageBytes);
    }

    public final String getImageBytes() {
        return this.imageBytes;
    }

    public final int getImageModel() {
        return this.imageModel;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getSourceLanguage() {
        return this.sourceLanguage;
    }

    public final String getTargetLanguage() {
        return this.targetLanguage;
    }

    public int hashCode() {
        int iHashCode = this.requestId.hashCode() * 31;
        String str = this.sourceLanguage;
        return ((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.targetLanguage.hashCode()) * 31) + Integer.hashCode(this.imageModel)) * 31) + this.imageBytes.hashCode();
    }

    public String toString() {
        return "ScreenTranslateRequest(requestId=" + this.requestId + ", sourceLanguage=" + this.sourceLanguage + ", targetLanguage=" + this.targetLanguage + ", imageModel=" + this.imageModel + ", imageBytes=" + this.imageBytes + ")";
    }
}
