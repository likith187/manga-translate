package r9;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.collections.o;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends ProxySelector {
    public static final a INSTANCE = new a();

    private a() {
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public List select(URI uri) {
        if (uri != null) {
            return o.b(Proxy.NO_PROXY);
        }
        throw new IllegalArgumentException("uri must not be null");
    }
}
