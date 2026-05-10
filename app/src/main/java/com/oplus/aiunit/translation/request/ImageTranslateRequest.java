package com.oplus.aiunit.translation.request;

import com.oplus.aiunit.translation.model.YoudaoInfo;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageTranslateRequest {
    public static final int ALGORITHM_AZURE = 1;
    public static final int ALGORITHM_GOOGLE = 2;
    public static final int ALGORITHM_SELF = 0;
    public static final int ALGORITHM_YOUDAO = 3;
    public static final int CLOUD_MODEL_JSON = 0;
    public static final int CLOUD_MODEL_PIC = 1;
    public static final Companion Companion = new Companion(null);
    public static final int DEVICE_MODEL = 2;
    public static final int FULL_SCREEN_MODEL = 0;
    public static final int PART_SCREEN_MODEL = 1;
    private int algorithmModel;
    private Map<String, ? extends Object> extend;
    private int imageModel;
    private int pictureTransModel;
    private String requestId;
    private String sourceLanguage;
    private YoudaoInfo youdaoInfo;
    private String imageBytes = "";
    private String targetLanguage = "";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getAlgorithmModel() {
        return this.algorithmModel;
    }

    public final Map<String, Object> getExtend() {
        return this.extend;
    }

    public final String getImageBytes() {
        return this.imageBytes;
    }

    public final int getImageModel() {
        return this.imageModel;
    }

    public final int getPictureTransModel() {
        return this.pictureTransModel;
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

    public final YoudaoInfo getYoudaoInfo() {
        return this.youdaoInfo;
    }

    public final void setAlgorithmModel(int i10) {
        this.algorithmModel = i10;
    }

    public final void setExtend(Map<String, ? extends Object> map) {
        this.extend = map;
    }

    public final void setImageBytes(String str) {
        r.e(str, "<set-?>");
        this.imageBytes = str;
    }

    public final void setImageModel(int i10) {
        this.imageModel = i10;
    }

    public final void setPictureTransModel(int i10) {
        this.pictureTransModel = i10;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setSourceLanguage(String str) {
        this.sourceLanguage = str;
    }

    public final void setTargetLanguage(String str) {
        r.e(str, "<set-?>");
        this.targetLanguage = str;
    }

    public final void setYoudaoInfo(YoudaoInfo youdaoInfo) {
        this.youdaoInfo = youdaoInfo;
    }
}
