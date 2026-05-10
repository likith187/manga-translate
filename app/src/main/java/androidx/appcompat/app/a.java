package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    public static abstract class b {
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z10);

    public abstract int j();

    public abstract Context k();

    public boolean l() {
        return false;
    }

    public void m(Configuration configuration) {
    }

    void n() {
    }

    public abstract boolean o(int i10, KeyEvent keyEvent);

    public boolean p(KeyEvent keyEvent) {
        return false;
    }

    public boolean q() {
        return false;
    }

    public abstract void r(boolean z10);

    public abstract void s(boolean z10);

    public abstract void t(boolean z10);

    public abstract void u(CharSequence charSequence);

    public androidx.appcompat.view.b v(b.a aVar) {
        return null;
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    public static class C0005a extends ViewGroup.MarginLayoutParams {
        public int gravity;

        public C0005a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBarLayout);
            this.gravity = typedArrayObtainStyledAttributes.getInt(R$styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0005a(int i10, int i11) {
            super(i10, i11);
            this.gravity = 8388627;
        }

        public C0005a(C0005a c0005a) {
            super((ViewGroup.MarginLayoutParams) c0005a);
            this.gravity = 0;
            this.gravity = c0005a.gravity;
        }

        public C0005a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }
    }
}
