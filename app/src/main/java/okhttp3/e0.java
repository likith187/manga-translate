package okhttp3;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public enum e0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    public static final a Companion = new a(null);
    private final String javaName;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final e0 a(String javaName) {
            kotlin.jvm.internal.r.e(javaName, "javaName");
            int iHashCode = javaName.hashCode();
            if (iHashCode != 79201641) {
                if (iHashCode != 79923350) {
                    switch (iHashCode) {
                        case -503070503:
                            if (javaName.equals("TLSv1.1")) {
                                return e0.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (javaName.equals("TLSv1.2")) {
                                return e0.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (javaName.equals("TLSv1.3")) {
                                return e0.TLS_1_3;
                            }
                            break;
                    }
                } else if (javaName.equals("TLSv1")) {
                    return e0.TLS_1_0;
                }
            } else if (javaName.equals("SSLv3")) {
                return e0.SSL_3_0;
            }
            throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
        }

        private a() {
        }
    }

    e0(String str) {
        this.javaName = str;
    }

    public static final e0 forJavaName(String str) {
        return Companion.a(str);
    }

    /* JADX INFO: renamed from: -deprecated_javaName, reason: not valid java name */
    public final String m69deprecated_javaName() {
        return this.javaName;
    }

    public final String javaName() {
        return this.javaName;
    }
}
