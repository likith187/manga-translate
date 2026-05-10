package z5;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.j;
import n8.k;
import z5.c;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a */
    public static volatile boolean f16649a;

    /* JADX INFO: renamed from: b */
    public static volatile boolean f16650b;

    /* JADX INFO: renamed from: c */
    public static volatile boolean f16651c;
    public static final c INSTANCE = new c();

    /* JADX INFO: renamed from: d */
    public static String f16652d = "AISubSystem-SDK";

    /* JADX INFO: renamed from: e */
    public static final j f16653e = k.b(a.INSTANCE);

    public static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        /* JADX INFO: renamed from: z5.c$a$a */
        public static final class C0249a extends ContentObserver {
            public C0249a(Handler handler) {
                super(handler);
            }

            public static final void a() {
                c.m();
            }

            @Override // android.database.ContentObserver
            public void onChange(boolean z10) {
                new Thread(new Runnable() { // from class: z5.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.C0249a.a();
                    }
                }).start();
            }
        }

        public a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final C0249a mo8invoke() {
            return new C0249a(new Handler(Looper.getMainLooper()));
        }
    }

    static {
        l();
        m();
    }

    public static final void a(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        if (f16650b || f16651c) {
            g(tag, msg);
        }
    }

    public static final void b(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        h(tag, msg);
    }

    public static final void c(String tag, String msg, Throwable tr) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        r.e(tr, "tr");
        h(tag, msg + ", " + n(tr));
    }

    public static final void e(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        if (f16649a || f16651c) {
            i(tag, msg);
        }
    }

    public static final void g(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.d(f16652d + '-' + tag, msg);
    }

    public static final void h(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.e(f16652d + '-' + tag, msg);
    }

    public static final void i(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.i(f16652d + '-' + tag, msg);
    }

    public static final void j(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.v(f16652d + '-' + tag, msg);
    }

    public static final void k(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        Log.w(f16652d + '-' + tag, msg);
    }

    public static final void l() {
        f16650b = Log.isLoggable("AISubSystem", 3);
        i("AISubSystem", "refreshDebugSwitch: isDebugging = " + f16650b);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0068 A[Catch: all -> 0x0066, TryCatch #0 {all -> 0x0066, blocks: (B:26:0x0008, B:28:0x0056, B:30:0x0061, B:36:0x006b, B:35:0x0068), top: B:43:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void m() {
        /*
            java.lang.String r0 = "null cannot be cast to non-null type kotlin.Boolean"
            java.lang.String r1 = "AISubSystem"
            java.lang.String r2 = "refreshLogSwitch: isLogOn = "
            java.lang.String r3 = "refreshLogSwitch: qeOff = "
            n8.r$a r4 = n8.r.Companion     // Catch: java.lang.Throwable -> L66
            java.lang.String r4 = "android.os.SystemProperties"
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Throwable -> L66
            java.lang.String r5 = "getBoolean"
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            java.lang.Class r7 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L66
            java.lang.Class[] r6 = new java.lang.Class[]{r6, r7}     // Catch: java.lang.Throwable -> L66
            java.lang.reflect.Method r5 = r4.getMethod(r5, r6)     // Catch: java.lang.Throwable -> L66
            java.lang.String r6 = "persist.sys.assert.panic"
            java.lang.Boolean r7 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L66
            java.lang.Object[] r6 = new java.lang.Object[]{r6, r7}     // Catch: java.lang.Throwable -> L66
            java.lang.Object r6 = r5.invoke(r4, r6)     // Catch: java.lang.Throwable -> L66
            java.lang.String r8 = "persist.sys.assert.enable"
            java.lang.Object[] r7 = new java.lang.Object[]{r8, r7}     // Catch: java.lang.Throwable -> L66
            java.lang.Object r4 = r5.invoke(r4, r7)     // Catch: java.lang.Throwable -> L66
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L66
            r5.append(r6)     // Catch: java.lang.Throwable -> L66
            java.lang.String r3 = ", qeOffMtk = "
            r5.append(r3)     // Catch: java.lang.Throwable -> L66
            r5.append(r4)     // Catch: java.lang.Throwable -> L66
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L66
            j(r1, r3)     // Catch: java.lang.Throwable -> L66
            kotlin.jvm.internal.r.c(r6, r0)     // Catch: java.lang.Throwable -> L66
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L66
            boolean r3 = r6.booleanValue()     // Catch: java.lang.Throwable -> L66
            if (r3 != 0) goto L68
            kotlin.jvm.internal.r.c(r4, r0)     // Catch: java.lang.Throwable -> L66
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Throwable -> L66
            boolean r0 = r4.booleanValue()     // Catch: java.lang.Throwable -> L66
            if (r0 != 0) goto L68
            boolean r0 = z5.c.f16650b     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L6b
            goto L68
        L66:
            r0 = move-exception
            goto L83
        L68:
            r0 = 1
            z5.c.f16649a = r0     // Catch: java.lang.Throwable -> L66
        L6b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L66
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L66
            boolean r2 = z5.c.f16649a     // Catch: java.lang.Throwable -> L66
            r0.append(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L66
            i(r1, r0)     // Catch: java.lang.Throwable -> L66
            n8.h0 r0 = n8.h0.INSTANCE     // Catch: java.lang.Throwable -> L66
            java.lang.Object r0 = n8.r.m59constructorimpl(r0)     // Catch: java.lang.Throwable -> L66
            goto L8d
        L83:
            n8.r$a r2 = n8.r.Companion
            java.lang.Object r0 = n8.s.a(r0)
            java.lang.Object r0 = n8.r.m59constructorimpl(r0)
        L8d:
            java.lang.Throwable r0 = n8.r.m62exceptionOrNullimpl(r0)
            if (r0 == 0) goto L98
            java.lang.String r2 = "refreshLogSwitch exception"
            android.util.Log.e(r1, r2, r0)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: z5.c.m():void");
    }

    public static final String n(Throwable throwable) {
        String str;
        String str2;
        r.e(throwable, "throwable");
        StringBuilder sb = new StringBuilder();
        sb.append(throwable.toString());
        sb.append("\n");
        StackTraceElement[] stackTrace = throwable.getStackTrace();
        r.b(stackTrace);
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append(stackTraceElement.getClassName());
            sb.append(".");
            sb.append(stackTraceElement.getMethodName());
            if (stackTraceElement.isNativeMethod()) {
                str = "(Native Method)";
            } else {
                if (stackTraceElement.getFileName() != null) {
                    int lineNumber = stackTraceElement.getLineNumber();
                    sb.append("(");
                    if (lineNumber >= 0) {
                        sb.append(stackTraceElement.getFileName());
                        str2 = ":";
                    } else {
                        sb.append(stackTraceElement.getFileName());
                        sb.append(")");
                        sb.append("\n");
                    }
                } else if (stackTraceElement.getLineNumber() >= 0) {
                    str2 = "(Unknown Source:";
                } else {
                    str = "(Unknown Source)";
                }
                sb.append(str2);
                sb.append(stackTraceElement.getLineNumber());
                sb.append(")");
                sb.append("\n");
            }
            sb.append(str);
            sb.append("\n");
        }
        String string = sb.toString();
        r.d(string, "toString(...)");
        return string;
    }

    public static final void o(String tag, String msg) {
        r.e(tag, "tag");
        r.e(msg, "msg");
        k(tag, msg);
    }

    public final boolean d() {
        return f16651c;
    }

    public final boolean f() {
        return f16649a;
    }
}
