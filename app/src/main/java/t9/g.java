package t9;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class g implements Serializable, Comparable {
    public static final a Companion = new a(null);
    public static final g EMPTY = new g(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] data;
    private transient int hashCode;
    private transient String utf8;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ g h(a aVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = b.c();
            }
            return aVar.g(bArr, i10, i11);
        }

        public final g a(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            byte[] bArrA = t9.a.a(str);
            if (bArrA != null) {
                return new g(bArrA);
            }
            return null;
        }

        public final g b(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) ((u9.b.e(str.charAt(i11)) << 4) + u9.b.e(str.charAt(i11 + 1)));
            }
            return new g(bArr);
        }

        public final g c(String str, Charset charset) {
            kotlin.jvm.internal.r.e(str, "<this>");
            kotlin.jvm.internal.r.e(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            kotlin.jvm.internal.r.d(bytes, "this as java.lang.String).getBytes(charset)");
            return new g(bytes);
        }

        public final g d(String str) {
            kotlin.jvm.internal.r.e(str, "<this>");
            g gVar = new g(d0.a(str));
            gVar.setUtf8$okio(str);
            return gVar;
        }

        public final g e(ByteBuffer byteBuffer) {
            kotlin.jvm.internal.r.e(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new g(bArr);
        }

        public final g f(byte... data) {
            kotlin.jvm.internal.r.e(data, "data");
            byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
            kotlin.jvm.internal.r.d(bArrCopyOf, "copyOf(this, size)");
            return new g(bArrCopyOf);
        }

        public final g g(byte[] bArr, int i10, int i11) {
            kotlin.jvm.internal.r.e(bArr, "<this>");
            int iE = b.e(bArr, i11);
            b.b(bArr.length, i10, iE);
            return new g(kotlin.collections.i.o(bArr, i10, iE + i10));
        }

        public final g i(InputStream inputStream, int i10) throws IOException {
            kotlin.jvm.internal.r.e(inputStream, "<this>");
            if (i10 < 0) {
                throw new IllegalArgumentException(("byteCount < 0: " + i10).toString());
            }
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = inputStream.read(bArr, i11, i10 - i11);
                if (i12 == -1) {
                    throw new EOFException();
                }
                i11 += i12;
            }
            return new g(bArr);
        }

        private a() {
        }
    }

    public g(byte[] data) {
        kotlin.jvm.internal.r.e(data, "data");
        this.data = data;
    }

    public static /* synthetic */ void copyInto$default(g gVar, int i10, byte[] bArr, int i11, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i13 & 1) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        gVar.copyInto(i10, bArr, i11, i12);
    }

    public static final g decodeBase64(String str) {
        return Companion.a(str);
    }

    public static final g decodeHex(String str) {
        return Companion.b(str);
    }

    public static final g encodeString(String str, Charset charset) {
        return Companion.c(str, charset);
    }

    public static final g encodeUtf8(String str) {
        return Companion.d(str);
    }

    public static /* synthetic */ int indexOf$default(g gVar, g gVar2, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return gVar.indexOf(gVar2, i10);
    }

    public static /* synthetic */ int lastIndexOf$default(g gVar, g gVar2, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = b.c();
        }
        return gVar.lastIndexOf(gVar2, i10);
    }

    public static final g of(ByteBuffer byteBuffer) {
        return Companion.e(byteBuffer);
    }

    public static final g read(InputStream inputStream, int i10) throws IOException {
        return Companion.i(inputStream, i10);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException {
        g gVarI = Companion.i(objectInputStream, objectInputStream.readInt());
        Field declaredField = g.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, gVarI.data);
    }

    public static /* synthetic */ g substring$default(g gVar, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = b.c();
        }
        return gVar.substring(i10, i11);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    /* JADX INFO: renamed from: -deprecated_getByte */
    public final byte m70deprecated_getByte(int i10) {
        return getByte(i10);
    }

    /* JADX INFO: renamed from: -deprecated_size */
    public final int m71deprecated_size() {
        return size();
    }

    public ByteBuffer asByteBuffer() {
        ByteBuffer byteBufferAsReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        kotlin.jvm.internal.r.d(byteBufferAsReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return byteBufferAsReadOnlyBuffer;
    }

    public String base64() {
        return t9.a.c(getData$okio(), null, 1, null);
    }

    public String base64Url() {
        return t9.a.b(getData$okio(), t9.a.d());
    }

    public void copyInto(int i10, byte[] target, int i11, int i12) {
        kotlin.jvm.internal.r.e(target, "target");
        kotlin.collections.i.g(getData$okio(), target, i11, i10, i12 + i10);
    }

    public g digest$okio(String algorithm) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.r.e(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.data, 0, size());
        byte[] bArrDigest = messageDigest.digest();
        kotlin.jvm.internal.r.b(bArrDigest);
        return new g(bArrDigest);
    }

    public final boolean endsWith(g suffix) {
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return rangeEquals(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.size() == getData$okio().length && gVar.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public final byte getByte(int i10) {
        return internalGet$okio(i10);
    }

    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    public final String getUtf8$okio() {
        return this.utf8;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(iHashCode);
        return iHashCode;
    }

    public String hex() {
        char[] cArr = new char[getData$okio().length * 2];
        int i10 = 0;
        for (byte b10 : getData$okio()) {
            int i11 = i10 + 1;
            cArr[i10] = u9.b.f()[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = u9.b.f()[b10 & 15];
        }
        return kotlin.text.r.q(cArr);
    }

    public g hmac$okio(String algorithm, g key) throws NoSuchAlgorithmException {
        kotlin.jvm.internal.r.e(algorithm, "algorithm");
        kotlin.jvm.internal.r.e(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] bArrDoFinal = mac.doFinal(this.data);
            kotlin.jvm.internal.r.d(bArrDoFinal, "doFinal(...)");
            return new g(bArrDoFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public g hmacSha1(g key) {
        kotlin.jvm.internal.r.e(key, "key");
        return hmac$okio("HmacSHA1", key);
    }

    public g hmacSha256(g key) {
        kotlin.jvm.internal.r.e(key, "key");
        return hmac$okio("HmacSHA256", key);
    }

    public g hmacSha512(g key) {
        kotlin.jvm.internal.r.e(key, "key");
        return hmac$okio("HmacSHA512", key);
    }

    public final int indexOf(g other) {
        kotlin.jvm.internal.r.e(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i10) {
        return getData$okio()[i10];
    }

    public final int lastIndexOf(g other) {
        kotlin.jvm.internal.r.e(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    public final g md5() {
        return digest$okio("MD5");
    }

    public boolean rangeEquals(int i10, g other, int i11, int i12) {
        kotlin.jvm.internal.r.e(other, "other");
        return other.rangeEquals(i11, getData$okio(), i10, i12);
    }

    public final void setHashCode$okio(int i10) {
        this.hashCode = i10;
    }

    public final void setUtf8$okio(String str) {
        this.utf8 = str;
    }

    public final g sha1() {
        return digest$okio("SHA-1");
    }

    public final g sha256() {
        return digest$okio("SHA-256");
    }

    public final g sha512() {
        return digest$okio("SHA-512");
    }

    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(g prefix) {
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    public String string(Charset charset) {
        kotlin.jvm.internal.r.e(charset, "charset");
        return new String(this.data, charset);
    }

    public final g substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    public g toAsciiLowercase() {
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                kotlin.jvm.internal.r.d(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArrCopyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new g(bArrCopyOf);
            }
        }
        return this;
    }

    public g toAsciiUppercase() {
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] data$okio = getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                kotlin.jvm.internal.r.d(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        bArrCopyOf[i11] = (byte) (b11 - 32);
                    }
                }
                return new g(bArrCopyOf);
            }
        }
        return this;
    }

    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        kotlin.jvm.internal.r.d(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    public String toString() {
        if (getData$okio().length == 0) {
            return "[size=0]";
        }
        int iC = u9.b.c(getData$okio(), 64);
        if (iC != -1) {
            String strUtf8 = utf8();
            String strSubstring = strUtf8.substring(0, iC);
            kotlin.jvm.internal.r.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strB = kotlin.text.r.B(kotlin.text.r.B(kotlin.text.r.B(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (iC >= strUtf8.length()) {
                return "[text=" + strB + AbstractJsonLexerKt.END_LIST;
            }
            return "[size=" + getData$okio().length + " text=" + strB + "…]";
        }
        if (getData$okio().length <= 64) {
            return "[hex=" + hex() + AbstractJsonLexerKt.END_LIST;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[size=");
        sb.append(getData$okio().length);
        sb.append(" hex=");
        g gVar = this;
        int iD = b.d(gVar, 64);
        if (iD > getData$okio().length) {
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        if (iD < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (iD != getData$okio().length) {
            gVar = new g(kotlin.collections.i.o(getData$okio(), 0, iD));
        }
        sb.append(gVar.hex());
        sb.append("…]");
        return sb.toString();
    }

    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String strB = d0.b(internalArray$okio());
        setUtf8$okio(strB);
        return strB;
    }

    public void write(OutputStream out) throws IOException {
        kotlin.jvm.internal.r.e(out, "out");
        out.write(this.data);
    }

    public void write$okio(d buffer, int i10, int i11) {
        kotlin.jvm.internal.r.e(buffer, "buffer");
        u9.b.d(this, buffer, i10, i11);
    }

    public static /* synthetic */ int indexOf$default(g gVar, byte[] bArr, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return gVar.indexOf(bArr, i10);
    }

    public static final g of(byte... bArr) {
        return Companion.f(bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0028, code lost:
    
        if (r7 < r8) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0031, code lost:
    
        if (r0 < r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0034, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return 1;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(t9.g r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.r.e(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2e
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L2c
        L2a:
            r3 = r5
            goto L34
        L2c:
            r3 = r6
            goto L34
        L2e:
            if (r0 != r1) goto L31
            goto L34
        L31:
            if (r0 >= r1) goto L2c
            goto L2a
        L34:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.g.compareTo(t9.g):int");
    }

    public final boolean endsWith(byte[] suffix) {
        kotlin.jvm.internal.r.e(suffix, "suffix");
        return rangeEquals(size() - suffix.length, suffix, 0, suffix.length);
    }

    public final int indexOf(byte[] other) {
        kotlin.jvm.internal.r.e(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    public final int lastIndexOf(byte[] other) {
        kotlin.jvm.internal.r.e(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    public boolean rangeEquals(int i10, byte[] other, int i11, int i12) {
        kotlin.jvm.internal.r.e(other, "other");
        return i10 >= 0 && i10 <= getData$okio().length - i12 && i11 >= 0 && i11 <= other.length - i12 && b.a(getData$okio(), i10, other, i11, i12);
    }

    public final boolean startsWith(byte[] prefix) {
        kotlin.jvm.internal.r.e(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.length);
    }

    public final g substring(int i10) {
        return substring$default(this, i10, 0, 2, null);
    }

    public static /* synthetic */ int lastIndexOf$default(g gVar, byte[] bArr, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i11 & 2) != 0) {
            i10 = b.c();
        }
        return gVar.lastIndexOf(bArr, i10);
    }

    public static final g of(byte[] bArr, int i10, int i11) {
        return Companion.g(bArr, i10, i11);
    }

    public final int indexOf(g other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        return indexOf(other.internalArray$okio(), i10);
    }

    public final int lastIndexOf(g other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        return lastIndexOf(other.internalArray$okio(), i10);
    }

    public g substring(int i10, int i11) {
        int iD = b.d(this, i11);
        if (i10 >= 0) {
            if (iD <= getData$okio().length) {
                if (iD - i10 >= 0) {
                    return (i10 == 0 && iD == getData$okio().length) ? this : new g(kotlin.collections.i.o(getData$okio(), i10, iD));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public int indexOf(byte[] other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        int length = getData$okio().length - other.length;
        int iMax = Math.max(i10, 0);
        if (iMax <= length) {
            while (!b.a(getData$okio(), iMax, other, 0, other.length)) {
                if (iMax != length) {
                    iMax++;
                }
            }
            return iMax;
        }
        return -1;
    }

    public int lastIndexOf(byte[] other, int i10) {
        kotlin.jvm.internal.r.e(other, "other");
        for (int iMin = Math.min(b.d(this, i10), getData$okio().length - other.length); -1 < iMin; iMin--) {
            if (b.a(getData$okio(), iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }
}
