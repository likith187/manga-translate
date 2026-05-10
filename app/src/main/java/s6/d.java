package s6;

import android.os.RemoteException;
import com.oplus.epona.Call$Callback;
import com.oplus.epona.IRemoteTransfer;
import com.oplus.epona.ITransferCallback;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.epona.f;

/* JADX INFO: loaded from: classes2.dex */
public class d implements f {

    class a extends ITransferCallback.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Call$Callback f15571a;

        a(Call$Callback call$Callback) {
            this.f15571a = call$Callback;
        }

        @Override // com.oplus.epona.ITransferCallback
        public void onReceive(Response response) {
            this.f15571a.onReceive(response);
        }
    }

    @Override // com.oplus.epona.f
    public void a(f.a aVar) {
        Request requestA = aVar.a();
        IRemoteTransfer iRemoteTransferAsInterface = IRemoteTransfer.Stub.asInterface(com.oplus.epona.d.m().a(requestA.getComponentName()));
        if (iRemoteTransferAsInterface == null) {
            aVar.b();
            return;
        }
        Call$Callback call$CallbackCallback = aVar.callback();
        try {
            if (aVar.c()) {
                iRemoteTransferAsInterface.asyncCall(requestA, new a(call$CallbackCallback));
            } else {
                call$CallbackCallback.onReceive(iRemoteTransferAsInterface.call(requestA));
            }
        } catch (RemoteException e10) {
            c8.a.d("Epona->IPCInterceptor", "fail to call %s#%s and exception is %s", requestA.getComponentName(), requestA.getActionName(), e10.toString());
            call$CallbackCallback.onReceive(Response.a());
        }
    }
}
