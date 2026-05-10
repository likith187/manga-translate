package t9;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends g {
    private final transient int[] directory;
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(byte[][] segments, int[] directory) {
        super(g.EMPTY.getData$okio());
        kotlin.jvm.internal.r.e(segments, "segments");
        kotlin.jvm.internal.r.e(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final g toByteString() {
        return new g(toByteArray());
    }

    private final Object writeReplace() {
        g byteString = toByteString();
        kotlin.jvm.internal.r.c(byteString, "null cannot be cast to non-null type java.lang.Object");
        return byteString;
    }

    @Override // t9.g
    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        kotlin.jvm.internal.r.d(byteBufferAsReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return byteBufferAsReadOnlyBuffer;
    }

    @Override // t9.g
    public String base64() {
        return toByteString().base64();
    }

    @Override // t9.g
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // t9.g
    public void copyInto(int i10, byte[] target, int i11, int i12) {
        kotlin.jvm.internal.r.e(target, "target");
        long j10 = i12;
        b.b(size(), i10, j10);
        b.b(target.length, i11, j10);
        int i13 = i12 + i10;
        int iB = u9.c.b(this, i10);
        while (i10 < i13) {
            int i14 = iB == 0 ? 0 : getDirectory$okio()[iB - 1];
            int i15 = getDirectory$okio()[iB] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iB];
            int iMin = Math.min(i13, i15 + i14) - i10;
            int i17 = i16 + (i10 - i14);
            kotlin.collections.i.g(getSegments$okio()[iB], target, i11, i17, i17 + iMin);
            i11 += iMin;
            i10 += iMin;
            iB++;
        }
    }

    @Override // t9.g
    public g digest$okio(String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.r.e(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            messageDigest.update(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] bArrDigest = messageDigest.digest();
        kotlin.jvm.internal.r.b(bArrDigest);
        return new g(bArrDigest);
    }

    @Override // t9.g
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.size() == size() && rangeEquals(0, gVar, 0, size())) {
                return true;
            }
        }
        return false;
    }

    public final int[] getDirectory$okio() {
        return this.directory;
    }

    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // t9.g
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // t9.g
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i10 < length) {
            int i13 = getDirectory$okio()[length + i10];
            int i14 = getDirectory$okio()[i10];
            byte[] bArr = getSegments$okio()[i10];
            int i15 = (i14 - i12) + i13;
            while (i13 < i15) {
                i11 = (i11 * 31) + bArr[i13];
                i13++;
            }
            i10++;
            i12 = i14;
        }
        setHashCode$okio(i11);
        return i11;
    }

    @Override // t9.g
    public String hex() {
        return toByteString().hex();
    }

    @Override // t9.g
    public g hmac$okio(String algorithm, g key) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.r.e(algorithm, "algorithm");
        kotlin.jvm.internal.r.e(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                int i12 = getDirectory$okio()[length + i10];
                int i13 = getDirectory$okio()[i10];
                mac.update(getSegments$okio()[i10], i12, i13 - i11);
                i10++;
                i11 = i13;
            }
            byte[] bArrDoFinal = mac.doFinal();
            kotlin.jvm.internal.r.d(bArrDoFinal, "doFinal(...)");
            return new g(bArrDoFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // t9.g
    public int indexOf(byte[] other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        return toByteString().indexOf(other, i10);
    }

    @Override // t9.g
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // t9.g
    public byte internalGet$okio(int i10) {
        b.b(getDirectory$okio()[getSegments$okio().length - 1], i10, 1L);
        int iB = u9.c.b(this, i10);
        return getSegments$okio()[iB][(i10 - (iB == 0 ? 0 : getDirectory$okio()[iB - 1])) + getDirectory$okio()[getSegments$okio().length + iB]];
    }

    @Override // t9.g
    public int lastIndexOf(byte[] other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        return toByteString().lastIndexOf(other, i10);
    }

    @Override // t9.g
    public boolean rangeEquals(int i10, g other, int i11, int i12) {
        kotlin.jvm.internal.r.e(other, "other");
        if (i10 < 0 || i10 > size() - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iB = u9.c.b(this, i10);
        while (i10 < i13) {
            int i14 = iB == 0 ? 0 : getDirectory$okio()[iB - 1];
            int i15 = getDirectory$okio()[iB] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iB];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!other.rangeEquals(i11, getSegments$okio()[iB], i16 + (i10 - i14), iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iB++;
        }
        return true;
    }

    @Override // t9.g
    public String string(Charset charset) {
        kotlin.jvm.internal.r.e(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // t9.g
    public g substring(int i10, int i11) {
        int iD = b.d(this, i11);
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
        }
        if (iD > size()) {
            throw new IllegalArgumentException(("endIndex=" + iD + " > length(" + size() + ')').toString());
        }
        int i12 = iD - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException(("endIndex=" + iD + " < beginIndex=" + i10).toString());
        }
        if (i10 == 0 && iD == size()) {
            return this;
        }
        if (i10 == iD) {
            return g.EMPTY;
        }
        int iB = u9.c.b(this, i10);
        int iB2 = u9.c.b(this, iD - 1);
        byte[][] bArr = (byte[][]) kotlin.collections.i.p(getSegments$okio(), iB, iB2 + 1);
        int[] iArr = new int[bArr.length * 2];
        if (iB <= iB2) {
            int i13 = iB;
            int i14 = 0;
            while (true) {
                iArr[i14] = Math.min(getDirectory$okio()[i13] - i10, i12);
                int i15 = i14 + 1;
                iArr[i14 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i13];
                if (i13 == iB2) {
                    break;
                }
                i13++;
                i14 = i15;
            }
        }
        int i16 = iB != 0 ? getDirectory$okio()[iB - 1] : 0;
        int length = bArr.length;
        iArr[length] = iArr[length] + (i10 - i16);
        return new x(bArr, iArr);
    }

    @Override // t9.g
    public g toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // t9.g
    public g toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // t9.g
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = getDirectory$okio()[length + i10];
            int i14 = getDirectory$okio()[i10];
            int i15 = i14 - i11;
            kotlin.collections.i.g(getSegments$okio()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // t9.g
    public String toString() {
        return toByteString().toString();
    }

    @Override // t9.g
    public void write(OutputStream out) throws IOException {
        kotlin.jvm.internal.r.e(out, "out");
        int length = getSegments$okio().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = getDirectory$okio()[length + i10];
            int i13 = getDirectory$okio()[i10];
            out.write(getSegments$okio()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
    }

    @Override // t9.g
    public void write$okio(d buffer, int i10, int i11) {
        kotlin.jvm.internal.r.e(buffer, "buffer");
        int i12 = i10 + i11;
        int iB = u9.c.b(this, i10);
        while (i10 < i12) {
            int i13 = iB == 0 ? 0 : getDirectory$okio()[iB - 1];
            int i14 = getDirectory$okio()[iB] - i13;
            int i15 = getDirectory$okio()[getSegments$okio().length + iB];
            int iMin = Math.min(i12, i14 + i13) - i10;
            int i16 = i15 + (i10 - i13);
            v vVar = new v(getSegments$okio()[iB], i16, i16 + iMin, true, false);
            v vVar2 = buffer.f15749a;
            if (vVar2 == null) {
                vVar.f15798g = vVar;
                vVar.f15797f = vVar;
                buffer.f15749a = vVar;
            } else {
                kotlin.jvm.internal.r.b(vVar2);
                v vVar3 = vVar2.f15798g;
                kotlin.jvm.internal.r.b(vVar3);
                vVar3.c(vVar);
            }
            i10 += iMin;
            iB++;
        }
        buffer.F0(buffer.G0() + ((long) i11));
    }

    @Override // t9.g
    public boolean rangeEquals(int i10, byte[] other, int i11, int i12) {
        kotlin.jvm.internal.r.e(other, "other");
        if (i10 < 0 || i10 > size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i13 = i12 + i10;
        int iB = u9.c.b(this, i10);
        while (i10 < i13) {
            int i14 = iB == 0 ? 0 : getDirectory$okio()[iB - 1];
            int i15 = getDirectory$okio()[iB] - i14;
            int i16 = getDirectory$okio()[getSegments$okio().length + iB];
            int iMin = Math.min(i13, i15 + i14) - i10;
            if (!b.a(getSegments$okio()[iB], i16 + (i10 - i14), other, i11, iMin)) {
                return false;
            }
            i11 += iMin;
            i10 += iMin;
            iB++;
        }
        return true;
    }
}
