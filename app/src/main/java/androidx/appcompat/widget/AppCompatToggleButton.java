package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatToggleButton extends ToggleButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q f704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f705c;

    public AppCompatToggleButton(Context context) {
        this(context, null);
    }

    private i getEmojiTextViewHelper() {
        if (this.f705c == null) {
            this.f705c = new i(this);
        }
        return this.f705c;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f703a;
        if (dVar != null) {
            dVar.b();
        }
        q qVar = this.f704b;
        if (qVar != null) {
            qVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f703a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f703a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f704b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f704b.k();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f703a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.f703a;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f704b;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f704b;
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
        d dVar = this.f703a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f703a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f704b.w(colorStateList);
        this.f704b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f704b.x(mode);
        this.f704b.b();
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        d0.a(this, getContext());
        d dVar = new d(this);
        this.f703a = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.f704b = qVar;
        qVar.m(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }
}
