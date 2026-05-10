package com.google.android.material.checkbox;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.appcompat.app.t;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.h0;
import androidx.vectordrawable.graphics.drawable.b;
import androidx.vectordrawable.graphics.drawable.c;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    private static final int[][] A;
    private static final int B;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f9248x = R$style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int[] f9249y = {R$attr.state_indeterminate};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f9250z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashSet f9251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashSet f9252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f9253c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9254f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f9257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f9258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f9259l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f9260m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ColorStateList f9261n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ColorStateList f9262o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PorterDuff.Mode f9263p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9264q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f9265r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f9266s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f9267t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f9268u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final c f9269v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final b f9270w;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f9271a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        private String a() {
            int i10 = this.f9271a;
            return i10 != 1 ? i10 != 2 ? "unchecked" : "indeterminate" : "checked";
        }

        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + a() + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Integer.valueOf(this.f9271a));
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f9271a = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }
    }

    class a extends b {
        a() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void b(Drawable drawable) {
            super.b(drawable);
            ColorStateList colorStateList = MaterialCheckBox.this.f9261n;
            if (colorStateList != null) {
                v.a.o(drawable, colorStateList);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void c(Drawable drawable) {
            super.c(drawable);
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f9261n;
            if (colorStateList != null) {
                v.a.n(drawable, colorStateList.getColorForState(materialCheckBox.f9265r, MaterialCheckBox.this.f9261n.getDefaultColor()));
            }
        }
    }

    static {
        int i10 = R$attr.state_error;
        f9250z = new int[]{i10};
        A = new int[][]{new int[]{16842910, i10}, new int[]{16842910, R.attr.state_checked}, new int[]{16842910, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
        B = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    private boolean c(h0 h0Var) {
        return h0Var.n(R$styleable.MaterialCheckBox_android_button, 0) == B && h0Var.n(R$styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    private void e() {
        this.f9258k = com.google.android.material.drawable.a.d(this.f9258k, this.f9261n, androidx.core.widget.c.c(this));
        this.f9259l = com.google.android.material.drawable.a.d(this.f9259l, this.f9262o, this.f9263p);
        g();
        h();
        super.setButtonDrawable(com.google.android.material.drawable.a.a(this.f9258k, this.f9259l));
        refreshDrawableState();
    }

    private void f() {
        if (this.f9267t == null) {
            super.setStateDescription(getButtonStateDescription());
        }
    }

    private void g() {
        c cVar;
        if (this.f9260m) {
            c cVar2 = this.f9269v;
            if (cVar2 != null) {
                cVar2.f(this.f9270w);
                this.f9269v.b(this.f9270w);
            }
            Drawable drawable = this.f9258k;
            if (!(drawable instanceof AnimatedStateListDrawable) || (cVar = this.f9269v) == null) {
                return;
            }
            ((AnimatedStateListDrawable) drawable).addTransition(R$id.checked, R$id.unchecked, cVar, false);
            ((AnimatedStateListDrawable) this.f9258k).addTransition(R$id.indeterminate, R$id.unchecked, this.f9269v, false);
        }
    }

    private String getButtonStateDescription() {
        int i10 = this.f9264q;
        return i10 == 1 ? getResources().getString(R$string.mtrl_checkbox_state_description_checked) : i10 == 0 ? getResources().getString(R$string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R$string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f9253c == null) {
            int[][] iArr = A;
            int[] iArr2 = new int[iArr.length];
            int iD = b4.a.d(this, R$attr.colorControlActivated);
            int iD2 = b4.a.d(this, R$attr.colorError);
            int iD3 = b4.a.d(this, R$attr.colorSurface);
            int iD4 = b4.a.d(this, R$attr.colorOnSurface);
            iArr2[0] = b4.a.j(iD3, iD2, 1.0f);
            iArr2[1] = b4.a.j(iD3, iD, 1.0f);
            iArr2[2] = b4.a.j(iD3, iD4, 0.54f);
            iArr2[3] = b4.a.j(iD3, iD4, 0.38f);
            iArr2[4] = b4.a.j(iD3, iD4, 0.38f);
            this.f9253c = new ColorStateList(iArr, iArr2);
        }
        return this.f9253c;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f9261n;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    private void h() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.f9258k;
        if (drawable != null && (colorStateList2 = this.f9261n) != null) {
            v.a.o(drawable, colorStateList2);
        }
        Drawable drawable2 = this.f9259l;
        if (drawable2 == null || (colorStateList = this.f9262o) == null) {
            return;
        }
        v.a.o(drawable2, colorStateList);
    }

    private void i() {
    }

    public boolean d() {
        return this.f9256i;
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.f9258k;
    }

    public Drawable getButtonIconDrawable() {
        return this.f9259l;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f9262o;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f9263p;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f9261n;
    }

    public int getCheckedState() {
        return this.f9264q;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f9257j;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.f9264q == 1;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9254f && this.f9261n == null && this.f9262o == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9249y);
        }
        if (d()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f9250z);
        }
        this.f9265r = com.google.android.material.drawable.a.f(iArrOnCreateDrawableState);
        i();
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.f9255h || !TextUtils.isEmpty(getText()) || (drawableA = androidx.core.widget.c.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (ViewUtils.isLayoutRtl(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            v.a.l(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && d()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f9257j));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f9271a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9271a = getCheckedState();
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(e.a.b(getContext(), i10));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f9259l = drawable;
        e();
    }

    public void setButtonIconDrawableResource(int i10) {
        setButtonIconDrawable(e.a.b(getContext(), i10));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f9262o == colorStateList) {
            return;
        }
        this.f9262o = colorStateList;
        e();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.f9263p == mode) {
            return;
        }
        this.f9263p = mode;
        e();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f9261n == colorStateList) {
            return;
        }
        this.f9261n = colorStateList;
        e();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        e();
    }

    public void setCenterIfNoTextEnabled(boolean z10) {
        this.f9255h = z10;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        setCheckedState(z10 ? 1 : 0);
    }

    public void setCheckedState(int i10) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f9264q != i10) {
            this.f9264q = i10;
            super.setChecked(i10 == 1);
            refreshDrawableState();
            f();
            if (this.f9266s) {
                return;
            }
            this.f9266s = true;
            LinkedHashSet linkedHashSet = this.f9252b;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    t.a(it.next());
                    throw null;
                }
            }
            if (this.f9264q != 2 && (onCheckedChangeListener = this.f9268u) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f9266s = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        i();
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f9257j = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i10) {
        setErrorAccessibilityLabel(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setErrorShown(boolean z10) {
        if (this.f9256i == z10) {
            return;
        }
        this.f9256i = z10;
        refreshDrawableState();
        Iterator it = this.f9251a.iterator();
        if (it.hasNext()) {
            t.a(it.next());
            throw null;
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f9268u = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f9267t = charSequence;
        if (charSequence == null) {
            f();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f9254f = z10;
        if (z10) {
            androidx.core.widget.c.d(this, getMaterialThemeColorsTintList());
        } else {
            androidx.core.widget.c.d(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.f9258k = drawable;
        this.f9260m = false;
        e();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f9248x;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f9251a = new LinkedHashSet();
        this.f9252b = new LinkedHashSet();
        this.f9269v = c.a(getContext(), R$drawable.mtrl_checkbox_button_checked_unchecked);
        this.f9270w = new a();
        Context context2 = getContext();
        this.f9258k = androidx.core.widget.c.a(this);
        this.f9261n = getSuperButtonTintList();
        setSupportButtonTintList(null);
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.MaterialCheckBox, i10, i11, new int[0]);
        this.f9259l = h0VarObtainTintedStyledAttributes.g(R$styleable.MaterialCheckBox_buttonIcon);
        if (this.f9258k != null && ThemeEnforcement.isMaterial3Theme(context2) && c(h0VarObtainTintedStyledAttributes)) {
            super.setButtonDrawable((Drawable) null);
            this.f9258k = e.a.b(context2, R$drawable.mtrl_checkbox_button);
            this.f9260m = true;
            if (this.f9259l == null) {
                this.f9259l = e.a.b(context2, R$drawable.mtrl_checkbox_button_icon);
            }
        }
        this.f9262o = i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.MaterialCheckBox_buttonIconTint);
        this.f9263p = ViewUtils.parseTintMode(h0VarObtainTintedStyledAttributes.k(R$styleable.MaterialCheckBox_buttonIconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f9254f = h0VarObtainTintedStyledAttributes.a(R$styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f9255h = h0VarObtainTintedStyledAttributes.a(R$styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        this.f9256i = h0VarObtainTintedStyledAttributes.a(R$styleable.MaterialCheckBox_errorShown, false);
        this.f9257j = h0VarObtainTintedStyledAttributes.p(R$styleable.MaterialCheckBox_errorAccessibilityLabel);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.MaterialCheckBox_checkedState)) {
            setCheckedState(h0VarObtainTintedStyledAttributes.k(R$styleable.MaterialCheckBox_checkedState, 0));
        }
        h0VarObtainTintedStyledAttributes.y();
        e();
    }
}
