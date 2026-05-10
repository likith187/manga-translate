package com.coui.appcompat.statement;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class PrivacyItem {
    private final String summaryText;
    private final String titleText;

    public PrivacyItem(String titleText, String summaryText) {
        kotlin.jvm.internal.r.e(titleText, "titleText");
        kotlin.jvm.internal.r.e(summaryText, "summaryText");
        this.titleText = titleText;
        this.summaryText = summaryText;
    }

    public static /* synthetic */ PrivacyItem copy$default(PrivacyItem privacyItem, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = privacyItem.titleText;
        }
        if ((i10 & 2) != 0) {
            str2 = privacyItem.summaryText;
        }
        return privacyItem.copy(str, str2);
    }

    public final String component1() {
        return this.titleText;
    }

    public final String component2() {
        return this.summaryText;
    }

    public final PrivacyItem copy(String titleText, String summaryText) {
        kotlin.jvm.internal.r.e(titleText, "titleText");
        kotlin.jvm.internal.r.e(summaryText, "summaryText");
        return new PrivacyItem(titleText, summaryText);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacyItem)) {
            return false;
        }
        PrivacyItem privacyItem = (PrivacyItem) obj;
        return kotlin.jvm.internal.r.a(this.titleText, privacyItem.titleText) && kotlin.jvm.internal.r.a(this.summaryText, privacyItem.summaryText);
    }

    public final String getSummaryText() {
        return this.summaryText;
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public int hashCode() {
        return (this.titleText.hashCode() * 31) + this.summaryText.hashCode();
    }

    public String toString() {
        return "PrivacyItem(titleText=" + this.titleText + ", summaryText=" + this.summaryText + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PrivacyItem(Context context, int i10, int i11) {
        kotlin.jvm.internal.r.e(context, "context");
        String string = context.getString(i10);
        kotlin.jvm.internal.r.d(string, "context.getString(titleId)");
        String string2 = context.getString(i11);
        kotlin.jvm.internal.r.d(string2, "context.getString(summaryId)");
        this(string, string2);
    }
}
