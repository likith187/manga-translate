package s1;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f15526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j1.a f15527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Object f15528c;

    public c() {
        this.f15526a = new b();
        this.f15528c = null;
    }

    public Object a(b bVar) {
        return this.f15528c;
    }

    public final Object b(float f10, float f11, Object obj, Object obj2, float f12, float f13, float f14) {
        return a(this.f15526a.h(f10, f11, obj, obj2, f12, f13, f14));
    }

    public final void c(j1.a aVar) {
        this.f15527b = aVar;
    }

    public c(Object obj) {
        this.f15526a = new b();
        this.f15528c = obj;
    }
}
