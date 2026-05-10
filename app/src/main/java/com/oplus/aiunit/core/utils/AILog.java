package com.oplus.aiunit.core.utils;

import android.content.Context;
import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.r;
import w8.a;

/* JADX INFO: loaded from: classes.dex */
public final class AILog {
    private static final String HIDE_MULTI = "****";
    private static final String LOG_KEY = "persist.sys.assert.panic";
    private static final String LOG_KEY_MTK = "persist.sys.assert.enable";
    private static final String LOG_TAG = "AIUnit";
    private static final int NUM_1 = 1;
    private static final int NUM_2 = 2;
    private static final int NUM_3 = 3;
    private static final String ROOT_TAG = "AIUnit-SDK";
    private static volatile boolean debugMode;
    private static volatile boolean isDebugging;
    private static volatile boolean isInitialized;
    private static volatile boolean isLogOn;
    public static final AILog INSTANCE = new AILog();
    private static String BIZ_TAG = "";

    private AILog() {
    }

    public static final void d(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        if (debugMode || isDebugging) {
            Log.d(BIZ_TAG + '-' + tag, msg);
        }
    }

    public static final void dMask(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        if (debugMode || isDebugging) {
            Log.d(BIZ_TAG + '-' + tag, mask(msg));
        }
    }

    public static final void e(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.e(BIZ_TAG + '-' + tag, msg);
    }

    public static final void eMask(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.e(BIZ_TAG + '-' + tag, mask(msg));
    }

    public static final void i(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.i(BIZ_TAG + '-' + tag, msg);
    }

    public static final void iMask(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.i(BIZ_TAG + '-' + tag, mask(msg));
    }

    public static final void init(Context context, boolean z10) {
        String string;
        int i10;
        r.e(context, "context");
        if (isInitialized) {
            return;
        }
        String str = context.getApplicationInfo().packageName;
        r.b(str);
        int iC0 = kotlin.text.r.c0(str, ".", 0, false, 6, null);
        if (iC0 <= 0 || (i10 = iC0 + 1) >= str.length()) {
            string = ROOT_TAG;
        } else {
            StringBuilder sb = new StringBuilder("AIUnit-SDK(");
            String strSubstring = str.substring(i10);
            r.d(strSubstring, "substring(...)");
            sb.append(strSubstring);
            sb.append(')');
            string = sb.toString();
        }
        BIZ_TAG = string;
        debugMode = z10;
        refreshDebugSwitch$aiunit_sdk_toolkits_release();
        refreshLogSwitch$aiunit_sdk_toolkits_release();
        isInitialized = true;
    }

