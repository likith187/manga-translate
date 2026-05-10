package q6;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.heytap.epona.c;
import com.oplus.epona.l;
import w6.d;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: a */
    private final d f15349a = com.oplus.epona.d.f11185k;

    /* JADX INFO: renamed from: b */
    private final u6.d f15350b = u6.d.c();

    public a(Context context) {
        if (l.a()) {
            return;
        }
        c.i(context);
    }

    @Override // w6.d
    public IBinder a(String str) {
        if (l.a()) {
            return this.f15349a.a(str);
        }
        IBinder iBinderB = this.f15350b.b(str);
        if (iBinderB == null) {
            Bundle bundleA = q5.b.a(c.f(), str);
            if (bundleA != null) {
                iBinderB = bundleA.getBinder("com.heytap.epona.Dispatcher.TRANSFER_VALUE");
            }
            if (iBinderB != null) {
                this.f15350b.e(str, iBinderB);
            } else {
                c8.a.d("Epona->CompatRegister", "Get remote binder null. ComponentName : %s", str);
            }
        }
        return iBinderB;
    }
}
