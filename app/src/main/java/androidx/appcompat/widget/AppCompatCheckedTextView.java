package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* JADX INFO: renamed from: a */
    private final e f661a;

    /* JADX INFO: renamed from: b */
    private final d f662b;

    /* JADX INFO: renamed from: c */
    private final q f663c;

    /* JADX INFO: renamed from: f */
    private i f664f;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    private i getEmojiTextViewHelper() {
        if (this.f664f == null) {
            this.f664f = new i(this);
        }
        return this.f664f;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        q qVar = this.f663c;
        if (qVar != null) {
            qVar.b();
        }
        d dVar = this.f662b;
        if (dVar != null) {
            dVar.b();
        }
        e eVar = this.f661a;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.j.q(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f662b;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f662b;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        e eVar = this.f661a;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        e eVar = this.f661a;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f663c.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f663c.k();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return j.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f662b;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.f662b;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        e eVar = this.f661a;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f663c;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f663c;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.j.r(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f662b;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f662b;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        e eVar = this.f661a;
        if (eVar != null) {
            eVar.f(colorStateList);
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        e eVar = this.f661a;
        if (eVar != null) {
            eVar.g(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f663c.w(colorStateList);
        this.f663c.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f663c.x(mode);
        this.f663c.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        q qVar = this.f663c;
        if (qVar != null) {
            qVar.q(context, i10);
        }
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        d0.a(this, getContext());
        q qVar = new q(this);
        this.f663c = qVar;
        qVar.m(attributeSet, i10);
        qVar.b();
        d dVar = new d(this);
        this.f662b = dVar;
        dVar.e(attributeSet, i10);
        e eVar = new e(this);
        this.f661a = eVar;
        eVar.d(attributeSet, i10);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i10) {
        setCheckMarkDrawable(e.a.b(getContext(), i10));
    }
}