    public static final String mask(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int length = str.length();
        if (length <= 4) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(0, 2);
        r.d(strSubstring, "substring(...)");
        sb.append(strSubstring);
        sb.append(HIDE_MULTI);
        String strSubstring2 = str.substring(length - 2, length);
        r.d(strSubstring2, "substring(...)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    public static final String maskPath(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        List listU0 = kotlin.text.r.u0(str, new String[]{"/"}, false, 0, 6, null);
        if (listU0.size() <= 3) {
            return str;
        }
        return ((String) listU0.get(0)) + '/' + ((String) listU0.get(1)) + "/****/" + ((String) listU0.get(listU0.size() - 2)) + '/' + ((String) listU0.get(listU0.size() - 1));
    }

    public static final void printD(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.d(BIZ_TAG + '-' + tag, msg);
    }

    public static final void printI(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.i(BIZ_TAG + '-' + tag, msg);
    }

    public static final void refreshDebugSwitch$aiunit_sdk_toolkits_release() {
        isDebugging = Log.isLoggable(LOG_TAG, 3);
        printI(BIZ_TAG, "refreshDebugSwitch: isDebugging = " + isDebugging);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0068 A[Catch: all -> 0x0066, TryCatch #0 {all -> 0x0066, blocks: (B:26:0x0006, B:28:0x0056, B:30:0x0061, B:36:0x006b, B:35:0x0068), top: B:43:0x0006 }] */
    @android.annotation.SuppressLint({"PrivateApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void refreshLogSwitch$aiunit_sdk_toolkits_release() {
        /*
            java.lang.String r0 = "null cannot be cast to non-null type kotlin.Boolean"
            java.lang.String r1 = "refreshLogSwitch: isLogOn = "
            java.lang.String r2 = "refreshLogSwitch: qeOff = "
            n8.r$a r3 = n8.r.Companion     // Catch: java.lang.Throwable -> L66
            java.lang.String r3 = "android.os.SystemProperties"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.Throwable -> L66
            java.lang.String r4 = "getBoolean"
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            java.lang.Class r6 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L66
            java.lang.Class[] r5 = new java.lang.Class[]{r5, r6}     // Catch: java.lang.Throwable -> L66
            java.lang.reflect.Method r4 = r3.getMethod(r4, r5)     // Catch: java.lang.Throwable -> L66
            java.lang.String r5 = "persist.sys.assert.panic"
            java.lang.Boolean r6 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L66
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6}     // Catch: java.lang.Throwable -> L66
            java.lang.Object r5 = r4.invoke(r3, r5)     // Catch: java.lang.Throwable -> L66
            java.lang.String r7 = "persist.sys.assert.enable"
            java.lang.Object[] r6 = new java.lang.Object[]{r7, r6}     // Catch: java.lang.Throwable -> L66
            java.lang.Object r3 = r4.invoke(r3, r6)     // Catch: java.lang.Throwable -> L66
            java.lang.String r4 = com.oplus.aiunit.core.utils.AILog.BIZ_TAG     // Catch: java.lang.Throwable -> L66
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L66
            r6.append(r5)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = ", qeOffMtk = "
            r6.append(r2)     // Catch: java.lang.Throwable -> L66
            r6.append(r3)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = r6.toString()     // Catch: java.lang.Throwable -> L66
            printI(r4, r2)     // Catch: java.lang.Throwable -> L66
            kotlin.jvm.internal.r.c(r5, r0)     // Catch: java.lang.Throwable -> L66
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L66
            boolean r2 = r5.booleanValue()     // Catch: java.lang.Throwable -> L66
            if (r2 != 0) goto L68
            kotlin.jvm.internal.r.c(r3, r0)     // Catch: java.lang.Throwable -> L66
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L66
            boolean r0 = r3.booleanValue()     // Catch: java.lang.Throwable -> L66
            if (r0 != 0) goto L68
            boolean r0 = com.oplus.aiunit.core.utils.AILog.isDebugging     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L6b
            goto L68
        L66:
            r0 = move-exception
            goto L85
        L68:
            r0 = 1
            com.oplus.aiunit.core.utils.AILog.isLogOn = r0     // Catch: java.lang.Throwable -> L66
        L6b:
            java.lang.String r0 = com.oplus.aiunit.core.utils.AILog.BIZ_TAG     // Catch: java.lang.Throwable -> L66
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L66
            boolean r1 = com.oplus.aiunit.core.utils.AILog.isLogOn     // Catch: java.lang.Throwable -> L66
            r2.append(r1)     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L66
            printI(r0, r1)     // Catch: java.lang.Throwable -> L66
            n8.h0 r0 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L66
            java.lang.Object r0 = n8.r.m59constructorimpl(r0)     // Catch: java.lang.Throwable -> L66
            goto L8f
        L85:
            n8.r$a r1 = n8.r.Companion
            java.lang.Object r0 = n8.s.a(r0)
            java.lang.Object r0 = n8.r.m59constructorimpl(r0)
        L8f:
            java.lang.Throwable r0 = n8.r.m62exceptionOrNullimpl(r0)
            if (r0 == 0) goto L9c
            java.lang.String r1 = com.oplus.aiunit.core.utils.AILog.BIZ_TAG
            java.lang.String r2 = "refreshLogSwitch exception"
            android.util.Log.e(r1, r2, r0)
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.aiunit.core.utils.AILog.refreshLogSwitch$aiunit_sdk_toolkits_release():void");
    }

    public static final void w(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.w(BIZ_TAG + '-' + tag, msg);
    }

    public final boolean getDebugMode() {
        return debugMode;
    }

    public final boolean isDebugging() {
        return isDebugging;
    }

    public final boolean isLogOn() {
        return isLogOn;
    }

    public final void setDebugMode(boolean z10) {
        debugMode = z10;
    }

    public static final void d(String tag, a msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        AILog aILog = INSTANCE;
        if (aILog.getDebugMode() || aILog.isDebugging()) {
            printD(tag, (String) msg.mo8invoke());
        }
    }

    public static final void e(String tag, String msg, Throwable throwable) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        r.e(throwable, "throwable");
        Log.e(BIZ_TAG + '-' + tag, msg, throwable);
    }

    public static final void i(String tag, a msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        AILog aILog = INSTANCE;
        if (aILog.isLogOn() || aILog.getDebugMode()) {
            printI(tag, (String) msg.mo8invoke());
        }
    }

    public static final void e(String tag, Throwable th) {
        String message;
        r.e(tag, "tag");
        String str = BIZ_TAG + '-' + tag;
        if (th == null || (message = th.getMessage()) == null) {
            message = "null: " + th;
        }
        Log.e(str, message);
    }
}
