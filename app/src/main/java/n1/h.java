package n1;

/* JADX INFO: loaded from: classes.dex */
public enum h {
    NORMAL,
    MULTIPLY,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOR_DODGE,
    COLOR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY,
    ADD,
    HARD_MIX;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f13980a;

        static {
            int[] iArr = new int[h.values().length];
            f13980a = iArr;
            try {
                iArr[h.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13980a[h.SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13980a[h.OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13980a[h.DARKEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13980a[h.LIGHTEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13980a[h.ADD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13980a[h.MULTIPLY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13980a[h.COLOR_DODGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f13980a[h.COLOR_BURN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f13980a[h.HARD_LIGHT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f13980a[h.SOFT_LIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f13980a[h.DIFFERENCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f13980a[h.EXCLUSION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f13980a[h.HUE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f13980a[h.SATURATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f13980a[h.COLOR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f13980a[h.LUMINOSITY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f13980a[h.HARD_MIX.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public u.a toNativeBlendMode() {
        int i10 = a.f13980a[ordinal()];
        if (i10 == 2) {
            return u.a.SCREEN;
        }
        if (i10 == 3) {
            return u.a.OVERLAY;
        }
        if (i10 == 4) {
            return u.a.DARKEN;
        }
        if (i10 == 5) {
            return u.a.LIGHTEN;
        }
        if (i10 != 6) {
            return null;
        }
        return u.a.PLUS;
    }
}
