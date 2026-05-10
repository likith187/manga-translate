package com.oplus.aiunit.translation.model;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class YoudaoInfo {
    private final String appKey;
    private final String appSecret;

    /* JADX INFO: renamed from: private, reason: not valid java name */
    private final String f0private;
    private final String url;

    public YoudaoInfo(String appKey, String appSecret, String url, String str) {
        r.e(appKey, "appKey");
        r.e(appSecret, "appSecret");
        r.e(url, "url");
        r.e(str, "private");
        this.appKey = appKey;
        this.appSecret = appSecret;
        this.url = url;
        this.f0private = str;
    }

    public static /* synthetic */ YoudaoInfo copy$default(YoudaoInfo youdaoInfo, String str, String str2, String str3, String str4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = youdaoInfo.appKey;
        }
        if ((i10 & 2) != 0) {
            str2 = youdaoInfo.appSecret;
        }
        if ((i10 & 4) != 0) {
            str3 = youdaoInfo.url;
        }
        if ((i10 & 8) != 0) {
            str4 = youdaoInfo.f0private;
        }
        return youdaoInfo.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.appKey;
    }

    public final String component2() {
        return this.appSecret;
    }

    public final String component3() {
        return this.url;
    }

    public final String component4() {
        return this.f0private;
    }

    public final YoudaoInfo copy(String appKey, String appSecret, String url, String str) {
        r.e(appKey, "appKey");
        r.e(appSecret, "appSecret");
        r.e(url, "url");
        r.e(str, "private");
        return new YoudaoInfo(appKey, appSecret, url, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof YoudaoInfo)) {
            return false;
        }
        YoudaoInfo youdaoInfo = (YoudaoInfo) obj;
        return r.a(this.appKey, youdaoInfo.appKey) && r.a(this.appSecret, youdaoInfo.appSecret) && r.a(this.url, youdaoInfo.url) && r.a(this.f0private, youdaoInfo.f0private);
    }

    public final String getAppKey() {
        return this.appKey;
    }

    public final String getAppSecret() {
        return this.appSecret;
    }

    public final String getPrivate() {
        return this.f0private;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((this.appKey.hashCode() * 31) + this.appSecret.hashCode()) * 31) + this.url.hashCode()) * 31) + this.f0private.hashCode();
    }

    public String toString() {
        return "YoudaoInfo(appKey=" + this.appKey + ", appSecret=" + this.appSecret + ", url=" + this.url + ", private=" + this.f0private + ')';
    }
}
