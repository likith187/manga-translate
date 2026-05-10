package r6;

import com.heytap.epona.Request;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {
    @Override // r6.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Request a(com.oplus.epona.Request request) {
        Request requestA = new Request.b().c(request.getComponentName()).b(request.getActionName()).a();
        requestA.c(request.getBundle());
        return requestA;
    }
}
