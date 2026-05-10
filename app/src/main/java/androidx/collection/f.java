package androidx.collection;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class f implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f1055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ long[] f1056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f1057c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ int f1058f;

    public f() {
        this(0, 1, null);
    }

    public void a() {
        int i10 = this.f1058f;
        Object[] objArr = this.f1057c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f1058f = 0;
        this.f1055a = false;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        r.c(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        f fVar = (f) objClone;
        fVar.f1056b = (long[]) this.f1056b.clone();
        fVar.f1057c = (Object[]) this.f1057c.clone();
        return fVar;
    }

    public boolean d(long j10) {
        return f(j10) >= 0;
    }

    public Object e(long j10) {
        int iB = k.a.b(this.f1056b, this.f1058f, j10);
        if (iB < 0 || this.f1057c[iB] == g.f1059a) {
            return null;
        }
        return this.f1057c[iB];
    }

    public int f(long j10) {
        if (this.f1055a) {
            int i10 = this.f1058f;
            long[] jArr = this.f1056b;
            Object[] objArr = this.f1057c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != g.f1059a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f1055a = false;
            this.f1058f = i11;
        }
        return k.a.b(this.f1056b, this.f1058f, j10);
    }

    public boolean g() {
        return l() == 0;
    }

    public long h(int i10) {
        int i11;
        if (i10 < 0 || i10 >= (i11 = this.f1058f)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
        }
        if (this.f1055a) {
            long[] jArr = this.f1056b;
            Object[] objArr = this.f1057c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != g.f1059a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f1055a = false;
            this.f1058f = i12;
        }
        return this.f1056b[i10];
    }

    public void i(long j10, Object obj) {
        int iB = k.a.b(this.f1056b, this.f1058f, j10);
        if (iB >= 0) {
            this.f1057c[iB] = obj;
            return;
        }
        int i10 = ~iB;
        if (i10 < this.f1058f && this.f1057c[i10] == g.f1059a) {
            this.f1056b[i10] = j10;
            this.f1057c[i10] = obj;
            return;
        }
        if (this.f1055a) {
            int i11 = this.f1058f;
            long[] jArr = this.f1056b;
            if (i11 >= jArr.length) {
                Object[] objArr = this.f1057c;
                int i12 = 0;
                for (int i13 = 0; i13 < i11; i13++) {
                    Object obj2 = objArr[i13];
                    if (obj2 != g.f1059a) {
                        if (i13 != i12) {
                            jArr[i12] = jArr[i13];
                            objArr[i12] = obj2;
                            objArr[i13] = null;
                        }
                        i12++;
                    }
                }
                this.f1055a = false;
                this.f1058f = i12;
                i10 = ~k.a.b(this.f1056b, i12, j10);
            }
        }
        int i14 = this.f1058f;
        if (i14 >= this.f1056b.length) {
            int iF = k.a.f(i14 + 1);
            long[] jArrCopyOf = Arrays.copyOf(this.f1056b, iF);
            r.d(jArrCopyOf, "copyOf(this, newSize)");
            this.f1056b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f1057c, iF);
            r.d(objArrCopyOf, "copyOf(this, newSize)");
            this.f1057c = objArrCopyOf;
        }
        int i15 = this.f1058f;
        if (i15 - i10 != 0) {
            long[] jArr2 = this.f1056b;
            int i16 = i10 + 1;
            kotlin.collections.i.j(jArr2, jArr2, i16, i10, i15);
            Object[] objArr2 = this.f1057c;
            kotlin.collections.i.k(objArr2, objArr2, i16, i10, this.f1058f);
        }
        this.f1056b[i10] = j10;
        this.f1057c[i10] = obj;
        this.f1058f++;
    }

    public void j(long j10) {
        int iB = k.a.b(this.f1056b, this.f1058f, j10);
        if (iB < 0 || this.f1057c[iB] == g.f1059a) {
            return;
        }
        this.f1057c[iB] = g.f1059a;
        this.f1055a = true;
    }

    public void k(int i10) {
        if (this.f1057c[i10] != g.f1059a) {
            this.f1057c[i10] = g.f1059a;
            this.f1055a = true;
        }
    }

    public int l() {
        if (this.f1055a) {
            int i10 = this.f1058f;
            long[] jArr = this.f1056b;
            Object[] objArr = this.f1057c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != g.f1059a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f1055a = false;
            this.f1058f = i11;
        }
        return this.f1058f;
    }

    public Object m(int i10) {
        int i11;
        if (i10 < 0 || i10 >= (i11 = this.f1058f)) {
            throw new IllegalArgumentException(("Expected index to be within 0..size()-1, but was " + i10).toString());
        }
        if (this.f1055a) {
            long[] jArr = this.f1056b;
            Object[] objArr = this.f1057c;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj = objArr[i13];
                if (obj != g.f1059a) {
                    if (i13 != i12) {
                        jArr[i12] = jArr[i13];
                        objArr[i12] = obj;
                        objArr[i13] = null;
                    }
                    i12++;
                }
            }
            this.f1055a = false;
            this.f1058f = i12;
        }
        return this.f1057c[i10];
    }

    public String toString() {
        if (l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1058f * 28);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        int i10 = this.f1058f;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            sb.append(h(i11));
            sb.append('=');
            Object objM = m(i11);
            if (objM != sb) {
                sb.append(objM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        r.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public f(int i10) {
        if (i10 == 0) {
            this.f1056b = k.a.f12876b;
            this.f1057c = k.a.f12877c;
        } else {
            int iF = k.a.f(i10);
            this.f1056b = new long[iF];
            this.f1057c = new Object[iF];
        }
    }

    public /* synthetic */ f(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
