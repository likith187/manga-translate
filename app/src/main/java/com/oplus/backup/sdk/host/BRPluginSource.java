package com.oplus.backup.sdk.host;

import android.content.Context;
import com.oplus.backup.sdk.common.plugin.BRPluginConfig;
import com.oplus.backup.sdk.common.plugin.BRPluginConfigParser;
import com.oplus.backup.sdk.common.utils.BRLog;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BRPluginSource {
    private static final String ASSETS_PLUGINS_PATH = "br_plugins";
    public static final String BR_BASE_DIR = "br_cache";
    public static final String LOCAL_PLUGINS_DIR = "local_plugins";
    private static final String TAG = "BRPluginSource";
    private static BRPluginConfig[] sBRPluginConfigs;

    public static BRPluginConfig[] getLocalBRPlugins(Context context, String str) throws Throwable {
        String[] list;
        String[] list2;
        Throwable th;
        InputStream inputStreamOpen;
        IOException iOException;
        StringBuilder sb;
        BRPluginConfig[] bRPluginConfigArr = sBRPluginConfigs;
        if (bRPluginConfigArr != null) {
            return bRPluginConfigArr;
        }
        initBaseFolder(context);
        BRPluginConfig[] bRPluginConfigArr2 = new BRPluginConfig[0];
        ArrayList arrayList = new ArrayList();
        InputStream inputStream = null;
        try {
            list = context.getAssets().list(ASSETS_PLUGINS_PATH);
        } catch (IOException e10) {
            BRLog.e(TAG, "getLocalBRPlugins, e =" + e10.getMessage());
            list = null;
        }
        if (list == null) {
            return bRPluginConfigArr2;
        }
        int length = list.length;
        for (int i10 = 0; i10 < length; i10++) {
            BRLog.d(TAG, list[i10]);
            try {
                list2 = context.getAssets().list("br_plugins/" + list[i10]);
            } catch (IOException e11) {
                BRLog.e(TAG, "getLocalBRPlugins, e =" + e11.getMessage());
                list2 = null;
            }
            if (list2 == null) {
                return bRPluginConfigArr2;
            }
            int length2 = list2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (list2[i11].endsWith(".config")) {
                    BRLog.d(TAG, list2[i11]);
                    try {
                        inputStreamOpen = context.getAssets().open("br_plugins/" + list[i10] + "/" + list2[i11]);
                    } catch (IOException e12) {
                        e = e12;
                        inputStreamOpen = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        try {
                            BRPluginConfig bRPluginConfig = BRPluginConfigParser.parse(inputStreamOpen);
                            if (bRPluginConfig != null) {
                                arrayList.add(bRPluginConfig);
                                BRLog.d(TAG, "add success");
                            } else {
                                BRLog.w(TAG, "BRPluginConfigParser.parse(inputStream) failed:");
                            }
                            if (inputStreamOpen != null) {
                                try {
                                    inputStreamOpen.close();
                                } catch (IOException e13) {
                                    iOException = e13;
                                    sb = new StringBuilder();
                                    sb.append("getLocalBRPlugins, e =");
                                    sb.append(iOException.getMessage());
                                    BRLog.e(TAG, sb.toString());
                                }
                            }
                        } catch (IOException e14) {
                            e = e14;
                            BRLog.e(TAG, "getLocalBRPlugins, e =" + e.getMessage());
                            if (inputStreamOpen != null) {
                                try {
                                    inputStreamOpen.close();
                                } catch (IOException e15) {
                                    iOException = e15;
                                    sb = new StringBuilder();
                                    sb.append("getLocalBRPlugins, e =");
                                    sb.append(iOException.getMessage());
                                    BRLog.e(TAG, sb.toString());
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStreamOpen;
                        if (inputStream == null) {
                            throw th;
                        }
                        try {
                            inputStream.close();
                            throw th;
                        } catch (IOException e16) {
                            BRLog.e(TAG, "getLocalBRPlugins, e =" + e16.getMessage());
                            throw th;
                        }
                    }
                }
            }
        }
        BRPluginConfig[] bRPluginConfigArr3 = (BRPluginConfig[]) arrayList.toArray(new BRPluginConfig[arrayList.size()]);
        sBRPluginConfigs = bRPluginConfigArr3;
        return bRPluginConfigArr3;
    }

    public static File initBaseFolder(Context context) {
        return context.getDir(BR_BASE_DIR, 0);
    }

    public static BRPluginConfig[] getLocalBRPlugins(Context context) {
        return getLocalBRPlugins(context, LOCAL_PLUGINS_DIR);
    }
}
