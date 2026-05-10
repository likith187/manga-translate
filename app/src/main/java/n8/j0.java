package n8;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j0 {
    public static final int a(int i10, int i11) {
        return kotlin.jvm.internal.r.f(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
    }

    public static final int b(long j10, long j11) {
        return kotlin.jvm.internal.r.g(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
    }

    public static final String c(long j10, int i10) {
        if (j10 >= 0) {
            String string = Long.toString(j10, kotlin.text.a.a(i10));
            kotlin.jvm.internal.r.d(string, "toString(...)");
            return string;
        }
        long j11 = i10;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j12, kotlin.text.a.a(i10));
        kotlin.jvm.internal.r.d(string2, "toString(...)");
        sb.append(string2);
        String string3 = Long.toString(j13, kotlin.text.a.a(i10));
        kotlin.jvm.internal.r.d(string3, "toString(...)");
        sb.append(string3);
        return sb.toString();
    }
}
