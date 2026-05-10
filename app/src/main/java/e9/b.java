package e9;

import java.io.Serializable;
import java.util.Comparator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.text.g;
import n8.b0;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Serializable {
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;
    private final long leastSignificantBits;
    private final long mostSignificantBits;
    public static final a Companion = new a(null);
    private static final b NIL = new b(0, 0);
    private static final Comparator<b> LEXICAL_ORDER = new Comparator() { // from class: e9.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return b.LEXICAL_ORDER$lambda$2((b) obj, (b) obj2);
        }
    };

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(long j10, long j11) {
            return (j10 == 0 && j11 == 0) ? b() : new b(j10, j11);
        }

        public final b b() {
            return b.NIL;
        }

        public final b c(String uuidString) {
            r.e(uuidString, "uuidString");
            if (uuidString.length() != 36) {
                throw new IllegalArgumentException("Expected a 36-char string in the standard uuid format.");
            }
            long jF = g.f(uuidString, 0, 8, null, 4, null);
            d.d(uuidString, 8);
            long jF2 = g.f(uuidString, 9, 13, null, 4, null);
            d.d(uuidString, 13);
            long jF3 = g.f(uuidString, 14, 18, null, 4, null);
            d.d(uuidString, 18);
            long jF4 = g.f(uuidString, 19, 23, null, 4, null);
            d.d(uuidString, 23);
            return a((jF << 32) | (jF2 << 16) | jF3, g.f(uuidString, 24, 36, null, 4, null) | (jF4 << 48));
        }

        private a() {
        }
    }

    public b(long j10, long j11) {
        this.mostSignificantBits = j10;
        this.leastSignificantBits = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int LEXICAL_ORDER$lambda$2(b bVar, b bVar2) {
        long j10 = bVar.mostSignificantBits;
        return j10 != bVar2.mostSignificantBits ? Long.compareUnsigned(b0.b(j10), b0.b(bVar2.mostSignificantBits)) : Long.compareUnsigned(b0.b(bVar.leastSignificantBits), b0.b(bVar2.leastSignificantBits));
    }

    public static /* synthetic */ void getLeastSignificantBits$annotations() {
    }

    public static /* synthetic */ void getMostSignificantBits$annotations() {
    }

    private final <T> T toLongs(p action) {
        r.e(action, "action");
        return (T) action.invoke(Long.valueOf(getMostSignificantBits()), Long.valueOf(getLeastSignificantBits()));
    }

    private final <T> T toULongs(p action) {
        r.e(action, "action");
        return (T) action.invoke(b0.a(b0.b(getMostSignificantBits())), b0.a(b0.b(getLeastSignificantBits())));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.mostSignificantBits == bVar.mostSignificantBits && this.leastSignificantBits == bVar.leastSignificantBits;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public int hashCode() {
        long j10 = this.mostSignificantBits ^ this.leastSignificantBits;
        return ((int) (j10 >> 32)) ^ ((int) j10);
    }

    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        d.f(this.mostSignificantBits, bArr, 0);
        d.f(this.leastSignificantBits, bArr, 8);
        return bArr;
    }

    public final String toHexString() {
        byte[] bArr = new byte[32];
        d.e(this.leastSignificantBits, bArr, 16, 8);
        d.e(this.mostSignificantBits, bArr, 0, 8);
        return kotlin.text.r.s(bArr);
    }

    public String toString() {
        byte[] bArr = new byte[36];
        d.e(this.leastSignificantBits, bArr, 24, 6);
        bArr[23] = 45;
        d.e(this.leastSignificantBits >>> 48, bArr, 19, 2);
        bArr[18] = 45;
        d.e(this.mostSignificantBits, bArr, 14, 2);
        bArr[13] = 45;
        d.e(this.mostSignificantBits >>> 16, bArr, 9, 2);
        bArr[8] = 45;
        d.e(this.mostSignificantBits >>> 32, bArr, 0, 4);
        return kotlin.text.r.s(bArr);
    }
}
