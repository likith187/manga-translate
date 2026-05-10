package u6;

import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile d f15874b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f15875a = new HashMap();

    public static d c() {
        if (f15874b == null) {
            synchronized (d.class) {
                try {
                    if (f15874b == null) {
                        f15874b = new d();
                    }
                } finally {
                }
            }
        }
        return f15874b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(String str) {
        this.f15875a.remove(str);
        c8.a.d("Epona->BinderCache", "unregister cached binder： " + str, new Object[0]);
    }

    public IBinder b(String str) {
        return (IBinder) this.f15875a.get(str);
    }

    public void e(final String str, IBinder iBinder) {
        this.f15875a.put(str, iBinder);
        try {
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: u6.c
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    this.f15872a.d(str);
                }
            }, 0);
        } catch (RemoteException e10) {
            c8.a.i("Epona->BinderCache", e10.toString(), new Object[0]);
        }
    }
}
