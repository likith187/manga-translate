package z2;

import java.util.Arrays;
import z2.f;

/* JADX INFO: loaded from: classes.dex */
final class a extends f {

    /* JADX INFO: renamed from: a */
    private final Iterable f16611a;

    /* JADX INFO: renamed from: b */
    private final byte[] f16612b;

    static final class b extends f.a {

        /* JADX INFO: renamed from: a */
        private Iterable f16613a;

        /* JADX INFO: renamed from: b */
        private byte[] f16614b;

        b() {
        }

        @Override // z2.f.a
        public f a() {
            String str = "";
            if (this.f16613a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f16613a, this.f16614b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // z2.f.a
        public f.a b(Iterable iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.f16613a = iterable;
            return this;
        }

        @Override // z2.f.a
        public f.a c(byte[] bArr) {
            this.f16614b = bArr;
            return this;
        }
    }

    /* synthetic */ a(Iterable iterable, byte[] bArr, C0247a c0247a) {
        this(iterable, bArr);
    }

    @Override // z2.f
    public Iterable b() {
        return this.f16611a;
    }

    @Override // z2.f
    public byte[] c() {
        return this.f16612b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f16611a.equals(fVar.b())) {
            if (Arrays.equals(this.f16612b, fVar instanceof a ? ((a) fVar).f16612b : fVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f16612b) ^ ((this.f16611a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f16611a + ", extras=" + Arrays.toString(this.f16612b) + "}";
    }

    private a(Iterable iterable, byte[] bArr) {
        this.f16611a = iterable;
        this.f16612b = bArr;
    }
}
