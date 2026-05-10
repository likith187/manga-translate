package c0;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f4280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4281b;

    public f(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f4280a = new Object[i10];
    }

    private final boolean c(Object obj) {
        int i10 = this.f4281b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f4280a[i11] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // c0.e
    public boolean a(Object instance) {
        r.e(instance, "instance");
        if (c(instance)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i10 = this.f4281b;
        Object[] objArr = this.f4280a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = instance;
        this.f4281b = i10 + 1;
        return true;
    }

    @Override // c0.e
    public Object b() {
        int i10 = this.f4281b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object obj = this.f4280a[i11];
        r.c(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        this.f4280a[i11] = null;
        this.f4281b--;
        return obj;
    }
}
