package com.coui.appcompat.material.navigationrail;

import android.content.Context;
import android.view.View;
import com.coui.appcompat.material.navigation.NavigationBarItemView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;

/* JADX INFO: loaded from: classes.dex */
final class NavigationRailItemView extends NavigationBarItemView {
    public NavigationRailItemView(Context context) {
        super(context);
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_rail_icon_margin;
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemLayoutResId() {
        return R$layout.mtrl_navigation_rail_item;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i11) == 0) {
            setMeasuredDimension(getMeasuredWidthAndState(), View.resolveSizeAndState(Math.max(getMeasuredHeight(), View.MeasureSpec.getSize(i11)), i11, 0));
        }
    }
}
