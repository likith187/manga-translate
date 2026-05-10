package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f3471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f3472b = new a();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3473a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3474b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3475c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3476d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3477e;

        a() {
        }

        void a(int i10) {
            this.f3473a = i10 | this.f3473a;
        }

        boolean b() {
            int i10 = this.f3473a;
            if ((i10 & 7) != 0 && (i10 & c(this.f3476d, this.f3474b)) == 0) {
                return false;
            }
            int i11 = this.f3473a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f3476d, this.f3475c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f3473a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f3477e, this.f3474b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f3473a;
            return (i13 & 28672) == 0 || ((c(this.f3477e, this.f3475c) << 12) & i13) != 0;
        }

        int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        void d() {
            this.f3473a = 0;
        }

        void e(int i10, int i11, int i12, int i13) {
            this.f3474b = i10;
            this.f3475c = i11;
            this.f3476d = i12;
            this.f3477e = i13;
        }
    }

    interface b {
        View a(int i10);

        int b();

        int c(View view);

        int d();

        int e(View view);
    }

    z(b bVar) {
        this.f3471a = bVar;
    }

    View a(int i10, int i11, int i12, int i13) {
        int iD = this.f3471a.d();
        int iB = this.f3471a.b();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View viewA = this.f3471a.a(i10);
            this.f3472b.e(iD, iB, this.f3471a.c(viewA), this.f3471a.e(viewA));
            if (i12 != 0) {
                this.f3472b.d();
                this.f3472b.a(i12);
                if (this.f3472b.b()) {
                    return viewA;
                }
            }
            if (i13 != 0) {
                this.f3472b.d();
                this.f3472b.a(i13);
                if (this.f3472b.b()) {
                    view = viewA;
                }
            }
            i10 += i14;
        }
        return view;
    }

    boolean b(View view, int i10) {
        this.f3472b.e(this.f3471a.d(), this.f3471a.b(), this.f3471a.c(view), this.f3471a.e(view));
        if (i10 == 0) {
            return false;
        }
        this.f3472b.d();
        this.f3472b.a(i10);
        return this.f3472b.b();
    }
}
