package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.m0;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.chip.a;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import d0.h;
import i4.d;
import i4.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements a.InterfaceC0109a, r, MaterialCheckable<Chip> {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f9273w = R$style.Widget_MaterialComponents_Chip_Action;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Rect f9274x = new Rect();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int[] f9275y = {16842913};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f9276z = {R.attr.state_checkable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.material.chip.a f9277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InsetDrawable f9278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RippleDrawable f9279c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View.OnClickListener f9280f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f9281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MaterialCheckable.OnCheckedChangeListener f9282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9284k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f9285l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f9286m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f9287n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9288o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9289p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f9290q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final c f9291r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f9292s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Rect f9293t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final RectF f9294u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final f f9295v;

    class a extends f {
        a() {
        }

        @Override // i4.f
        public void onFontRetrievalFailed(int i10) {
        }

        @Override // i4.f
        public void onFontRetrieved(Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f9277a.W1() ? Chip.this.f9277a.r0() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f9277a != null) {
                Chip.this.f9277a.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class c extends androidx.customview.widget.a {
        c(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.a
        protected int getVirtualViewAt(float f10, float f11) {
            return (Chip.this.n() && Chip.this.getCloseIconTouchBounds().contains(f10, f11)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.a
        protected void getVisibleVirtualViews(List list) {
            list.add(0);
            if (Chip.this.n() && Chip.this.s() && Chip.this.f9280f != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.u();
            }
            return false;
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForHost(h hVar) {
            hVar.f0(Chip.this.r());
            hVar.i0(Chip.this.isClickable());
            hVar.h0(Chip.this.getAccessibilityClassName());
            hVar.I0(Chip.this.getText());
        }

        @Override // androidx.customview.widget.a
        protected void onPopulateNodeForVirtualView(int i10, h hVar) {
            if (i10 != 1) {
                hVar.l0("");
                hVar.c0(Chip.f9274x);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                hVar.l0(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                hVar.l0(Chip.this.getContext().getString(R$string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            hVar.c0(Chip.this.getCloseIconTouchBoundsInt());
            hVar.b(h.a.f11466i);
            hVar.n0(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.a
        protected void onVirtualViewKeyboardFocusChanged(int i10, boolean z10) {
            if (i10 == 1) {
                Chip.this.f9286m = z10;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    private void A() {
        this.f9279c = new RippleDrawable(j4.b.d(this.f9277a.p0()), getBackgroundDrawable(), null);
        this.f9277a.V1(false);
        m0.n0(this, this.f9279c);
        B();
    }

    private void B() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f9277a) == null) {
            return;
        }
        int iT = (int) (aVar.T() + this.f9277a.t0() + this.f9277a.A());
        int iY = (int) (this.f9277a.Y() + this.f9277a.u0() + this.f9277a.w());
        if (this.f9278b != null) {
            Rect rect = new Rect();
            this.f9278b.getPadding(rect);
            iY += rect.left;
            iT += rect.right;
        }
        m0.z0(this, iY, getPaddingTop(), iT, getPaddingBottom());
    }

    private void C() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f9295v);
        }
    }

    private void D(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.f9294u.setEmpty();
        if (n() && this.f9280f != null) {
            this.f9277a.i0(this.f9294u);
        }
        return this.f9294u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f9293t.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f9293t;
    }

    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.s0();
        }
        return null;
    }

    private void j(com.google.android.material.chip.a aVar) {
        aVar.z1(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    private int[] k() {
        ?? IsEnabled = isEnabled();
        int i10 = IsEnabled;
        if (this.f9286m) {
            i10 = IsEnabled + 1;
        }
        int i11 = i10;
        if (this.f9285l) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.f9284k) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.f9286m) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.f9285l) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.f9284k) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    private void m() {
        if (getBackgroundDrawable() == this.f9278b && this.f9277a.getCallback() == null) {
            this.f9277a.setCallback(this.f9278b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        com.google.android.material.chip.a aVar = this.f9277a;
        return (aVar == null || aVar.b0() == null) ? false : true;
    }

    private void o(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.Chip, i10, f9273w, new int[0]);
        this.f9287n = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Chip_ensureMinTouchTargetSize, false);
        this.f9289p = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(R$styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void p() {
        setOutlineProvider(new b());
    }

    private void q(int i10, int i11, int i12, int i13) {
        this.f9278b = new InsetDrawable((Drawable) this.f9277a, i10, i11, i12, i13);
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f9285l != z10) {
            this.f9285l = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f9284k != z10) {
            this.f9284k = z10;
            refreshDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(CompoundButton compoundButton, boolean z10) {
        MaterialCheckable.OnCheckedChangeListener onCheckedChangeListener = this.f9282i;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(this, z10);
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener2 = this.f9281h;
        if (onCheckedChangeListener2 != null) {
            onCheckedChangeListener2.onCheckedChanged(compoundButton, z10);
        }
    }

    private void v() {
        if (this.f9278b != null) {
            this.f9278b = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            z();
        }
    }

    private void x(com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.z1(null);
        }
    }

    private void y() {
        if (n() && s() && this.f9280f != null) {
            m0.j0(this, this.f9291r);
            this.f9292s = true;
        } else {
            m0.j0(this, null);
            this.f9292s = false;
        }
    }

    private void z() {
        if (j4.b.f12752a) {
            A();
            return;
        }
        this.f9277a.V1(true);
        m0.n0(this, getBackgroundDrawable());
        B();
        m();
    }

    @Override // com.google.android.material.chip.a.InterfaceC0109a
    public void a() {
        l(this.f9289p);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return !this.f9292s ? super.dispatchHoverEvent(motionEvent) : this.f9291r.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f9292s) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.f9291r.dispatchKeyEvent(keyEvent) || this.f9291r.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f9277a;
        if ((aVar == null || !aVar.z0()) ? false : this.f9277a.v1(k())) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f9290q)) {
            return this.f9290q;
        }
        if (!r()) {
            return isClickable() ? COUIAccessibilityUtil.BUTTON_CLASS_NAME : COUIAccessibilityUtil.GENERIC_VIEW_CLASS_NAME;
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).e()) ? COUIAccessibilityUtil.RADIO_BUTTON_CLASS_NAME : COUIAccessibilityUtil.BUTTON_CLASS_NAME;
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f9278b;
        return insetDrawable == null ? this.f9277a : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.P();
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.Q();
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.R();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return Math.max(0.0f, aVar.S());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f9277a;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.T();
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.U();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.V();
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.W();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.X();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.Y();
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.Z();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.a0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.b0();
        }
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.c0();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.d0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.e0();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.f0();
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.h0();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.l0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.f9292s && (this.f9291r.getKeyboardFocusedVirtualViewId() == 1 || this.f9291r.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    public x3.h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.m0();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.n0();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.o0();
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.p0();
        }
        return null;
    }

    public n getShapeAppearanceModel() {
        return this.f9277a.getShapeAppearanceModel();
    }

    public x3.h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.q0();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.t0();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            return aVar.u0();
        }
        return 0.0f;
    }

    public boolean l(int i10) {
        this.f9289p = i10;
        if (!w()) {
            if (this.f9278b != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - this.f9277a.getIntrinsicHeight());
        int iMax2 = Math.max(0, i10 - this.f9277a.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f9278b != null) {
                v();
            } else {
                z();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f9278b != null) {
            Rect rect = new Rect();
            this.f9278b.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                z();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        q(i11, i12, i11, i12);
        z();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.f(this, this.f9277a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9275y);
        }
        if (r()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9276z);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.f9292s) {
            this.f9291r.onFocusChanged(z10, i10, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            h.M0(accessibilityNodeInfo).k0(h.f.a(chipGroup.getRowIndex(this), 1, chipGroup.isSingleLine() ? chipGroup.c(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i10);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f9288o != i10) {
            this.f9288o = i10;
            B();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L3a
            if (r0 == r2) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L35
            goto L40
        L21:
            boolean r0 = r5.f9284k
            if (r0 == 0) goto L40
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r3)
        L2a:
            r0 = r2
            goto L41
        L2c:
            boolean r0 = r5.f9284k
            if (r0 == 0) goto L35
            r5.u()
            r0 = r2
            goto L36
        L35:
            r0 = r3
        L36:
            r5.setCloseIconPressed(r3)
            goto L41
        L3a:
            if (r1 == 0) goto L40
            r5.setCloseIconPressed(r2)
            goto L2a
        L40:
            r0 = r3
        L41:
            if (r0 != 0) goto L4b
            boolean r5 = super.onTouchEvent(r6)
            if (r5 == 0) goto L4a
            goto L4b
        L4a:
            r2 = r3
        L4b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean r() {
        com.google.android.material.chip.a aVar = this.f9277a;
        return aVar != null && aVar.y0();
    }

    public boolean s() {
        com.google.android.material.chip.a aVar = this.f9277a;
        return aVar != null && aVar.A0();
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f9290q = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f9279c) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f9279c) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i10) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.H0(z10);
        }
    }

    public void setCheckableResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.I0(i10);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar == null) {
            this.f9283j = z10;
        } else if (aVar.y0()) {
            super.setChecked(z10);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.J0(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.K0(i10);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.L0(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.M0(i10);
        }
    }

    public void setCheckedIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.N0(i10);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.P0(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.Q0(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.R0(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.S0(i10);
        }
    }

    public void setChipDrawable(com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f9277a;
        if (aVar2 != aVar) {
            x(aVar2);
            this.f9277a = aVar;
            aVar.K1(false);
            j(this.f9277a);
            l(this.f9289p);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.T0(f10);
        }
    }

    public void setChipEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.U0(i10);
        }
    }

    public void setChipIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.V0(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.W0(i10);
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.X0(f10);
        }
    }

    public void setChipIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.Y0(i10);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.Z0(colorStateList);
        }
    }

    public void setChipIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.a1(i10);
        }
    }

    public void setChipIconVisible(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.b1(i10);
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.d1(f10);
        }
    }

    public void setChipMinHeightResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.e1(i10);
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.f1(f10);
        }
    }

    public void setChipStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.g1(i10);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.h1(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.i1(i10);
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.j1(f10);
        }
    }

    public void setChipStrokeWidthResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.k1(i10);
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.m1(drawable);
        }
        y();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.n1(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.o1(f10);
        }
    }

    public void setCloseIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.p1(i10);
        }
    }

    public void setCloseIconResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.q1(i10);
        }
        y();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.r1(f10);
        }
    }

    public void setCloseIconSizeResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.s1(i10);
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.t1(f10);
        }
    }

    public void setCloseIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.u1(i10);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.w1(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.x1(i10);
        }
    }

    public void setCloseIconVisible(int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.setElevation(f10);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f9277a == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.A1(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f9287n = z10;
        l(this.f9289p);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i10);
        }
    }

    public void setHideMotionSpec(x3.h hVar) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.B1(hVar);
        }
    }

    public void setHideMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.C1(i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.D1(f10);
        }
    }

    public void setIconEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.E1(i10);
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.F1(f10);
        }
    }

    public void setIconStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.G1(i10);
        }
    }

    @Override // com.google.android.material.internal.MaterialCheckable
    public void setInternalOnCheckedChangeListener(MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener) {
        this.f9282i = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f9277a == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.H1(i10);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f9281h = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f9280f = onClickListener;
        y();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.I1(colorStateList);
        }
        if (this.f9277a.w0()) {
            return;
        }
        A();
    }

    public void setRippleColorResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.J1(i10);
            if (this.f9277a.w0()) {
                return;
            }
            A();
        }
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        this.f9277a.setShapeAppearanceModel(nVar);
    }

    public void setShowMotionSpec(x3.h hVar) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.L1(hVar);
        }
    }

    public void setShowMotionSpecResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.M1(i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.W1() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f9277a;
        if (aVar2 != null) {
            aVar2.N1(charSequence);
        }
    }

    public void setTextAppearance(d dVar) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.O1(dVar);
        }
        C();
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.Q1(f10);
        }
    }

    public void setTextEndPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.R1(i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.S1(TypedValue.applyDimension(i10, f10, getResources().getDisplayMetrics()));
        }
        C();
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.T1(f10);
        }
    }

    public void setTextStartPaddingResource(int i10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.U1(i10);
        }
    }

    public boolean u() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f9280f;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        if (this.f9292s) {
            this.f9291r.sendEventForVirtualView(1, 1);
        }
        return z10;
    }

    public boolean w() {
        return this.f9287n;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.y1(z10);
        }
        y();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9273w;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9293t = new Rect();
        this.f9294u = new RectF();
        this.f9295v = new a();
        Context context2 = getContext();
        D(attributeSet);
        com.google.android.material.chip.a aVarF = com.google.android.material.chip.a.F(context2, attributeSet, i10, i11);
        o(context2, attributeSet, i10);
        setChipDrawable(aVarF);
        aVarF.setElevation(m0.r(this));
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.Chip, i10, i11, new int[0]);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.Chip_shapeAppearance);
        typedArrayObtainStyledAttributes.recycle();
        this.f9291r = new c(this);
        y();
        if (!zHasValue) {
            p();
        }
        setChecked(this.f9283j);
        setText(aVarF.r0());
        setEllipsize(aVarF.l0());
        C();
        if (!this.f9277a.W1()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        B();
        if (w()) {
            setMinHeight(this.f9289p);
        }
        this.f9288o = m0.v(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: a4.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                this.f71a.t(compoundButton, z10);
            }
        });
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.O0(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.c1(z10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.P1(i10);
        }
        C();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.a aVar = this.f9277a;
        if (aVar != null) {
            aVar.P1(i10);
        }
        C();
    }
}
