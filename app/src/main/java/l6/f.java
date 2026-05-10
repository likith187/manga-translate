package l6;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f13620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f13621b;

    public void a(float f10) {
        float f11 = this.f13620a + f10;
        this.f13620a = f11;
        int i10 = this.f13621b + 1;
        this.f13621b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f13620a = f11 / 2.0f;
            this.f13621b = i10 / 2;
        }
    }
}
