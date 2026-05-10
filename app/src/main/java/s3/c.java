package s3;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c f15535b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f15536a = null;

    public static b a(Context context) {
        return f15535b.b(context);
    }

    public final synchronized b b(Context context) {
        try {
            if (this.f15536a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f15536a = new b(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f15536a;
    }
}
