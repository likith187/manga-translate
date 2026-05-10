package m9;

import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.text.n;
import okhttp3.a0;
import okhttp3.b0;
import okhttp3.d0;
import okhttp3.u;
import okhttp3.v;
import okhttp3.x;
import okhttp3.z;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f13909b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f13910a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j(x client) {
        r.e(client, "client");
        this.f13910a = client;
    }

    private final z b(b0 b0Var, String str) {
        String strI;
        u uVarP;
        if (!this.f13910a.o() || (strI = b0.I(b0Var, "Location", null, 2, null)) == null || (uVarP = b0Var.D0().i().p(strI)) == null) {
            return null;
        }
        if (!r.a(uVarP.q(), b0Var.D0().i().q()) && !this.f13910a.p()) {
            return null;
        }
        z.a aVarH = b0Var.D0().h();
        if (f.a(str)) {
            int iX = b0Var.x();
            f fVar = f.INSTANCE;
            boolean z10 = fVar.c(str) || iX == 308 || iX == 307;
            if (!fVar.b(str) || iX == 308 || iX == 307) {
                aVarH.e(str, z10 ? b0Var.D0().a() : null);
            } else {
                aVarH.e("GET", null);
            }
            if (!z10) {
                aVarH.f("Transfer-Encoding");
                aVarH.f("Content-Length");
                aVarH.f("Content-Type");
            }
        }
        if (!i9.d.j(b0Var.D0().i(), uVarP)) {
            aVarH.f("Authorization");
        }
        return aVarH.h(uVarP).b();
    }

    private final z c(b0 b0Var, okhttp3.internal.connection.c cVar) throws ProtocolException {
        okhttp3.internal.connection.f fVarH;
        d0 d0VarZ = (cVar == null || (fVarH = cVar.h()) == null) ? null : fVarH.z();
        int iX = b0Var.x();
        String strG = b0Var.D0().g();
        if (iX != 307 && iX != 308) {
            if (iX == 401) {
                return this.f13910a.d().a(d0VarZ, b0Var);
            }
            if (iX == 421) {
                a0 a0VarA = b0Var.D0().a();
                if ((a0VarA != null && a0VarA.d()) || cVar == null || !cVar.l()) {
                    return null;
                }
                cVar.h().x();
                return b0Var.D0();
            }
            if (iX == 503) {
                b0 b0VarQ0 = b0Var.q0();
                if ((b0VarQ0 == null || b0VarQ0.x() != 503) && g(b0Var, Integer.MAX_VALUE) == 0) {
                    return b0Var.D0();
                }
                return null;
            }
            if (iX == 407) {
                r.b(d0VarZ);
                if (d0VarZ.b().type() == Proxy.Type.HTTP) {
                    return this.f13910a.y().a(d0VarZ, b0Var);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iX == 408) {
                if (!this.f13910a.B()) {
                    return null;
                }
                a0 a0VarA2 = b0Var.D0().a();
                if (a0VarA2 != null && a0VarA2.d()) {
                    return null;
                }
                b0 b0VarQ02 = b0Var.q0();
                if ((b0VarQ02 == null || b0VarQ02.x() != 408) && g(b0Var, 0) <= 0) {
                    return b0Var.D0();
                }
                return null;
            }
            switch (iX) {
                case 300:
                case 301:
                case COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE /* 302 */:
                case COUIHapticFeedbackConstants.SHORT_VIBRATE /* 303 */:
                    break;
                default:
                    return null;
            }
        }
        return b(b0Var, strG);
    }

    private final boolean d(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z10 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final boolean e(IOException iOException, okhttp3.internal.connection.e eVar, z zVar, boolean z10) {
        if (this.f13910a.B()) {
            return !(z10 && f(iOException, zVar)) && d(iOException, z10) && eVar.t();
        }
        return false;
    }

    private final boolean f(IOException iOException, z zVar) {
        a0 a0VarA = zVar.a();
        return (a0VarA != null && a0VarA.d()) || (iOException instanceof FileNotFoundException);
    }

    private final int g(b0 b0Var, int i10) {
        String strI = b0.I(b0Var, "Retry-After", null, 2, null);
        if (strI == null) {
            return i10;
        }
        if (!new n("\\d+").matches(strI)) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strI);
        r.d(numValueOf, "valueOf(header)");
        return numValueOf.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
    
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
    
        r0 = r1.m();
        r6 = c(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
    
        if (r6 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
    
        if (r0 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r0.m() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        r1.v();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        r1.i(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
    
        r0 = r6.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r0 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        if (r0.d() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        r1.i(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
    
        r0 = r7.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r0 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        i9.d.l(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
    
        if (r8 > 20) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0098, code lost:
    
        throw new java.net.ProtocolException("Too many follow-up requests: " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        if (r7 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        r0 = r0.b0().o(r7.b0().b(null).c()).c();
     */
    @Override // okhttp3.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public okhttp3.b0 a(okhttp3.v.a r11) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m9.j.a(okhttp3.v$a):okhttp3.b0");
    }
}
