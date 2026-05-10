package androidx.lifecycle;

import androidx.lifecycle.d;
import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
class f0 implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.a f2773b;

    f0(Object obj) {
        this.f2772a = obj;
        this.f2773b = d.f2752c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.p
    public void onStateChanged(s sVar, l.a aVar) {
        this.f2773b.a(sVar, aVar, this.f2772a);
    }
}
