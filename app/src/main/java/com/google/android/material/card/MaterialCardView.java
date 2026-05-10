package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.cardview.widget.CardView;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;

/* JADX INFO: loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, r {

    /* JADX INFO: renamed from: q */
    private static final int[] f9139q = {R.attr.state_checkable};

    /* JADX INFO: renamed from: r */
    private static final int[] f9140r = {R.attr.state_checked};

    /* JADX INFO: renamed from: s */
    private static final int[] f9141s = {R$attr.state_dragged};

    /* JADX INFO: renamed from: t */
    private static final int f9142t = R$style.Widget_MaterialComponents_CardView;

    /* JADX INFO: renamed from: m */
    private final b f9143m;

    /* JADX INFO: renamed from: n */
    private boolean f9144n;

    /* JADX INFO: renamed from: o */
    private boolean f9145o;

    /* JADX INFO: renamed from: p */
    private boolean f9146p;

    public interface a {
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f9143m.l().getBounds());
        return rectF;
    }

    private void h() {
        this.f9143m.k();
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f9143m.m();
    }

    public ColorStateList getCardForegroundColor() {
        return this.f9143m.n();
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f9143m.o();
    }

    public int getCheckedIconGravity() {
        return this.f9143m.p();
    }

    public int getCheckedIconMargin() {
        return this.f9143m.q();
    }

    public int getCheckedIconSize() {
        return this.f9143m.r();
    }

    public ColorStateList getCheckedIconTint() {
        return this.f9143m.s();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f9143m.C().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f9143m.C().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f9143m.C().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f9143m.C().top;
    }

    public float getProgress() {
        return this.f9143m.w();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f9143m.u();
    }

    public ColorStateList getRippleColor() {
        return this.f9143m.x();
    }

    public n getShapeAppearanceModel() {
        return this.f9143m.y();
    }

    @Deprecated
    public int getStrokeColor() {
        return this.f9143m.z();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f9143m.A();
    }

    public int getStrokeWidth() {
        return this.f9143m.B();
    }

    public boolean i() {
        b bVar = this.f9143m;
        return bVar != null && bVar.F();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f9145o;
    }

    public boolean j() {
        return this.f9146p;
    }

    void k(int i10, int i11, int i12, int i13) {
        super.f(i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9143m.g0();
        j.f(this, this.f9143m.l());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 3);
        if (i()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9139q);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9140r);
        }
        if (j()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9141s);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(i());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f9143m.K(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f9144n) {
            if (!this.f9143m.E()) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.f9143m.L(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i10) {
        this.f9143m.M(ColorStateList.valueOf(i10));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f10) {
        super.setCardElevation(f10);
        this.f9143m.i0();
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.f9143m.N(colorStateList);
    }

    public void setCheckable(boolean z10) {
        this.f9143m.O(z10);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (this.f9145o != z10) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f9143m.R(drawable);
    }

    public void setCheckedIconGravity(int i10) {
        if (this.f9143m.p() != i10) {
            this.f9143m.S(i10);
        }
    }

    public void setCheckedIconMargin(int i10) {
        this.f9143m.T(i10);
    }

    public void setCheckedIconMarginResource(int i10) {
        if (i10 != -1) {
            this.f9143m.T(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconResource(int i10) {
        this.f9143m.R(e.a.b(getContext(), i10));
    }

    public void setCheckedIconSize(int i10) {
        this.f9143m.U(i10);
    }

    public void setCheckedIconSizeResource(int i10) {
        if (i10 != 0) {
            this.f9143m.U(getResources().getDimensionPixelSize(i10));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.f9143m.V(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z10) {
        super.setClickable(z10);
        b bVar = this.f9143m;
        if (bVar != null) {
            bVar.g0();
        }
    }

    public void setDragged(boolean z10) {
        if (this.f9146p != z10) {
            this.f9146p = z10;
            refreshDrawableState();
            h();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f10) {
        super.setMaxCardElevation(f10);
        this.f9143m.k0();
    }

    public void setOnCheckedChangeListener(a aVar) {
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z10) {
        super.setPreventCornerOverlap(z10);
        this.f9143m.k0();
        this.f9143m.h0();
    }

    public void setProgress(float f10) {
        this.f9143m.X(f10);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f10) {
        super.setRadius(f10);
        this.f9143m.W(f10);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.f9143m.Y(colorStateList);
    }

    public void setRippleColorResource(int i10) {
        this.f9143m.Y(e.a.a(getContext(), i10));
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        setClipToOutline(nVar.u(getBoundsAsRectF()));
        this.f9143m.Z(nVar);
    }

    public void setStrokeColor(int i10) {
        setStrokeColor(ColorStateList.valueOf(i10));
    }

    public void setStrokeWidth(int i10) {
        this.f9143m.b0(i10);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z10) {
        super.setUseCompatPadding(z10);
        this.f9143m.k0();
        this.f9143m.h0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (i() && isEnabled()) {
            this.f9145o = !this.f9145o;
            refreshDrawableState();
            h();
            this.f9143m.Q(this.f9145o, true);
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f9143m.M(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f9143m.a0(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9142t;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9145o = false;
        this.f9146p = false;
        this.f9144n = true;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R$styleable.MaterialCardView, i10, i11, new int[0]);
        b bVar = new b(this, attributeSet, i10, i11);
        this.f9143m = bVar;
        bVar.M(super.getCardBackgroundColor());
        bVar.c0(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.J(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }
}
