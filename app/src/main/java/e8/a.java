package e8;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f11808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f11809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f11810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w8.a f11811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w8.a f11812e;

    public a(f param, e update) {
        r.e(param, "param");
        r.e(update, "update");
        this.f11808a = param;
        this.f11809b = update;
        this.f11810c = param.a();
    }

    @Override // e8.c
    public void b(w8.a cb) {
        r.e(cb, "cb");
        this.f11812e = cb;
    }

    @Override // e8.c
    public void c(w8.a cb) {
        r.e(cb, "cb");
        this.f11811d = cb;
    }

    public final f d() {
        return this.f11808a;
    }

    public void e(Object obj) {
        this.f11810c = obj;
    }

    public void f(Object obj) {
        if (r.a(getValue(), obj)) {
            return;
        }
        e(obj);
        e eVar = this.f11809b;
        String strC = this.f11808a.c();
        r.c(obj, "null cannot be cast to non-null type kotlin.Any");
        eVar.b(strC, obj);
    }

    @Override // e8.c
    public Object getValue() {
        return this.f11810c;
    }
}
