package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.app.t;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.m0;
import androidx.core.widget.j;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import i4.c;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, r {

    /* JADX INFO: renamed from: r */
    private static final int[] f9080r = {R.attr.state_checkable};

    /* JADX INFO: renamed from: s */
    private static final int[] f9081s = {R.attr.state_checked};

    /* JADX INFO: renamed from: t */
    private static final int f9082t = R$style.Widget_MaterialComponents_Button;

    /* JADX INFO: renamed from: a */
    private final com.google.android.material.button.a f9083a;

    /* JADX INFO: renamed from: b */
    private final LinkedHashSet f9084b;

    /* JADX INFO: renamed from: c */
    private a f9085c;

    /* JADX INFO: renamed from: f */
    private PorterDuff.Mode f9086f;

    /* JADX INFO: renamed from: h */
    private ColorStateList f9087h;

    /* JADX INFO: renamed from: i */
    private Drawable f9088i;

    /* JADX INFO: renamed from: j */
    private String f9089j;

    /* JADX INFO: renamed from: k */
    private int f9090k;

    /* JADX INFO: renamed from: l */
    private int f9091l;

    /* JADX INFO: renamed from: m */
    private int f9092m;

    /* JADX INFO: renamed from: n */
    private int f9093n;

    /* JADX INFO: renamed from: o */
    private boolean f9094o;

    /* JADX INFO: renamed from: p */
    private boolean f9095p;

    /* JADX INFO: renamed from: q */
    private int f9096q;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        boolean f9097a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel) {
            this.f9097a = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f9097a ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }
    }

    interface a {
        void a(MaterialButton materialButton, boolean z10);
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    private boolean b() {
        int i10 = this.f9096q;
        return i10 == 3 || i10 == 4;
    }

    private boolean c() {
        int i10 = this.f9096q;
        return i10 == 1 || i10 == 2;
    }

    private boolean d() {
        int i10 = this.f9096q;
        return i10 == 16 || i10 == 32;
    }

    private boolean e() {
        com.google.android.material.button.a aVar = this.f9083a;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private void f() {
        if (c()) {
            j.i(this, this.f9088i, null, null, null);
        } else if (b()) {
            j.i(this, null, null, this.f9088i, null);
        } else if (d()) {
            j.i(this, null, this.f9088i, null, null);
        }
    }

    private void g(boolean z10) {
        Drawable drawable = this.f9088i;
        if (drawable != null) {
            Drawable drawableMutate = v.a.r(drawable).mutate();
            this.f9088i = drawableMutate;
            v.a.o(drawableMutate, this.f9087h);
            PorterDuff.Mode mode = this.f9086f;
            if (mode != null) {
                v.a.p(this.f9088i, mode);
            }
            int intrinsicWidth = this.f9090k;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f9088i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f9090k;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f9088i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f9088i;
            int i10 = this.f9091l;
            int i11 = this.f9092m;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f9088i.setVisible(true, z10);
        }
        if (z10) {
            f();
            return;
        }
        Drawable[] drawableArrA = j.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((!c() || drawable3 == this.f9088i) && ((!b() || drawable5 == this.f9088i) && (!d() || drawable4 == this.f9088i))) {
            return;
        }
        f();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < lineCount; i10++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i10));
        }
        return (int) Math.ceil(fMax);
    }

    private void h(int i10, int i11) {
        if (this.f9088i == null || getLayout() == null) {
            return;
        }
        if (!c() && !b()) {
            if (d()) {
                this.f9091l = 0;
                if (this.f9096q == 16) {
                    this.f9092m = 0;
                    g(false);
                    return;
                }
                int intrinsicHeight = this.f9090k;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f9088i.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f9093n) - getPaddingBottom()) / 2);
                if (this.f9092m != iMax) {
                    this.f9092m = iMax;
                    g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f9092m = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i12 = this.f9096q;
        if (i12 == 1 || i12 == 3 || ((i12 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i12 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f9091l = 0;
            g(false);
            return;
        }
        int intrinsicWidth = this.f9090k;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f9088i.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i10 - getTextLayoutWidth()) - m0.z(this)) - intrinsicWidth) - this.f9093n) - m0.A(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if (isLayoutRTL() != (this.f9096q == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f9091l != textLayoutWidth) {
            this.f9091l = textLayoutWidth;
            g(false);
        }
    }

    private boolean isLayoutRTL() {
        return m0.v(this) == 1;
    }

    public boolean a() {
        com.google.android.material.button.a aVar = this.f9083a;
        return aVar != null && aVar.p();
    }

    String getA11yClassName() {
        if (TextUtils.isEmpty(this.f9089j)) {
            return (a() ? CompoundButton.class : Button.class).getName();
        }
        return this.f9089j;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.f9083a.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f9088i;
    }

    public int getIconGravity() {
        return this.f9096q;
    }

    public int getIconPadding() {
        return this.f9093n;
    }

    public int getIconSize() {
        return this.f9090k;
    }

    public ColorStateList getIconTint() {
        return this.f9087h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f9086f;
    }

    public int getInsetBottom() {
        return this.f9083a.c();
    }

    public int getInsetTop() {
        return this.f9083a.d();
    }

    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f9083a.h();
        }
        return null;
    }

    public n getShapeAppearanceModel() {
        if (e()) {
            return this.f9083a.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f9083a.j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.f9083a.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f9083a.l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f9083a.m() : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f9094o;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            com.google.android.material.shape.j.f(this, this.f9083a.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9080r);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9081s);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f9097a);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9097a = this.f9094o;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f9083a.q()) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f9088i != null) {
            if (this.f9088i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    void setA11yClassName(String str) {
        this.f9089j = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (e()) {
            this.f9083a.s(i10);
        } else {
            super.setBackgroundColor(i10);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f9083a.t();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i10) {
        setBackgroundDrawable(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (e()) {
            this.f9083a.u(z10);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (a() && isEnabled() && this.f9094o != z10) {
            this.f9094o = z10;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).m(this, this.f9094o);
            }
            if (this.f9095p) {
                return;
            }
            this.f9095p = true;
            Iterator it = this.f9084b.iterator();
            if (it.hasNext()) {
                t.a(it.next());
                throw null;
            }
            this.f9095p = false;
        }
    }

    public void setCornerRadius(int i10) {
        if (e()) {
            this.f9083a.v(i10);
        }
    }

    public void setCornerRadiusResource(int i10) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (e()) {
            this.f9083a.f().setElevation(f10);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f9088i != drawable) {
            this.f9088i = drawable;
            g(true);
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.f9096q != i10) {
            this.f9096q = i10;
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i10) {
        if (this.f9093n != i10) {
            this.f9093n = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(int i10) {
        setIcon(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    public void setIconSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f9090k != i10) {
            this.f9090k = i10;
            g(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f9087h != colorStateList) {
            this.f9087h = colorStateList;
            g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f9086f != mode) {
            this.f9086f = mode;
            g(false);
        }
    }

    public void setIconTintResource(int i10) {
        setIconTint(e.a.a(getContext(), i10));
    }

    public void setInsetBottom(int i10) {
        this.f9083a.w(i10);
    }

    public void setInsetTop(int i10) {
        this.f9083a.x(i10);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(a aVar) {
        this.f9085c = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        a aVar = this.f9085c;
        if (aVar != null) {
            aVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (e()) {
            this.f9083a.y(colorStateList);
        }
    }

    public void setRippleColorResource(int i10) {
        if (e()) {
            setRippleColor(e.a.a(getContext(), i10));
        }
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        if (!e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f9083a.z(nVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (e()) {
            this.f9083a.A(z10);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (e()) {
            this.f9083a.B(colorStateList);
        }
    }

    public void setStrokeColorResource(int i10) {
        if (e()) {
            setStrokeColor(e.a.a(getContext(), i10));
        }
    }

    public void setStrokeWidth(int i10) {
        if (e()) {
            this.f9083a.C(i10);
        }
    }

    public void setStrokeWidthResource(int i10) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (e()) {
            this.f9083a.D(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (e()) {
            this.f9083a.E(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z10) {
        this.f9083a.F(z10);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f9094o);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9082t;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9084b = new LinkedHashSet();
        this.f9094o = false;
        this.f9095p = false;
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialButton, i10, i11, new int[0]);
        this.f9093n = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialButton_iconPadding, 0);
        this.f9086f = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(R$styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f9087h = c.a(getContext(), typedArrayObtainStyledAttributes, R$styleable.MaterialButton_iconTint);
        this.f9088i = c.e(getContext(), typedArrayObtainStyledAttributes, R$styleable.MaterialButton_icon);
        this.f9096q = typedArrayObtainStyledAttributes.getInteger(R$styleable.MaterialButton_iconGravity, 1);
        this.f9090k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, n.e(context2, attributeSet, i10, i11).m());
        this.f9083a = aVar;
        aVar.r(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.f9093n);
        g(this.f9088i != null);
    }
}
