package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class i extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f9245d = {1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f9246e = {1, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9247c = 0;

    @Override // com.google.android.material.carousel.d
    f g(b bVar, View view) {
        float fC = bVar.c();
        if (bVar.d()) {
            fC = bVar.a();
        }
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (bVar.d()) {
            f10 = ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f11 = f10;
        float fD = d() + f11;
        float fMax = Math.max(c() + f11, fD);
        float fMin = Math.min(measuredHeight + f11, fC);
        float fA = x.a.a((measuredHeight / 3.0f) + f11, fD + f11, fMax + f11);
        float f12 = (fMin + fA) / 2.0f;
        int[] iArrA = f9245d;
        if (fC < 2.0f * fD) {
            iArrA = new int[]{0};
        }
        int[] iArrA2 = f9246e;
        if (bVar.b() == 1) {
            iArrA = d.a(iArrA);
            iArrA2 = d.a(iArrA2);
        }
        int[] iArr = iArrA;
        int[] iArr2 = iArrA2;
        int iMax = (int) Math.max(1.0d, Math.floor(((fC - (e.i(iArr2) * f12)) - (e.i(iArr) * fMax)) / fMin));
        int iCeil = (int) Math.ceil(fC / fMin);
        int i10 = (iCeil - iMax) + 1;
        int[] iArr3 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr3[i11] = iCeil - i11;
        }
        a aVarC = a.c(fC, fA, fD, fMax, iArr, f12, iArr2, fMin, iArr3);
        this.f9247c = aVarC.e();
        if (i(aVarC, bVar.getItemCount())) {
            aVarC = a.c(fC, fA, fD, fMax, new int[]{aVarC.f9206c}, f12, new int[]{aVarC.f9207d}, fMin, new int[]{aVarC.f9210g});
        }
        return e.d(view.getContext(), f11, fC, aVarC, bVar.b());
    }

    @Override // com.google.android.material.carousel.d
    boolean h(b bVar, int i10) {
        return (i10 < this.f9247c && bVar.getItemCount() >= this.f9247c) || (i10 >= this.f9247c && bVar.getItemCount() < this.f9247c);
    }

    boolean i(a aVar, int i10) {
        int iE = aVar.e() - i10;
        boolean z10 = iE > 0 && (aVar.f9206c > 0 || aVar.f9207d > 1);
        while (iE > 0) {
            int i11 = aVar.f9206c;
            if (i11 > 0) {
                aVar.f9206c = i11 - 1;
            } else {
                int i12 = aVar.f9207d;
                if (i12 > 1) {
                    aVar.f9207d = i12 - 1;
                }
            }
            iE--;
        }
        return z10;
    }
}
