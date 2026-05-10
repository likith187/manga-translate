package com.coui.appcompat.grid;

import android.content.Context;
import com.support.grid.R$dimen;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class COUIPercentUtils {
    private static final int CARD_LIST_FLAG = 2;
    private static final int LARGE_SCRREN_GRID_SIZE = 12;
    private static final int LARGE_SCRREN_WIDTH_LIMIT = 840;
    private static final int MEDIUM_SCRREN_GRID_SIZE = 8;
    private static final int MEDIUM_SCRREN_WIDTH_LIMIT = 600;
    private static final int PADDING_COUNT = 2;
    private static final int PREFERENCE_FLAG = 1;
    private static final int SMALL_SCRREN_GRID_SIZE = 4;
    private static final int SMALL_SCRREN_WIDTH_LIMIT = 480;

    @Deprecated
    public static float calculateWidth(float f10, int i10, int i11, int i12, Context context) {
        if (i10 <= 0 || i10 > i11) {
            return f10;
        }
        boolean z10 = i12 == 1 || i12 == 2;
        return ((((f10 - ((i12 == 2 ? context.getResources().getDimensionPixelOffset(R$dimen.grid_guide_column_card_margin_start) : context.getResources().getDimensionPixelOffset(R$dimen.grid_guide_column_default_margin_start)) * 2)) - ((i11 - 1) * context.getResources().getDimensionPixelOffset(R$dimen.grid_guide_column_gap))) / i11) * i10) + (context.getResources().getDimensionPixelOffset(R$dimen.grid_guide_column_gap) * Math.max(i10 - 1, 0)) + (z10 ? r9 : 0);
    }

    @Deprecated
    public static int getTotalGridSize(Context context) {
        int i10 = context.getResources().getConfiguration().screenWidthDp;
        if (i10 < 600) {
            return 4;
        }
        if (i10 < 840) {
            return 8;
        }
        return i10 > 840 ? 12 : 4;
    }
}
