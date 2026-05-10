package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.appcompat.app.t;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f10275c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10276a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f10277b = new Handler(Looper.getMainLooper(), new C0116a());

    /* JADX INFO: renamed from: com.google.android.material.snackbar.a$a, reason: collision with other inner class name */
    class C0116a implements Handler.Callback {
        C0116a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            a aVar = a.this;
            t.a(message.obj);
            aVar.c(null);
            return true;
        }
    }

    interface b {
    }

    private static class c {
    }

    private a() {
    }

    private boolean a(c cVar, int i10) {
        throw null;
    }

    static a b() {
        if (f10275c == null) {
            f10275c = new a();
        }
        return f10275c;
    }

    private boolean d(b bVar) {
        return false;
    }

    void c(c cVar) {
        synchronized (this.f10276a) {
            a(cVar, 2);
        }
    }

    public void e(b bVar) {
        synchronized (this.f10276a) {
            try {
                if (d(bVar)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void f(b bVar) {
        synchronized (this.f10276a) {
            try {
                if (d(bVar)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
