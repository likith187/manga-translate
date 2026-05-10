package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a */
    private static final Object f7878a = new Object();

    /* JADX INFO: renamed from: b */
    private static d1 f7879b = null;

    /* JADX INFO: renamed from: c */
    static HandlerThread f7880c = null;

    /* JADX INFO: renamed from: d */
    private static Executor f7881d = null;

    /* JADX INFO: renamed from: e */
    private static boolean f7882e = false;

    public static g a(Context context) {
        synchronized (f7878a) {
            try {
                if (f7879b == null) {
                    f7879b = new d1(context.getApplicationContext(), f7882e ? b().getLooper() : context.getMainLooper(), f7881d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f7879b;
    }

    public static HandlerThread b() {
        synchronized (f7878a) {
            try {
                HandlerThread handlerThread = f7880c;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f7880c = handlerThread2;
                handlerThread2.start();
                return f7880c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected abstract void c(z0 z0Var, ServiceConnection serviceConnection, String str);

    public final void d(String str, String str2, int i10, ServiceConnection serviceConnection, String str3, boolean z10) {
        c(new z0(str, str2, 4225, z10), serviceConnection, str3);
    }

    protected abstract boolean e(z0 z0Var, ServiceConnection serviceConnection, String str, Executor executor);
}
