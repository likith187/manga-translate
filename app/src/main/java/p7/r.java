package p7;

import android.content.Context;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f15217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f15218b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final r f15219a = new r();
    }

    private String a() {
        return UUID.randomUUID().toString();
    }

    private long b(Context context) {
        return q7.c.a(context, "AppExitTime", 0L);
    }

    private String d(Context context) {
        return q7.c.c(context, "AppSessionId", "");
    }

    public static r e() {
        return b.f15219a;
    }

    private boolean f(Context context) {
        if (this.f15218b == 0) {
            this.f15218b = b(context);
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f15218b;
        return jCurrentTimeMillis > 0 && jCurrentTimeMillis < 30000;
    }

    private void j(Context context, long j10) {
        q7.c.d(context, "AppExitTime", j10);
    }

    private void k(Context context, String str) {
        q7.c.e(context, "AppSessionId", str);
    }

    public String c(Context context) {
        if (this.f15217a == null) {
            i(context);
        }
        return this.f15217a;
    }

    public void g(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f15218b = jCurrentTimeMillis;
        j(context, jCurrentTimeMillis);
    }

    public void h(Context context) {
        String strA = a();
        this.f15217a = strA;
        k(context, strA);
    }

    public void i(Context context) {
        if (f(context)) {
            this.f15217a = d(context);
        } else {
            h(context);
        }
    }

    private r() {
        this.f15217a = null;
        this.f15218b = 0L;
    }
}
