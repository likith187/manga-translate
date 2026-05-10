package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes.dex */
class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f819a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f820b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f821c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f822d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f823e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f824f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f825g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f826h = false;

    b0() {
    }

    public int a() {
        return this.f825g ? this.f819a : this.f820b;
    }

    public int b() {
        return this.f819a;
    }

    public int c() {
        return this.f820b;
    }

    public int d() {
        return this.f825g ? this.f820b : this.f819a;
    }

    public void e(int i10, int i11) {
        this.f826h = false;
        if (i10 != Integer.MIN_VALUE) {
            this.f823e = i10;
            this.f819a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f824f = i11;
            this.f820b = i11;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f825g) {
            return;
        }
        this.f825g = z10;
        if (!this.f826h) {
            this.f819a = this.f823e;
            this.f820b = this.f824f;
            return;
        }
        if (z10) {
            int i10 = this.f822d;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.f823e;
            }
            this.f819a = i10;
            int i11 = this.f821c;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.f824f;
            }
            this.f820b = i11;
            return;
        }
        int i12 = this.f821c;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.f823e;
        }
        this.f819a = i12;
        int i13 = this.f822d;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.f824f;
        }
        this.f820b = i13;
    }

    public void g(int i10, int i11) {
        this.f821c = i10;
        this.f822d = i11;
        this.f826h = true;
        if (this.f825g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f819a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f820b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f819a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f820b = i11;
        }
    }
}
