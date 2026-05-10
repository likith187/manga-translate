package com.oplus.aiunit.antispam.client;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AntiSpamResult {
    private final String content;
    private final List<Hits> hits;
    private final Boolean isSample;
    private final String msg;
    private final Float rate;
    private final String sceneId;
    private final String sessionId;
    private final Integer status;

    public AntiSpamResult(String str, String str2, Integer num, String str3, Float f10, List<Hits> list, String str4, Boolean bool) {
        this.content = str;
        this.sceneId = str2;
        this.status = num;
        this.msg = str3;
        this.rate = f10;
        this.hits = list;
        this.sessionId = str4;
        this.isSample = bool;
    }

    public final String component1() {
        return this.content;
    }

    public final String component2() {
        return this.sceneId;
    }

    public final Integer component3() {
        return this.status;
    }

    public final String component4() {
        return this.msg;
    }

    public final Float component5() {
        return this.rate;
    }

    public final List<Hits> component6() {
        return this.hits;
    }

    public final String component7() {
        return this.sessionId;
    }

    public final Boolean component8() {
        return this.isSample;
    }

    public final AntiSpamResult copy(String str, String str2, Integer num, String str3, Float f10, List<Hits> list, String str4, Boolean bool) {
        return new AntiSpamResult(str, str2, num, str3, f10, list, str4, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AntiSpamResult)) {
            return false;
        }
        AntiSpamResult antiSpamResult = (AntiSpamResult) obj;
        return r.a(this.content, antiSpamResult.content) && r.a(this.sceneId, antiSpamResult.sceneId) && r.a(this.status, antiSpamResult.status) && r.a(this.msg, antiSpamResult.msg) && r.a(this.rate, antiSpamResult.rate) && r.a(this.hits, antiSpamResult.hits) && r.a(this.sessionId, antiSpamResult.sessionId) && r.a(this.isSample, antiSpamResult.isSample);
    }

    public final String getContent() {
        return this.content;
    }

    public final List<Hits> getHits() {
        return this.hits;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final Float getRate() {
        return this.rate;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sceneId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.status;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.msg;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Float f10 = this.rate;
        int iHashCode5 = (iHashCode4 + (f10 == null ? 0 : f10.hashCode())) * 31;
        List<Hits> list = this.hits;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.sessionId;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool = this.isSample;
        return iHashCode7 + (bool != null ? bool.hashCode() : 0);
    }

    public final Boolean isSample() {
        return this.isSample;
    }

    public String toString() {
        return "AntiSpamResult(content=" + this.content + ", sceneId=" + this.sceneId + ", status=" + this.status + ", msg=" + this.msg + ", rate=" + this.rate + ", hits=" + this.hits + ", sessionId=" + this.sessionId + ", isSample=" + this.isSample + ')';
    }
}
