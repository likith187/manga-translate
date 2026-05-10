package m7;

import android.content.Context;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

/* JADX INFO: loaded from: classes2.dex */
public class m implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f13889b = Thread.getDefaultUncaughtExceptionHandler();

    public m(Context context) {
        this.f13888a = context.getApplicationContext();
    }

    private String b(Throwable th) {
        String string;
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            try {
                th.printStackTrace(printWriter);
                string = stringWriter.toString();
            } catch (Exception e10) {
                s7.f.b("StatisticsExceptionHand", new i(e10));
                printWriter.close();
                string = null;
            }
            return string;
        } finally {
            printWriter.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String c() {
        return "StatisticsExceptionHandler: get the uncaughtException.";
    }

    public void d() {
        if (this == this.f13889b) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        s7.f.a("StatisticsExceptionHand", new s7.g() { // from class: m7.l
            @Override // s7.g
            public final Object get() {
                return m.c();
            }
        });
        String strB = b(th);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        o7.d dVar = new o7.d(this.f13888a);
        dVar.o(1);
        dVar.p(jCurrentTimeMillis);
        dVar.q(strB);
        n7.f.a(this.f13888a, dVar);
    }
}
