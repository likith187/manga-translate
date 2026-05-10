package com.oplus.aiunit.translation.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class TextTranslateData {
    private boolean ifSafe;
    private String sourceText;
    private String translateText;

    public TextTranslateData(String sourceText, String translateText, boolean z10) {
        r.e(sourceText, "sourceText");
        r.e(translateText, "translateText");
        this.sourceText = sourceText;
        this.translateText = translateText;
        this.ifSafe = z10;
    }

    public static /* synthetic */ TextTranslateData copy$default(TextTranslateData textTranslateData, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = textTranslateData.sourceText;
        }
        if ((i10 & 2) != 0) {
            str2 = textTranslateData.translateText;
        }
        if ((i10 & 4) != 0) {
            z10 = textTranslateData.ifSafe;
        }
        return textTranslateData.copy(str, str2, z10);
    }

    public final String component1() {
        return this.sourceText;
    }

    public final String component2() {
        return this.translateText;
    }

    public final boolean component3() {
        return this.ifSafe;
    }

    public final TextTranslateData copy(String sourceText, String translateText, boolean z10) {
        r.e(sourceText, "sourceText");
        r.e(translateText, "translateText");
        return new TextTranslateData(sourceText, translateText, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTranslateData)) {
            return false;
        }
        TextTranslateData textTranslateData = (TextTranslateData) obj;
        return r.a(this.sourceText, textTranslateData.sourceText) && r.a(this.translateText, textTranslateData.translateText) && this.ifSafe == textTranslateData.ifSafe;
    }

    public final boolean getIfSafe() {
        return this.ifSafe;
    }

    public final String getSourceText() {
        return this.sourceText;
    }

    public final String getTranslateText() {
        return this.translateText;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        int iHashCode = ((this.sourceText.hashCode() * 31) + this.translateText.hashCode()) * 31;
        boolean z10 = this.ifSafe;
        ?? r22 = z10;
        if (z10) {
            r22 = 1;
        }
        return iHashCode + r22;
    }

    public final void setIfSafe(boolean z10) {
        this.ifSafe = z10;
    }

    public final void setSourceText(String str) {
        r.e(str, "<set-?>");
        this.sourceText = str;
    }

    public final void setTranslateText(String str) {
        r.e(str, "<set-?>");
        this.translateText = str;
    }

    public String toString() {
        return "TextTranslateData(sourceText=" + this.sourceText + ", translateText=" + this.translateText + ", ifSafe=" + this.ifSafe + ')';
    }

    public /* synthetic */ TextTranslateData(String str, String str2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? true : z10);
    }
}
