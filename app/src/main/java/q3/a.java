package q3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.e1;
import com.google.android.gms.common.internal.k;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import r3.j;
import s3.c;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f15341b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f15342c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f15343a = new ConcurrentHashMap();

    private a() {
    }

    public static a a() {
        if (f15342c == null) {
            synchronized (f15341b) {
                try {
                    if (f15342c == null) {
                        f15342c = new a();
                    }
                } finally {
                }
            }
        }
        a aVar = f15342c;
        k.g(aVar);
        return aVar;
    }

    private static void d(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    private final boolean e(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i10, boolean z10, Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((c.a(context).a(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (!f(serviceConnection)) {
            return g(context, intent, serviceConnection, i10, executor);
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) this.f15343a.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
        }
        try {
            boolean zG = g(context, intent, serviceConnection, i10, executor);
            if (zG) {
                return zG;
            }
            return false;
        } finally {
            this.f15343a.remove(serviceConnection, serviceConnection);
        }
    }

    private static boolean f(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof e1);
    }

    private static final boolean g(Context context, Intent intent, ServiceConnection serviceConnection, int i10, Executor executor) {
        if (executor == null) {
            executor = null;
        }
        return (!j.g() || executor == null) ? context.bindService(intent, serviceConnection, i10) : context.bindService(intent, i10, executor, serviceConnection);
    }

    public void b(Context context, ServiceConnection serviceConnection) {
        if (!f(serviceConnection) || !this.f15343a.containsKey(serviceConnection)) {
            d(context, serviceConnection);
            return;
        }
        try {
            d(context, (ServiceConnection) this.f15343a.get(serviceConnection));
        } finally {
            this.f15343a.remove(serviceConnection);
        }
    }

    public final boolean c(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i10, Executor executor) {
        return e(context, str, intent, serviceConnection, 4225, true, executor);
    }
}
