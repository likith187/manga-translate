package org.opencv.android;

import android.util.Log;
import com.oplus.backup.sdk.common.utils.Constants;
import java.util.StringTokenizer;
import org.opencv.core.Core;

/* JADX INFO: loaded from: classes2.dex */
abstract class StaticHelper {
    public static boolean a(boolean z10) {
        String libraryList;
        if (z10) {
            c("cudart");
            c("nppc");
            c("nppi");
            c("npps");
            c("cufft");
            c("cublas");
        }
        Log.d("OpenCV/StaticHelper", "Trying to get library list");
        try {
            System.loadLibrary("opencv_info");
            libraryList = getLibraryList();
        } catch (UnsatisfiedLinkError unused) {
            Log.e("OpenCV/StaticHelper", "OpenCV error: Cannot load info library for OpenCV");
            libraryList = "";
        }
        Log.d("OpenCV/StaticHelper", "Library list: \"" + libraryList + "\"");
        Log.d("OpenCV/StaticHelper", "First attempt to load libs");
        if (!b(libraryList)) {
            Log.d("OpenCV/StaticHelper", "First attempt to load libs fails");
            return false;
        }
        Log.d("OpenCV/StaticHelper", "First attempt to load libs is OK");
        for (String str : Core.b().split(System.getProperty("line.separator"))) {
            Log.i("OpenCV/StaticHelper", str);
        }
        return true;
    }

    private static boolean b(String str) {
        Log.d("OpenCV/StaticHelper", "Trying to init OpenCV libs");
        if (str == null || str.length() == 0) {
            return c("opencv_java4");
        }
        Log.d("OpenCV/StaticHelper", "Trying to load libs by dependency list");
        StringTokenizer stringTokenizer = new StringTokenizer(str, Constants.DataMigration.SPLIT_TAG);
        boolean zC = true;
        while (stringTokenizer.hasMoreTokens()) {
            zC &= c(stringTokenizer.nextToken());
        }
        return zC;
    }

    private static boolean c(String str) {
        Log.d("OpenCV/StaticHelper", "Trying to load library " + str);
        try {
            System.loadLibrary(str);
            Log.d("OpenCV/StaticHelper", "Library " + str + " loaded");
            return true;
        } catch (UnsatisfiedLinkError e10) {
            Log.d("OpenCV/StaticHelper", "Cannot load library \"" + str + "\"");
            e10.printStackTrace();
            return false;
        }
    }

    private static native String getLibraryList();
}
