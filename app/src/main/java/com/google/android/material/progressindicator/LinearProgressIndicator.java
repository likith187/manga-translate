package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.view.m0;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes.dex */
public class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f9850s = R$style.Widget_MaterialComponents_LinearProgressIndicator;

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    private void s() {
        i iVar = new i((LinearProgressIndicatorSpec) this.f9828a);
        setIndeterminateDrawable(h.u(getContext(), (LinearProgressIndicatorSpec) this.f9828a, iVar));
        setProgressDrawable(d.w(getContext(), (LinearProgressIndicatorSpec) this.f9828a, iVar));
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.f9828a).f9851h;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.f9828a).f9852i;
    }

    public int getTrackStopIndicatorSize() {
        return ((LinearProgressIndicatorSpec) this.f9828a).f9854k;
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void o(int i10, boolean z10) {
        a aVar = this.f9828a;
        if (aVar != null && ((LinearProgressIndicatorSpec) aVar).f9851h == 0 && isIndeterminate()) {
            return;
        }
        super.o(i10, z10);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        a aVar = this.f9828a;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) aVar;
        boolean z11 = true;
        if (((LinearProgressIndicatorSpec) aVar).f9852i != 1 && ((m0.v(this) != 1 || ((LinearProgressIndicatorSpec) this.f9828a).f9852i != 2) && (m0.v(this) != 0 || ((LinearProgressIndicatorSpec) this.f9828a).f9852i != 3))) {
            z11 = false;
        }
        linearProgressIndicatorSpec.f9853j = z11;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        int paddingLeft = i10 - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i11 - (getPaddingTop() + getPaddingBottom());
        h indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        d progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public LinearProgressIndicatorSpec i(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i10) {
        if (((LinearProgressIndicatorSpec) this.f9828a).f9851h == i10) {
            return;
        }
        if (q() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        a aVar = this.f9828a;
        ((LinearProgressIndicatorSpec) aVar).f9851h = i10;
        ((LinearProgressIndicatorSpec) aVar).e();
        if (i10 == 0) {
            getIndeterminateDrawable().y(new j((LinearProgressIndicatorSpec) this.f9828a));
        } else {
            getIndeterminateDrawable().y(new k(getContext(), (LinearProgressIndicatorSpec) this.f9828a));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f9828a).e();
    }

    public void setIndicatorDirection(int i10) {
        a aVar = this.f9828a;
        ((LinearProgressIndicatorSpec) aVar).f9852i = i10;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) aVar;
        boolean z10 = true;
        if (i10 != 1 && ((m0.v(this) != 1 || ((LinearProgressIndicatorSpec) this.f9828a).f9852i != 2) && (m0.v(this) != 0 || i10 != 3))) {
            z10 = false;
        }
        linearProgressIndicatorSpec.f9853j = z10;
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i10) {
        super.setTrackCornerRadius(i10);
        ((LinearProgressIndicatorSpec) this.f9828a).e();
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i10) {
        a aVar = this.f9828a;
        if (((LinearProgressIndicatorSpec) aVar).f9854k != i10) {
            ((LinearProgressIndicatorSpec) aVar).f9854k = Math.min(i10, ((LinearProgressIndicatorSpec) aVar).f9855a);
            ((LinearProgressIndicatorSpec) this.f9828a).e();
            invalidate();
        }
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, f9850s);
        s();
    }
}
