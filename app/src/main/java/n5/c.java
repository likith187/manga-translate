package n5;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.heytap.epona.IRemoteTransfer;
import com.heytap.epona.ITransferCallback;
import com.heytap.epona.Request;
import com.heytap.epona.Response;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c extends IRemoteTransfer.Stub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f14074b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f14075a = new HashMap();

    private c() {
    }

    private boolean c(Request request) {
        if (request == null || com.heytap.epona.c.e() == null) {
            q5.a.c("RemoteTransfer", "Request is null.", new Object[0]);
            return true;
        }
        String packageName = com.heytap.epona.c.e().getPackageName();
        return r5.b.a().d(request.b(), request.a(), packageName);
    }

    private boolean d() {
        Context contextF = com.heytap.epona.c.f();
        return (contextF == null || contextF.getPackageManager().resolveContentProvider("com.heytap.appplatform.dispatcher", 131072) == null) ? false : true;
    }

    public static c f() {
        if (f14074b == null) {
            synchronized (c.class) {
                try {
                    if (f14074b == null) {
                        f14074b = new c();
                    }
                } finally {
                }
            }
        }
        return f14074b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(ITransferCallback iTransferCallback, Response response) {
        try {
            iTransferCallback.onReceive(response);
        } catch (RemoteException e10) {
            q5.a.c("RemoteTransfer", "failed to asyncCall and exception is %s", e10.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(String str) {
    }

    @Override // com.heytap.epona.IRemoteTransfer
    public void asyncCall(Request request, final ITransferCallback iTransferCallback) throws RemoteException {
        if (!r5.b.a().c() || c(request)) {
            com.heytap.epona.c.j(request).c(new com.heytap.epona.a() { // from class: n5.a
                @Override // com.heytap.epona.a
                public final void onReceive(Response response) {
                    c.g(iTransferCallback, response);
                }
            });
            return;
        }
        q5.a.c("RemoteTransfer", "Epona Authentication failed, request : " + request.toString(), new Object[0]);
        iTransferCallback.onReceive(Response.c("Epona Authentication failed, request : " + request.toString()));
    }

    @Override // com.heytap.epona.IRemoteTransfer
    public Response call(Request request) {
        if (!r5.b.a().c() || c(request)) {
            return com.heytap.epona.c.j(request).d();
        }
        q5.a.c("RemoteTransfer", "Epona Authentication failed, request : " + request.toString(), new Object[0]);
        return Response.c("Epona Authentication failed, request : " + request.toString());
    }

    public IRemoteTransfer e(final String str) {
        IBinder binder = null;
        if (!d()) {
            q5.a.b("RemoteTransfer", "DispatcherProvider is not exist", new Object[0]);
            return null;
        }
        IRemoteTransfer iRemoteTransferAsInterface = (IRemoteTransfer) this.f14075a.get(str);
        if (iRemoteTransferAsInterface == null) {
            Context contextF = com.heytap.epona.c.f();
            if ("com.heytap.appplatform".equals(contextF.getPackageName())) {
                binder = o5.b.c().b(str);
            } else {
                new Bundle().putString("com.heytap.epona.Dispatcher.TRANSFER_KEY", str);
                Bundle bundleA = q5.b.a(contextF, str);
                if (bundleA != null) {
                    binder = bundleA.getBinder("com.heytap.epona.Dispatcher.TRANSFER_VALUE");
                } else {
                    q5.a.c("RemoteTransfer", "Find remote transfer bundle null.", new Object[0]);
                }
            }
            if (binder != null) {
                iRemoteTransferAsInterface = IRemoteTransfer.Stub.asInterface(binder);
                this.f14075a.put(str, iRemoteTransferAsInterface);
                try {
                    binder.linkToDeath(new IBinder.DeathRecipient() { // from class: n5.b
                        @Override // android.os.IBinder.DeathRecipient
                        public final void binderDied() {
                            this.f14072a.h(str);
                        }
                    }, 0);
                } catch (RemoteException e10) {
                    q5.a.f("RemoteTransfer", e10.toString(), new Object[0]);
                }
            } else {
                q5.a.c("RemoteTransfer", "Get remote binder null. ComponentName : %s", str);
            }
        }
        return iRemoteTransferAsInterface;
    }

    @Override // com.heytap.epona.IRemoteTransfer.Stub, android.os.Binder
    public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        try {
            return super.onTransact(i10, parcel, parcel2, i11);
        } catch (RuntimeException e10) {
            q5.a.c("RemoteTransfer", "onTransact Exception: " + e10.toString(), new Object[0]);
            throw e10;
        }
    }
}
