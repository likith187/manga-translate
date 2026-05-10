package com.google.android.gms.internal.mlkit_language_id_common;

import com.oplus.aiunit.download.core.ErrorCode;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import q4.c;

/* JADX INFO: loaded from: classes.dex */
final class p implements q4.e {

    /* JADX INFO: renamed from: f */
    private static final Charset f8583f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g */
    private static final q4.c f8584g;

    /* JADX INFO: renamed from: h */
    private static final q4.c f8585h;

    /* JADX INFO: renamed from: i */
    private static final q4.d f8586i;

    /* JADX INFO: renamed from: a */
    private OutputStream f8587a;

    /* JADX INFO: renamed from: b */
    private final Map f8588b;

    /* JADX INFO: renamed from: c */
    private final Map f8589c;

    /* JADX INFO: renamed from: d */
    private final q4.d f8590d;

    /* JADX INFO: renamed from: e */
    private final t f8591e = new t(this);

    static {
        c.b bVarA = q4.c.a("key");
        j jVar = new j();
        jVar.a(1);
        f8584g = bVarA.b(jVar.b()).a();
        c.b bVarA2 = q4.c.a("value");
        j jVar2 = new j();
        jVar2.a(2);
        f8585h = bVarA2.b(jVar2.b()).a();
        f8586i = new q4.d() { // from class: com.google.android.gms.internal.mlkit_language_id_common.o
            @Override // q4.d
            public final void a(Object obj, Object obj2) {
                p.i((Map.Entry) obj, (q4.e) obj2);
            }
        };
    }

    p(OutputStream outputStream, Map map, Map map2, q4.d dVar) {
        this.f8587a = outputStream;
        this.f8588b = map;
        this.f8589c = map2;
        this.f8590d = dVar;
    }

    static /* synthetic */ void i(Map.Entry entry, q4.e eVar) {
        eVar.d(f8584g, entry.getKey());
        eVar.d(f8585h, entry.getValue());
    }

    private static int j(q4.c cVar) {
        n nVar = (n) cVar.c(n.class);
        if (nVar != null) {
            return nVar.zza();
        }
        throw new q4.b("Field has no @Protobuf config");
    }

    private final long k(q4.d dVar, Object obj) throws IOException {
        k kVar = new k();
        try {
            OutputStream outputStream = this.f8587a;
            this.f8587a = kVar;
            try {
                dVar.a(obj, this);
                this.f8587a = outputStream;
                long jC = kVar.c();
                kVar.close();
                return jC;
            } catch (Throwable th) {
                this.f8587a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                kVar.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    private static n l(q4.c cVar) {
        n nVar = (n) cVar.c(n.class);
        if (nVar != null) {
            return nVar;
        }
        throw new q4.b("Field has no @Protobuf config");
    }

    private final p m(q4.d dVar, q4.c cVar, Object obj, boolean z10) throws IOException {
        long jK = k(dVar, obj);
        if (z10 && jK == 0) {
            return this;
        }
        p((j(cVar) << 3) | 2);
        q(jK);
        dVar.a(obj, this);
        return this;
    }

    private final p n(q4.f fVar, q4.c cVar, Object obj, boolean z10) {
        this.f8591e.a(cVar, z10);
        fVar.a(obj, this.f8591e);
        return this;
    }

    private static ByteBuffer o(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private final void p(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f8587a.write((i10 & ErrorCode.CODE_SERVICE_DIED) | 128);
            i10 >>>= 7;
        }
        this.f8587a.write(i10 & ErrorCode.CODE_SERVICE_DIED);
    }

    private final void q(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f8587a.write((((int) j10) & ErrorCode.CODE_SERVICE_DIED) | 128);
            j10 >>>= 7;
        }
        this.f8587a.write(((int) j10) & ErrorCode.CODE_SERVICE_DIED);
    }

    @Override // q4.e
    public final /* synthetic */ q4.e a(q4.c cVar, long j10) throws IOException {
        g(cVar, j10, true);
        return this;
    }

    final q4.e b(q4.c cVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        p((j(cVar) << 3) | 1);
        this.f8587a.write(o(8).putDouble(d10).array());
        return this;
    }

    final q4.e c(q4.c cVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        p((j(cVar) << 3) | 5);
        this.f8587a.write(o(4).putFloat(f10).array());
        return this;
    }

    @Override // q4.e
    public final q4.e d(q4.c cVar, Object obj) throws IOException {
        e(cVar, obj, true);
        return this;
    }

    final q4.e e(q4.c cVar, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            p((j(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f8583f);
            p(bytes.length);
            this.f8587a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                e(cVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m(f8586i, cVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            b(cVar, ((Double) obj).doubleValue(), z10);
            return this;
        }
        if (obj instanceof Float) {
            c(cVar, ((Float) obj).floatValue(), z10);
            return this;
        }
        if (obj instanceof Number) {
            g(cVar, ((Number) obj).longValue(), z10);
            return this;
        }
        if (obj instanceof Boolean) {
            f(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z10);
            return this;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            p((j(cVar) << 3) | 2);
            p(bArr.length);
            this.f8587a.write(bArr);
            return this;
        }
        q4.d dVar = (q4.d) this.f8588b.get(obj.getClass());
        if (dVar != null) {
            m(dVar, cVar, obj, z10);
            return this;
        }
        q4.f fVar = (q4.f) this.f8589c.get(obj.getClass());
        if (fVar != null) {
            n(fVar, cVar, obj, z10);
            return this;
        }
        if (obj instanceof l) {
            f(cVar, ((l) obj).zza(), true);
            return this;
        }
        if (obj instanceof Enum) {
            f(cVar, ((Enum) obj).ordinal(), true);
            return this;
        }
        m(this.f8590d, cVar, obj, z10);
        return this;
    }

    final p f(q4.c cVar, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        n nVarL = l(cVar);
        m mVar = m.DEFAULT;
        int iOrdinal = nVarL.zzb().ordinal();
        if (iOrdinal == 0) {
            p(nVarL.zza() << 3);
            p(i10);
        } else if (iOrdinal == 1) {
            p(nVarL.zza() << 3);
            p((i10 + i10) ^ (i10 >> 31));
        } else if (iOrdinal == 2) {
            p((nVarL.zza() << 3) | 5);
            this.f8587a.write(o(4).putInt(i10).array());
        }
        return this;
    }

    final p g(q4.c cVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        n nVarL = l(cVar);
        m mVar = m.DEFAULT;
        int iOrdinal = nVarL.zzb().ordinal();
        if (iOrdinal == 0) {
            p(nVarL.zza() << 3);
            q(j10);
        } else if (iOrdinal == 1) {
            p(nVarL.zza() << 3);
            q((j10 >> 63) ^ (j10 + j10));
        } else if (iOrdinal == 2) {
            p((nVarL.zza() << 3) | 1);
            this.f8587a.write(o(8).putLong(j10).array());
        }
        return this;
    }

    final p h(Object obj) {
        if (obj == null) {
            return this;
        }
        q4.d dVar = (q4.d) this.f8588b.get(obj.getClass());
        if (dVar == null) {
            throw new q4.b("No encoder for ".concat(String.valueOf(obj.getClass())));
        }
        dVar.a(obj, this);
        return this;
    }
}
