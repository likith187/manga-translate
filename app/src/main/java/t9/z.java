package t9;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
final class z extends c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Socket f15803o;

    public z(Socket socket) {
        kotlin.jvm.internal.r.e(socket, "socket");
        this.f15803o = socket;
    }

    @Override // t9.c
    protected void B() {
        try {
            this.f15803o.close();
        } catch (AssertionError e10) {
            if (!n.c(e10)) {
                throw e10;
            }
            o.f15772a.log(Level.WARNING, "Failed to close timed out socket " + this.f15803o, (Throwable) e10);
        } catch (Exception e11) {
            o.f15772a.log(Level.WARNING, "Failed to close timed out socket " + this.f15803o, (Throwable) e11);
        }
    }

    @Override // t9.c
    protected IOException x(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
