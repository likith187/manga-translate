package com.coui.appcompat.touchhelper;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.widget.a;
import d0.h;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIViewExplorerByTouchHelper extends a {
    private static final String VIEW_LOG_TAG = "COUIViewExplorerByTouchHelper";
    private COUIViewTalkBalkInteraction mCOUIViewTalkBalkInteraction;
    private View mHostView;
    private final Rect mTempRect;

    public interface COUIViewTalkBalkInteraction {
        CharSequence getClassName();

        int getCurrentPosition();

        int getDisablePosition();

        void getItemBounds(int i10, Rect rect);

        int getItemCounts();

        CharSequence getItemDescription(int i10);

        int getVirtualViewAt(float f10, float f11);

        void performAction(int i10, int i11, boolean z10);
    }

    public COUIViewExplorerByTouchHelper(View view) {
        super(view);
        this.mTempRect = new Rect();
        this.mCOUIViewTalkBalkInteraction = null;
        this.mHostView = view;
    }

    private void getItemBounds(int i10, Rect rect) {
        if (i10 < 0 || i10 >= this.mCOUIViewTalkBalkInteraction.getItemCounts()) {
            return;
        }
        this.mCOUIViewTalkBalkInteraction.getItemBounds(i10, rect);
    }

    public void clearFocusedVirtualView() {
        int focusedVirtualView = getFocusedVirtualView();
        if (focusedVirtualView != Integer.MIN_VALUE) {
            getAccessibilityNodeProvider(this.mHostView).f(focusedVirtualView, 128, null);
        }
    }

    @Override // androidx.customview.widget.a
    protected int getVirtualViewAt(float f10, float f11) {
        int virtualViewAt = this.mCOUIViewTalkBalkInteraction.getVirtualViewAt(f10, f11);
        if (virtualViewAt >= 0) {
            return virtualViewAt;
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.customview.widget.a
    protected void getVisibleVirtualViews(List<Integer> list) {
        for (int i10 = 0; i10 < this.mCOUIViewTalkBalkInteraction.getItemCounts(); i10++) {
            list.add(Integer.valueOf(i10));
        }
    }

    @Override // androidx.customview.widget.a
    protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
        if (i11 != 16) {
            return false;
        }
        this.mCOUIViewTalkBalkInteraction.performAction(i10, 16, false);
        return true;
    }

    @Override // androidx.customview.widget.a
    protected void onPopulateEventForVirtualView(int i10, AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setContentDescription(this.mCOUIViewTalkBalkInteraction.getItemDescription(i10));
    }

    @Override // androidx.customview.widget.a
    protected void onPopulateNodeForVirtualView(int i10, h hVar) {
        getItemBounds(i10, this.mTempRect);
        hVar.l0(this.mCOUIViewTalkBalkInteraction.getItemDescription(i10));
        hVar.c0(this.mTempRect);
        if (this.mCOUIViewTalkBalkInteraction.getClassName() != null) {
            hVar.h0(this.mCOUIViewTalkBalkInteraction.getClassName());
        }
        hVar.a(16);
        if (i10 == this.mCOUIViewTalkBalkInteraction.getCurrentPosition()) {
            hVar.D0(true);
        }
        if (i10 == this.mCOUIViewTalkBalkInteraction.getDisablePosition()) {
            hVar.n0(false);
        }
    }

    public void setCOUIViewTalkBalkInteraction(COUIViewTalkBalkInteraction cOUIViewTalkBalkInteraction) {
        this.mCOUIViewTalkBalkInteraction = cOUIViewTalkBalkInteraction;
    }

    public void setFocusedVirtualView(int i10) {
        getAccessibilityNodeProvider(this.mHostView).f(i10, 64, null);
    }
}
