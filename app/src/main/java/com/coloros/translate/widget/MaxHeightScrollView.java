package com.coloros.translate.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import com.coloros.translate.R;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class MaxHeightScrollView extends ScrollView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7188a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MaxHeightScrollView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        r.e(context, "context");
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int i12 = this.f7188a;
        if (size > i12) {
            i11 = View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaxHeightScrollView);
            r.d(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.f7188a = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaxHeightScrollView_maxHeight, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public /* synthetic */ MaxHeightScrollView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
