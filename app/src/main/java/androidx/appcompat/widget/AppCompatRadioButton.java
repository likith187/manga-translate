package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatRadioButton extends RadioButton implements androidx.core.widget.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q f672c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i f673f;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    private i getEmojiTextViewHelper() {
        if (this.f673f == null) {
            this.f673f = new i(this);
        }
        return this.f673f;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f671b;
        if (dVar != null) {
            dVar.b();
        }
        q qVar = this.f672c;
        if (qVar != null) {
            qVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f671b;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f671b;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.l
    public ColorStateList getSupportButtonTintList() {
        f fVar = this.f670a;
        if (fVar != null) {
            return fVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        f fVar = this.f670a;
        if (fVar != null) {
            return fVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f672c.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f672c.k();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f671b;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.f671b;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        f fVar = this.f670a;
        if (fVar != null) {
            fVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f672c;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f672c;
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
        d dVar = this.f671b;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f671b;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    @Override // androidx.core.widget.l
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        f fVar = this.f670a;
        if (fVar != null) {
            fVar.f(colorStateList);
        }
    }

    @Override // androidx.core.widget.l
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        f fVar = this.f670a;
        if (fVar != null) {
            fVar.g(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f672c.w(colorStateList);
        this.f672c.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f672c.x(mode);
        this.f672c.b();
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        d0.a(this, getContext());
        f fVar = new f(this);
        this.f670a = fVar;
        fVar.d(attributeSet, i10);
        d dVar = new d(this);
        this.f671b = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.f672c = qVar;
        qVar.m(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i10) {
        setButtonDrawable(e.a.b(getContext(), i10));
    }
}
