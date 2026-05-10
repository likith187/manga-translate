package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f8054b;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    protected b(String str) {
        this.f8053a = str;
    }

    protected abstract Object a(IBinder iBinder);

    protected final Object b(Context context) throws a {
        if (this.f8054b == null) {
            k.g(context);
            Context contextB = com.google.android.gms.common.d.b(context);
            if (contextB == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.f8054b = a((IBinder) contextB.getClassLoader().loadClass(this.f8053a).newInstance());
            } catch (ClassNotFoundException e10) {
                throw new a("Could not load creator class.", e10);
            } catch (IllegalAccessException e11) {
                throw new a("Could not access creator.", e11);
            } catch (InstantiationException e12) {
                throw new a("Could not instantiate creator.", e12);
            }
        }
        return this.f8054b;
    }
}
