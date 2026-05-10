package c0;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f4282c;

    public g(int i10) {
        super(i10);
        this.f4282c = new Object();
    }

    @Override // c0.f, c0.e
    public boolean a(Object instance) {
        boolean zA;
        r.e(instance, "instance");
        synchronized (this.f4282c) {
            zA = super.a(instance);
        }
        return zA;
    }

    @Override // c0.f, c0.e
    public Object b() {
        Object objB;
        synchronized (this.f4282c) {
            objB = super.b();
        }
        return objB;
    }
}
