package a5;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class c implements Closeable, Flushable {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f87m = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String[] f88n = new String[128];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String[] f89o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Writer f90a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f91b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f92c = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f93f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f94h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f95i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f96j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f97k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f98l;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f88n[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f88n;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f89o = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        D0(6);
        this.f94h = ":";
        this.f98l = true;
        Objects.requireNonNull(writer, "out == null");
        this.f90a = writer;
    }

    private void D0(int i10) {
        int i11 = this.f92c;
        int[] iArr = this.f91b;
        if (i11 == iArr.length) {
            this.f91b = Arrays.copyOf(iArr, i11 * 2);
        }
        int[] iArr2 = this.f91b;
        int i12 = this.f92c;
        this.f92c = i12 + 1;
        iArr2[i12] = i10;
    }

    private void E0(int i10) {
        this.f91b[this.f92c - 1] = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void J0(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f96j
            if (r0 == 0) goto L7
            java.lang.String[] r0 = a5.c.f89o
            goto L9
        L7:
            java.lang.String[] r0 = a5.c.f88n
        L9:
            java.io.Writer r1 = r8.f90a
            r2 = 34
            r1.write(r2)
            int r1 = r9.length()
            r3 = 0
            r4 = r3
        L16:
            if (r3 >= r1) goto L45
            char r5 = r9.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L25
            r5 = r0[r5]
            if (r5 != 0) goto L32
            goto L42
        L25:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L2c
            java.lang.String r5 = "\\u2028"
            goto L32
        L2c:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L42
            java.lang.String r5 = "\\u2029"
        L32:
            if (r4 >= r3) goto L3b
            java.io.Writer r6 = r8.f90a
            int r7 = r3 - r4
            r6.write(r9, r4, r7)
        L3b:
            java.io.Writer r4 = r8.f90a
            r4.write(r5)
            int r4 = r3 + 1
        L42:
            int r3 = r3 + 1
            goto L16
        L45:
            if (r4 >= r1) goto L4d
            java.io.Writer r0 = r8.f90a
            int r1 = r1 - r4
            r0.write(r9, r4, r1)
        L4d:
            java.io.Writer r8 = r8.f90a
            r8.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.c.J0(java.lang.String):void");
    }

    private void Q0() throws IOException {
        if (this.f97k != null) {
            c();
            J0(this.f97k);
            this.f97k = null;
        }
    }

    private static boolean X(Class cls) {
        return cls == Integer.class || cls == Long.class || cls == Double.class || cls == Float.class || cls == Byte.class || cls == Short.class || cls == BigDecimal.class || cls == BigInteger.class || cls == AtomicInteger.class || cls == AtomicLong.class;
    }

    private void b0() throws IOException {
        if (this.f93f == null) {
            return;
        }
        this.f90a.write(10);
        int i10 = this.f92c;
        for (int i11 = 1; i11 < i10; i11++) {
            this.f90a.write(this.f93f);
        }
    }

    private void c() throws IOException {
        int iX0 = x0();
        if (iX0 == 5) {
            this.f90a.write(44);
        } else if (iX0 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        b0();
        E0(4);
    }

    private void i() throws IOException {
        int iX0 = x0();
        if (iX0 == 1) {
            E0(2);
            b0();
            return;
        }
        if (iX0 == 2) {
            this.f90a.append(AbstractJsonLexerKt.COMMA);
            b0();
        } else {
            if (iX0 == 4) {
                this.f90a.append((CharSequence) this.f94h);
                E0(5);
                return;
            }
            if (iX0 != 6) {
                if (iX0 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f95i) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            E0(7);
        }
    }

    private c v0(int i10, char c10) throws IOException {
        i();
        D0(i10);
        this.f90a.write(c10);
        return this;
    }

    private c x(int i10, int i11, char c10) throws IOException {
        int iX0 = x0();
        if (iX0 != i11 && iX0 != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f97k != null) {
            throw new IllegalStateException("Dangling name: " + this.f97k);
        }
        this.f92c--;
        if (iX0 == i11) {
            b0();
        }
        this.f90a.write(c10);
        return this;
    }

    private int x0() {
        int i10 = this.f92c;
        if (i10 != 0) {
            return this.f91b[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public c B() {
        return x(1, 2, AbstractJsonLexerKt.END_LIST);
    }

    public c D() {
        return x(3, 5, AbstractJsonLexerKt.END_OBJ);
    }

    public final void F0(boolean z10) {
        this.f96j = z10;
    }

    public final boolean G() {
        return this.f98l;
    }

    public final void G0(String str) {
        if (str.length() == 0) {
            this.f93f = null;
            this.f94h = ":";
        } else {
            this.f93f = str;
            this.f94h = ": ";
        }
    }

    public final void H0(boolean z10) {
        this.f95i = z10;
    }

    public final boolean I() {
        return this.f96j;
    }

    public final void I0(boolean z10) {
        this.f98l = z10;
    }

    public c K0(double d10) throws IOException {
        Q0();
        if (this.f95i || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
            i();
            this.f90a.append((CharSequence) Double.toString(d10));
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
    }

    public c L0(long j10) throws IOException {
        Q0();
        i();
        this.f90a.write(Long.toString(j10));
        return this;
    }

    public c M0(Boolean bool) throws IOException {
        if (bool == null) {
            return q0();
        }
        Q0();
        i();
        this.f90a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public boolean N() {
        return this.f95i;
    }

    public c N0(Number number) throws IOException {
        if (number == null) {
            return q0();
        }
        Q0();
        String string = number.toString();
        if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (!X(cls) && !f87m.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
            }
        } else if (!this.f95i) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + string);
        }
        i();
        this.f90a.append((CharSequence) string);
        return this;
    }

    public c O0(String str) throws IOException {
        if (str == null) {
            return q0();
        }
        Q0();
        i();
        J0(str);
        return this;
    }

    public c P0(boolean z10) throws IOException {
        Q0();
        i();
        this.f90a.write(z10 ? "true" : "false");
        return this;
    }

    public c a0(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f97k != null) {
            throw new IllegalStateException();
        }
        if (this.f92c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f97k = str;
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f90a.close();
        int i10 = this.f92c;
        if (i10 > 1 || (i10 == 1 && this.f91b[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f92c = 0;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f92c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f90a.flush();
    }

    public c k() throws IOException {
        Q0();
        return v0(1, AbstractJsonLexerKt.BEGIN_LIST);
    }

    public c q0() throws IOException {
        if (this.f97k != null) {
            if (!this.f98l) {
                this.f97k = null;
                return this;
            }
            Q0();
        }
        i();
        this.f90a.write(AbstractJsonLexerKt.NULL);
        return this;
    }

    public c v() throws IOException {
        Q0();
        return v0(3, AbstractJsonLexerKt.BEGIN_OBJ);
    }
}
