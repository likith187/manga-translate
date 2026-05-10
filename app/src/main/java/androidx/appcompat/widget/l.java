package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class l extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f907b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f908a;

    public l(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        a(context, attributeSet, i10, i11);
    }

    private void a(Context context, AttributeSet attributeSet, int i10, int i11) {
        h0 h0VarW = h0.w(context, attributeSet, R$styleable.PopupWindow, i10, i11);
        if (h0VarW.s(R$styleable.PopupWindow_overlapAnchor)) {
            b(h0VarW.a(R$styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(h0VarW.g(R$styleable.PopupWindow_android_popupBackground));
        h0VarW.y();
    }

    private void b(boolean z10) {
        if (f907b) {
            this.f908a = z10;
        } else {
            androidx.core.widget.i.a(this, z10);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11) {
        if (f907b && this.f908a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i10, int i11, int i12, int i13) {
        if (f907b && this.f908a) {
            i11 -= view.getHeight();
        }
        super.update(view, i10, i11, i12, i13);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i10, int i11, int i12) {
        if (f907b && this.f908a) {
            i11 -= view.getHeight();
        }
        super.showAsDropDown(view, i10, i11, i12);
    }
}
