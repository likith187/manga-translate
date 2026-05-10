package com.slp.library;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.slp.library.common.Utils;
import com.slp.library.track.ITrackApi;
import com.slp.library.track.TrackFactory;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class SlpSdk {
    private static String CODE;
    private static Context CONTEXT;
    private static String KEY;
    private static String TOKEN;
    private static String loadCache;

    static {
        System.loadLibrary("SlpBase");
        KEY = "";
        TOKEN = "";
        CODE = "";
        loadCache = "";
    }

    private SlpSdk() {
    }

    public static void enableOnline(boolean z10) {
        if (!hasInstall()) {
            throw new RuntimeException("need Init SDK !");
        }
        a.e(z10);
    }

    public static String getAppKey() {
        return KEY;
    }

    public static String getCode() {
        return CODE;
    }

    public static Context getContext() {
        if (hasInstall()) {
            return CONTEXT;
        }
        throw new RuntimeException("sdk not init !");
    }

    public static String getSecretKey() {
        return TOKEN;
    }

    public static boolean hasInstall() {
        return CONTEXT != null;
    }

    static void init(Context context, String str, String str2, String str3) {
        CONTEXT = context;
        KEY = str;
        TOKEN = str2;
        CODE = str3;
    }

    public static boolean install(Context context) {
        if (hasInstall()) {
            return true;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        try {
            Uri uri = Uri.parse("content://" + applicationContext.getPackageName() + ".SlpConfig/is");
            ContentValues contentValues = new ContentValues();
            contentValues.put("slp", Boolean.TRUE);
            Uri uriInsert = applicationContext.getContentResolver().insert(uri, contentValues);
            if (uriInsert == null) {
                return false;
            }
            init(applicationContext, uriInsert.getQueryParameter("a"), uriInsert.getQueryParameter("b"), uriInsert.getQueryParameter("c"));
            Log.i("SDK-SLP", "Init Sucess");
            TrackFactory.initOTrack(context);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isEnableOnline() {
        if (hasInstall()) {
            return a.ex();
        }
        throw new RuntimeException("need Init SDK !");
    }

    private static native void load(String str);

    private static native void loadEx(String str, boolean z10);

    public static File loadLibrary(String str, String str2) {
        return loadLibrary(str, str2, true);
    }

    public static void setTrackApi(ITrackApi<?> iTrackApi) {
        TrackFactory.setTrackApi(iTrackApi);
    }

    public static synchronized File loadLibrary(String str, String str2, boolean z10) {
        File file;
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length < 1) {
            throw new RuntimeException("Error：Not Found Abi");
        }
        StringBuilder sb = new StringBuilder();
        String str3 = File.separator;
        sb.append(str3);
        sb.append(strArr[0]);
        sb.append(str3);
        sb.append("lib");
        sb.append(str2);
        sb.append(".so");
        String string = sb.toString();
        File file2 = new File(str + string);
        File file3 = new File(getContext().getFilesDir(), "slp_libs");
        file = new File(file3, string);
        if (!file2.exists()) {
            throw new RuntimeException("Error：Not Found So");
        }
        if (!loadCache.equals(str)) {
            file3.delete();
            Utils.copyFile(new File(str), file3);
            loadCache = str;
        }
        try {
            loadEx(file.getAbsolutePath(), z10);
        } catch (Throwable th) {
            th.printStackTrace();
            throw new RuntimeException(th.getMessage());
        }
        return file;
    }
}
