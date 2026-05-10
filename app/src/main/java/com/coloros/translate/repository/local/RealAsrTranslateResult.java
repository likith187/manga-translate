package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class RealAsrTranslateResult {
    private String fromLanguage;
    private String fromText;
    private long id;
    private boolean isLanguageChange;
    private String toLanguage;
    private String toText;

    public RealAsrTranslateResult() {
        this(0L, null, null, null, null, false, 63, null);
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.fromText;
    }

    public final String component3() {
        return this.toText;
    }

    public final String component4() {
        return this.fromLanguage;
    }

    public final String component5() {
        return this.toLanguage;
    }

    public final boolean component6() {
        return this.isLanguageChange;
    }

    public final RealAsrTranslateResult copy(long j10, String fromText, String toText, String fromLanguage, String toLanguage, boolean z10) {
        r.e(fromText, "fromText");
        r.e(toText, "toText");
        r.e(fromLanguage, "fromLanguage");
        r.e(toLanguage, "toLanguage");
        return new RealAsrTranslateResult(j10, fromText, toText, fromLanguage, toLanguage, z10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealAsrTranslateResult)) {
            return false;
        }
        RealAsrTranslateResult realAsrTranslateResult = (RealAsrTranslateResult) obj;
        return this.id == realAsrTranslateResult.id && r.a(this.fromText, realAsrTranslateResult.fromText) && r.a(this.toText, realAsrTranslateResult.toText) && r.a(this.fromLanguage, realAsrTranslateResult.fromLanguage) && r.a(this.toLanguage, realAsrTranslateResult.toLanguage) && this.isLanguageChange == realAsrTranslateResult.isLanguageChange;
    }

    public final String getExportSourceLanguage() {
        return !this.isLanguageChange ? this.fromText : this.toText;
    }

    public final String getExportTargetLanguage() {
        return !this.isLanguageChange ? this.toText : this.fromText;
    }

    public final String getFromLanguage() {
        return this.fromLanguage;
    }

    public final String getFromText() {
        return this.fromText;
    }

    public final long getId() {
        return this.id;
    }

    public final String getToLanguage() {
        return this.toLanguage;
    }

    public final String getToText() {
        return this.toText;
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.id) * 31) + this.fromText.hashCode()) * 31) + this.toText.hashCode()) * 31) + this.fromLanguage.hashCode()) * 31) + this.toLanguage.hashCode()) * 31) + Boolean.hashCode(this.isLanguageChange);
    }

    public final boolean isLanguageChange() {
        return this.isLanguageChange;
    }

    public final void setFromLanguage(String str) {
        r.e(str, "<set-?>");
        this.fromLanguage = str;
    }

    public final void setFromText(String str) {
        r.e(str, "<set-?>");
        this.fromText = str;
    }

    public final void setId(long j10) {
        this.id = j10;
    }

    public final void setLanguageChange(boolean z10) {
        this.isLanguageChange = z10;
    }

    public final void setToLanguage(String str) {
        r.e(str, "<set-?>");
        this.toLanguage = str;
    }

    public final void setToText(String str) {
        r.e(str, "<set-?>");
        this.toText = str;
    }

    public String toString() {
        return "RealAsrTranslateResult(id=" + this.id + ", fromText=" + this.fromText + ", toText=" + this.toText + ", fromLanguage=" + this.fromLanguage + ", toLanguage=" + this.toLanguage + ", isLanguageChange=" + this.isLanguageChange + ")";
    }

    public RealAsrTranslateResult(long j10, String fromText, String toText, String fromLanguage, String toLanguage, boolean z10) {
        r.e(fromText, "fromText");
        r.e(toText, "toText");
        r.e(fromLanguage, "fromLanguage");
        r.e(toLanguage, "toLanguage");
        this.id = j10;
        this.fromText = fromText;
        this.toText = toText;
        this.fromLanguage = fromLanguage;
        this.toLanguage = toLanguage;
        this.isLanguageChange = z10;
    }

    public /* synthetic */ RealAsrTranslateResult(long j10, String str, String str2, String str3, String str4, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? "" : str2, (i10 & 8) != 0 ? "" : str3, (i10 & 16) == 0 ? str4 : "", (i10 & 32) != 0 ? false : z10);
    }
}
