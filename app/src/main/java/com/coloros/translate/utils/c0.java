package com.coloros.translate.utils;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a */
    public static final a f7098a;

    /* JADX INFO: renamed from: b */
    private static final StringBuilder f7099b;

    /* JADX INFO: renamed from: c */
    private static boolean f7100c;

    /* JADX INFO: renamed from: d */
    private static boolean f7101d;

    /* JADX INFO: renamed from: e */
    private static boolean f7102e;

    /* JADX INFO: renamed from: f */
    private static int f7103f;

    public static final class a {

        /* JADX INFO: renamed from: com.coloros.translate.utils.c0$a$a */
        public static final class C0097a extends ContentObserver {
            C0097a(Handler handler) {
                super(handler);
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z10) {
                c0.f7098a.m();
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean h(String str) {
            try {
                return r0.c(str, false);
            } catch (Exception e10) {
                Log.e("OppoTranslation.", "isAssertPanic(): ", e10);
                return false;
            }
        }

        public final void j() {
            if (l()) {
                c0.f7103f = 2;
                c0.f7101d = true;
                c0.f7102e = true;
            } else {
                c0.f7103f = 4;
                c0.f7101d = false;
                c0.f7102e = false;
            }
        }

        public final boolean k() {
            return h("persist.sys.assert.panic");
        }

        public final void m() {
            o(k());
            Log.w("LogUtil", "oppoRefreshLogSwitch sDebuggable : " + l());
            j();
        }

        public final void d(String tag, String message) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            if (c0.f7103f <= 3) {
                if (!c0.f7101d) {
                    Log.d("OppoTranslation." + tag, message);
                    return;
                }
                Log.d("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message);
            }
        }

        public final void e(String tag, String message) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            if (c0.f7103f <= 6) {
                if (!c0.f7101d) {
                    Log.e("OppoTranslation." + tag, message);
                    return;
                }
                Log.e("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message);
            }
        }

        public final void f(String tag, String message, Throwable tr) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            kotlin.jvm.internal.r.e(tr, "tr");
            if (c0.f7103f <= 6) {
                if (!c0.f7101d) {
                    Log.e("OppoTranslation." + tag, message, tr);
                    return;
                }
                Log.e("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message, tr);
            }
        }

        public final String g(String str) {
            if (str == null) {
                return null;
            }
            if (str.length() == 0) {
                return str;
            }
            kotlin.text.r.i(c0.f7099b);
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 % 2 == 0) {
                    c0.f7099b.append(str.charAt(i10));
                } else {
                    c0.f7099b.append("*");
                }
            }
            return c0.f7099b.toString();
        }

        public final void i(String tag, String message) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            if (c0.f7103f <= 4) {
                if (!c0.f7101d) {
                    Log.i("OppoTranslation." + tag, message);
                    return;
                }
                Log.i("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message);
            }
        }

        public final boolean l() {
            return c0.f7100c;
        }

        public final void n(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            context.getContentResolver().registerContentObserver(Settings.System.getUriFor("log_switch_type"), true, new C0097a(w0.INSTANCE.a()));
        }

        public final void o(boolean z10) {
            c0.f7100c = z10;
        }

        public final void p(String tag, String message) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            if (c0.f7103f <= 2) {
                if (!c0.f7101d) {
                    Log.v("OppoTranslation." + tag, message);
                    return;
                }
                Log.v("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message);
            }
        }

        public final void q(String tag, String message) {
            kotlin.jvm.internal.r.e(tag, "tag");
            kotlin.jvm.internal.r.e(message, "message");
            if (c0.f7103f <= 5) {
                if (!c0.f7101d) {
                    Log.w("OppoTranslation." + tag, message);
                    return;
                }
                Log.w("OppoTranslation." + tag, "(" + Thread.currentThread().getName() + ")" + message);
            }
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f7098a = aVar;
        f7099b = new StringBuilder();
        f7100c = aVar.k();
        aVar.j();
    }

    public static final void i(String str, String str2) {
        f7098a.d(str, str2);
    }

    public static final void j(String str, String str2) {
        f7098a.e(str, str2);
    }

    public static final void k(String str, String str2, Throwable th) {
        f7098a.f(str, str2, th);
    }

    public static final String l(String str) {
        return f7098a.g(str);
    }

    public static final void m(String str, String str2) {
        f7098a.i(str, str2);
    }

    public static final void n(String str, String str2) {
        f7098a.p(str, str2);
    }

    public static final void o(String str, String str2) {
        f7098a.q(str, str2);
    }
}
