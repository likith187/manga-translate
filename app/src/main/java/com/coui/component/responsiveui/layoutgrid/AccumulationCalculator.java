package com.coui.component.responsiveui.layoutgrid;

import com.coui.component.responsiveui.unit.Dp;
import kotlin.collections.i;
import kotlin.jvm.internal.r;
import y8.a;

/* JADX INFO: loaded from: classes.dex */
public final class AccumulationCalculator implements IColumnsWidthCalculator {
    @Override // com.coui.component.responsiveui.layoutgrid.IColumnsWidthCalculator
    public Dp[] calculate(Dp layoutGridWidth, Dp margin, Dp gutter, int i10) {
        r.e(layoutGridWidth, "layoutGridWidth");
        r.e(margin, "margin");
        r.e(gutter, "gutter");
        Dp[] dpArr = new Dp[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            dpArr[i12] = new Dp(0.0f);
        }
        float f10 = i10 - 1;
        if (((double) (gutter.getValue() * f10)) + (((double) margin.getValue()) * 2.0d) > layoutGridWidth.getValue()) {
            return dpArr;
        }
        double value = ((((double) layoutGridWidth.getValue()) - (((double) margin.getValue()) * 2.0d)) - ((double) (f10 * gutter.getValue()))) / ((double) i10);
        int iG = i.G(dpArr);
        if (iG >= 0) {
            double d10 = 0.0d;
            while (true) {
                int i13 = i11 + 1;
                int iA = a.a((((double) i13) * value) - d10);
                dpArr[i11] = new Dp(iA);
                d10 += (double) iA;
                if (i11 == iG) {
                    break;
                }
                i11 = i13;
            }
        }
        return dpArr;
    }

    @Override // com.coui.component.responsiveui.layoutgrid.IColumnsWidthCalculator
    public int[] calculate(int i10, int i11, int i12, int i13) {
        int[] iArr = new int[i13];
        double d10 = (i13 - 1) * i12;
        double d11 = ((double) i11) * 2.0d;
        double d12 = i10;
        if (d10 + d11 > d12) {
            return iArr;
        }
        double d13 = ((d12 - d11) - d10) / ((double) i13);
        int iE = i.E(iArr);
        if (iE >= 0) {
            double d14 = 0.0d;
            int i14 = 0;
            while (true) {
                int i15 = i14 + 1;
                int iA = a.a((((double) i15) * d13) - d14);
                iArr[i14] = iA;
                d14 += (double) iA;
                if (i14 == iE) {
                    break;
                }
                i14 = i15;
            }
        }
        return iArr;
    }
}
