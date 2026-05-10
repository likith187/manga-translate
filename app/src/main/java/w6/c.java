package w6;

import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.epona.Call$Callback;
import com.oplus.epona.IRemoteTransfer;
import com.oplus.epona.ITransferCallback;
import com.oplus.epona.Request;
import com.oplus.epona.Response;

/* JADX INFO: loaded from: classes2.dex */
public class c extends IRemoteTransfer.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f16155a;

    private c() {
    }

    public static c b() {
        if (f16155a == null) {
            synchronized (c.class) {
                try {
                    if (f16155a == null) {
                        f16155a = new c();
                    }
                } finally {
                }
            }
        }
        return f16155a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(ITransferCallback iTransferCallback, Response response) {
        try {
            iTransferCallback.onReceive(response);
        } catch (RemoteException e10) {
            c8.a.d("Epona->RemoteTransfer", "failed to asyncCall and exception is %s", e10.toString());
        }
    }

    @Override // com.oplus.epona.IRemoteTransfer
    public void asyncCall(Request request, final ITransferCallback iTransferCallback) {
        com.oplus.epona.d.o(request).c(new Call$Callback() { // from class: w6.b
            @Override // com.oplus.epona.Call$Callback
            public final void onReceive(Response response) {
                c.c(iTransferCallback, response);
            }
        });
    }

    @Override // com.oplus.epona.IRemoteTransfer
    public Response call(Request request) {
        return com.oplus.epona.d.o(request).d();
    }

    @Override // com.oplus.epona.IRemoteTransfer.Stub, android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        try {
            return super.onTransact(i10, parcel, parcel2, i11);
        } catch (RuntimeException e10) {
            c8.a.d("Epona->RemoteTransfer", "onTransact Exception: " + e10.toString(), new Object[0]);
            throw e10;
        }
    }
}
