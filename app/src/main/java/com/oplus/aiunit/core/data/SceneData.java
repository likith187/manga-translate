package com.oplus.aiunit.core.data;

import android.os.Bundle;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class SceneData {
    private long fullDownloadSize;
    private int support;
    private String sceneName = "";
    private DownloadType downloadType = DownloadType.DOWNLOAD_NONE;

    public final SceneData build(Bundle bundle) {
        r.e(bundle, "bundle");
        String string = bundle.getString(ParamsKt.PARAM_KEY_SCENE_NAME, "");
        r.d(string, "getString(...)");
        this.sceneName = string;
        this.support = bundle.getInt(ParamsKt.PARAM_KEY_SCENE_SUPPORT, 0);
        this.downloadType = DownloadType.Companion.find(bundle.getInt(ParamsKt.PARAM_KEY_SCENE_DOWNLOAD_TYPE, 0));
        this.fullDownloadSize = bundle.getLong(ParamsKt.PARAM_KEY_SCENE_DOWNLOAD_SIZE, 0L);
        return this;
    }

    public final DownloadType getDownloadType() {
        return this.downloadType;
    }

    public final long getFullDownloadSize() {
        return this.fullDownloadSize;
    }

    public final String getSceneName() {
        return this.sceneName;
    }

    public final int getSupport() {
        return this.support;
    }

    public final void setDownloadType(DownloadType downloadType) {
        r.e(downloadType, "<set-?>");
        this.downloadType = downloadType;
    }

    public final void setFullDownloadSize(long j10) {
        this.fullDownloadSize = j10;
    }

    public final void setSceneName(String str) {
        r.e(str, "<set-?>");
        this.sceneName = str;
    }

    public final void setSupport(int i10) {
        this.support = i10;
    }

    public String toString() {
        return "SceneData(" + this.sceneName + ", " + this.support + ", " + this.downloadType + ", " + this.fullDownloadSize + ')';
    }
}
