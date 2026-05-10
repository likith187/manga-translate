package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7887b;

    public h(String str, String str2) {
        k.h(str, "log tag cannot be null");
        k.c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f7886a = str;
        this.f7887b = (str2 == null || str2.length() <= 0) ? null : str2;
    }

    private final String g(String str) {
        String str2 = this.f7887b;
        return str2 == null ? str : str2.concat(str);
    }

    public boolean a(int i10) {
        return Log.isLoggable(this.f7886a, i10);
    }

    public void b(String str, String str2) {
        if (a(3)) {
            Log.d(str, g(str2));
        }
    }

    public void c(String str, String str2) {
        if (a(6)) {
            Log.e(str, g(str2));
        }
    }

    public void d(String str, String str2, Throwable th) {
        if (a(6)) {
            Log.e(str, g(str2), th);
        }
    }

    public void e(String str, String str2) {
        if (a(2)) {
            Log.v(str, g(str2));
        }
    }

    public void f(String str, String str2) {
        if (a(5)) {
            Log.w(str, g(str2));
        }
    }
}
