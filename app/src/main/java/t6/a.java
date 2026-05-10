package t6;

import android.os.IBinder;
import android.os.RemoteException;
import com.heytap.epona.IRemoteTransfer;
import com.heytap.epona.ITransferCallback;
import com.heytap.epona.Request;
import com.heytap.epona.Response;
import com.oplus.epona.Call$Callback;
import com.oplus.epona.IRemoteTransfer;
import com.oplus.epona.ITransferCallback;
import com.oplus.epona.d;
import com.oplus.epona.f;
import r6.c;

/* JADX INFO: loaded from: classes2.dex */
public class a implements f {

    /* JADX INFO: renamed from: a */
    private final r6.a f15720a = new c();

    /* JADX INFO: renamed from: b */
    private final r6.a f15721b = new r6.b();

    /* JADX INFO: renamed from: t6.a$a */
    class BinderC0225a extends ITransferCallback.Stub {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Call$Callback f15722a;

        BinderC0225a(Call$Callback call$Callback) {
            this.f15722a = call$Callback;
        }

        @Override // com.heytap.epona.ITransferCallback
        public void onReceive(Response response) {
            this.f15722a.onReceive((com.oplus.epona.Response) a.this.f15721b.a(response));
        }
    }

    class b extends ITransferCallback.Stub {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Call$Callback f15724a;

        b(Call$Callback call$Callback) {
            this.f15724a = call$Callback;
        }

        @Override // com.oplus.epona.ITransferCallback
        public void onReceive(com.oplus.epona.Response response) {
            this.f15724a.onReceive(response);
        }
    }

    private void c(f.a aVar, IRemoteTransfer iRemoteTransfer) {
        Call$Callback call$CallbackCallback = aVar.callback();
        Request request = (Request) this.f15720a.a(aVar.a());
        try {
            if (aVar.c()) {
                iRemoteTransfer.asyncCall(request, new BinderC0225a(call$CallbackCallback));
            } else {
                call$CallbackCallback.onReceive((com.oplus.epona.Response) this.f15721b.a(iRemoteTransfer.call(request)));
            }
        } catch (RemoteException e10) {
            c8.a.d("Epona->CompatIPCInterceptor", "Failed to proceed to heytap, message: " + e10.getMessage(), new Object[0]);
            call$CallbackCallback.onReceive(com.oplus.epona.Response.c("Failed to proceed to heytap, message: " + e10.getMessage()));
        }
    }

    private void d(f.a aVar, com.oplus.epona.IRemoteTransfer iRemoteTransfer) {
        Call$Callback call$CallbackCallback = aVar.callback();
        try {
            if (aVar.c()) {
                iRemoteTransfer.asyncCall(aVar.a(), new b(call$CallbackCallback));
            } else {
                call$CallbackCallback.onReceive(iRemoteTransfer.call(aVar.a()));
            }
        } catch (RemoteException e10) {
            c8.a.d("Epona->CompatIPCInterceptor", "Failed to proceed to oplus, message: " + e10.getMessage(), new Object[0]);
            call$CallbackCallback.onReceive(com.oplus.epona.Response.c("Failed to proceed to oplus, message: " + e10.getMessage()));
        }
    }

    @Override // com.oplus.epona.f
    public void a(f.a aVar) {
        String componentName = aVar.a().getComponentName();
        IBinder iBinderA = d.m().a(componentName);
        if (iBinderA != null) {
            try {
                String interfaceDescriptor = iBinderA.getInterfaceDescriptor();
                String interfaceDescriptor2 = n5.c.f().getInterfaceDescriptor();
                String interfaceDescriptor3 = w6.c.b().getInterfaceDescriptor();
                if (interfaceDescriptor2.equals(interfaceDescriptor)) {
                    c(aVar, IRemoteTransfer.Stub.asInterface(iBinderA));
                } else if (interfaceDescriptor3.equals(interfaceDescriptor)) {
                    d(aVar, IRemoteTransfer.Stub.asInterface(iBinderA));
                }
            } catch (RemoteException e10) {
                String str = "failed to process binder for " + componentName;
                c8.a.d("Epona->CompatIPCInterceptor", str + " " + e10.getMessage(), new Object[0]);
                aVar.callback().onReceive(com.oplus.epona.Response.c(str));
            }
        }
    }
}
