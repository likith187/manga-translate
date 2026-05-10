package androidx.collection;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class j implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f1063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ int[] f1064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f1065c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ int f1066f;

    public j() {
        this(0, 1, null);
    }

    public void a(int i10, Object obj) {
        int i11 = this.f1066f;
        if (i11 != 0 && i10 <= this.f1064b[i11 - 1]) {
            h(i10, obj);
            return;
        }
        if (this.f1063a && i11 >= this.f1064b.length) {
            k.d(this);
        }
        int i12 = this.f1066f;
        if (i12 >= this.f1064b.length) {
            int iE = k.a.e(i12 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f1064b, iE);
            r.d(iArrCopyOf, "copyOf(this, newSize)");
            this.f1064b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f1065c, iE);
            r.d(objArrCopyOf, "copyOf(this, newSize)");
            this.f1065c = objArrCopyOf;
        }
        this.f1064b[i12] = i10;
        this.f1065c[i12] = obj;
        this.f1066f = i12 + 1;
    }

    public void b() {
        int i10 = this.f1066f;
        Object[] objArr = this.f1065c;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f1066f = 0;
        this.f1063a = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public j clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        r.c(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        j jVar = (j) objClone;
        jVar.f1064b = (int[]) this.f1064b.clone();
        jVar.f1065c = (Object[]) this.f1065c.clone();
        return jVar;
    }

    public Object e(int i10) {
        return k.c(this, i10);
    }

    public int f(Object obj) {
        if (this.f1063a) {
            k.d(this);
        }
        int i10 = this.f1066f;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f1065c[i11] == obj) {
                return i11;
            }
        }
        return -1;
    }

    public int g(int i10) {
        if (this.f1063a) {
            k.d(this);
        }
        return this.f1064b[i10];
    }

    public void h(int i10, Object obj) {
        int iA = k.a.a(this.f1064b, this.f1066f, i10);
        if (iA >= 0) {
            this.f1065c[iA] = obj;
            return;
        }
        int i11 = ~iA;
        if (i11 < this.f1066f && this.f1065c[i11] == k.f1067a) {
            this.f1064b[i11] = i10;
            this.f1065c[i11] = obj;
            return;
        }
        if (this.f1063a && this.f1066f >= this.f1064b.length) {
            k.d(this);
            i11 = ~k.a.a(this.f1064b, this.f1066f, i10);
        }
        int i12 = this.f1066f;
        if (i12 >= this.f1064b.length) {
            int iE = k.a.e(i12 + 1);
            int[] iArrCopyOf = Arrays.copyOf(this.f1064b, iE);
            r.d(iArrCopyOf, "copyOf(this, newSize)");
            this.f1064b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f1065c, iE);
            r.d(objArrCopyOf, "copyOf(this, newSize)");
            this.f1065c = objArrCopyOf;
        }
        int i13 = this.f1066f;
        if (i13 - i11 != 0) {
            int[] iArr = this.f1064b;
            int i14 = i11 + 1;
            kotlin.collections.i.i(iArr, iArr, i14, i11, i13);
            Object[] objArr = this.f1065c;
            kotlin.collections.i.k(objArr, objArr, i14, i11, this.f1066f);
        }
        this.f1064b[i11] = i10;
        this.f1065c[i11] = obj;
        this.f1066f++;
    }

    public int i() {
        if (this.f1063a) {
            k.d(this);
        }
        return this.f1066f;
    }

    public Object j(int i10) {
        if (this.f1063a) {
            k.d(this);
        }
        return this.f1065c[i10];
    }

    public String toString() {
        if (i() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1066f * 28);
        sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
        int i10 = this.f1066f;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            sb.append(g(i11));
            sb.append('=');
            Object objJ = j(i11);
            if (objJ != this) {
                sb.append(objJ);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(AbstractJsonLexerKt.END_OBJ);
        String string = sb.toString();
        r.d(string, "buffer.toString()");
        return string;
    }

    public j(int i10) {
        if (i10 == 0) {
            this.f1064b = k.a.f12875a;
            this.f1065c = k.a.f12877c;
        } else {
            int iE = k.a.e(i10);
            this.f1064b = new int[iE];
            this.f1065c = new Object[iE];
        }
    }

    public /* synthetic */ j(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 10 : i10);
    }
}
