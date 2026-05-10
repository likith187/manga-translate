package com.coui.appcompat.poplist;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.coui.appcompat.log.COUILog;
import com.support.poplist.R$style;

/* JADX INFO: loaded from: classes.dex */
public class COUIIsolatedPopupListWindow extends COUIPopupListWindow {
    private static final boolean COUI_DEBUG;
    private static final String TAG = "COUIIsolatedPopupList";
    private PopupWindow.OnDismissListener mOnDismissListener;

    private class DummyAnchorView extends View implements PopupMenuConfigRule {
        private boolean mConfigRuleEnabled;
        private int mPositionX;
        private int mPositionY;

        public DummyAnchorView(Context context) {
            super(context);
            this.mConfigRuleEnabled = true;
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public int getBarrierDirection() {
            return -1;
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public Rect getDisplayFrame() {
            int i10 = this.mPositionX;
            int i11 = this.mPositionY;
            return new Rect(i10, i11, i10 + 1, i11 + 1);
        }

        @Override // android.view.View
        public boolean getGlobalVisibleRect(Rect rect, Point point) {
            int x10 = (int) getX();
            int y10 = (int) getY();
            int width = getWidth() + x10;
            int height = getHeight() + y10;
            rect.set(x10, y10, width, height);
            if (!COUIIsolatedPopupListWindow.COUI_DEBUG) {
                return true;
            }
            Log.d(COUIIsolatedPopupListWindow.TAG, "DummyAnchorView getGlobalVisibleRect x " + x10 + " y " + y10 + " right " + width + " bottom " + height);
            return true;
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public Rect getOutsets() {
            return new Rect(0, 0, 0, 0);
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public boolean getPopupMenuRuleEnabled() {
            return this.mConfigRuleEnabled;
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public int getType() {
            return 1;
        }

        @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
        public void setPopupMenuRuleEnabled(boolean z10) {
            this.mConfigRuleEnabled = z10;
        }

        protected void setPosition(int i10, int i11) {
            this.mPositionX = i10;
            this.mPositionY = i11;
        }
    }

    private class DummyRootView extends ViewGroup {
        public DummyRootView(Context context) {
            super(context);
        }

        @Override // android.view.View
        public boolean getGlobalVisibleRect(Rect rect, Point point) {
            int x10 = (int) getX();
            int y10 = (int) getY();
            int width = getWidth() + x10;
            int height = getHeight() + y10;
            rect.set(x10, y10, width, height);
            if (!COUIIsolatedPopupListWindow.COUI_DEBUG) {
                return true;
            }
            Log.d(COUIIsolatedPopupListWindow.TAG, "DummyRootView getGlobalVisibleRect x " + x10 + " y " + y10 + " right " + width + " bottom " + height);
            return true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            if (COUIIsolatedPopupListWindow.COUI_DEBUG) {
                Log.d(COUIIsolatedPopupListWindow.TAG, "onLayout b " + z10 + " left " + i10 + " top " + i11 + " right " + i12 + " bottom " + i13);
            }
        }
    }

    static {
        COUI_DEBUG = COUILog.LOG_DEBUG || COUILog.isLoggable(TAG, 3);
    }

    public COUIIsolatedPopupListWindow(Context context) {
        super(context);
    }

    private View buildDummyAnchor(Context context, int i10, int i11) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i12 = point.y;
        int i13 = point.x;
        DummyRootView dummyRootView = new DummyRootView(context);
        DummyAnchorView dummyAnchorView = new DummyAnchorView(context);
        dummyRootView.setRight(i13);
        dummyRootView.setBottom(i12);
        dummyAnchorView.setX(i10);
        dummyAnchorView.setY(i11);
        dummyAnchorView.setRight(1);
        dummyAnchorView.setBottom(1);
        if (COUI_DEBUG) {
            Log.d(TAG, "buildDummyAnchor x " + i10 + " y " + i11);
        }
        dummyAnchorView.setPosition(i10, i11);
        dummyRootView.addView(dummyAnchorView);
        return dummyAnchorView;
    }

    @Override // com.coui.appcompat.poplist.COUIPopupListWindow, android.widget.PopupWindow
    public void dismiss() {
        try {
            ((WindowManager) getContentView().getContext().getSystemService("window")).removeViewImmediate(getContentView());
        } catch (Exception e10) {
            COUILog.e(TAG, "Dismiss exception:" + e10.getMessage());
        }
        PopupWindow.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void setIsolatedOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void show(Context context, int i10, int i11) {
        prepareShowMainMenu(buildDummyAnchor(context, i10, i11), 0, 0, false);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2038;
        layoutParams.width = getLocateHelper().mApplicationWindow.width();
        layoutParams.height = getLocateHelper().mApplicationWindow.height();
        layoutParams.format = 1;
        layoutParams.gravity = 51;
        layoutParams.windowAnimations = R$style.Animation_COUI_PopupListWindow;
        windowManager.addView(getContentView(), layoutParams);
    }

    public void show(Context context, int i10, int i11, WindowManager.LayoutParams layoutParams) {
        prepareShowMainMenu(buildDummyAnchor(context, i10, i11), 0, 0, false);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        layoutParams.windowAnimations = R$style.Animation_COUI_PopupListWindow;
        windowManager.addView(getContentView(), layoutParams);
    }
}
