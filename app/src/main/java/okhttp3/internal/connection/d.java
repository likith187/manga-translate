package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.jvm.internal.r;
import o9.n;
import okhttp3.d0;
import okhttp3.internal.connection.j;
import okhttp3.q;
import okhttp3.u;
import okhttp3.x;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a */
    private final g f14823a;

    /* JADX INFO: renamed from: b */
    private final okhttp3.a f14824b;

    /* JADX INFO: renamed from: c */
    private final e f14825c;

    /* JADX INFO: renamed from: d */
    private final q f14826d;

    /* JADX INFO: renamed from: e */
    private j.b f14827e;

    /* JADX INFO: renamed from: f */
    private j f14828f;

    /* JADX INFO: renamed from: g */
    private int f14829g;

    /* JADX INFO: renamed from: h */
    private int f14830h;

    /* JADX INFO: renamed from: i */
    private int f14831i;

    /* JADX INFO: renamed from: j */
    private d0 f14832j;

    public d(g connectionPool, okhttp3.a address, e call, q eventListener) {
        r.e(connectionPool, "connectionPool");
        r.e(address, "address");
        r.e(call, "call");
        r.e(eventListener, "eventListener");
        this.f14823a = connectionPool;
        this.f14824b = address;
        this.f14825c = call;
        this.f14826d = eventListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final okhttp3.internal.connection.f b(int r15, int r16, int r17, int r18, boolean r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 377
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.d.b(int, int, int, int, boolean):okhttp3.internal.connection.f");
    }

    private final f c(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws IOException {
        while (true) {
            f fVarB = b(i10, i11, i12, i13, z10);
            if (fVarB.u(z11)) {
                return fVarB;
            }
            fVarB.y();
            if (this.f14832j == null) {
                j.b bVar = this.f14827e;
                if (bVar != null ? bVar.b() : true) {
                    continue;
                } else {
                    j jVar = this.f14828f;
                    if (!(jVar != null ? jVar.a() : true)) {
                        throw new IOException("exhausted all routes");
                    }
                }
            }
        }
    }

    private final d0 f() {
        f fVarK;
        if (this.f14829g > 1 || this.f14830h > 1 || this.f14831i > 0 || (fVarK = this.f14825c.k()) == null) {
            return null;
        }
        synchronized (fVarK) {
            if (fVarK.q() != 0) {
                return null;
            }
            if (i9.d.j(fVarK.z().a().l(), this.f14824b.l())) {
                return fVarK.z();
            }
            return null;
        }
    }

    public final m9.d a(x client, m9.g chain) {
        r.e(client, "client");
        r.e(chain, "chain");
        try {
            return c(chain.f(), chain.h(), chain.j(), client.v(), client.B(), !r.a(chain.i().g(), "GET")).w(client, chain);
        } catch (IOException e10) {
            this.h(e10);
            throw new i(e10);
        } catch (i e11) {
            this.h(e11.getLastConnectException());
            throw e11;
        }
    }

    public final okhttp3.a d() {
        return this.f14824b;
    }

    public final boolean e() {
        j jVar;
        if (this.f14829g == 0 && this.f14830h == 0 && this.f14831i == 0) {
            return false;
        }
        if (this.f14832j != null) {
            return true;
        }
        d0 d0VarF = f();
        if (d0VarF != null) {
            this.f14832j = d0VarF;
            return true;
        }
        j.b bVar = this.f14827e;
        if ((bVar == null || !bVar.b()) && (jVar = this.f14828f) != null) {
            return jVar.a();
        }
        return true;
    }

    public final boolean g(u url) {
        r.e(url, "url");
        u uVarL = this.f14824b.l();
        return url.m() == uVarL.m() && r.a(url.h(), uVarL.h());
    }

    public final void h(IOException e10) {
        r.e(e10, "e");
        this.f14832j = null;
        if ((e10 instanceof n) && ((n) e10).errorCode == o9.b.REFUSED_STREAM) {
            this.f14829g++;
        } else if (e10 instanceof o9.a) {
            this.f14830h++;
        } else {
            this.f14831i++;
        }
    }
}
