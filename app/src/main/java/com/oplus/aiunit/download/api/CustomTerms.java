package com.oplus.aiunit.download.api;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomTerms {
    public static final Companion Companion = new Companion(null);
    private String aliasName = "";
    private String title = "";
    private String description = "";
    private String downloadRetry = "";
    private String installRetry = "";
    private String downloading = "";
    private String complete = "";

    public static final class Companion {
        private Companion() {
        }

        public final CustomTerms buildTerms(Bundle body) {
            r.e(body, "body");
            CustomTerms customTerms = new CustomTerms();
            String string = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_ALIAS_NAME, "");
            r.d(string, "getString(...)");
            customTerms.setAliasName(string);
            String string2 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_TITLE, "");
            r.d(string2, "getString(...)");
            customTerms.setTitle(string2);
            String string3 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_DESCRIPTION, "");
            r.d(string3, "getString(...)");
            customTerms.setDescription(string3);
            String string4 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_FAIL_RETRY, "");
            r.d(string4, "getString(...)");
            customTerms.setDownloadRetry(string4);
            String string5 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_INSTALL_FAIL_RETRY, "");
            r.d(string5, "getString(...)");
            customTerms.setInstallRetry(string5);
            String string6 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_DOWNLOADING, "");
            r.d(string6, "getString(...)");
            customTerms.setDownloading(string6);
            String string7 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_COMPLETE, "");
            r.d(string7, "getString(...)");
            customTerms.setComplete(string7);
            return customTerms;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final CustomTerms buildTerms(Bundle bundle) {
        return Companion.buildTerms(bundle);
    }

    public static /* synthetic */ void getAliasName$annotations() {
    }

    public final Bundle fillBody(Bundle body) {
        r.e(body, "body");
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_ALIAS_NAME, this.aliasName);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_TITLE, this.title);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_DESCRIPTION, this.description);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_FAIL_RETRY, this.downloadRetry);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_INSTALL_FAIL_RETRY, this.installRetry);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_DOWNLOADING, this.downloading);
        body.putString(DownloadRequest.PARAM_KEY_DOWNLOAD_COMPLETE, this.complete);
        return body;
    }

    public final String getAliasName() {
        return this.aliasName;
    }

    public final String getComplete() {
        return this.complete;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDownloadRetry() {
        return this.downloadRetry;
    }

    public final String getDownloading() {
        return this.downloading;
    }

    public final String getInstallRetry() {
        return this.installRetry;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setAliasName(String str) {
        r.e(str, "<set-?>");
        this.aliasName = str;
    }

    public final void setComplete(String str) {
        r.e(str, "<set-?>");
        this.complete = str;
    }

    public final void setDescription(String str) {
        r.e(str, "<set-?>");
        this.description = str;
    }

    public final void setDownloadRetry(String str) {
        r.e(str, "<set-?>");
        this.downloadRetry = str;
    }

    public final void setDownloading(String str) {
        r.e(str, "<set-?>");
        this.downloading = str;
    }

    public final void setInstallRetry(String str) {
        r.e(str, "<set-?>");
        this.installRetry = str;
    }

    public final void setTitle(String str) {
        r.e(str, "<set-?>");
        this.title = str;
    }
}
