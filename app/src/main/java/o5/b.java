package o5;

import android.os.IBinder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile b f14445c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f14446a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f14447b = new ConcurrentHashMap();

    private b() {
    }

    public static b c() {
        if (f14445c == null) {
            synchronized (b.class) {
                try {
                    if (f14445c == null) {
                        f14445c = new b();
                    }
                } finally {
                }
            }
        }
        return f14445c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
    }

    private void g(String str, String str2) {
        List arrayList = (List) this.f14447b.get(str2);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f14447b.put(str2, arrayList);
        }
        arrayList.add(str);
    }

    public IBinder b(String str) {
        return (IBinder) this.f14446a.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean e(final java.lang.String r6, android.os.IBinder r7, java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r0 = "Dispatcher"
            r1 = 1
            r2 = 0
            o5.a r3 = new o5.a     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            r3.<init>()     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            r7.linkToDeath(r3, r2)     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            java.util.Map r3 = r5.f14446a
            boolean r3 = r3.containsKey(r6)
            if (r3 != 0) goto L32
        L14:
            java.util.Map r3 = r5.f14446a
            r3.put(r6, r7)
            r5.g(r6, r8)
            goto L33
        L1d:
            r0 = move-exception
            goto L4a
        L1f:
            r3 = move-exception
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L1d
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L1d
            q5.a.f(r0, r3, r4)     // Catch: java.lang.Throwable -> L1d
            java.util.Map r3 = r5.f14446a
            boolean r3 = r3.containsKey(r6)
            if (r3 != 0) goto L32
            goto L14
        L32:
            r1 = r2
        L33:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "registerRemoteTransfer: registerSuccess:"
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.Object[] r6 = new java.lang.Object[r2]
            q5.a.b(r0, r5, r6)
            return r1
        L4a:
            java.util.Map r1 = r5.f14446a
            boolean r1 = r1.containsKey(r6)
            if (r1 != 0) goto L5a
            java.util.Map r1 = r5.f14446a
            r1.put(r6, r7)
            r5.g(r6, r8)
        L5a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o5.b.e(java.lang.String, android.os.IBinder, java.lang.String):boolean");
    }

    public String f() {
        return this.f14447b.toString();
    }
}
