package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class TextHistory {
    public static final String AI_RESULT = "ai";
    public static final a Companion = new a(null);
    public static final String TABLE_NAME = "text_history";
    private String expandField1;
    private String expandField2;
    private String expandField3;
    private String globalId;
    private long id;
    private String oriContent;
    private String oriLanguageCode;
    private String resultContent;
    private String resultLanguageCode;
    private int state;
    private long timestamp;
    private int type;
    private long updateTimestamp;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public TextHistory(String oriContent, String oriLanguageCode, String resultContent, String resultLanguageCode, long j10, int i10, String expandField1, String expandField2, String expandField3, String globalId, int i11, long j11) {
        r.e(oriContent, "oriContent");
        r.e(oriLanguageCode, "oriLanguageCode");
        r.e(resultContent, "resultContent");
        r.e(resultLanguageCode, "resultLanguageCode");
        r.e(expandField1, "expandField1");
        r.e(expandField2, "expandField2");
        r.e(expandField3, "expandField3");
        r.e(globalId, "globalId");
        this.oriContent = oriContent;
        this.oriLanguageCode = oriLanguageCode;
        this.resultContent = resultContent;
        this.resultLanguageCode = resultLanguageCode;
        this.timestamp = j10;
        this.state = i10;
        this.expandField1 = expandField1;
        this.expandField2 = expandField2;
        this.expandField3 = expandField3;
        this.globalId = globalId;
        this.type = i11;
        this.updateTimestamp = j11;
    }

    public final String component1() {
        return this.oriContent;
    }

    public final String component10() {
        return this.globalId;
    }

    public final int component11() {
        return this.type;
    }

    public final long component12() {
        return this.updateTimestamp;
    }

    public final String component2() {
        return this.oriLanguageCode;
    }

    public final String component3() {
        return this.resultContent;
    }

    public final String component4() {
        return this.resultLanguageCode;
    }

    public final long component5() {
        return this.timestamp;
    }

    public final int component6() {
        return this.state;
    }

    public final String component7() {
        return this.expandField1;
    }

    public final String component8() {
        return this.expandField2;
    }

    public final String component9() {
        return this.expandField3;
    }

    public final TextHistory copy(String oriContent, String oriLanguageCode, String resultContent, String resultLanguageCode, long j10, int i10, String expandField1, String expandField2, String expandField3, String globalId, int i11, long j11) {
        r.e(oriContent, "oriContent");
        r.e(oriLanguageCode, "oriLanguageCode");
        r.e(resultContent, "resultContent");
        r.e(resultLanguageCode, "resultLanguageCode");
        r.e(expandField1, "expandField1");
        r.e(expandField2, "expandField2");
        r.e(expandField3, "expandField3");
        r.e(globalId, "globalId");
        return new TextHistory(oriContent, oriLanguageCode, resultContent, resultLanguageCode, j10, i10, expandField1, expandField2, expandField3, globalId, i11, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextHistory)) {
            return false;
        }
        TextHistory textHistory = (TextHistory) obj;
        return r.a(this.oriContent, textHistory.oriContent) && r.a(this.oriLanguageCode, textHistory.oriLanguageCode) && r.a(this.resultContent, textHistory.resultContent) && r.a(this.resultLanguageCode, textHistory.resultLanguageCode) && this.timestamp == textHistory.timestamp && this.state == textHistory.state && r.a(this.expandField1, textHistory.expandField1) && r.a(this.expandField2, textHistory.expandField2) && r.a(this.expandField3, textHistory.expandField3) && r.a(this.globalId, textHistory.globalId) && this.type == textHistory.type && this.updateTimestamp == textHistory.updateTimestamp;
    }

    public final String getExpandField1() {
        return this.expandField1;
    }

    public final String getExpandField2() {
        return this.expandField2;
    }

    public final String getExpandField3() {
        return this.expandField3;
    }

    public final String getGlobalId() {
        return this.globalId;
    }

    public final long getId() {
        return this.id;
    }

    public final String getOriContent() {
        return this.oriContent;
    }

    public final String getOriLanguageCode() {
        return this.oriLanguageCode;
    }

    public final String getResultContent() {
        return this.resultContent;
    }

    public final String getResultLanguageCode() {
        return this.resultLanguageCode;
    }

    public final int getState() {
        return this.state;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final int getType() {
        return this.type;
    }

    public final long getUpdateTimestamp() {
        return this.updateTimestamp;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.oriContent.hashCode() * 31) + this.oriLanguageCode.hashCode()) * 31) + this.resultContent.hashCode()) * 31) + this.resultLanguageCode.hashCode()) * 31) + Long.hashCode(this.timestamp)) * 31) + Integer.hashCode(this.state)) * 31) + this.expandField1.hashCode()) * 31) + this.expandField2.hashCode()) * 31) + this.expandField3.hashCode()) * 31) + this.globalId.hashCode()) * 31) + Integer.hashCode(this.type)) * 31) + Long.hashCode(this.updateTimestamp);
    }

    public final void setExpandField1(String str) {
        r.e(str, "<set-?>");
        this.expandField1 = str;
    }

    public final void setExpandField2(String str) {
        r.e(str, "<set-?>");
        this.expandField2 = str;
    }

    public final void setExpandField3(String str) {
        r.e(str, "<set-?>");
        this.expandField3 = str;
    }

    public final void setGlobalId(String str) {
        r.e(str, "<set-?>");
        this.globalId = str;
    }

    public final void setId(long j10) {
        this.id = j10;
    }

    public final void setOriContent(String str) {
        r.e(str, "<set-?>");
        this.oriContent = str;
    }

    public final void setOriLanguageCode(String str) {
        r.e(str, "<set-?>");
        this.oriLanguageCode = str;
    }

    public final void setResultContent(String str) {
        r.e(str, "<set-?>");
        this.resultContent = str;
    }

    public final void setResultLanguageCode(String str) {
        r.e(str, "<set-?>");
        this.resultLanguageCode = str;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    public final void setTimestamp(long j10) {
        this.timestamp = j10;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void setUpdateTimestamp(long j10) {
        this.updateTimestamp = j10;
    }

    public String toString() {
        return "TextHistory(oriContent=" + this.oriContent + ", oriLanguageCode=" + this.oriLanguageCode + ", resultContent=" + this.resultContent + ", resultLanguageCode=" + this.resultLanguageCode + ", timestamp=" + this.timestamp + ", state=" + this.state + ", expandField1=" + this.expandField1 + ", expandField2=" + this.expandField2 + ", expandField3=" + this.expandField3 + ", globalId=" + this.globalId + ", type=" + this.type + ", updateTimestamp=" + this.updateTimestamp + ")";
    }
}
