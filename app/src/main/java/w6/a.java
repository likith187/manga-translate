package w6;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u6.d f16153a = u6.d.c();

    @Override // w6.d
    public IBinder a(String str) {
        IBinder iBinderB = this.f16153a.b(str);
        if (iBinderB == null) {
            Context contextG = com.oplus.epona.d.g();
            if ("com.oplus.appplatform".equals(contextG.getPackageName())) {
                iBinderB = x6.b.e().d(str);
            } else {
                Bundle bundleA = z6.b.a(contextG, str);
                if (bundleA != null) {
                    iBinderB = bundleA.getBinder("com.oplus.epona.Dispatcher.TRANSFER_VALUE");
                }
            }
            if (iBinderB != null) {
                this.f16153a.e(str, iBinderB);
            } else {
                c8.a.d("Epona->DefaultTransferController", "Get remote binder null. ComponentName : %s", str);
            }
        }
        return iBinderB;
    }
}
