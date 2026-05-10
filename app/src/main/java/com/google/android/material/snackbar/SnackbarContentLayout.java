package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import g4.i;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f10271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f10272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeInterpolator f10273c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10274f;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    private static void a(View view, int i10, int i11) {
        if (m0.Q(view)) {
            m0.z0(view, m0.A(view), i10, m0.z(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    private boolean b(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f10271a.getPaddingTop() == i11 && this.f10271a.getPaddingBottom() == i12) {
            return z10;
        }
        a(this.f10271a, i11, i12);
        return true;
    }

    public Button getActionView() {
        return this.f10272b;
    }

    public TextView getMessageView() {
        return this.f10271a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f10271a = (TextView) findViewById(R$id.snackbar_text);
        this.f10272b = (Button) findViewById(R$id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical);
        Layout layout = this.f10271a.getLayout();
        boolean z10 = layout != null && layout.getLineCount() > 1;
        if (!z10 || this.f10274f <= 0 || this.f10272b.getMeasuredWidth() <= this.f10274f) {
            if (!z10) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!b(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!b(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f10274f = i10;
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10273c = i.g(context, R$attr.motionEasingEmphasizedInterpolator, x3.a.f16369b);
    }
}
