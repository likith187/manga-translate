package r1;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f15406a = new String[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f15407b = new long[5];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f15408c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f15409d = 0;

    public void a(String str) {
        int i10 = this.f15408c;
        if (i10 == 5) {
            this.f15409d++;
            return;
        }
        this.f15406a[i10] = str;
        this.f15407b[i10] = System.nanoTime();
        z.i.a(str);
        this.f15408c++;
    }

    public float b(String str) {
        int i10 = this.f15409d;
        if (i10 > 0) {
            this.f15409d = i10 - 1;
            return 0.0f;
        }
        int i11 = this.f15408c - 1;
        this.f15408c = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(this.f15406a[i11])) {
            z.i.b();
            return (System.nanoTime() - this.f15407b[this.f15408c]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.f15406a[this.f15408c] + ".");
    }
}
