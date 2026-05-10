package okhttp3;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class n {
    public static final n INSTANCE = new n();

    private n() {
    }

    public static final String a(String username, String password, Charset charset) {
        kotlin.jvm.internal.r.e(username, "username");
        kotlin.jvm.internal.r.e(password, "password");
        kotlin.jvm.internal.r.e(charset, "charset");
        return "Basic " + t9.g.Companion.c(username + ':' + password, charset).base64();
    }
}
