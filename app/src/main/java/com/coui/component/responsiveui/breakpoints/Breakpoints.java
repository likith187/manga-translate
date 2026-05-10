package com.coui.component.responsiveui.breakpoints;

import com.coui.appcompat.statement.COUIIndividualStatementDialog;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.unit.Dp;
import com.oplus.aiunit.core.data.UnitState;

/* JADX INFO: loaded from: classes.dex */
public final class Breakpoints {
    public static final Breakpoints INSTANCE = new Breakpoints();
    public static final Dp BP_MEDIUM_WINDOW_BASE_WIDTH = new Dp(UIUtil.MEDIUM_WIDTH_DP);
    public static final Dp BP_EXPANDED_WINDOW_BASE_WIDTH = new Dp(UIUtil.LARGE_WIDTH_DP);
    public static final Dp BP_MEDIUM_WINDOW_BASE_HEIGHT = new Dp(COUIIndividualStatementDialog.MEDIUM_LARGE_SCREEN_SW_THRESHOLD);
    public static final Dp BP_EXPANDED_WINDOW_BASE_HEIGHT = new Dp(UnitState.STATE_UNAVAILABLE_LOW_MEMORY);
    public static final Dp BP_EXPANDED_WINDOW_MAXIMUM_WIDTH = new Dp(960);

    private Breakpoints() {
    }

    public String toString() {
        return "BreakPoints Base-Width (" + BP_MEDIUM_WINDOW_BASE_WIDTH + ", " + BP_EXPANDED_WINDOW_BASE_WIDTH + "), Base-Height (" + BP_MEDIUM_WINDOW_BASE_HEIGHT + ", " + BP_EXPANDED_WINDOW_BASE_HEIGHT + "), Limited-Width (" + BP_EXPANDED_WINDOW_MAXIMUM_WIDTH + ')';
    }
}
