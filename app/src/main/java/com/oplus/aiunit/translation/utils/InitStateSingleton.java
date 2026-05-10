package com.oplus.aiunit.translation.utils;

import com.oplus.aiunit.sdk.translation.BuildConfig;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class InitStateSingleton {
    public static final int INIT_FINISH_KEY = 1;
    public static final int NOT_INIT_SDK_KEY = 0;
    private static final String TAG = "InitStateSingleton";
    private static int mSpeechHasInit;
    private static int mTranslateHasInit;
    public static final InitStateSingleton INSTANCE = new InitStateSingleton();
    private static String mTranslateInitJson = "";
    private static String mSpeechInitJson = "";
    private static String mPackageName = "";
    private static String mSdkVersion = BuildConfig.AI_SDK_VERSION;

    private InitStateSingleton() {
    }

    public final String getPackageName() {
        return mPackageName;
    }

    public final String getSdkVersion() {
        return mSdkVersion;
    }

    public final String getSpeechInitJson() {
        return mSpeechInitJson;
    }

    public final int getSpeechInitState() {
        return mSpeechHasInit;
    }

    public final String getTranslateInitJson() {
        return mTranslateInitJson;
    }

    public final int getTranslateInitState() {
        return mTranslateHasInit;
    }

    public final void setForcePackageName(String name) {
        r.e(name, "name");
        mPackageName = name;
    }

    public final void setPackageName(String name) {
        r.e(name, "name");
        if (mPackageName.length() == 0) {
            mPackageName = name;
        }
    }

    public final void setSpeechInitJson(String json) {
        r.e(json, "json");
        mSpeechInitJson = json;
    }

    public final void setSpeechInitState(int i10) {
        AILogHelper.Companion.i(TAG, "setSpeechInitState:" + i10);
        mSpeechHasInit = i10;
    }

    public final void setTranslateInitJson(String json) {
        r.e(json, "json");
        mTranslateInitJson = json;
    }

    public final void setTranslateInitState(int i10) {
        AILogHelper.Companion.i(TAG, "setTranslateInitState:" + i10);
        mTranslateHasInit = i10;
    }
}
