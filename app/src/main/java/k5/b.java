package k5;

import android.os.RemoteException;
import com.heytap.epona.IRemoteTransfer;
import com.heytap.epona.ITransferCallback;
import com.heytap.epona.Request;
import com.heytap.epona.Response;
import com.heytap.epona.d;

/* JADX INFO: loaded from: classes.dex */
public class b implements com.heytap.epona.d {

    class a extends ITransferCallback.Stub {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Request f12914a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ com.heytap.epona.a f12915b;

        a(Request request, com.heytap.epona.a aVar) {
            this.f12914a = request;
            this.f12915b = aVar;
        }

        @Override // com.heytap.epona.ITransferCallback
        public void onReceive(Response response) {
            q5.a.b("CallIPCComponentInterceptor", "Component(%s).Action(%s) response : %s", this.f12914a.b(), this.f12914a.a(), response);
            this.f12915b.onReceive(response);
        }
    }

    @Override // com.heytap.epona.d
    public void a(d.a aVar) {
        Request requestA = aVar.a();
        IRemoteTransfer iRemoteTransferE = n5.c.f().e(requestA.b());
        if (iRemoteTransferE == null) {
            aVar.b();
            return;
        }
        com.heytap.epona.a aVarCallback = aVar.callback();
        try {
            if (aVar.c()) {
                iRemoteTransferE.asyncCall(requestA, new a(requestA, aVarCallback));
            } else {
                Response responseCall = iRemoteTransferE.call(requestA);
                q5.a.b("CallIPCComponentInterceptor", "Component(%s).Action(%s) response : %s", requestA.b(), requestA.a(), responseCall);
                aVarCallback.onReceive(responseCall);
            }
        } catch (RemoteException e10) {
            q5.a.c("CallIPCComponentInterceptor", "fail to call %s#%s and exception is %s", requestA.b(), requestA.a(), e10.toString());
            aVarCallback.onReceive(Response.b());
        }
    }
}
