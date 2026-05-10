package androidx.core.view.insets;

import android.graphics.RectF;
import androidx.appcompat.app.t;
import androidx.core.view.insets.d;
import java.util.ArrayList;
import java.util.List;
import u.e;

/* JADX INFO: loaded from: classes.dex */
class a implements d.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f2062a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f2063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f2064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f2065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2067f;

    a(d dVar, List list) {
        e eVar = e.f15806e;
        this.f2064c = eVar;
        this.f2065d = eVar;
        e(list, false);
        e(list, true);
        dVar.g(this);
        this.f2063b = dVar;
    }

    private void e(List list, boolean z10) {
        if (list.size() <= 0) {
            return;
        }
        t.a(list.get(0));
        throw null;
    }

    private void i() {
        e eVar = e.f15806e;
        int size = this.f2062a.size() - 1;
        if (size < 0) {
            return;
        }
        t.a(this.f2062a.get(size));
        throw null;
    }

    @Override // androidx.core.view.insets.d.c
    public void a(int i10) {
        int size = this.f2062a.size() - 1;
        if (size < 0) {
            return;
        }
        t.a(this.f2062a.get(size));
        throw null;
    }

    @Override // androidx.core.view.insets.d.c
    public void b(int i10, e eVar, RectF rectF) {
        int size = this.f2062a.size() - 1;
        if (size < 0) {
            return;
        }
        t.a(this.f2062a.get(size));
        throw null;
    }

    @Override // androidx.core.view.insets.d.c
    public void c(e eVar, e eVar2) {
        this.f2064c = eVar;
        this.f2065d = eVar2;
        i();
    }

    @Override // androidx.core.view.insets.d.c
    public void d() {
        this.f2066e++;
    }

    void f() {
        if (this.f2067f) {
            return;
        }
        this.f2067f = true;
        this.f2063b.n(this);
        int size = this.f2062a.size() - 1;
        if (size < 0) {
            this.f2062a.clear();
        } else {
            t.a(this.f2062a.get(size));
            throw null;
        }
    }

    f0.a g(int i10) {
        t.a(this.f2062a.get(i10));
        return null;
    }

    int h() {
        return this.f2062a.size();
    }

    @Override // androidx.core.view.insets.d.c
    public void onAnimationEnd() {
        int i10 = this.f2066e;
        boolean z10 = i10 > 0;
        int i11 = i10 - 1;
        this.f2066e = i11;
        if (z10 && i11 == 0) {
            i();
        }
    }
}
