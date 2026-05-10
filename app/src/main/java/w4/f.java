package w4;

import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class f extends a5.a {

    /* JADX INFO: renamed from: w */
    private static final Reader f16032w = new a();

    /* JADX INFO: renamed from: x */
    private static final Object f16033x = new Object();

    /* JADX INFO: renamed from: s */
    private Object[] f16034s;

    /* JADX INFO: renamed from: t */
    private int f16035t;

    /* JADX INFO: renamed from: u */
    private String[] f16036u;

    /* JADX INFO: renamed from: v */
    private int[] f16037v;

    class a extends Reader {
        a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f16038a;

        static {
            int[] iArr = new int[a5.b.values().length];
            f16038a = iArr;
            try {
                iArr[a5.b.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16038a[a5.b.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16038a[a5.b.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16038a[a5.b.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public f(com.google.gson.i iVar) {
        super(f16032w);
        this.f16034s = new Object[32];
        this.f16035t = 0;
        this.f16036u = new String[32];
        this.f16037v = new int[32];
        d1(iVar);
    }

    private String I(boolean z10) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f16035t;
            if (i10 >= i11) {
                return sb.toString();
            }
            Object[] objArr = this.f16034s;
            Object obj = objArr[i10];
            if (obj instanceof com.google.gson.f) {
                i10++;
                if (i10 < i11 && (objArr[i10] instanceof Iterator)) {
                    int i12 = this.f16037v[i10];
                    if (z10 && i12 > 0 && (i10 == i11 - 1 || i10 == i11 - 2)) {
                        i12--;
                    }
                    sb.append(AbstractJsonLexerKt.BEGIN_LIST);
                    sb.append(i12);
                    sb.append(AbstractJsonLexerKt.END_LIST);
                }
            } else if ((obj instanceof com.google.gson.l) && (i10 = i10 + 1) < i11 && (objArr[i10] instanceof Iterator)) {
                sb.append('.');
                String str = this.f16036u[i10];
                if (str != null) {
                    sb.append(str);
                }
            }
            i10++;
        }
    }

    private void X0(a5.b bVar) {
        if (L0() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + L0() + q0());
    }

    private String Z0(boolean z10) {
        X0(a5.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a1()).next();
        String str = (String) entry.getKey();
        this.f16036u[this.f16035t - 1] = z10 ? "<skipped>" : str;
        d1(entry.getValue());
        return str;
    }

    private Object a1() {
        return this.f16034s[this.f16035t - 1];
    }

    private Object b1() {
        Object[] objArr = this.f16034s;
        int i10 = this.f16035t - 1;
        this.f16035t = i10;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    private void d1(Object obj) {
        int i10 = this.f16035t;
        Object[] objArr = this.f16034s;
        if (i10 == objArr.length) {
            int i11 = i10 * 2;
            this.f16034s = Arrays.copyOf(objArr, i11);
            this.f16037v = Arrays.copyOf(this.f16037v, i11);
            this.f16036u = (String[]) Arrays.copyOf(this.f16036u, i11);
        }
        Object[] objArr2 = this.f16034s;
        int i12 = this.f16035t;
        this.f16035t = i12 + 1;
        objArr2[i12] = obj;
    }

    private String q0() {
        return " at path " + a();
    }

    @Override // a5.a
    public void B() {
        X0(a5.b.END_ARRAY);
        b1();
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // a5.a
    public void D() {
        X0(a5.b.END_OBJECT);
        this.f16036u[this.f16035t - 1] = null;
        b1();
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // a5.a
    public int D0() throws a5.d {
        a5.b bVarL0 = L0();
        a5.b bVar = a5.b.NUMBER;
        if (bVarL0 != bVar && bVarL0 != a5.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarL0 + q0());
        }
        int iC = ((com.google.gson.o) a1()).c();
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return iC;
    }

    @Override // a5.a
    public long E0() throws a5.d {
        a5.b bVarL0 = L0();
        a5.b bVar = a5.b.NUMBER;
        if (bVarL0 != bVar && bVarL0 != a5.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarL0 + q0());
        }
        long jG = ((com.google.gson.o) a1()).g();
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return jG;
    }

    @Override // a5.a
    public String F0() {
        return Z0(false);
    }

    @Override // a5.a
    public void H0() {
        X0(a5.b.NULL);
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
    }

    @Override // a5.a
    public String J0() throws a5.d {
        a5.b bVarL0 = L0();
        a5.b bVar = a5.b.STRING;
        if (bVarL0 == bVar || bVarL0 == a5.b.NUMBER) {
            String strH = ((com.google.gson.o) b1()).h();
            int i10 = this.f16035t;
            if (i10 > 0) {
                int[] iArr = this.f16037v;
                int i11 = i10 - 1;
                iArr[i11] = iArr[i11] + 1;
            }
            return strH;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + bVarL0 + q0());
    }

    @Override // a5.a
    public a5.b L0() throws a5.d {
        if (this.f16035t == 0) {
            return a5.b.END_DOCUMENT;
        }
        Object objA1 = a1();
        if (objA1 instanceof Iterator) {
            boolean z10 = this.f16034s[this.f16035t - 2] instanceof com.google.gson.l;
            Iterator it = (Iterator) objA1;
            if (!it.hasNext()) {
                return z10 ? a5.b.END_OBJECT : a5.b.END_ARRAY;
            }
            if (z10) {
                return a5.b.NAME;
            }
            d1(it.next());
            return L0();
        }
        if (objA1 instanceof com.google.gson.l) {
            return a5.b.BEGIN_OBJECT;
        }
        if (objA1 instanceof com.google.gson.f) {
            return a5.b.BEGIN_ARRAY;
        }
        if (objA1 instanceof com.google.gson.o) {
            com.google.gson.o oVar = (com.google.gson.o) objA1;
            if (oVar.q()) {
                return a5.b.STRING;
            }
            if (oVar.n()) {
                return a5.b.BOOLEAN;
            }
            if (oVar.p()) {
                return a5.b.NUMBER;
            }
            throw new AssertionError();
        }
        if (objA1 instanceof com.google.gson.k) {
            return a5.b.NULL;
        }
        if (objA1 == f16033x) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new a5.d("Custom JsonElement subclass " + objA1.getClass().getName() + " is not supported");
    }

    @Override // a5.a
    public String N() {
        return I(true);
    }

    @Override // a5.a
    public void V0() throws a5.d {
        int i10 = b.f16038a[L0().ordinal()];
        if (i10 == 1) {
            Z0(true);
            return;
        }
        if (i10 == 2) {
            B();
            return;
        }
        if (i10 == 3) {
            D();
            return;
        }
        if (i10 != 4) {
            b1();
            int i11 = this.f16035t;
            if (i11 > 0) {
                int[] iArr = this.f16037v;
                int i12 = i11 - 1;
                iArr[i12] = iArr[i12] + 1;
            }
        }
    }

    @Override // a5.a
    public boolean X() throws a5.d {
        a5.b bVarL0 = L0();
        return (bVarL0 == a5.b.END_OBJECT || bVarL0 == a5.b.END_ARRAY || bVarL0 == a5.b.END_DOCUMENT) ? false : true;
    }

    com.google.gson.i Y0() throws a5.d {
        a5.b bVarL0 = L0();
        if (bVarL0 != a5.b.NAME && bVarL0 != a5.b.END_ARRAY && bVarL0 != a5.b.END_OBJECT && bVarL0 != a5.b.END_DOCUMENT) {
            com.google.gson.i iVar = (com.google.gson.i) a1();
            V0();
            return iVar;
        }
        throw new IllegalStateException("Unexpected " + bVarL0 + " when reading a JsonElement.");
    }

    @Override // a5.a
    public String a() {
        return I(false);
    }

    @Override // a5.a
    public void c() {
        X0(a5.b.BEGIN_ARRAY);
        d1(((com.google.gson.f) a1()).iterator());
        this.f16037v[this.f16035t - 1] = 0;
    }

    public void c1() {
        X0(a5.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) a1()).next();
        d1(entry.getValue());
        d1(new com.google.gson.o((String) entry.getKey()));
    }

    @Override // a5.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f16034s = new Object[]{f16033x};
        this.f16035t = 1;
    }

    @Override // a5.a
    public void i() {
        X0(a5.b.BEGIN_OBJECT);
        d1(((com.google.gson.l) a1()).o().iterator());
    }

    @Override // a5.a
    public String toString() {
        return f.class.getSimpleName() + q0();
    }

    @Override // a5.a
    public boolean v0() {
        X0(a5.b.BOOLEAN);
        boolean zA = ((com.google.gson.o) b1()).a();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return zA;
    }

    @Override // a5.a
    public double x0() throws a5.d {
        a5.b bVarL0 = L0();
        a5.b bVar = a5.b.NUMBER;
        if (bVarL0 != bVar && bVarL0 != a5.b.STRING) {
            throw new IllegalStateException("Expected " + bVar + " but was " + bVarL0 + q0());
        }
        double dB = ((com.google.gson.o) a1()).b();
        if (!a0() && (Double.isNaN(dB) || Double.isInfinite(dB))) {
            throw new a5.d("JSON forbids NaN and infinities: " + dB);
        }
        b1();
        int i10 = this.f16035t;
        if (i10 > 0) {
            int[] iArr = this.f16037v;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
        }
        return dB;
    }
}
