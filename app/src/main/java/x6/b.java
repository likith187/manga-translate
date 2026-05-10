package x6;

import android.os.IBinder;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.oplus.epona.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile b f16406c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f16407a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f16408b = new ConcurrentHashMap();

    private b() {
    }

    public static b e() {
        if (f16406c == null) {
            synchronized (b.class) {
                try {
                    if (f16406c == null) {
                        f16406c = new b();
                    }
                } finally {
                }
            }
        }
        return f16406c;
    }

    private boolean f(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, String str2) {
        k(str, str2);
        c8.a.d("Epona->Dispatcher", "unregister cached binder: " + str, new Object[0]);
    }

    private void h(PrintWriter printWriter, List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (f(str)) {
                printWriter.println("    -> " + str);
            }
        }
    }

    private void j(String str, String str2) {
        List list = (List) this.f16408b.get(str2);
        if (list != null) {
            list.remove(str);
        }
    }

    private void k(String str, String str2) {
        this.f16407a.remove(str);
        this.f16408b.remove(str2);
    }

    private void m(String str, String str2) {
        List arrayList = (List) this.f16408b.get(str2);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f16408b.put(str2, arrayList);
        }
        arrayList.add(str);
    }

    @Override // com.oplus.epona.b
    public void a(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("--- dump package register components info ---");
        for (Map.Entry entry : this.f16408b.entrySet()) {
            String str = (String) entry.getKey();
            if (str != null) {
                printWriter.println(str);
                h(printWriter, (List) entry.getValue());
            }
        }
        printWriter.println("------------------- end ---------------------");
    }

    @Override // com.oplus.epona.b
    public String b() {
        return "oplus_epona";
    }

    public IBinder d(String str) {
        return (IBinder) this.f16407a.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean i(final java.lang.String r6, android.os.IBinder r7, final java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r0 = "Epona->Dispatcher"
            r1 = 1
            r2 = 0
            x6.a r3 = new x6.a     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            r3.<init>()     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            r7.linkToDeath(r3, r2)     // Catch: java.lang.Throwable -> L1d android.os.RemoteException -> L1f
            java.util.Map r3 = r5.f16407a
            boolean r3 = r3.containsKey(r6)
            if (r3 != 0) goto L32
        L14:
            java.util.Map r3 = r5.f16407a
            r3.put(r6, r7)
            r5.m(r6, r8)
            goto L33
        L1d:
            r0 = move-exception
            goto L4a
        L1f:
            r3 = move-exception
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L1d
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L1d
            c8.a.i(r0, r3, r4)     // Catch: java.lang.Throwable -> L1d
            java.util.Map r3 = r5.f16407a
            boolean r3 = r3.containsKey(r6)
            if (r3 != 0) goto L32
            goto L14
        L32:
            r1 = r2
        L33:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "register RemoteTransfer Success: "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.Object[] r6 = new java.lang.Object[r2]
            c8.a.c(r0, r5, r6)
            return r1
        L4a:
            java.util.Map r1 = r5.f16407a
            boolean r1 = r1.containsKey(r6)
            if (r1 != 0) goto L5a
            java.util.Map r1 = r5.f16407a
            r1.put(r6, r7)
            r5.m(r6, r8)
        L5a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: x6.b.i(java.lang.String, android.os.IBinder, java.lang.String):boolean");
    }

    public boolean l(String str, String str2) {
        boolean z10;
        if (this.f16407a.containsKey(str)) {
            this.f16407a.remove(str);
            j(str, str2);
            z10 = true;
        } else {
            z10 = false;
        }
        c8.a.c("Epona->Dispatcher", "packageName:" + str2 + "unRegister RemoteTransfer component:" + str + "unRegister Success:" + z10, new Object[0]);
        return z10;
    }
}
