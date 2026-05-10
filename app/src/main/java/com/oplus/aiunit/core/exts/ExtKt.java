package com.oplus.aiunit.core.exts;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ExtKt {
    private static final String CONFIG_PACKAGE_NAME = "ConfigPackage";
    private static final String FRAME_PACKAGE_NAME = "FramePackage";
    private static final String PLUGIN_ID_NAME = "pluginId";

    @Keep
    public static final ConfigPackage getConfigPackage(Bundle bundle) {
        r.e(bundle, "<this>");
        return (ConfigPackage) bundle.getParcelable(CONFIG_PACKAGE_NAME);
    }

    @Keep
    public static final FramePackage getFramePackage(Bundle bundle) {
        r.e(bundle, "<this>");
        return (FramePackage) bundle.getParcelable(FRAME_PACKAGE_NAME);
    }

    @Keep
    public static final String getPluginId(Bundle bundle) {
        r.e(bundle, "<this>");
        return bundle.getString(PLUGIN_ID_NAME);
    }

    @Keep
    public static final Bundle setConfigPackage(Bundle bundle, ConfigPackage configPackage) {
        r.e(bundle, "<this>");
        bundle.putParcelable(CONFIG_PACKAGE_NAME, configPackage);
        return bundle;
    }

    @Keep
    public static final Bundle setFramePackage(Bundle bundle, FramePackage framePackage) {
        r.e(bundle, "<this>");
        bundle.putParcelable(FRAME_PACKAGE_NAME, framePackage);
        return bundle;
    }

    @Keep
    public static final Bundle setPluginId(Bundle bundle, String str) {
        r.e(bundle, "<this>");
        bundle.putString(PLUGIN_ID_NAME, str);
        return bundle;
    }
}
