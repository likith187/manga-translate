package androidx.recyclerview.widget;

/* JADX INFO: loaded from: classes.dex */
public class e implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final r f3289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f3290b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3291c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3292d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f3293e = null;

    public e(r rVar) {
        this.f3289a = rVar;
    }

    @Override // androidx.recyclerview.widget.r
    public void a(int i10, int i11) {
        int i12;
        if (this.f3290b == 2 && (i12 = this.f3291c) >= i10 && i12 <= i10 + i11) {
            this.f3292d += i11;
            this.f3291c = i10;
        } else {
            e();
            this.f3291c = i10;
            this.f3292d = i11;
            this.f3290b = 2;
        }
    }

    @Override // androidx.recyclerview.widget.r
    public void b(int i10, int i11) {
        e();
        this.f3289a.b(i10, i11);
    }

    @Override // androidx.recyclerview.widget.r
    public void c(int i10, int i11) {
        int i12;
        if (this.f3290b == 1 && i10 >= (i12 = this.f3291c)) {
            int i13 = this.f3292d;
            if (i10 <= i12 + i13) {
                this.f3292d = i13 + i11;
                this.f3291c = Math.min(i10, i12);
                return;
            }
        }
        e();
        this.f3291c = i10;
        this.f3292d = i11;
        this.f3290b = 1;
    }

    @Override // androidx.recyclerview.widget.r
    public void d(int i10, int i11, Object obj) {
        int i12;
        if (this.f3290b == 3) {
            int i13 = this.f3291c;
            int i14 = this.f3292d;
            if (i10 <= i13 + i14 && (i12 = i10 + i11) >= i13 && this.f3293e == obj) {
                this.f3291c = Math.min(i10, i13);
                this.f3292d = Math.max(i14 + i13, i12) - this.f3291c;
                return;
            }
        }
        e();
        this.f3291c = i10;
        this.f3292d = i11;
        this.f3293e = obj;
        this.f3290b = 3;
    }

    public void e() {
        int i10 = this.f3290b;
        if (i10 == 0) {
            return;
        }
        if (i10 == 1) {
            this.f3289a.c(this.f3291c, this.f3292d);
        } else if (i10 == 2) {
            this.f3289a.a(this.f3291c, this.f3292d);
        } else if (i10 == 3) {
            this.f3289a.d(this.f3291c, this.f3292d, this.f3293e);
        }
        this.f3293e = null;
        this.f3290b = 0;
    }
}
