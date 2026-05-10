package okhttp3;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public enum y {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");

    public static final a Companion = new a(null);
    private final String protocol;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final y a(String protocol) throws IOException {
            kotlin.jvm.internal.r.e(protocol, "protocol");
            y yVar = y.HTTP_1_0;
            if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                yVar = y.HTTP_1_1;
                if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                    yVar = y.H2_PRIOR_KNOWLEDGE;
                    if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                        yVar = y.HTTP_2;
                        if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                            yVar = y.SPDY_3;
                            if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                                yVar = y.QUIC;
                                if (!kotlin.jvm.internal.r.a(protocol, yVar.protocol)) {
                                    throw new IOException("Unexpected protocol: " + protocol);
                                }
                            }
                        }
                    }
                }
            }
            return yVar;
        }

        private a() {
        }
    }

    y(String str) {
        this.protocol = str;
    }

    public static final y get(String str) throws IOException {
        return Companion.a(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
