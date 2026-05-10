package t9;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class o {

    /* JADX INFO: renamed from: a */
    private static final Logger f15772a = Logger.getLogger("okio.Okio");

    public static final boolean b(AssertionError assertionError) {
        kotlin.jvm.internal.r.e(assertionError, "<this>");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? kotlin.text.r.K(message, "getsockname failed", false, 2, null) : false;
    }

    public static final y c(Socket socket) throws IOException {
        kotlin.jvm.internal.r.e(socket, "<this>");
        z zVar = new z(socket);
        OutputStream outputStream = socket.getOutputStream();
        kotlin.jvm.internal.r.d(outputStream, "getOutputStream(...)");
        return zVar.z(new r(outputStream, zVar));
    }

    public static final a0 d(InputStream inputStream) {
        kotlin.jvm.internal.r.e(inputStream, "<this>");
        return new m(inputStream, new b0());
    }

    public static final a0 e(Socket socket) throws IOException {
        kotlin.jvm.internal.r.e(socket, "<this>");
        z zVar = new z(socket);
        InputStream inputStream = socket.getInputStream();
        kotlin.jvm.internal.r.d(inputStream, "getInputStream(...)");
        return zVar.A(new m(inputStream, zVar));
    }
}
