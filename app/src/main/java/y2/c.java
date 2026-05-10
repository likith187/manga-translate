package y2;

import java.util.Arrays;
import y2.m;

/* JADX INFO: loaded from: classes.dex */
final class c extends m {

    /* JADX INFO: renamed from: a */
    private final String f16515a;

    /* JADX INFO: renamed from: b */
    private final byte[] f16516b;

    /* JADX INFO: renamed from: c */
    private final w2.d f16517c;

    static final class b extends m.a {

        /* JADX INFO: renamed from: a */
        private String f16518a;

        /* JADX INFO: renamed from: b */
        private byte[] f16519b;

        /* JADX INFO: renamed from: c */
        private w2.d f16520c;

        b() {
        }

        @Override // y2.m.a
        public m a() {
            String str = "";
            if (this.f16518a == null) {
                str = " backendName";
            }
            if (this.f16520c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new c(this.f16518a, this.f16519b, this.f16520c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // y2.m.a
        public m.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f16518a = str;
            return this;
        }

        @Override // y2.m.a
        public m.a c(byte[] bArr) {
            this.f16519b = bArr;
            return this;
        }

        @Override // y2.m.a
        public m.a d(w2.d dVar) {
            if (dVar == null) {
                throw new NullPointerException("Null priority");
            }
            this.f16520c = dVar;
            return this;
        }
    }

    /* synthetic */ c(String str, byte[] bArr, w2.d dVar, a aVar) {
        this(str, bArr, dVar);
    }

    @Override // y2.m
    public String b() {
        return this.f16515a;
    }

    @Override // y2.m
    public byte[] c() {
        return this.f16516b;
    }

    @Override // y2.m
    public w2.d d() {
        return this.f16517c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f16515a.equals(mVar.b())) {
            if (Arrays.equals(this.f16516b, mVar instanceof c ? ((c) mVar).f16516b : mVar.c()) && this.f16517c.equals(mVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f16517c.hashCode() ^ ((((this.f16515a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16516b)) * 1000003);
    }

    private c(String str, byte[] bArr, w2.d dVar) {
        this.f16515a = str;
        this.f16516b = bArr;
        this.f16517c = dVar;
    }
}
