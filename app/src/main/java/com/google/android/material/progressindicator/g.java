package com.google.android.material.progressindicator;

import com.google.android.material.progressindicator.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class g {

    /* JADX INFO: renamed from: a */
    protected h f9910a;

    /* JADX INFO: renamed from: b */
    protected final List f9911b = new ArrayList();

    protected g(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f9911b.add(new f.a());
        }
    }

    abstract void a();

    protected float b(int i10, int i11, int i12) {
        return (i10 - i11) / i12;
    }

    public abstract void c();

    public abstract void d(androidx.vectordrawable.graphics.drawable.b bVar);

    protected void e(h hVar) {
        this.f9910a = hVar;
    }

    abstract void f();

    abstract void g();

    public abstract void h();
}
