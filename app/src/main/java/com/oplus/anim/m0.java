package com.oplus.anim;

/* JADX INFO: loaded from: classes2.dex */
public enum m0 {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f11059a;

        static {
            int[] iArr = new int[m0.values().length];
            f11059a = iArr;
            try {
                iArr[m0.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11059a[m0.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11059a[m0.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean useSoftwareRendering(int i10, boolean z10, int i11) {
        int i12 = a.f11059a[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 != 2) {
            return (z10 && i10 < 28) || i11 > 4 || i10 <= 25;
        }
        return true;
    }
}
