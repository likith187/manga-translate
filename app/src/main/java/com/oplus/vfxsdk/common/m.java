package com.oplus.vfxsdk.common;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f11281a = {0.0f, 0.6f, 0.0f};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float[] f11282b = {0.3f, 0.0f, 0.1f, 1.0f};

    public static final void a(float[] bezier) {
        kotlin.jvm.internal.r.e(bezier, "bezier");
        int length = bezier.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 % 2 == 0) {
                float f10 = bezier[i10];
                if (f10 < 0.0f) {
                    f10 = 0.0f;
                }
                bezier[i10] = f10;
            }
        }
    }

    public static final float[] b() {
        return f11282b;
    }

    public static final float[] c() {
        return f11281a;
    }
}
