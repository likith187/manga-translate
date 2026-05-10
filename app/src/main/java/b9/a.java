package b9;

import kotlin.collections.h0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Iterable, x8.a {

    /* JADX INFO: renamed from: f */
    public static final C0053a f4263f = new C0053a(null);

    /* JADX INFO: renamed from: a */
    private final int f4264a;

    /* JADX INFO: renamed from: b */
    private final int f4265b;

    /* JADX INFO: renamed from: c */
    private final int f4266c;

    /* JADX INFO: renamed from: b9.a$a */
    public static final class C0053a {
        public /* synthetic */ C0053a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(int i10, int i11, int i12) {
            return new a(i10, i11, i12);
        }

        private C0053a() {
        }
    }

    public a(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i12 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f4264a = i10;
        this.f4265b = s8.c.b(i10, i11, i12);
        this.f4266c = i12;
    }

    public final int a() {
        return this.f4264a;
    }

    public final int c() {
        return this.f4265b;
    }

    public final int d() {
        return this.f4266c;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: e */
    public h0 iterator() {
        return new b(this.f4264a, this.f4265b, this.f4266c);
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (this.f4264a != aVar.f4264a || this.f4265b != aVar.f4265b || this.f4266c != aVar.f4266c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.f4266c + (((this.f4264a * 31) + this.f4265b) * 31);
    }

    public boolean isEmpty() {
        if (this.f4266c > 0) {
            if (this.f4264a <= this.f4265b) {
                return false;
            }
        } else if (this.f4264a >= this.f4265b) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb;
        int i10;
        if (this.f4266c > 0) {
            sb = new StringBuilder();
            sb.append(this.f4264a);
            sb.append("..");
            sb.append(this.f4265b);
            sb.append(" step ");
            i10 = this.f4266c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f4264a);
            sb.append(" downTo ");
            sb.append(this.f4265b);
            sb.append(" step ");
            i10 = -this.f4266c;
        }
        sb.append(i10);
        return sb.toString();
    }
}
