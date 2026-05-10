package com.coui.appcompat.statement;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.support.statement.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class COUIComponentMaxHeightScrollView extends COUIMaxHeightScrollView {
    private boolean isProtocolFixed;

    public /* synthetic */ COUIComponentMaxHeightScrollView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    public final boolean isProtocolFixed() {
        return this.isProtocolFixed;
    }

    @Override // com.coui.appcompat.statement.COUIMaxHeightScrollView, com.coui.appcompat.scrollview.COUIScrollView, android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (getMaxHeight() > 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(b9.d.e(getMaxHeight(), View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        if (this.isProtocolFixed && getChildCount() > 0) {
            measureChild(getChildAt(0), i10, i11);
            setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getChildAt(0).getMeasuredHeight() > View.MeasureSpec.getSize(i11) - getPaddingTop() ? getContext().getResources().getDimensionPixelOffset(R$dimen.coui_component_bottom_sheet_margin) : 0);
        }
        super.onMeasure(i10, i11);
    }

    public final void setProtocolFixed(boolean z10) {
        this.isProtocolFixed = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COUIComponentMaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        kotlin.jvm.internal.r.e(context, "context");
    }
}
