package r6;

import com.oplus.epona.Response;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {
    @Override // r6.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Response a(com.heytap.epona.Response response) throws Throwable {
        if (response.f()) {
            return Response.f(response.d());
        }
        try {
            response.a(Exception.class);
            return Response.c(response.e());
        } catch (Exception e10) {
            return Response.b(e10);
        }
    }
}
