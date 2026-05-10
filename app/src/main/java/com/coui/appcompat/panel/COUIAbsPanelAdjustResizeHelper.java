package com.coui.appcompat.panel;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class COUIAbsPanelAdjustResizeHelper {
    protected COUIAbsPanelAdjustResizeHelper() {
    }

    public void adjustResize(Context context, ViewGroup viewGroup, WindowInsets windowInsets, View view, boolean z10) {
    }

    public int getMarginBottomValue() {
        return -1;
    }

    public int getPaddingBottomOffset() {
        return -1;
    }

    public float getTranslateOffset() {
        return -1.0f;
    }

    public int getWindowType() {
        return -1;
    }

    public void recoveryScrollingParentViewPaddingBottom(COUIPanelContentLayout cOUIPanelContentLayout) {
    }

    public boolean releaseData() {
        return false;
    }

    public void resetInnerStatus() {
    }

    public void setIgnoreHideKeyboardAnim(boolean z10) {
    }

    public void setWindowType(int i10) {
    }
}
