package com.coui.appcompat.poplist;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
abstract class BasePopupMenuAnimationController {

    @Deprecated
    static final float DEFAULT_MAIN_MENU_ALPHA_SPRING_RESPONSE = 0.3f;
    static final float DEFAULT_MAIN_MENU_ENTER_ALPHA_END_VALUE = 1.0f;
    static final float DEFAULT_MAIN_MENU_ENTER_ALPHA_START_VALUE = 0.0f;
    static final float DEFAULT_MAIN_MENU_ENTER_SCALE_END_VALUE = 1.0f;
    static final float DEFAULT_MAIN_MENU_ENTER_SCALE_START_VALUE = 0.0f;

    @Deprecated
    static final float DEFAULT_MAIN_MENU_SCALE_SPRING_RESPONSE = 0.4f;
    static final float DEFAULT_MAIN_MENU_SPRING_BOUNCE = 0.2f;
    static final float DEFAULT_MAIN_MENU_SPRING_RESPONSE = 0.3f;
    static final float DEFAULT_SPRING_FACTOR = 10000.0f;
    static final float DEFAULT_SUB_MENU_SPRING_BOUNCE = 0.0f;
    static final float DEFAULT_SUB_MENU_SPRING_RESPONSE = 0.35f;
    PopupMenuDomain mDomain;
    View mMainMenuRoot;
    OnMenuStateChangedListener mMenuStateChangedListener = null;
    View mSubMenuRoot;

    interface OnMenuStateChangedListener {
        void onMainMenuEntered();

        void onMainMenuStartToEnter();

        void onSubMenuAnimationCanceled();

        void onSubMenuEntered();

        void onSubMenuExited();

        void onSubMenuStartToEnter();

        void onSubMenuStartToExit();
    }

    BasePopupMenuAnimationController() {
    }

    void detach() {
    }

    void setDomain(PopupMenuDomain popupMenuDomain) {
        this.mDomain = popupMenuDomain;
    }

    void setMainMenuView(View view) {
        this.mMainMenuRoot = view;
    }

    void setOnSubMenuStateChangedListener(OnMenuStateChangedListener onMenuStateChangedListener) {
        this.mMenuStateChangedListener = onMenuStateChangedListener;
    }

    void setSubMenuView(View view) {
        this.mSubMenuRoot = view;
    }

    void startMainMenuEnter(boolean z10) {
    }

    void startSubMenuEnter(boolean z10) {
    }

    void startSubMenuExit(boolean z10) {
    }

    void stopAllAnimation() {
    }

    final void startMainMenuEnter() {
        startMainMenuEnter(true);
    }

    final void startSubMenuEnter() {
        startSubMenuEnter(true);
    }

    final void startSubMenuExit() {
        startSubMenuExit(true);
    }
}
