package com.coui.component.responsiveui.layoutgrid;

import com.support.responsiveui.R$dimen;

/* JADX INFO: loaded from: classes.dex */
public enum MarginType {
    MARGIN_SMALL(R$dimen.layout_grid_margin_compat_small, R$dimen.layout_grid_margin_medium_small, R$dimen.layout_grid_margin_expanded_small),
    MARGIN_LARGE(R$dimen.layout_grid_margin_compat_large, R$dimen.layout_grid_margin_medium_large, R$dimen.layout_grid_margin_expanded_large);

    private final int[] resId;

    MarginType(int i10, int i11, int i12) {
        this.resId = new int[]{i10, i11, i12};
    }

    public final int[] resId() {
        return this.resId;
    }
}
