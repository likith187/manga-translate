package org.opencv.core;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Core {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f15048a = d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f15049b = c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f15050c = e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f15051d = f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f15052e = g();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f15053f = h();

    public static void a(Mat mat, Mat mat2, Mat mat3) {
        add_2(mat.f15054a, mat2.f15054a, mat3.f15054a);
    }

    private static native void add_2(long j10, long j11, long j12);

    public static String b() {
        return getBuildInformation_0();
    }

    private static String c() {
        return "opencv_java460";
    }

    private static String d() {
        return "4.6.0";
    }

    private static int e() {
        return 4;
    }

    private static int f() {
        return 6;
    }

    private static int g() {
        return 0;
    }

    private static native String getBuildInformation_0();

    private static String h() {
        return "";
    }
}
