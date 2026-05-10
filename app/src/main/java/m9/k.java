package m9;

import java.net.ProtocolException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import okhttp3.y;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f13911d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f13912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f13914c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a(String statusLine) throws ProtocolException {
            y yVar;
            int i10;
            String strSubstring;
            r.e(statusLine, "statusLine");
            if (kotlin.text.r.F(statusLine, "HTTP/1.", false, 2, null)) {
                i10 = 9;
                if (statusLine.length() < 9 || statusLine.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + statusLine);
                }
                int iCharAt = statusLine.charAt(7) - '0';
                if (iCharAt == 0) {
                    yVar = y.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: " + statusLine);
                    }
                    yVar = y.HTTP_1_1;
                }
            } else {
                if (!kotlin.text.r.F(statusLine, "ICY ", false, 2, null)) {
                    throw new ProtocolException("Unexpected status line: " + statusLine);
                }
                yVar = y.HTTP_1_0;
                i10 = 4;
            }
            int i11 = i10 + 3;
            if (statusLine.length() < i11) {
                throw new ProtocolException("Unexpected status line: " + statusLine);
            }
            try {
                String strSubstring2 = statusLine.substring(i10, i11);
                r.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                int i12 = Integer.parseInt(strSubstring2);
                if (statusLine.length() <= i11) {
                    strSubstring = "";
                } else {
                    if (statusLine.charAt(i11) != ' ') {
                        throw new ProtocolException("Unexpected status line: " + statusLine);
                    }
                    strSubstring = statusLine.substring(i10 + 4);
                    r.d(strSubstring, "this as java.lang.String).substring(startIndex)");
                }
                return new k(yVar, i12, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: " + statusLine);
            }
        }

        private a() {
        }
    }

    public k(y protocol, int i10, String message) {
        r.e(protocol, "protocol");
        r.e(message, "message");
        this.f13912a = protocol;
        this.f13913b = i10;
        this.f13914c = message;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f13912a == y.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.f13913b);
        sb.append(' ');
        sb.append(this.f13914c);
        String string = sb.toString();
        r.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
