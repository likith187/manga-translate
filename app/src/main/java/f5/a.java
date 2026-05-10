package f5;

import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReferenceQueue f11923a = new ReferenceQueue();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f11924b = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: f5.a$a, reason: collision with other inner class name */
    public interface InterfaceC0142a {
        void a();
    }

    private a() {
    }

    public static a a() {
        a aVar = new a();
        aVar.b(aVar, new Runnable() { // from class: f5.l
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
        final ReferenceQueue referenceQueue = aVar.f11923a;
        final Set set = aVar.f11924b;
        Thread thread = new Thread(new Runnable() { // from class: f5.m
            @Override // java.lang.Runnable
            public final void run() {
                ReferenceQueue referenceQueue2 = referenceQueue;
                while (!set.isEmpty()) {
                    try {
                        ((o) referenceQueue2.remove()).a();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }, "MlKitCleaner");
        thread.setDaemon(true);
        thread.start();
        return aVar;
    }

    public InterfaceC0142a b(Object obj, Runnable runnable) {
        o oVar = new o(obj, this.f11923a, this.f11924b, runnable, null);
        this.f11924b.add(oVar);
        return oVar;
    }
}
