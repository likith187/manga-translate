package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatButton extends Button {
    private i mAppCompatEmojiTextHelper;
    private final d mBackgroundTintHelper;
    private final q mTextHelper;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    private i getEmojiTextViewHelper() {
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new i(this);
        }
        return this.mAppCompatEmojiTextHelper;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.b();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (o0.f942a) {
            return super.getAutoSizeMaxTextSize();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (o0.f942a) {
            return super.getAutoSizeMinTextSize();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (o0.f942a) {
            return super.getAutoSizeStepGranularity();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (o0.f942a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        q qVar = this.mTextHelper;
        return qVar != null ? qVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (o0.f942a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.j.q(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.k();
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.o(z10, i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        q qVar = this.mTextHelper;
        if (qVar == null || o0.f942a || !qVar.l()) {
            return;
        }
        this.mTextHelper.c();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (o0.f942a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.t(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) throws IllegalArgumentException {
        if (o0.f942a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.u(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (o0.f942a) {
            super.setAutoSizeTextTypeWithDefaults(i10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.v(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.j.r(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z10) {
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.s(z10);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.mTextHelper.w(colorStateList);
        this.mTextHelper.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.mTextHelper.x(mode);
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.q(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        if (o0.f942a) {
            super.setTextSize(i10, f10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.A(i10, f10);
        }
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        d0.a(this, getContext());
        d dVar = new d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.mTextHelper = qVar;
        qVar.m(attributeSet, i10);
        qVar.b();
        getEmojiTextViewHelper().c(attributeSet, i10);
    }
}
