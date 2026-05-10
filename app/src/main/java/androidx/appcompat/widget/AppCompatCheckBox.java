package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox implements androidx.core.widget.l {
    private i mAppCompatEmojiTextHelper;
    private final d mBackgroundTintHelper;
    private final f mCompoundButtonHelper;
    private final q mTextHelper;

    public AppCompatCheckBox(Context context) {
        this(context, null);
    }

    private i getEmojiTextViewHelper() {
        if (this.mAppCompatEmojiTextHelper == null) {
            this.mAppCompatEmojiTextHelper = new i(this);
        }
        return this.mAppCompatEmojiTextHelper;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
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

    @Override // androidx.core.widget.l
    public ColorStateList getSupportButtonTintList() {
        f fVar = this.mCompoundButtonHelper;
        if (fVar != null) {
            return fVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        f fVar = this.mCompoundButtonHelper;
        if (fVar != null) {
            return fVar.c();
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

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
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

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        f fVar = this.mCompoundButtonHelper;
        if (fVar != null) {
            fVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
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

    @Override // androidx.core.widget.l
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        f fVar = this.mCompoundButtonHelper;
        if (fVar != null) {
            fVar.f(colorStateList);
        }
    }

    @Override // androidx.core.widget.l
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        f fVar = this.mCompoundButtonHelper;
        if (fVar != null) {
            fVar.g(mode);
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

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        d0.a(this, getContext());
        f fVar = new f(this);
        this.mCompoundButtonHelper = fVar;
        fVar.d(attributeSet, i10);
        d dVar = new d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.mTextHelper = qVar;
        qVar.m(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(e.a.b(getContext(), i10));
    }
}
