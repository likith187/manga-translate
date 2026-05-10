package d9;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f11672a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal[] f11673b;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i10 = 0; i10 < 4; i10++) {
            threadLocalArr[i10] = new ThreadLocal();
        }
        f11673b = threadLocalArr;
    }

    public static final boolean a() {
        return f11672a;
    }
}
