package com.airbnb.lottie;

/* JADX INFO: loaded from: classes.dex */
public enum r0 {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4692a;

        static {
            int[] iArr = new int[r0.values().length];
            f4692a = iArr;
            try {
                iArr[r0.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4692a[r0.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4692a[r0.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean useSoftwareRendering(int i10, boolean z10, int i11) {
        int i12 = a.f4692a[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 != 2) {
            return (z10 && i10 < 28) || i11 > 4 || i10 <= 25;
        }
        return true;
    }
}
