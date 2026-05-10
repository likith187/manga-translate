package com.coui.component.responsiveui;

import android.util.Log;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ResponsiveUILog {
    public static final ResponsiveUILog INSTANCE = new ResponsiveUILog();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f7404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f7405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f7406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f7407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final boolean f7408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f7409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f7410g;

    static {
        boolean zIsLoggable = Log.isLoggable("COUI", 2);
        f7404a = zIsLoggable;
        boolean zIsLoggable2 = Log.isLoggable("COUI", 3);
        f7405b = zIsLoggable2;
        boolean zIsLoggable3 = Log.isLoggable("COUI", 4);
        f7406c = zIsLoggable3;
        boolean zIsLoggable4 = Log.isLoggable("COUI", 5);
        f7407d = zIsLoggable4;
        boolean zIsLoggable5 = Log.isLoggable("COUI", 6);
        f7408e = zIsLoggable5;
        boolean zIsLoggable6 = Log.isLoggable("COUI", 7);
        f7409f = zIsLoggable6;
        f7410g = (zIsLoggable || zIsLoggable2 || zIsLoggable3 || zIsLoggable4 || zIsLoggable5 || zIsLoggable6) ? false : true;
    }

    private ResponsiveUILog() {
    }

    public final boolean getLOG_ASSERT() {
        return f7409f;
    }

    public final boolean getLOG_DEBUG() {
        return f7405b;
    }

    public final boolean getLOG_ERROR() {
        return f7408e;
    }

    public final boolean getLOG_INFO() {
        return f7406c;
    }

    public final boolean getLOG_SILENT() {
        return f7410g;
    }

    public final boolean getLOG_VERBOSE() {
        return f7404a;
    }

    public final boolean getLOG_WARN() {
        return f7407d;
    }

    public final boolean isLoggable(String str, int i10) {
        return Log.isLoggable(str, i10);
    }

    public final void logStatus(String tag) {
        r.e(tag, "tag");
        boolean zIsLoggable = r.a(tag, "COUI") ? f7404a : Log.isLoggable(tag, 2);
        boolean zIsLoggable2 = r.a(tag, "COUI") ? f7405b : Log.isLoggable(tag, 3);
        boolean zIsLoggable3 = r.a(tag, "COUI") ? f7406c : Log.isLoggable(tag, 2);
        boolean zIsLoggable4 = r.a(tag, "COUI") ? f7407d : Log.isLoggable(tag, 2);
        boolean zIsLoggable5 = r.a(tag, "COUI") ? f7408e : Log.isLoggable(tag, 2);
        boolean zIsLoggable6 = r.a(tag, "COUI") ? f7409f : Log.isLoggable(tag, 2);
        Log.println(7, "COUI", kotlin.text.r.f("\n            Log status for tag: " + tag + "\n            VERBOSE: " + zIsLoggable + "\n            DEBUG: " + zIsLoggable2 + "\n            INFO: " + zIsLoggable3 + "\n            WARN: " + zIsLoggable4 + "\n            ERROR: " + zIsLoggable5 + "\n            ASSERT: " + zIsLoggable6 + "\n            SILENT: " + (r.a(tag, "COUI") ? f7410g : (zIsLoggable || zIsLoggable2 || zIsLoggable3 || zIsLoggable4 || zIsLoggable5 || zIsLoggable6) ? false : true) + "\n            "));
    }

    public final void logStatus() {
        logStatus("COUI");
    }
}
