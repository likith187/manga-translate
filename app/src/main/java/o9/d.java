package o9;

import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.download.core.ErrorCode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.ReaderJsonLexerKt;
import t9.a0;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public static final d INSTANCE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c[] f14482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f14483b;

    static {
        d dVar = new d();
        INSTANCE = dVar;
        c cVar = new c(c.f14478j, "");
        t9.g gVar = c.f14475g;
        c cVar2 = new c(gVar, "GET");
        c cVar3 = new c(gVar, "POST");
        t9.g gVar2 = c.f14476h;
        c cVar4 = new c(gVar2, "/");
        c cVar5 = new c(gVar2, "/index.html");
        t9.g gVar3 = c.f14477i;
        c cVar6 = new c(gVar3, "http");
        c cVar7 = new c(gVar3, "https");
        t9.g gVar4 = c.f14474f;
        f14482a = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(gVar4, "200"), new c(gVar4, "204"), new c(gVar4, "206"), new c(gVar4, "304"), new c(gVar4, "400"), new c(gVar4, "404"), new c(gVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f14483b = dVar.d();
    }

    private d() {
    }

    private final Map d() {
        c[] cVarArr = f14482a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(cVarArr.length);
        int length = cVarArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            c[] cVarArr2 = f14482a;
            if (!linkedHashMap.containsKey(cVarArr2[i10].f14479a)) {
                linkedHashMap.put(cVarArr2[i10].f14479a, Integer.valueOf(i10));
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        r.d(mapUnmodifiableMap, "unmodifiableMap(result)");
        return mapUnmodifiableMap;
    }

    public final t9.g a(t9.g name) throws IOException {
        r.e(name, "name");
        int size = name.size();
        for (int i10 = 0; i10 < size; i10++) {
            byte b10 = name.getByte(i10);
            if (65 <= b10 && b10 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + name.utf8());
            }
        }
        return name;
    }

    public final Map b() {
        return f14483b;
    }

    public final c[] c() {
        return f14482a;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f14484a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f14486c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final t9.f f14487d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c[] f14488e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f14489f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f14490g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14491h;

        public a(a0 source, int i10, int i11) {
            r.e(source, "source");
            this.f14484a = i10;
            this.f14485b = i11;
            this.f14486c = new ArrayList();
            this.f14487d = t9.n.b(source);
            this.f14488e = new c[8];
            this.f14489f = r2.length - 1;
        }

        private final void a() {
            int i10 = this.f14485b;
            int i11 = this.f14491h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        private final void b() {
            kotlin.collections.i.r(this.f14488e, null, 0, 0, 6, null);
            this.f14489f = this.f14488e.length - 1;
            this.f14490g = 0;
            this.f14491h = 0;
        }

        private final int c(int i10) {
            return this.f14489f + 1 + i10;
        }

        private final int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f14488e.length;
                while (true) {
                    length--;
                    i11 = this.f14489f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c cVar = this.f14488e[length];
                    r.b(cVar);
                    int i13 = cVar.f14481c;
                    i10 -= i13;
                    this.f14491h -= i13;
                    this.f14490g--;
                    i12++;
                }
                c[] cVarArr = this.f14488e;
                System.arraycopy(cVarArr, i11 + 1, cVarArr, i11 + 1 + i12, this.f14490g);
                this.f14489f += i12;
            }
            return i12;
        }

        private final t9.g f(int i10) throws IOException {
            if (h(i10)) {
                return d.INSTANCE.c()[i10].f14479a;
            }
            int iC = c(i10 - d.INSTANCE.c().length);
            if (iC >= 0) {
                c[] cVarArr = this.f14488e;
                if (iC < cVarArr.length) {
                    c cVar = cVarArr[iC];
                    r.b(cVar);
                    return cVar.f14479a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private final void g(int i10, c cVar) {
            this.f14486c.add(cVar);
            int i11 = cVar.f14481c;
            if (i10 != -1) {
                c cVar2 = this.f14488e[c(i10)];
                r.b(cVar2);
                i11 -= cVar2.f14481c;
            }
            int i12 = this.f14485b;
            if (i11 > i12) {
                b();
                return;
            }
            int iD = d((this.f14491h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f14490g + 1;
                c[] cVarArr = this.f14488e;
                if (i13 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f14489f = this.f14488e.length - 1;
                    this.f14488e = cVarArr2;
                }
                int i14 = this.f14489f;
                this.f14489f = i14 - 1;
                this.f14488e[i14] = cVar;
                this.f14490g++;
            } else {
                this.f14488e[i10 + c(i10) + iD] = cVar;
            }
            this.f14491h += i11;
        }

        private final boolean h(int i10) {
            return i10 >= 0 && i10 <= d.INSTANCE.c().length - 1;
        }

        private final int i() {
            return i9.d.d(this.f14487d.C0(), 255);
        }

        private final void l(int i10) throws IOException {
            if (h(i10)) {
                this.f14486c.add(d.INSTANCE.c()[i10]);
                return;
            }
            int iC = c(i10 - d.INSTANCE.c().length);
            if (iC >= 0) {
                c[] cVarArr = this.f14488e;
                if (iC < cVarArr.length) {
                    List list = this.f14486c;
                    c cVar = cVarArr[iC];
                    r.b(cVar);
                    list.add(cVar);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private final void n(int i10) {
            g(-1, new c(f(i10), j()));
        }

        private final void o() {
            g(-1, new c(d.INSTANCE.a(j()), j()));
        }

        private final void p(int i10) throws IOException {
            this.f14486c.add(new c(f(i10), j()));
        }

        private final void q() throws IOException {
            this.f14486c.add(new c(d.INSTANCE.a(j()), j()));
        }

        public final List e() {
            List listR0 = o.r0(this.f14486c);
            this.f14486c.clear();
            return listR0;
        }

        public final t9.g j() {
            int i10 = i();
            boolean z10 = (i10 & 128) == 128;
            long jM = m(i10, ErrorCode.CODE_SERVICE_DIED);
            if (!z10) {
                return this.f14487d.w(jM);
            }
            t9.d dVar = new t9.d();
            k.INSTANCE.b(this.f14487d, jM, dVar);
            return dVar.a0();
        }

        public final void k() throws IOException {
            while (!this.f14487d.S()) {
                int iD = i9.d.d(this.f14487d.C0(), 255);
                if (iD == 128) {
                    throw new IOException("index == 0");
                }
                if ((iD & 128) == 128) {
                    l(m(iD, ErrorCode.CODE_SERVICE_DIED) - 1);
                } else if (iD == 64) {
                    o();
                } else if ((iD & 64) == 64) {
                    n(m(iD, 63) - 1);
                } else if ((iD & 32) == 32) {
                    int iM = m(iD, 31);
                    this.f14485b = iM;
                    if (iM < 0 || iM > this.f14484a) {
                        throw new IOException("Invalid dynamic table size update " + this.f14485b);
                    }
                    a();
                } else if (iD == 16 || iD == 0) {
                    q();
                } else {
                    p(m(iD, 15) - 1);
                }
            }
        }

        public final int m(int i10, int i11) {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int i14 = i();
                if ((i14 & 128) == 0) {
                    return i11 + (i14 << i13);
                }
                i11 += (i14 & ErrorCode.CODE_SERVICE_DIED) << i13;
                i13 += 7;
            }
        }

        public /* synthetic */ a(a0 a0Var, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(a0Var, i10, (i12 & 4) != 0 ? i10 : i11);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f14493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final t9.d f14494c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f14495d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f14496e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14497f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c[] f14498g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f14499h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14500i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14501j;

        public b(int i10, boolean z10, t9.d out) {
            r.e(out, "out");
            this.f14492a = i10;
            this.f14493b = z10;
            this.f14494c = out;
            this.f14495d = Integer.MAX_VALUE;
            this.f14497f = i10;
            this.f14498g = new c[8];
            this.f14499h = r2.length - 1;
        }

        private final void a() {
            int i10 = this.f14497f;
            int i11 = this.f14501j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    c(i11 - i10);
                }
            }
        }

        private final void b() {
            kotlin.collections.i.r(this.f14498g, null, 0, 0, 6, null);
            this.f14499h = this.f14498g.length - 1;
            this.f14500i = 0;
            this.f14501j = 0;
        }

        private final int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f14498g.length;
                while (true) {
                    length--;
                    i11 = this.f14499h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    c cVar = this.f14498g[length];
                    r.b(cVar);
                    i10 -= cVar.f14481c;
                    int i13 = this.f14501j;
                    c cVar2 = this.f14498g[length];
                    r.b(cVar2);
                    this.f14501j = i13 - cVar2.f14481c;
                    this.f14500i--;
                    i12++;
                }
                c[] cVarArr = this.f14498g;
                System.arraycopy(cVarArr, i11 + 1, cVarArr, i11 + 1 + i12, this.f14500i);
                c[] cVarArr2 = this.f14498g;
                int i14 = this.f14499h;
                Arrays.fill(cVarArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.f14499h += i12;
            }
            return i12;
        }

        private final void d(c cVar) {
            int i10 = cVar.f14481c;
            int i11 = this.f14497f;
            if (i10 > i11) {
                b();
                return;
            }
            c((this.f14501j + i10) - i11);
            int i12 = this.f14500i + 1;
            c[] cVarArr = this.f14498g;
            if (i12 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f14499h = this.f14498g.length - 1;
                this.f14498g = cVarArr2;
            }
            int i13 = this.f14499h;
            this.f14499h = i13 - 1;
            this.f14498g[i13] = cVar;
            this.f14500i++;
            this.f14501j += i10;
        }

        public final void e(int i10) {
            this.f14492a = i10;
            int iMin = Math.min(i10, ReaderJsonLexerKt.BATCH_SIZE);
            int i11 = this.f14497f;
            if (i11 == iMin) {
                return;
            }
            if (iMin < i11) {
                this.f14495d = Math.min(this.f14495d, iMin);
            }
            this.f14496e = true;
            this.f14497f = iMin;
            a();
        }

        public final void f(t9.g data) {
            r.e(data, "data");
            if (this.f14493b) {
                k kVar = k.INSTANCE;
                if (kVar.d(data) < data.size()) {
                    t9.d dVar = new t9.d();
                    kVar.c(data, dVar);
                    t9.g gVarA0 = dVar.a0();
                    h(gVarA0.size(), ErrorCode.CODE_SERVICE_DIED, 128);
                    this.f14494c.h0(gVarA0);
                    return;
                }
            }
            h(data.size(), ErrorCode.CODE_SERVICE_DIED, 0);
            this.f14494c.h0(data);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void g(java.util.List r13) {
            /*
                Method dump skipped, instruction units count: 264
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: o9.d.b.g(java.util.List):void");
        }

        public final void h(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f14494c.T(i10 | i12);
                return;
            }
            this.f14494c.T(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f14494c.T(128 | (i13 & ErrorCode.CODE_SERVICE_DIED));
                i13 >>>= 7;
            }
            this.f14494c.T(i13);
        }

        public /* synthetic */ b(int i10, boolean z10, t9.d dVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? ConfigPackage.FRAME_SIZE_5 : i10, (i11 & 2) != 0 ? true : z10, dVar);
        }
    }
}
