package m9;

import java.net.Proxy;
import kotlin.jvm.internal.r;
import okhttp3.u;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public static final i INSTANCE = new i();

    private i() {
    }

    private final boolean b(z zVar, Proxy.Type type) {
        return !zVar.f() && type == Proxy.Type.HTTP;
    }

    public final String a(z request, Proxy.Type proxyType) {
        r.e(request, "request");
        r.e(proxyType, "proxyType");
        StringBuilder sb = new StringBuilder();
        sb.append(request.g());
        sb.append(' ');
        i iVar = INSTANCE;
        if (iVar.b(request, proxyType)) {
            sb.append(request.i());
        } else {
            sb.append(iVar.c(request.i()));
        }
        sb.append(" HTTP/1.1");
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String c(u url) {
        r.e(url, "url");
        String strD = url.d();
        String strF = url.f();
        if (strF == null) {
            return strD;
        }
        return strD + '?' + strF;
    }
}
