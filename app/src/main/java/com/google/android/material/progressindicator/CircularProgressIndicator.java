package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;

/* JADX INFO: loaded from: classes.dex */
public class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f9846s = R$style.Widget_MaterialComponents_CircularProgressIndicator;

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }

    private void s() {
        b bVar = new b((CircularProgressIndicatorSpec) this.f9828a);
        setIndeterminateDrawable(h.t(getContext(), (CircularProgressIndicatorSpec) this.f9828a, bVar));
        setProgressDrawable(d.v(getContext(), (CircularProgressIndicatorSpec) this.f9828a, bVar));
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f9828a).f9849j;
    }

    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f9828a).f9848i;
    }

    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f9828a).f9847h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public CircularProgressIndicatorSpec i(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndicatorDirection(int i10) {
        ((CircularProgressIndicatorSpec) this.f9828a).f9849j = i10;
        invalidate();
    }

    public void setIndicatorInset(int i10) {
        a aVar = this.f9828a;
        if (((CircularProgressIndicatorSpec) aVar).f9848i != i10) {
            ((CircularProgressIndicatorSpec) aVar).f9848i = i10;
            invalidate();
        }
    }

    public void setIndicatorSize(int i10) {
        int iMax = Math.max(i10, getTrackThickness() * 2);
        a aVar = this.f9828a;
        if (((CircularProgressIndicatorSpec) aVar).f9847h != iMax) {
            ((CircularProgressIndicatorSpec) aVar).f9847h = iMax;
            ((CircularProgressIndicatorSpec) aVar).e();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i10) {
        super.setTrackThickness(i10);
        ((CircularProgressIndicatorSpec) this.f9828a).e();
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, f9846s);
        s();
    }
}
