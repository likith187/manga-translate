package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes.dex */
final class b extends c {

    /* JADX INFO: renamed from: a */
    final SideSheetBehavior f10186a;

    b(SideSheetBehavior sideSheetBehavior) {
        this.f10186a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.c
    int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.c
    float b(int i10) {
        float fE = e();
        return (fE - i10) / (fE - d());
    }

    @Override // com.google.android.material.sidesheet.c
    int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.c
    int d() {
        return Math.max(0, (e() - this.f10186a.v()) - this.f10186a.A());
    }

    @Override // com.google.android.material.sidesheet.c
    int e() {
        return this.f10186a.D();
    }

    @Override // com.google.android.material.sidesheet.c
    int f() {
        return this.f10186a.D();
    }

    @Override // com.google.android.material.sidesheet.c
    int g() {
        return d();
    }

    @Override // com.google.android.material.sidesheet.c
    int h(View view) {
        return view.getLeft() - this.f10186a.A();
    }

    @Override // com.google.android.material.sidesheet.c
    public int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // com.google.android.material.sidesheet.c
    int j() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.c
    boolean k(float f10) {
        return f10 < 0.0f;
    }

    @Override // com.google.android.material.sidesheet.c
    boolean l(View view) {
        return view.getLeft() > (e() + d()) / 2;
    }

    @Override // com.google.android.material.sidesheet.c
    boolean m(float f10, float f11) {
        return d.a(f10, f11) && Math.abs(f10) > ((float) this.f10186a.getSignificantVelocityThreshold());
    }

    @Override // com.google.android.material.sidesheet.c
    boolean n(View view, float f10) {
        return Math.abs(((float) view.getRight()) + (f10 * this.f10186a.getHideFriction())) > this.f10186a.z();
    }

    @Override // com.google.android.material.sidesheet.c
    void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        marginLayoutParams.rightMargin = i10;
    }

    @Override // com.google.android.material.sidesheet.c
    void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        int iD = this.f10186a.D();
        if (i10 <= iD) {
            marginLayoutParams.rightMargin = iD - i10;
        }
    }
}
