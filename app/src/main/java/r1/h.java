package r1;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f15421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f15422b;

    public void a(float f10) {
        float f11 = this.f15421a + f10;
        this.f15421a = f11;
        int i10 = this.f15422b + 1;
        this.f15422b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f15421a = f11 / 2.0f;
            this.f15422b = i10 / 2;
        }
    }
}
