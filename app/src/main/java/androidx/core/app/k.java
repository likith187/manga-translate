package androidx.core.app;

import android.app.NotificationManager;
import android.content.Context;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f1975c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Set f1976d = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f1977e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final NotificationManager f1979b;

    static class a {
        static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }
    }

    private k(Context context) {
        this.f1978a = context;
        this.f1979b = (NotificationManager) context.getSystemService("notification");
    }

    public static k b(Context context) {
        return new k(context);
    }

    public boolean a() {
        return a.a(this.f1979b);
    }
}
