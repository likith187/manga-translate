package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f13268a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f13268a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
