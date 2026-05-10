package o4;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class e implements u4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f14399a;

    private e(String str) {
        this.f14399a = str;
    }

    public static u4.b a(String str) {
        return new e(str);
    }

    @Override // u4.b
    public Object get() {
        return f.c(this.f14399a);
    }
}
