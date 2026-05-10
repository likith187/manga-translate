package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView {

    /* JADX INFO: renamed from: f */
    private static final int[] f666f = {R.attr.popupBackground};

    /* JADX INFO: renamed from: a */
    private final d f667a;

    /* JADX INFO: renamed from: b */
    private final q f668b;

    /* JADX INFO: renamed from: c */
    private final h f669c;

    public AppCompatMultiAutoCompleteTextView(Context context) {
        this(context, null);
    }

    void a(h hVar) {
        KeyListener keyListener = getKeyListener();
        if (hVar.b(keyListener)) {
            boolean zIsFocusable = super.isFocusable();
            boolean zIsClickable = super.isClickable();
            boolean zIsLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener keyListenerA = hVar.a(keyListener);
            if (keyListenerA == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerA);
            super.setRawInputType(inputType);
            super.setFocusable(zIsFocusable);
            super.setClickable(zIsClickable);
            super.setLongClickable(zIsLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f667a;
        if (dVar != null) {
            dVar.b();
        }
        q qVar = this.f668b;
        if (qVar != null) {
            qVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f667a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f667a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f668b.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f668b.k();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.f669c.e(j.a(super.onCreateInputConnection(editorInfo), editorInfo, this), editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f667a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.f667a;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f668b;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.f668b;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i10) {
        setDropDownBackgroundDrawable(e.a.b(getContext(), i10));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        this.f669c.f(z10);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f669c.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f667a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f667a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f668b.w(colorStateList);
        this.f668b.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f668b.x(mode);
        this.f668b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        q qVar = this.f668b;
        if (qVar != null) {
            qVar.q(context, i10);
        }
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        d0.a(this, getContext());
        h0 h0VarW = h0.w(getContext(), attributeSet, f666f, i10, 0);
        if (h0VarW.s(0)) {
            setDropDownBackgroundDrawable(h0VarW.g(0));
        }
        h0VarW.y();
        d dVar = new d(this);
        this.f667a = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.f668b = qVar;
        qVar.m(attributeSet, i10);
        qVar.b();
        h hVar = new h(this);
        this.f669c = hVar;
        hVar.d(attributeSet, i10);
        a(hVar);
    }
}
