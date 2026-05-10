package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Conversation {
    private String expandField1;
    private String expandField2;
    private String expandField3;
    private String fromLanguage;
    private String fromText;
    private long id;
    private boolean isLeft;
    private boolean isRecognizeing;
    private boolean isShowAnima;
    private boolean isShowEditIcon;
    private boolean isTranslated;
    private int state;
    private long timestamp;
    private String toLanguage;
    private String toText;

    public Conversation(long j10, String fromText, String toText, String fromLanguage, String toLanguage, long j11, int i10, boolean z10, String expandField1, String expandField2, String expandField3) {
        r.e(fromText, "fromText");
        r.e(toText, "toText");
        r.e(fromLanguage, "fromLanguage");
        r.e(toLanguage, "toLanguage");
        r.e(expandField1, "expandField1");
        r.e(expandField2, "expandField2");
        r.e(expandField3, "expandField3");
        this.id = j10;
        this.fromText = fromText;
        this.toText = toText;
        this.fromLanguage = fromLanguage;
        this.toLanguage = toLanguage;
        this.timestamp = j11;
        this.state = i10;
        this.isLeft = z10;
        this.expandField1 = expandField1;
        this.expandField2 = expandField2;
        this.expandField3 = expandField3;
        this.isTranslated = !(fromText == null || fromText.length() == 0);
        this.isShowAnima = true;
        this.isShowEditIcon = true;
    }

    public final long component1() {
        return this.id;
    }

    public final String component10() {
        return this.expandField2;
    }

    public final String component11() {
        return this.expandField3;
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

    public final long component6() {
        return this.timestamp;
    }

    public final int component7() {
        return this.state;
    }

    public final boolean component8() {
        return this.isLeft;
    }

    public final String component9() {
        return this.expandField1;
    }

    public final Conversation copy(long j10, String fromText, String toText, String fromLanguage, String toLanguage, long j11, int i10, boolean z10, String expandField1, String expandField2, String expandField3) {
        r.e(fromText, "fromText");
        r.e(toText, "toText");
        r.e(fromLanguage, "fromLanguage");
        r.e(toLanguage, "toLanguage");
        r.e(expandField1, "expandField1");
        r.e(expandField2, "expandField2");
        r.e(expandField3, "expandField3");
        return new Conversation(j10, fromText, toText, fromLanguage, toLanguage, j11, i10, z10, expandField1, expandField2, expandField3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Conversation)) {
            return false;
        }
        Conversation conversation = (Conversation) obj;
        return this.id == conversation.id && r.a(this.fromText, conversation.fromText) && r.a(this.toText, conversation.toText) && r.a(this.fromLanguage, conversation.fromLanguage) && r.a(this.toLanguage, conversation.toLanguage) && this.timestamp == conversation.timestamp && this.state == conversation.state && this.isLeft == conversation.isLeft && r.a(this.expandField1, conversation.expandField1) && r.a(this.expandField2, conversation.expandField2) && r.a(this.expandField3, conversation.expandField3);
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

    public final String getFromLanguage() {
        return this.fromLanguage;
    }

    public final String getFromText() {
        return this.fromText;
    }

    public final long getId() {
        return this.id;
    }

    public final int getState() {
        return this.state;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getToLanguage() {
        return this.toLanguage;
    }

    public final String getToText() {
        return this.toText;
    }

    public int hashCode() {
        return (((((((((((((((((((Long.hashCode(this.id) * 31) + this.fromText.hashCode()) * 31) + this.toText.hashCode()) * 31) + this.fromLanguage.hashCode()) * 31) + this.toLanguage.hashCode()) * 31) + Long.hashCode(this.timestamp)) * 31) + Integer.hashCode(this.state)) * 31) + Boolean.hashCode(this.isLeft)) * 31) + this.expandField1.hashCode()) * 31) + this.expandField2.hashCode()) * 31) + this.expandField3.hashCode();
    }

    public final boolean isLeft() {
        return this.isLeft;
    }

    public final boolean isRecognizeing() {
        return this.isRecognizeing;
    }

    public final boolean isShowAnima() {
        return this.isShowAnima;
    }

    public final boolean isShowEditIcon() {
        return this.isShowEditIcon;
    }

    public final boolean isTranslated() {
        return this.isTranslated;
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

    public final void setLeft(boolean z10) {
        this.isLeft = z10;
    }

    public final void setRecognizeing(boolean z10) {
        this.isRecognizeing = z10;
    }

    public final void setShowAnima(boolean z10) {
        this.isShowAnima = z10;
    }

    public final void setShowEditIcon(boolean z10) {
        this.isShowEditIcon = z10;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    public final void setTimestamp(long j10) {
        this.timestamp = j10;
    }

    public final void setToLanguage(String str) {
        r.e(str, "<set-?>");
        this.toLanguage = str;
    }

    public final void setToText(String str) {
        r.e(str, "<set-?>");
        this.toText = str;
    }

    public final void setTranslated(boolean z10) {
        this.isTranslated = z10;
    }

    public String toString() {
        return "Conversation(id=" + this.id + ", fromText=" + this.fromText + ", toText=" + this.toText + ", fromLanguage=" + this.fromLanguage + ", toLanguage=" + this.toLanguage + ", timestamp=" + this.timestamp + ", state=" + this.state + ", isLeft=" + this.isLeft + ", expandField1=" + this.expandField1 + ", expandField2=" + this.expandField2 + ", expandField3=" + this.expandField3 + ")";
    }

    public /* synthetic */ Conversation(long j10, String str, String str2, String str3, String str4, long j11, int i10, boolean z10, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0L : j10, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2, (i11 & 8) != 0 ? "" : str3, (i11 & 16) != 0 ? "" : str4, (i11 & 32) == 0 ? j11 : 0L, (i11 & 64) != 0 ? 0 : i10, (i11 & 128) != 0 ? true : z10, (i11 & COUIToolTips.ALIGN_TOP) != 0 ? "" : str5, (i11 & ConfigPackage.FRAME_SIZE_1) != 0 ? "" : str6, (i11 & 1024) == 0 ? str7 : "");
    }

    public Conversation() {
        this(0L, "", "", "", "", 0L, 0, true, null, null, null, 1792, null);
    }
}
