package y2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w2.b f16534a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f16535b;

    public g(w2.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f16534a = bVar;
        this.f16535b = bArr;
    }

    public byte[] a() {
        return this.f16535b;
    }

    public w2.b b() {
        return this.f16534a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f16534a.equals(gVar.f16534a)) {
            return Arrays.equals(this.f16535b, gVar.f16535b);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f16535b) ^ ((this.f16534a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f16534a + ", bytes=[...]}";
    }
}
