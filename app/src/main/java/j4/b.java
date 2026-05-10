package j4;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.StateSet;
import u.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f12752a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f12753b = {16842919};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f12754c = {16843623, 16842908};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f12755d = {16842908};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f12756e = {16843623};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f12757f = {16842913, 16842919};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f12758g = {16842913, 16843623, 16842908};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f12759h = {16842913, 16842908};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f12760i = {16842913, 16843623};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f12761j = {16842913};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f12762k = {16842910, 16842919};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f12763l = b.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        if (f12752a) {
            int[] iArr = f12755d;
            return new ColorStateList(new int[][]{f12761j, iArr, StateSet.NOTHING}, new int[]{c(colorStateList, f12757f), c(colorStateList, iArr), c(colorStateList, f12753b)});
        }
        int[] iArr2 = f12757f;
        int[] iArr3 = f12758g;
        int[] iArr4 = f12759h;
        int[] iArr5 = f12760i;
        int[] iArr6 = f12753b;
        int[] iArr7 = f12754c;
        int[] iArr8 = f12755d;
        int[] iArr9 = f12756e;
        return new ColorStateList(new int[][]{iArr2, iArr3, iArr4, iArr5, f12761j, iArr6, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{c(colorStateList, iArr2), c(colorStateList, iArr3), c(colorStateList, iArr4), c(colorStateList, iArr5), 0, c(colorStateList, iArr6), c(colorStateList, iArr7), c(colorStateList, iArr8), c(colorStateList, iArr9), 0});
    }

    private static int b(int i10) {
        return d.u(i10, Math.min(Color.alpha(i10) * 2, 255));
    }

    private static int c(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f12752a ? b(colorForState) : colorForState;
    }

    public static ColorStateList d(ColorStateList colorStateList) {
        return colorStateList != null ? colorStateList : ColorStateList.valueOf(0);
    }

    public static boolean e(int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z10 = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
