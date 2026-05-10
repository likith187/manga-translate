package com.oplus.backup.sdk.common.utils;

import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class BRLog {
    private static final String DOT = ".";
    private static final String HIDE = "*";
    private static final String HIDE_MULTI = "*****";
    private static final int NUM_1 = 1;
    private static final int NUM_2 = 2;
    private static final int NUM_3 = 3;
    private static final int NUM_4 = 4;
    private static final Pattern PACKAGE_PATTERN = Pattern.compile("([a-z_][a-z0-9_]*(\\.[a-z_][a-z0-9_]*)+)");
    private static final Pattern PATH_PATTERN = Pattern.compile("/((\\w|\\.|-|\\*|#)+/?)+");
    private static final String SEPARATOR = "/";
    private static final String TAG = "BRLog";
    private static int sLevel = 5;

    public static void d(String str, String str2) {
        d(str, str2, null);
    }

    public static void e(String str, String str2) {
        e(str, str2, null);
    }

    public static String getCaller(String str, StackTraceElement[] stackTraceElementArr, int i10) {
        if (stackTraceElementArr == null) {
            return AbstractJsonLexerKt.NULL;
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append("\n");
        try {
            int iMin = Math.min(stackTraceElementArr.length, i10);
            for (int i11 = 0; i11 < iMin; i11++) {
                sb.append(stackTraceElementArr[i11]);
                sb.append("\n");
            }
        } catch (Exception e10) {
            e(str, "getCaller exception(" + e10.getMessage() + ")");
        }
        sb.append("\n");
        return sb.toString();
    }

    public static String getCallerTrace(String str, StackTraceElement[] stackTraceElementArr) {
        return getCaller(str, stackTraceElementArr, 4);
    }

    public static String getModifiedFile(File file) {
        return file == null ? "" : getModifiedPath(file.toString());
    }

    public static String getModifiedInfo(Object obj) {
        if (obj == null) {
            return "";
        }
        String string = obj.toString();
        try {
            Matcher matcher = PATH_PATTERN.matcher(string);
            while (matcher.find()) {
                string = string.replace(matcher.group(0), getModifiedPath(matcher.group(0)));
            }
            Matcher matcher2 = PACKAGE_PATTERN.matcher(string);
            while (matcher2.find()) {
                string = string.replace(matcher2.group(0), getModifiedPkg(matcher2.group(0)));
            }
            return string;
        } catch (Exception unused) {
            return HIDE_MULTI;
        }
    }

    public static String getModifiedPath(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(SEPARATOR)) {
            return str;
        }
        String[] strArrSplit = str.split(SEPARATOR);
        StringBuilder sb = new StringBuilder();
        if (strArrSplit.length <= 3) {
            return str;
        }
        sb.append(SEPARATOR);
        sb.append(strArrSplit[1]);
        sb.append(SEPARATOR);
        sb.append(HIDE_MULTI);
        sb.append(SEPARATOR);
        sb.append(strArrSplit[strArrSplit.length - 2]);
        sb.append(SEPARATOR);
        sb.append(strArrSplit[strArrSplit.length - 1]);
        return sb.toString();
    }

    public static String getModifiedPkg(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(DOT)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length > 1) {
            sb.append(strArrSplit[0]);
            sb.append(DOT);
            sb.append(HIDE_MULTI);
            for (int i10 = 2; i10 < strArrSplit.length; i10++) {
                sb.append(DOT);
                sb.append(strArrSplit[i10]);
            }
        }
        return sb.toString();
    }

    public static void i(String str, String str2) {
        if (sLevel <= 4) {
            Log.i(str, str2);
        }
    }

    public static void setLogLevel(int i10) {
        sLevel = i10;
        Log.i(TAG, "setLogLevel:" + i10);
    }

    public static void v(String str, String str2) {
        if (sLevel <= 2) {
            Log.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (sLevel <= 5) {
            Log.w(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (sLevel <= 3) {
            if (th == null) {
                Log.d(str, str2);
            } else {
                Log.d(str, str2, th);
            }
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (sLevel <= 6) {
            if (th == null) {
                Log.e(str, str2);
            } else {
                Log.e(str, str2, th);
            }
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (sLevel <= 3) {
            if (th == null) {
                Log.i(str, str2);
            } else {
                Log.i(str, str2, th);
            }
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (sLevel <= 3) {
            if (th == null) {
                Log.v(str, str2);
            } else {
                Log.v(str, str2, th);
            }
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (sLevel <= 6) {
            if (th == null) {
                Log.w(str, str2);
            } else {
                Log.w(str, str2, th);
            }
        }
    }
}
