package com.coloros.translate.ui.simultaneous.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class MeasureWidthFrameLayout extends FrameLayout {

    public interface a {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MeasureWidthFrameLayout(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        r.e(context, "context");
    }

    public final a getCallBack() {
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    public final void setCallBack(a aVar) {
    }

    public /* synthetic */ MeasureWidthFrameLayout(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasureWidthFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
    }
}
