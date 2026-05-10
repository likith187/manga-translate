package com.coloros.translate.screen.translate.engine.translate;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class TextTranslateParams {
    private final String region;
    private final String sourceLanguage;
    private final String targetLanguage;
    private final String text;

    public TextTranslateParams(String sourceLanguage, String targetLanguage, String text, String region) {
        r.e(sourceLanguage, "sourceLanguage");
        r.e(targetLanguage, "targetLanguage");
        r.e(text, "text");
        r.e(region, "region");
        this.sourceLanguage = sourceLanguage;
        this.targetLanguage = targetLanguage;
        this.text = text;
        this.region = region;
    }

    public static /* synthetic */ TextTranslateParams copy$default(TextTranslateParams textTranslateParams, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = textTranslateParams.sourceLanguage;
        }
        if ((i10 & 2) != 0) {
            str2 = textTranslateParams.targetLanguage;
        }
        if ((i10 & 4) != 0) {
            str3 = textTranslateParams.text;
        }
        if ((i10 & 8) != 0) {
            str4 = textTranslateParams.region;
        }
        return textTranslateParams.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.sourceLanguage;
    }

    public final String component2() {
        return this.targetLanguage;
    }

    public final String component3() {
        return this.text;
    }

    public final String component4() {
        return this.region;
    }

    public final TextTranslateParams copy(String sourceLanguage, String targetLanguage, String text, String region) {
        r.e(sourceLanguage, "sourceLanguage");
        r.e(targetLanguage, "targetLanguage");
        r.e(text, "text");
        r.e(region, "region");
        return new TextTranslateParams(sourceLanguage, targetLanguage, text, region);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTranslateParams)) {
            return false;
        }
        TextTranslateParams textTranslateParams = (TextTranslateParams) obj;
        return r.a(this.sourceLanguage, textTranslateParams.sourceLanguage) && r.a(this.targetLanguage, textTranslateParams.targetLanguage) && r.a(this.text, textTranslateParams.text) && r.a(this.region, textTranslateParams.region);
    }

    public final String getRegion() {
        return this.region;
    }

    public final String getSourceLanguage() {
        return this.sourceLanguage;
    }

    public final String getTargetLanguage() {
        return this.targetLanguage;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return (((((this.sourceLanguage.hashCode() * 31) + this.targetLanguage.hashCode()) * 31) + this.text.hashCode()) * 31) + this.region.hashCode();
    }

    public String toString() {
        return "TextTranslateParams(sourceLanguage=" + this.sourceLanguage + ", targetLanguage=" + this.targetLanguage + ", text=" + this.text + ", region=" + this.region + ")";
    }
}
