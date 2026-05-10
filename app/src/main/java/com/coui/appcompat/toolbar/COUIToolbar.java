package com.coui.appcompat.toolbar;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.a;
import androidx.appcompat.view.c;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.h0;
import androidx.appcompat.widget.l0;
import androidx.appcompat.widget.o0;
import androidx.core.view.j;
import androidx.core.view.m;
import androidx.core.view.m0;
import androidx.core.view.u;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.poplist.COUISubMenuClickListener;
import com.coui.appcompat.poplist.PopupListItem;
import com.coui.appcompat.poplist.PopupMenuConfigRule;
import com.coui.appcompat.state.COUIMaskRippleDrawable;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$drawable;
import com.support.toolbar.R$attr;
import com.support.toolbar.R$dimen;
import com.support.toolbar.R$id;
import com.support.toolbar.R$style;
import e.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIToolbar extends Toolbar implements PopupMenuConfigRule {
    private static final int DEFAULT_TEXT_MAX = 24;
    private static final int DEFAULT_TEXT_MIN = 16;
    private static final String TAG = "Toolbar";
    public static final int TITLE_TYPE_HEAD = 0;
    public static final int TITLE_TYPE_SECONDARY = 1;
    private static final Rect TOOLBAR_OUTSETS = new Rect();
    private MenuPresenter.Callback mActionMenuPresenterCallback;
    private int mButtonGravity;
    private ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private final COUIRtlSpacingHelper mContentInsets;
    private Rect mDisplayFrame;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    private View mExpandedActionView;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private int mGapBetweenNavigationAndTitle;
    private int mGapBetweenSearchViewAndMenu;
    private int mGravity;
    private boolean mHasSearchViewFlag;
    boolean mIsInsidePanel;
    private boolean mIsInsideSideNavigationBar;
    private boolean mIsTiny;
    private boolean mIsTitleCenterStyle;
    private ImageView mLogoView;
    private COUIMaskRippleDrawable mMaskRippleDrawable;
    private int mMaxButtonHeight;
    private MenuBuilder.Callback mMenuBuilderCallback;
    private COUIActionMenuView mMenuView;
    private final ActionMenuView.e mMenuViewItemClickListener;
    private int mMinHeight;
    private ImageButton mNavButtonView;
    private Toolbar.h mOnMenuItemClickListener;
    private Context mPopupContext;
    private boolean mPopupRuleEnable;
    private int mPopupTheme;
    private int mResId;
    private final int[] mSearchCollapsingMargins;
    private View mSegmentButton;
    private final int mSegmentButtonHeight;
    private final int mSegmentButtonMaxWidth;
    private final int mSegmentButtonMinWidth;
    private final Runnable mShowOverflowMenuRunnable;
    private int mStyle;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int[] mTempMargins;
    private final ArrayList<View> mTempViews;
    private float mTextMaxSize;
    private float mTextMinSize;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private int mTitleMinWidth;
    private int mTitlePaddingBottom;
    private int mTitlePaddingTop;
    private int[] mTitlePosition;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private float mTitleTextSize;
    private TextView mTitleTextView;
    private int mTitleType;
    private int mToolbarCenterTitlePaddingLeft;
    private int mToolbarCenterTitlePaddingRight;
    private int mToolbarHeight;
    private int mToolbarNormalPaddingLeft;
    private int mToolbarNormalPaddingRight;
    private int mToolbarOverFlowPadding;
    private boolean mUseResponsivePadding;
    private Rect mWindowFrame;
    private l0 mWrapper;

    /* JADX INFO: renamed from: com.coui.appcompat.toolbar.COUIToolbar$1 */
    class AnonymousClass1 implements ActionMenuView.e {
        AnonymousClass1() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (COUIToolbar.this.mOnMenuItemClickListener != null) {
                return COUIToolbar.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.toolbar.COUIToolbar$2 */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUIToolbar.this.showOverflowMenu();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.toolbar.COUIToolbar$3 */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            COUIToolbar.this.collapseActionView();
        }
    }

    private class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;

        private ExpandedActionViewMenuPresenter() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (COUIToolbar.this.mExpandedActionView instanceof c) {
                ((c) COUIToolbar.this.mExpandedActionView).onActionViewCollapsed();
            }
            COUIToolbar cOUIToolbar = COUIToolbar.this;
            cOUIToolbar.removeView(cOUIToolbar.mExpandedActionView);
            COUIToolbar cOUIToolbar2 = COUIToolbar.this;
            cOUIToolbar2.removeView(cOUIToolbar2.mCollapseButtonView);
            COUIToolbar.this.mExpandedActionView = null;
            COUIToolbar.this.setChildVisibilityForExpandedActionView(false);
            this.mCurrentExpandedItem = null;
            COUIToolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            COUIToolbar.this.ensureCollapseButtonView();
            ViewParent parent = COUIToolbar.this.mCollapseButtonView.getParent();
            COUIToolbar cOUIToolbar = COUIToolbar.this;
            if (parent != cOUIToolbar) {
                cOUIToolbar.addView(cOUIToolbar.mCollapseButtonView);
            }
            COUIToolbar.this.mExpandedActionView = menuItemImpl.getActionView();
            this.mCurrentExpandedItem = menuItemImpl;
            ViewParent parent2 = COUIToolbar.this.mExpandedActionView.getParent();
            COUIToolbar cOUIToolbar2 = COUIToolbar.this;
            if (parent2 != cOUIToolbar2) {
                LayoutParams layoutParamsGenerateDefaultLayoutParams = cOUIToolbar2.generateDefaultLayoutParams();
                layoutParamsGenerateDefaultLayoutParams.gravity = (COUIToolbar.this.mButtonGravity & 112) | 8388611;
                layoutParamsGenerateDefaultLayoutParams.mViewType = 2;
                COUIToolbar.this.mExpandedActionView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                COUIToolbar cOUIToolbar3 = COUIToolbar.this;
                cOUIToolbar3.addView(cOUIToolbar3.mExpandedActionView);
            }
            COUIToolbar.this.setChildVisibilityForExpandedActionView(true);
            COUIToolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (COUIToolbar.this.mExpandedActionView instanceof c) {
                ((c) COUIToolbar.this.mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.mMenu;
            if (menuBuilder2 != null && (menuItemImpl = this.mCurrentExpandedItem) != null) {
                menuBuilder2.collapseItemActionView(menuItemImpl);
            }
            this.mMenu = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return subMenuBuilder != null && subMenuBuilder.size() > 0;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void updateMenuView(boolean z10) {
            if (this.mCurrentExpandedItem != null) {
                MenuBuilder menuBuilder = this.mMenu;
                if (menuBuilder != null) {
                    int size = menuBuilder.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.mMenu.getItem(i10) == this.mCurrentExpandedItem) {
                            return;
                        }
                    }
                }
                collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
            }
        }

        /* synthetic */ ExpandedActionViewMenuPresenter(COUIToolbar cOUIToolbar, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public COUIToolbar(Context context) {
        this(context, null);
    }

    private void addCustomViewsWithGravity(List<View> list, int i10) {
        boolean z10 = m0.v(this) == 1;
        int childCount = getChildCount();
        int iB = j.b(i10, m0.v(this));
        list.clear();
        if (!z10) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mViewType == 0 && shouldLayout(childAt) && getChildHorizontalGravity(layoutParams.gravity) == iB) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i12 = childCount - 1; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.mViewType == 0 && shouldLayout(childAt2) && getChildHorizontalGravity(layoutParams2.gravity) == iB) {
                list.add(childAt2);
            }
        }
    }

    private void addSystemView(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams layoutParamsGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (LayoutParams) layoutParams;
        layoutParamsGenerateDefaultLayoutParams.mViewType = 1;
        addView(view, layoutParamsGenerateDefaultLayoutParams);
    }

    private void calculateTitlePosition(int[] iArr) {
        int measuredWidth;
        int measuredWidth2;
        boolean z10 = m0.v(this) == 1;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_actionbar_menuitemview_item_spacing);
        iArr[0] = Math.max(this.mContentInsets.getLeft(), getPaddingLeft());
        iArr[1] = getMeasuredWidth() - Math.max(this.mContentInsets.getRight(), getPaddingRight());
        if (!shouldLayout(this.mMenuView) || this.mMenuView.getChildCount() == 0) {
            return;
        }
        if (this.mMenuView.getChildCount() == 1) {
            measuredWidth2 = this.mMenuView.getChildAt(0).getMeasuredWidth() + dimensionPixelSize;
            measuredWidth = 0;
        } else {
            measuredWidth = this.mMenuView.getChildAt(0).getMeasuredWidth() + dimensionPixelSize;
            measuredWidth2 = 0;
            for (int i10 = 1; i10 < this.mMenuView.getChildCount(); i10++) {
                measuredWidth2 += this.mMenuView.getChildAt(i10).getMeasuredWidth() + dimensionPixelSize;
            }
        }
        if (z10) {
            iArr[0] = iArr[0] + measuredWidth2;
            iArr[1] = iArr[1] - measuredWidth;
        } else {
            iArr[0] = iArr[0] + measuredWidth;
            iArr[1] = iArr[1] - measuredWidth2;
        }
        int iMax = Math.max(iArr[0], getMeasuredWidth() - iArr[1]) + getResources().getDimensionPixelSize(R$dimen.coui_toolbar_action_menu_inner_padding);
        if (this.mIsInsidePanel || COUIChangeTextUtil.measureTextLineCount(this.mTitleTextView, getMeasuredWidth(), iMax * 2) > 1) {
            return;
        }
        iArr[0] = iMax;
        iArr[1] = getMeasuredWidth() - iMax;
    }

    private void calculateToolbarPadding(MenuBuilder menuBuilder, int i10) {
        boolean zShouldLayout = shouldLayout(this.mNavButtonView);
        boolean z10 = (menuBuilder == null || (menuBuilder.getNonActionItems().isEmpty() && menuBuilder.getActionItems().isEmpty())) ? false : true;
        if (COUIResponsiveUtils.isSmallScreen(getContext(), View.MeasureSpec.getSize(i10))) {
            this.mToolbarNormalPaddingLeft = getContext().getResources().getDimensionPixelOffset(zShouldLayout ? R$dimen.toolbar_normal_menu_padding_left_compat : R$dimen.toolbar_normal_padding_left_compat);
            this.mToolbarNormalPaddingRight = z10 ? getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_right_compat) : getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_padding_right_compat);
            this.mToolbarCenterTitlePaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_menu_padding_horizontal_compat);
        } else if (COUIResponsiveUtils.isMediumScreen(getContext(), View.MeasureSpec.getSize(i10), UIUtil.getScreenHeightMetrics(getContext()))) {
            this.mToolbarNormalPaddingLeft = getContext().getResources().getDimensionPixelOffset(zShouldLayout ? R$dimen.toolbar_normal_menu_padding_left_medium : R$dimen.toolbar_normal_padding_left_medium);
            this.mToolbarNormalPaddingRight = z10 ? getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_right_medium) : getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_padding_right_medium);
            this.mToolbarCenterTitlePaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_menu_padding_horizontal_medium);
        } else if (COUIResponsiveUtils.isLargeScreen(getContext(), View.MeasureSpec.getSize(i10), UIUtil.getScreenHeightMetrics(getContext()))) {
            this.mToolbarNormalPaddingLeft = getContext().getResources().getDimensionPixelOffset(zShouldLayout ? R$dimen.toolbar_normal_menu_padding_left_expanded : R$dimen.toolbar_normal_padding_left_expanded);
            this.mToolbarNormalPaddingRight = z10 ? getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_right_expanded) : getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_padding_right_expanded);
            this.mToolbarCenterTitlePaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_menu_padding_horizontal_expanded);
        }
        if (this.mIsInsideSideNavigationBar) {
            this.mToolbarCenterTitlePaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_menu_padding_horizontal_medium);
        }
        this.mToolbarCenterTitlePaddingRight = this.mToolbarCenterTitlePaddingLeft;
        if (this.mIsTiny) {
            this.mToolbarNormalPaddingLeft = zShouldLayout ? 0 : getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_tiny_left);
            this.mToolbarNormalPaddingRight = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_tiny_right);
        }
    }

    private void changeBackViewParams() {
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton == null || !this.mIsTiny) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) imageButton.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_toolbar_back_view_tiny_width);
        this.mNavButtonView.setLayoutParams(layoutParams);
        this.mNavButtonView.setPadding(0, 0, 0, 0);
    }

    private void changeToolbarPadding(MenuBuilder menuBuilder, ImageButton imageButton, boolean z10, int i10) {
        if (menuBuilder == null && imageButton == null) {
            return;
        }
        calculateToolbarPadding(menuBuilder, i10);
        if (menuBuilder == null || (menuBuilder.getNonActionItems().isEmpty() && menuBuilder.getActionItems().isEmpty())) {
            int paddingLeft = getPaddingLeft();
            if (this.mUseResponsivePadding) {
                paddingLeft = this.mIsTitleCenterStyle ? this.mToolbarCenterTitlePaddingLeft : this.mToolbarNormalPaddingLeft;
            }
            int paddingRight = getPaddingRight();
            if (this.mUseResponsivePadding) {
                paddingRight = useTextMenuItemPaddingEnd() ? this.mToolbarCenterTitlePaddingRight : this.mToolbarNormalPaddingRight;
            }
            if (z10) {
                setPadding(paddingRight, getPaddingTop(), paddingLeft, getPaddingBottom());
                return;
            } else {
                setPadding(paddingLeft, getPaddingTop(), paddingRight, getPaddingBottom());
                return;
            }
        }
        int paddingLeft2 = getPaddingLeft();
        if (this.mUseResponsivePadding) {
            paddingLeft2 = this.mIsTitleCenterStyle ? this.mToolbarCenterTitlePaddingLeft : this.mToolbarNormalPaddingLeft;
        }
        int paddingRight2 = getPaddingRight();
        if (this.mUseResponsivePadding) {
            paddingRight2 = this.mIsTitleCenterStyle ? this.mToolbarCenterTitlePaddingRight : this.mToolbarNormalPaddingRight;
        }
        if (z10) {
            setPadding(paddingRight2, getPaddingTop(), paddingLeft2, getPaddingBottom());
        } else {
            setPadding(paddingLeft2, getPaddingTop(), paddingRight2, getPaddingBottom());
        }
    }

    private void configNavigationButtonBackground() {
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = new COUIMaskRippleDrawable(getContext());
        this.mMaskRippleDrawable = cOUIMaskRippleDrawable;
        cOUIMaskRippleDrawable.setCircleRippleMask(COUIMaskRippleDrawable.getMaskRippleRadiusByType(getContext(), 0));
        this.mNavButtonView.setBackground(this.mMaskRippleDrawable);
        COUIDarkModeUtil.setForceDarkAllow(this.mNavButtonView, false);
    }

    public void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            ImageButton imageButton = new ImageButton(getContext(), null, R$attr.couiToolbarNavigationButtonStyle, R$style.Widget_COUI_Toolbar_Button_Navigation);
            this.mCollapseButtonView = imageButton;
            imageButton.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.mButtonGravity & 112) | 8388611;
            layoutParamsGenerateDefaultLayoutParams.mViewType = 2;
            this.mCollapseButtonView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.mCollapseButtonView.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.toolbar.COUIToolbar.3
                AnonymousClass3() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    COUIToolbar.this.collapseActionView();
                }
            });
        }
    }

    private void ensureLogoView() {
        if (this.mLogoView == null) {
            this.mLogoView = new ImageView(getContext());
        }
    }

    private void ensureMenu() {
        ensureMenuView();
        if (this.mMenuView.peekMenu() == null) {
            MenuBuilder menuBuilder = (MenuBuilder) this.mMenuView.getMenu();
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter();
            }
            this.mMenuView.setExpandedActionViewsExclusive(true);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        }
    }

    private void ensureMenuView() {
        if (this.mMenuView == null) {
            COUIActionMenuView cOUIActionMenuView = new COUIActionMenuView(getContext());
            this.mMenuView = cOUIActionMenuView;
            cOUIActionMenuView.setId(R$id.coui_toolbar_more_view);
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            if (this.mIsTitleCenterStyle) {
                ((ViewGroup.MarginLayoutParams) layoutParamsGenerateDefaultLayoutParams).width = -1;
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParamsGenerateDefaultLayoutParams).width = -2;
            }
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.mButtonGravity & 112) | 8388613;
            this.mMenuView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            addSystemView(this.mMenuView);
        }
    }

    private void ensureNavButtonView() {
        if (this.mNavButtonView == null) {
            ImageButton imageButton = new ImageButton(getContext(), null, R$attr.couiToolbarNavigationButtonStyle, R$style.Widget_COUI_Toolbar_Button_Navigation);
            this.mNavButtonView = imageButton;
            imageButton.setId(R$id.coui_toolbar_back_view);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.mButtonGravity & 112) | 8388611;
            this.mNavButtonView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            configNavigationButtonBackground();
            changeBackViewParams();
        }
    }

    private void ensureTitleTextView() {
        if (this.mTitleTextView == null) {
            Context context = getContext();
            TextView textView = new TextView(context);
            this.mTitleTextView = textView;
            textView.setPaddingRelative(0, this.mTitlePaddingTop, 0, this.mTitlePaddingBottom);
            LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.mTypeTitle = true;
            ((ViewGroup.MarginLayoutParams) layoutParamsGenerateDefaultLayoutParams).bottomMargin = this.mIsTiny ? 0 : this.mTitleMarginBottom;
            layoutParamsGenerateDefaultLayoutParams.gravity = (this.mButtonGravity & 112) | 8388613;
            this.mTitleTextView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.mTitleTextView.setSingleLine();
            this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
            int i10 = this.mTitleTextAppearance;
            if (i10 != 0) {
                setTitleTextAppearance(context, i10);
            }
            int i11 = this.mTitleTextColor;
            if (i11 != 0) {
                this.mTitleTextView.setTextColor(i11);
            }
            this.mTitleTextView.setTextAlignment(this.mIsTitleCenterStyle ? 4 : 5);
            if (this.mTitleType == 1) {
                this.mTitleTextView.setTextSize(0, COUIChangeTextUtil.getSuitableFontSize(this.mTitleTextView.getTextSize(), getContext().getResources().getConfiguration().fontScale, 2));
            }
        }
    }

    private int getChildHorizontalGravity(int i10) {
        int iV = m0.v(this);
        int iB = j.b(i10, iV) & 7;
        return (iB == 1 || iB == 3 || iB == 5) ? iB : iV == 1 ? 5 : 3;
    }

    private int getChildTop(View view, int i10) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = i10 > 0 ? (measuredHeight - i10) / 2 : 0;
        int childVerticalGravity = getChildVerticalGravity(layoutParams.gravity);
        if (childVerticalGravity == 48) {
            return getPaddingTop() - i11;
        }
        if (childVerticalGravity == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i11;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (iMax < i12) {
            iMax = i12;
        } else {
            int i13 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i13 < i14) {
                iMax = Math.max(0, iMax - (i14 - i13));
            }
        }
        return paddingTop + iMax;
    }

    private int getChildVerticalGravity(int i10) {
        int i11 = i10 & 112;
        return (i11 == 16 || i11 == 48 || i11 == 80) ? i11 : this.mGravity & 112;
    }

    private int getHorizontalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return m.b(marginLayoutParams) + m.a(marginLayoutParams);
    }

    private int getMinimumHeightCompat() {
        return m0.x(this);
    }

    private int getVerticalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int getViewListMeasuredWidth(List<View> list, int[] iArr) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int size = list.size();
        int i12 = 0;
        int measuredWidth = 0;
        while (i12 < size) {
            View view = list.get(i12);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i10;
            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i11;
            int iMax = Math.max(0, i13);
            int iMax2 = Math.max(0, i14);
            int iMax3 = Math.max(0, -i13);
            int iMax4 = Math.max(0, -i14);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i12++;
            i11 = iMax4;
            i10 = iMax3;
        }
        return measuredWidth;
    }

    private int layoutChildLeft(View view, int i10, int i11, int[] iArr, int i12) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int iMax = i10 + Math.max(0, i13);
        iArr[0] = Math.max(0, -i13);
        int childTop = getChildTop(view, i12);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, childTop, Math.min(i11, iMax + measuredWidth), view.getMeasuredHeight() + childTop);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    private int layoutChildRight(View view, int i10, int i11, int[] iArr, int i12) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int iMax = i11 - Math.max(0, i13);
        iArr[1] = Math.max(0, -i13);
        int childTop = getChildTop(view, i12);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(Math.max(i10, iMax - measuredWidth), childTop, iMax, view.getMeasuredHeight() + childTop);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    private int measureChildCollapseMargins(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        boolean z10;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        boolean z11 = true;
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i14) + Math.max(0, i15);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        if (marginLayoutParams instanceof LayoutParams) {
            LayoutParams layoutParams = (LayoutParams) marginLayoutParams;
            z10 = layoutParams.mTypeSearch && this.mHasSearchViewFlag;
            if (!layoutParams.mTypeTitle || !this.mIsTitleCenterStyle) {
                z11 = false;
            }
        } else {
            z10 = false;
            z11 = false;
        }
        int childMeasureSpec = (z10 || z11) ? ViewGroup.getChildMeasureSpec(i10, iMax, marginLayoutParams.width) : ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + iMax + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height);
        view.measure(childMeasureSpec, childMeasureSpec2);
        if (!z10) {
            return view.getMeasuredWidth() + iMax;
        }
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView != null && cOUIActionMenuView.getVisibility() != 8) {
            view.measure(ViewGroup.getChildMeasureSpec(i10, iMax, ((view.getMeasuredWidth() - this.mMenuView.getMeasuredWidth()) - (this.mMenuView.getMeasuredWidth() != 0 ? getPaddingEnd() : 0)) - this.mGapBetweenSearchViewAndMenu), childMeasureSpec2);
        }
        return iMax;
    }

    private void measureChildConstrained(View view, int i10, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i14 >= 0) {
            if (mode != 0) {
                i14 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i14);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void measureSegmentButtonConstrained(View view, int i10, int i11, int i12, int i13, int i14) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i13, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i14 >= 0) {
            if (mode != 0) {
                i14 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i14);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
        if (i12 <= 0 || view.getMeasuredWidth() <= i12) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), childMeasureSpec2);
    }

    public void setChildVisibilityForExpandedActionView(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (((LayoutParams) childAt.getLayoutParams()).mViewType != 2 && childAt != this.mMenuView) {
                childAt.setVisibility(z10 ? 8 : 0);
            }
        }
    }

    private boolean shouldCollapse() {
        if (!this.mCollapsible) {
            return false;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (shouldLayout(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean shouldLayout(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void updateChildVisibilityForExpandedActionView(View view) {
        if (((LayoutParams) view.getLayoutParams()).mViewType == 2 || view == this.mMenuView) {
            return;
        }
        view.setVisibility(this.mExpandedActionView != null ? 8 : 0);
    }

    private boolean useTextMenuItemPaddingEnd() {
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        return this.mIsTitleCenterStyle || ((cOUIActionMenuView == null || cOUIActionMenuView.getChildCount() != 1 || !(this.mMenuView.getChildAt(0) instanceof COUIActionMenuItemView)) ? false : ((COUIActionMenuItemView) this.mMenuView.getChildAt(0)).isTextMenuItem());
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void clearMenu() {
        this.mResId = 0;
        getMenu().clear();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void collapseActionView() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.mExpandedMenuPresenter;
        MenuItemImpl menuItemImpl = expandedActionViewMenuPresenter == null ? null : expandedActionViewMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void dismissPopupMenus() {
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView != null) {
            cOUIActionMenuView.dismissPopupMenus();
        }
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getBarrierDirection() {
        if (this.mWindowFrame == null) {
            this.mWindowFrame = new Rect();
        }
        getRootView().getGlobalVisibleRect(this.mWindowFrame);
        return this.mWindowFrame.height() <= getContext().getResources().getDimensionPixelSize(com.support.poplist.R$dimen.coui_popup_list_window_min_window_height_to_apply_vertical_barrier) ? -1 : 1;
    }

    public TextView getCOUITitleTextView() {
        ensureTitleTextView();
        return this.mTitleTextView;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public int getContentInsetEnd() {
        return this.mContentInsets.getEnd();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public int getContentInsetLeft() {
        return this.mContentInsets.getLeft();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public int getContentInsetRight() {
        return this.mContentInsets.getRight();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public int getContentInsetStart() {
        return this.mContentInsets.getStart();
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getDisplayFrame() {
        if (this.mDisplayFrame == null) {
            this.mDisplayFrame = new Rect();
        }
        getGlobalVisibleRect(this.mDisplayFrame);
        return this.mDisplayFrame;
    }

    public boolean getIsTitleCenterStyle() {
        return this.mIsTitleCenterStyle;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public Drawable getLogo() {
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public CharSequence getLogoDescription() {
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public Menu getMenu() {
        ensureMenu();
        return this.mMenuView.getMenu();
    }

    public COUIActionMenuView getMenuView() {
        ensureMenuView();
        return this.mMenuView;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getOutsets() {
        return TOOLBAR_OUTSETS;
    }

    public View getOverFlowMenuButton() {
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView != null) {
            return cOUIActionMenuView.getOverFlowMenuButton();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public Drawable getOverflowIcon() {
        ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public boolean getPopupMenuRuleEnabled() {
        return this.mPopupRuleEnable;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public CharSequence getSubtitle() {
        return this.mSubtitleText;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public CharSequence getTitle() {
        return this.mTitleText;
    }

    public View getTitleView() {
        return this.mTitleTextView;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getType() {
        return 2;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i10) {
        super.inflateMenu(i10);
        this.mResId = i10;
        if (this.mMenuView != null) {
            this.mMenuView.clearRedDotInfo();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowOverflowMenuRunnable);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int iA = u.a(motionEvent);
        if (iA == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (iA == 9 && !zOnHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (iA == 10 || iA == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:240:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x00b4 A[PHI: r18
      0x00b4: PHI (r18v4 int) = (r18v3 int), (r18v22 int) binds: [B:244:0x00a0, B:246:0x00a4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x01fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0599  */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r21, int r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 1486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.toolbar.COUIToolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        int iCombineMeasuredStates;
        int iMax;
        int paddingStart;
        int i12;
        int measuredWidth2;
        int i13;
        int iMax2;
        int iCombineMeasuredStates2;
        int measuredHeight;
        int iMeasureText;
        int measuredWidth3;
        int iCombineMeasuredStates3;
        int iMax3;
        int measuredHeight2;
        int iCombineMeasuredStates4;
        int iMax4;
        int i14;
        int i15;
        boolean z10 = m0.v(this) == 1;
        if (this.mIsTitleCenterStyle) {
            int[] iArr = this.mTempMargins;
            boolean zB = o0.b(this);
            int i16 = !zB ? 1 : 0;
            int contentInsetStart = getContentInsetStart();
            int iMax5 = Math.max(contentInsetStart, 0);
            iArr[zB ? 1 : 0] = Math.max(0, contentInsetStart);
            if (shouldLayout(this.mMenuView)) {
                changeToolbarPadding((MenuBuilder) this.mMenuView.getMenu(), null, z10, i10);
                measureChildConstrained(this.mMenuView, i10, 0, i11, 0, this.mMaxButtonHeight);
                measuredWidth3 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
                iMax3 = Math.max(0, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
                iCombineMeasuredStates3 = View.combineMeasuredStates(0, m0.w(this.mMenuView));
            } else {
                measuredWidth3 = 0;
                iCombineMeasuredStates3 = 0;
                iMax3 = 0;
            }
            int contentInsetEnd = getContentInsetEnd();
            int iMax6 = iMax5 + Math.max(contentInsetEnd, measuredWidth3);
            iArr[i16] = Math.max(0, contentInsetEnd - measuredWidth3);
            if (shouldLayout(this.mExpandedActionView)) {
                iMax6 += measureChildCollapseMargins(this.mExpandedActionView, i10, iMax6, i11, 0, iArr);
                iMax3 = Math.max(iMax3, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
                iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, m0.w(this.mExpandedActionView));
            }
            int childCount = getChildCount();
            int i17 = 0;
            int i18 = iMax3;
            int iCombineMeasuredStates5 = iCombineMeasuredStates3;
            int iMax7 = i18;
            while (i17 < childCount) {
                View childAt = getChildAt(i17);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mViewType == 0 && shouldLayout(childAt) && !layoutParams.mTypeSegmentButton) {
                    i15 = i17;
                    iMax6 += measureChildCollapseMargins(childAt, i10, iMax6, i11, 0, iArr);
                    iMax7 = Math.max(iMax7, childAt.getMeasuredHeight() + getVerticalMargins(childAt));
                    iCombineMeasuredStates5 = View.combineMeasuredStates(iCombineMeasuredStates5, m0.w(childAt));
                } else {
                    i15 = i17;
                    iMax7 = iMax7;
                }
                i17 = i15 + 1;
            }
            int i19 = iMax7;
            int i20 = this.mTitleMarginTop + this.mTitleMarginBottom;
            if (shouldLayout(this.mTitleTextView)) {
                this.mTitleTextView.getLayoutParams().width = -2;
                this.mTitleTextView.setTextSize(0, this.mTitleTextSize);
                measureChildCollapseMargins(this.mTitleTextView, i10, 0, i11, i20, iArr);
                int measuredWidth4 = this.mTitleTextView.getMeasuredWidth() + getHorizontalMargins(this.mTitleTextView);
                measuredHeight2 = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins(this.mTitleTextView);
                iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates5, m0.w(this.mTitleTextView));
                iMax4 = measuredWidth4;
            } else {
                measuredHeight2 = 0;
                iCombineMeasuredStates4 = iCombineMeasuredStates5;
                iMax4 = 0;
            }
            if (shouldLayout(this.mSubtitleTextView)) {
                this.mSubtitleTextView.getLayoutParams().width = -2;
                i14 = measuredHeight2;
                iMax4 = Math.max(iMax4, measureChildCollapseMargins(this.mSubtitleTextView, i10, 0, i11, measuredHeight2 + i20, iArr));
                iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates4, m0.w(this.mSubtitleTextView));
            } else {
                i14 = measuredHeight2;
            }
            int iMax8 = Math.max(i19, i14);
            int paddingLeft = iMax6 + iMax4 + getPaddingLeft() + getPaddingRight();
            int paddingTop = iMax8 + getPaddingTop() + getPaddingBottom();
            int iG0 = m0.g0(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates4);
            int iG02 = m0.g0(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates4 << 16);
            if (shouldCollapse()) {
                iG02 = 0;
            }
            setMeasuredDimension(iG0, iG02);
            calculateTitlePosition(this.mTitlePosition);
            int[] iArr2 = this.mTitlePosition;
            int i21 = iArr2[1] - iArr2[0];
            if (shouldLayout(this.mTitleTextView)) {
                this.mTitleTextView.setMaxWidth(i21);
                measureChildCollapseMargins(this.mTitleTextView, View.MeasureSpec.makeMeasureSpec(i21, Integer.MIN_VALUE), 0, i11, i20, iArr);
            }
            if (shouldLayout(this.mSubtitleTextView)) {
                this.mSubtitleTextView.setMaxWidth(i21);
                measureChildCollapseMargins(this.mSubtitleTextView, View.MeasureSpec.makeMeasureSpec(i21, Integer.MIN_VALUE), 0, i11, i14 + i20, iArr);
                return;
            }
            return;
        }
        int[] iArr3 = this.mTempMargins;
        boolean zB2 = o0.b(this);
        int i22 = !zB2 ? 1 : 0;
        if (shouldLayout(this.mNavButtonView)) {
            changeToolbarPadding(null, this.mNavButtonView, z10, i10);
            measureChildConstrained(this.mNavButtonView, i10, 0, i11, 0, this.mMaxButtonHeight);
            measuredWidth = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
            iMax = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
            iCombineMeasuredStates = View.combineMeasuredStates(0, m0.w(this.mNavButtonView));
        } else {
            measuredWidth = 0;
            iCombineMeasuredStates = 0;
            iMax = 0;
        }
        if (shouldLayout(this.mCollapseButtonView)) {
            measureChildConstrained(this.mCollapseButtonView, i10, 0, i11, 0, this.mMaxButtonHeight);
            measuredWidth = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
            iMax = Math.max(iMax, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, m0.w(this.mCollapseButtonView));
        }
        int iCombineMeasuredStates6 = iCombineMeasuredStates;
        int iMax9 = iMax;
        int contentInsetStart2 = getContentInsetStart();
        int iMax10 = Math.max(contentInsetStart2, measuredWidth);
        iArr3[zB2 ? 1 : 0] = Math.max(0, contentInsetStart2 - measuredWidth);
        int size = View.MeasureSpec.getSize(i10);
        int i23 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int i24 = this.mTitleMarginStart + this.mTitleMarginEnd;
        if (!shouldLayout(this.mSegmentButton) || this.mIsTitleCenterStyle) {
            paddingStart = 0;
            i12 = 0;
        } else {
            boolean zIsSmallScreen = COUIResponsiveUtils.isSmallScreen(getContext(), View.MeasureSpec.getSize(i10));
            if (shouldLayout(this.mTitleTextView)) {
                this.mTitleTextView.getLayoutParams().width = -2;
                this.mTitleTextView.setTextSize(0, this.mTitleTextSize);
                TextPaint paint = this.mTitleTextView.getPaint();
                CharSequence charSequence = this.mTitleText;
                iMeasureText = (int) paint.measureText(charSequence, 0, charSequence.length());
            } else {
                iMeasureText = 0;
            }
            int i25 = size / 2;
            int i26 = i25 - iMax10;
            if (iMeasureText <= (i26 - (this.mSegmentButtonMinWidth / 2)) - getPaddingStart()) {
                int paddingStart2 = ((i26 - iMeasureText) - getPaddingStart()) * 2;
                measureSegmentButtonConstrained(this.mSegmentButton, i10, iMax10, zIsSmallScreen ? Math.min(paddingStart2, this.mSegmentButtonMaxWidth) : paddingStart2, i11, this.mSegmentButtonHeight);
            } else {
                measureSegmentButtonConstrained(this.mSegmentButton, i10, iMax10, ((i26 - getPaddingStart()) / 2) * 2, i11, this.mSegmentButtonHeight);
            }
            int measuredWidth5 = this.mSegmentButton.getMeasuredWidth() + getHorizontalMargins(this.mSegmentButton);
            iMax9 = Math.max(iMax9, this.mSegmentButton.getMeasuredHeight() + getVerticalMargins(this.mSegmentButton));
            iCombineMeasuredStates6 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(this.mSegmentButton));
            paddingStart = (i25 + (measuredWidth5 / 2)) - getPaddingStart();
            i12 = measuredWidth5;
        }
        if (shouldLayout(this.mMenuView)) {
            int i27 = i12 > 0 ? paddingStart : iMax10;
            changeToolbarPadding((MenuBuilder) this.mMenuView.getMenu(), this.mNavButtonView, z10, i10);
            measureChildConstrained(this.mMenuView, i10, i27, i11, 0, this.mMaxButtonHeight);
            measuredWidth2 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
            iMax9 = Math.max(iMax9, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
            iCombineMeasuredStates6 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(this.mMenuView));
        } else {
            measuredWidth2 = 0;
        }
        int paddingEnd = ((size / 2) + (i12 / 2)) - getPaddingEnd();
        int contentInsetEnd2 = getContentInsetEnd();
        int iMax11 = i12 > 0 ? iMax10 + paddingEnd : iMax10 + Math.max(contentInsetEnd2, measuredWidth2);
        iArr3[i22] = Math.max(0, contentInsetEnd2 - measuredWidth2);
        if (shouldLayout(this.mExpandedActionView)) {
            iMax11 += measureChildCollapseMargins(this.mExpandedActionView, i10, iMax11, i11, 0, iArr3);
            iMax9 = Math.max(iMax9, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
            iCombineMeasuredStates6 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(this.mExpandedActionView));
        }
        if (shouldLayout(this.mLogoView)) {
            iMax11 += measureChildCollapseMargins(this.mLogoView, i10, iMax11, i11, 0, iArr3);
            iMax9 = Math.max(iMax9, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
            iCombineMeasuredStates6 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(this.mLogoView));
        }
        int childCount2 = getChildCount();
        int iMax12 = iMax9;
        for (int i28 = 0; i28 < childCount2; i28++) {
            View childAt2 = getChildAt(i28);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.mViewType == 0 && shouldLayout(childAt2) && !layoutParams2.mTypeSegmentButton) {
                iMax11 += measureChildCollapseMargins(childAt2, i10, iMax11, i11, 0, iArr3);
                iMax12 = Math.max(iMax12, childAt2.getMeasuredHeight() + getVerticalMargins(childAt2));
                iCombineMeasuredStates6 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(childAt2));
            }
        }
        if (shouldLayout(this.mTitleTextView)) {
            this.mTitleTextView.getLayoutParams().width = -1;
            i13 = 0;
            this.mTitleTextView.setTextSize(0, this.mTitleTextSize);
            measureChildCollapseMargins(this.mTitleTextView, i10, iMax11 + i24 + (shouldLayout(this.mNavButtonView) ? this.mGapBetweenNavigationAndTitle : 0), i11, i23, iArr3);
            int measuredWidth6 = this.mTitleTextView.getMeasuredWidth() + getHorizontalMargins(this.mTitleTextView);
            int measuredHeight3 = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins(this.mTitleTextView);
            iMax2 = measuredWidth6;
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates6, m0.w(this.mTitleTextView));
            measuredHeight = measuredHeight3;
        } else {
            i13 = 0;
            iMax2 = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates6;
            measuredHeight = 0;
        }
        if (shouldLayout(this.mSubtitleTextView)) {
            this.mSubtitleTextView.getLayoutParams().width = -1;
            iMax2 = Math.max(iMax2, measureChildCollapseMargins(this.mSubtitleTextView, i10, iMax11 + i24 + (shouldLayout(this.mNavButtonView) ? this.mGapBetweenNavigationAndTitle : i13), i11, measuredHeight + i23, iArr3));
            measuredHeight += this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, m0.w(this.mSubtitleTextView));
        }
        setMeasuredDimension(m0.g0(Math.max(iMax11 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates2), shouldCollapse() ? i13 : m0.g0(Math.max(Math.max(iMax12, measuredHeight) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        COUIRtlSpacingHelper cOUIRtlSpacingHelper = this.mContentInsets;
        if (cOUIRtlSpacingHelper != null) {
            cOUIRtlSpacingHelper.setDirection(i10 == 1);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iA = u.a(motionEvent);
        if (iA == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (iA == 0 && !zOnTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (iA == 1 || iA == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    public void refresh() {
        int i10;
        int i11;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.ActionBar, androidx.appcompat.R$attr.actionBarStyle, 0);
        setOverflowIcon(getResources().getDrawable(R$drawable.coui_toolbar_menu_icon_more, getContext().getTheme()));
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActionBar_homeAsUpIndicator);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = this.mMaskRippleDrawable;
        if (cOUIMaskRippleDrawable != null) {
            cOUIMaskRippleDrawable.refresh(getContext());
        }
        if (this.mMenuView != null) {
            this.mMenuView.mOverflowPopup = null;
        }
        if (this.mTitleTextView != null && this.mTitleTextAppearance != 0) {
            setTitleTextAppearance(getContext(), this.mTitleTextAppearance);
        }
        TextView textView = this.mTitleTextView;
        if (textView != null && (i11 = this.mTitleTextColor) != 0) {
            textView.setTextColor(i11);
        }
        TextView textView2 = this.mSubtitleTextView;
        if (textView2 != null && this.mSubtitleTextAppearance != 0) {
            textView2.setTextAppearance(getContext(), this.mSubtitleTextAppearance);
        }
        TextView textView3 = this.mSubtitleTextView;
        if (textView3 != null && (i10 = this.mSubtitleTextColor) != 0) {
            textView3.setTextColor(i10);
        }
        if (this.mResId != 0) {
            getMenu().clear();
            inflateMenu(this.mResId);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setCollapsible(boolean z10) {
        this.mCollapsible = z10;
        requestLayout();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setContentInsetsAbsolute(int i10, int i11) {
        this.mContentInsets.setAbsolute(i10, i11);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setContentInsetsRelative(int i10, int i11) {
        this.mContentInsets.setRelative(i10, i11);
    }

    @Deprecated
    public void setEnableAddExtraWidth(boolean z10) {
    }

    @Deprecated
    public void setIsFixTitleFontSize(boolean z10) {
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView != null) {
            cOUIActionMenuView.setIsFixTitleFontSize(z10);
        } else {
            Log.e(TAG, "setIsFixTitleFontSize when mMenuView is null");
        }
    }

    public void setIsInsideSideNavigationBar(boolean z10) {
        if (this.mIsInsideSideNavigationBar != z10) {
            this.mIsInsideSideNavigationBar = z10;
            requestLayout();
        }
    }

    public void setIsTitleCenterStyle(boolean z10) {
        ensureMenuView();
        this.mIsTitleCenterStyle = z10;
        LayoutParams layoutParams = (LayoutParams) this.mMenuView.getLayoutParams();
        boolean z11 = this.mIsTitleCenterStyle;
        if (z11) {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        }
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextAlignment(z11 ? 4 : 5);
        }
        this.mMenuView.setLayoutParams(layoutParams);
        requestLayout();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setLogo(int i10) {
        setLogo(a.b(getContext(), i10));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.mActionMenuPresenterCallback = callback;
        this.mMenuBuilderCallback = callback2;
    }

    public void setMenuViewColor(int i10) {
        Drawable overflowIcon;
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView == null || (overflowIcon = cOUIActionMenuView.getOverflowIcon()) == null || (overflowIcon instanceof f.a)) {
            return;
        }
        v.a.n(overflowIcon, i10);
        this.mMenuView.setOverflowIcon(overflowIcon);
    }

    public void setMinTitleTextSize(float f10) {
        float f11 = this.mTextMaxSize;
        if (f10 > f11) {
            f10 = f11;
        }
        this.mTextMinSize = f10;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i10) {
        this.mMinHeight = i10;
        super.setMinimumHeight(i10);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(int i10) {
        setNavigationIcon(a.b(getContext(), i10));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(onClickListener);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setOnMenuItemClickListener(Toolbar.h hVar) {
        this.mOnMenuItemClickListener = hVar;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setOverflowIcon(Drawable drawable) {
        ensureMenu();
        this.mMenuView.setOverflowIcon(drawable);
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public void setPopupMenuRuleEnabled(boolean z10) {
        this.mPopupRuleEnable = z10;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setPopupTheme(int i10) {
        if (this.mPopupTheme != i10) {
            this.mPopupTheme = i10;
            if (i10 == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPopupWindowOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        if (this.mMenuView != null) {
            this.mMenuView.setPopupWindowOnDismissListener(onDismissListener);
        }
    }

    public void setRedDot(int i10, int i11) {
        COUIActionMenuView cOUIActionMenuView = this.mMenuView;
        if (cOUIActionMenuView == null) {
            Log.e(TAG, "The COUIActionMenuView is null");
        } else {
            cOUIActionMenuView.setRedDot(i10, i11);
        }
    }

    public void setSearchView(View view) {
        setSearchView(view, view != null ? view.getLayoutParams() == null ? new LayoutParams(new LayoutParams(-1, this.mToolbarHeight)) : new LayoutParams(view.getLayoutParams()) : null);
    }

    public void setSegmentButtons(View view) {
        setSegmentButtons(view, view != null ? view.getLayoutParams() == null ? new LayoutParams(new LayoutParams(-2, this.mSegmentButtonHeight)) : new LayoutParams(view.getLayoutParams()) : null);
    }

    @Deprecated
    public void setSubMenuList(ArrayList<PopupListItem> arrayList, int i10, COUISubMenuClickListener cOUISubMenuClickListener) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitleTextAppearance(Context context, int i10) {
        this.mSubtitleTextAppearance = i10;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitleTextColor(int i10) {
        this.mSubtitleTextColor = i10;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitleMarginStart(int i10) {
        this.mTitleMarginStart = i10;
        requestLayout();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitleTextAppearance(Context context, int i10) {
        this.mTitleTextAppearance = i10;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i10);
            if (this.mTitleType == 1) {
                this.mTitleTextView.setTextSize(0, COUIChangeTextUtil.getSuitableFontSize(this.mTitleTextView.getTextSize(), getContext().getResources().getConfiguration().fontScale, 2));
            }
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(this.mTitleTextAppearance, new int[]{R.attr.minHeight});
            if (typedArrayObtainStyledAttributes != null) {
                this.mTitleTextView.setMinHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
                typedArrayObtainStyledAttributes.recycle();
            }
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(this.mTitleTextAppearance, new int[]{R.attr.lineSpacingMultiplier});
            if (typedArrayObtainStyledAttributes2 != null) {
                float f10 = typedArrayObtainStyledAttributes2.getFloat(0, 1.4f);
                TextView textView2 = this.mTitleTextView;
                textView2.setLineSpacing(textView2.getLineSpacingExtra(), f10);
                typedArrayObtainStyledAttributes2.recycle();
            }
            TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(this.mTitleTextAppearance, new int[]{R.attr.textAlignment});
            if (typedArrayObtainStyledAttributes3 != null) {
                int integer = typedArrayObtainStyledAttributes3.getInteger(0, 5);
                if (integer >= 0) {
                    this.mTitleTextView.setTextAlignment(integer);
                }
                typedArrayObtainStyledAttributes3.recycle();
            }
            TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(this.mTitleTextAppearance, new int[]{R.attr.maxLines});
            if (typedArrayObtainStyledAttributes4 != null) {
                int integer2 = typedArrayObtainStyledAttributes4.getInteger(0, 1);
                if (integer2 >= 1) {
                    this.mTitleTextView.setSingleLine(false);
                    this.mTitleTextView.setMaxLines(integer2);
                }
                typedArrayObtainStyledAttributes4.recycle();
            }
            this.mTextMaxSize = this.mTitleTextView.getTextSize();
            this.mTitleTextSize = this.mTitleTextView.getTextSize();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitleTextColor(int i10) {
        this.mTitleTextColor = i10;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    public void setTitleTextSize(float f10) {
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextSize(f10);
            this.mTitleTextSize = TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
        }
    }

    public void setTitleTextViewTypeface(Typeface typeface) {
        ensureTitleTextView();
        this.mTitleTextView.setTypeface(typeface);
    }

    public void setUseResponsivePadding(boolean z10) {
        this.mUseResponsivePadding = z10;
        requestLayout();
    }

    @Override // androidx.appcompat.widget.Toolbar
    public boolean showOverflowMenu() {
        return (this.mMenuView == null || this.mMenuView.getWindowToken() == null) ? super.showOverflowMenu() : this.mMenuView.showOverflowMenu();
    }

    public void tintNavigationIconDrawable(int i10) {
        Drawable drawable;
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton == null || (drawable = imageButton.getDrawable()) == null || (drawable instanceof f.a)) {
            return;
        }
        v.a.n(drawable, i10);
    }

    public COUIToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R$attr.toolbarStyle);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            ensureLogoView();
            if (this.mLogoView.getParent() == null) {
                addSystemView(this.mLogoView);
                updateChildVisibilityForExpandedActionView(this.mLogoView);
            }
        } else {
            ImageView imageView = this.mLogoView;
            if (imageView != null && imageView.getParent() != null) {
                removeView(this.mLogoView);
            }
        }
        ImageView imageView2 = this.mLogoView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureLogoView();
        }
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureNavButtonView();
        }
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            ensureNavButtonView();
            if (this.mNavButtonView.getParent() == null) {
                addSystemView(this.mNavButtonView);
                updateChildVisibilityForExpandedActionView(this.mNavButtonView);
            }
        } else {
            ImageButton imageButton = this.mNavButtonView;
            if (imageButton != null && imageButton.getParent() != null) {
                removeView(this.mNavButtonView);
            }
        }
        ImageButton imageButton2 = this.mNavButtonView;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mSubtitleTextView;
            if (textView != null && textView.getParent() != null) {
                removeView(this.mSubtitleTextView);
            }
        } else {
            if (this.mSubtitleTextView == null) {
                Context context = getContext();
                this.mSubtitleTextView = new TextView(context);
                LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
                layoutParamsGenerateDefaultLayoutParams.mTypeTitle = true;
                this.mSubtitleTextView.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.mSubtitleTextAppearance;
                if (i10 != 0) {
                    this.mSubtitleTextView.setTextAppearance(context, i10);
                }
                int i11 = this.mSubtitleTextColor;
                if (i11 != 0) {
                    this.mSubtitleTextView.setTextColor(i11);
                }
            }
            if (this.mSubtitleTextView.getParent() == null) {
                addSystemView(this.mSubtitleTextView);
                updateChildVisibilityForExpandedActionView(this.mSubtitleTextView);
            }
        }
        TextView textView2 = this.mSubtitleTextView;
        if (textView2 != null) {
            textView2.setTextAlignment(5);
            this.mSubtitleTextView.setText(charSequence);
        }
        this.mSubtitleText = charSequence;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mTitleTextView;
            if (textView != null && textView.getParent() != null) {
                removeView(this.mTitleTextView);
            }
        } else {
            ensureTitleTextView();
            if (this.mTitleTextView.getParent() == null) {
                addSystemView(this.mTitleTextView);
                updateChildVisibilityForExpandedActionView(this.mTitleTextView);
            }
        }
        TextView textView2 = this.mTitleTextView;
        if (textView2 != null) {
            textView2.setText(charSequence);
            this.mTitleTextSize = this.mTitleTextView.getTextSize();
        }
        this.mTitleText = charSequence;
    }

    public COUIToolbar(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_Toolbar);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public COUIToolbar(Context context, AttributeSet attributeSet, int i10, int i11) {
        int i12;
        super(context, attributeSet, i10);
        COUIRtlSpacingHelper cOUIRtlSpacingHelper = new COUIRtlSpacingHelper();
        this.mContentInsets = cOUIRtlSpacingHelper;
        this.mTempViews = new ArrayList<>();
        this.mTempMargins = new int[2];
        this.mMenuViewItemClickListener = new ActionMenuView.e() { // from class: com.coui.appcompat.toolbar.COUIToolbar.1
            AnonymousClass1() {
            }

            @Override // androidx.appcompat.widget.ActionMenuView.e
            public boolean onMenuItemClick(MenuItem menuItem) {
                if (COUIToolbar.this.mOnMenuItemClickListener != null) {
                    return COUIToolbar.this.mOnMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.mSearchCollapsingMargins = new int[2];
        this.mShowOverflowMenuRunnable = new Runnable() { // from class: com.coui.appcompat.toolbar.COUIToolbar.2
            AnonymousClass2() {
            }

            @Override // java.lang.Runnable
            public void run() {
                COUIToolbar.this.showOverflowMenu();
            }
        };
        this.mDisplayFrame = null;
        this.mWindowFrame = null;
        this.mGravity = 8388627;
        this.mIsTitleCenterStyle = false;
        this.mTitlePosition = new int[2];
        this.mTitleTextSize = 0.0f;
        this.mHasSearchViewFlag = false;
        this.mIsInsideSideNavigationBar = false;
        this.mPopupRuleEnable = true;
        this.mUseResponsivePadding = true;
        setClipToPadding(false);
        setClipChildren(false);
        if (attributeSet != null) {
            int styleAttribute = attributeSet.getStyleAttribute();
            this.mStyle = styleAttribute;
            if (styleAttribute == 0) {
                this.mStyle = i10;
            }
        } else {
            this.mStyle = 0;
        }
        h0 h0VarW = h0.w(getContext(), attributeSet, com.support.toolbar.R$styleable.COUIToolbar, R$attr.couiToolbarStyle, i11);
        if (h0VarW.s(com.support.toolbar.R$styleable.COUIToolbar_titleType)) {
            this.mTitleType = h0VarW.k(com.support.toolbar.R$styleable.COUIToolbar_titleType, 0);
        }
        this.mTitleTextAppearance = h0VarW.n(com.support.toolbar.R$styleable.COUIToolbar_supportTitleTextAppearance, 0);
        this.mSubtitleTextAppearance = h0VarW.n(com.support.toolbar.R$styleable.COUIToolbar_supportSubtitleTextAppearance, 0);
        this.mGravity = h0VarW.l(com.support.toolbar.R$styleable.COUIToolbar_android_gravity, this.mGravity);
        this.mButtonGravity = h0VarW.l(com.support.toolbar.R$styleable.COUIToolbar_supportButtonGravity, 48);
        this.mTitleMarginStart = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportTitleMargins, 0);
        this.mIsTiny = h0VarW.a(com.support.toolbar.R$styleable.COUIToolbar_supportIsTiny, false);
        this.mIsInsidePanel = h0VarW.a(com.support.toolbar.R$styleable.COUIToolbar_supportPanelStyle, false);
        int i13 = this.mTitleMarginStart;
        this.mTitleMarginEnd = i13;
        this.mTitleMarginTop = i13;
        this.mTitleMarginBottom = i13;
        int iE = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportTitleMarginStart, getContext().getResources().getDimensionPixelSize(R$dimen.coui_toolbar_support_margin_start));
        if (iE >= 0) {
            this.mTitleMarginStart = iE;
        }
        int iE2 = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportTitleMarginEnd, -1);
        if (iE2 >= 0) {
            this.mTitleMarginEnd = iE2;
        }
        int iE3 = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportTitleMarginTop, -1);
        if (iE3 >= 0) {
            this.mTitleMarginTop = iE3;
        }
        int iE4 = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportTitleMarginBottom, -1);
        if (iE4 >= 0) {
            this.mTitleMarginBottom = iE4;
        }
        this.mTitlePaddingTop = h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_supportTitlePaddingTop, 0);
        this.mTitlePaddingBottom = h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_supportTitlePaddingBottom, 0);
        this.mMaxButtonHeight = h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_supportMaxButtonHeight, -1);
        int iE5 = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportContentInsetStart, Integer.MIN_VALUE);
        int iE6 = h0VarW.e(com.support.toolbar.R$styleable.COUIToolbar_supportContentInsetEnd, Integer.MIN_VALUE);
        cOUIRtlSpacingHelper.setAbsolute(h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_supportContentInsetLeft, 0), h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_supportContentInsetRight, 0));
        if (iE5 != Integer.MIN_VALUE || iE6 != Integer.MIN_VALUE) {
            cOUIRtlSpacingHelper.setRelative(iE5, iE6);
        }
        this.mCollapseIcon = h0VarW.g(com.support.toolbar.R$styleable.COUIToolbar_supportCollapseIcon);
        this.mCollapseDescription = h0VarW.p(com.support.toolbar.R$styleable.COUIToolbar_supportCollapseContentDescription);
        CharSequence charSequenceP = h0VarW.p(com.support.toolbar.R$styleable.COUIToolbar_supportTitle);
        if (!TextUtils.isEmpty(charSequenceP)) {
            setTitle(charSequenceP);
        }
        CharSequence charSequenceP2 = h0VarW.p(com.support.toolbar.R$styleable.COUIToolbar_supportSubtitle);
        if (!TextUtils.isEmpty(charSequenceP2)) {
            setSubtitle(charSequenceP2);
        }
        this.mPopupContext = getContext();
        setPopupTheme(h0VarW.n(com.support.toolbar.R$styleable.COUIToolbar_supportPopupTheme, 0));
        Drawable drawableG = h0VarW.g(com.support.toolbar.R$styleable.COUIToolbar_supportNavigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceP3 = h0VarW.p(com.support.toolbar.R$styleable.COUIToolbar_supportNavigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceP3)) {
            setNavigationContentDescription(charSequenceP3);
        }
        this.mMinHeight = h0VarW.f(R$styleable.Toolbar_android_minHeight, 0);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (h0VarW.s(com.support.toolbar.R$styleable.COUIToolbar_minTitleTextSize)) {
            this.mTextMinSize = h0VarW.f(com.support.toolbar.R$styleable.COUIToolbar_minTitleTextSize, (int) (displayMetrics.scaledDensity * 16.0f));
        } else {
            this.mTextMinSize = displayMetrics.scaledDensity * 16.0f;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(this.mTitleTextAppearance, new int[]{R.attr.textSize});
        if (typedArrayObtainStyledAttributes != null) {
            this.mTextMaxSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, (int) (displayMetrics.scaledDensity * 24.0f));
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.mTitleType == 1) {
            this.mTextMaxSize = COUIChangeTextUtil.getSuitableFontSize(this.mTextMaxSize, getResources().getConfiguration().fontScale, 2);
            this.mTextMinSize = COUIChangeTextUtil.getSuitableFontSize(this.mTextMinSize, getResources().getConfiguration().fontScale, 2);
        }
        this.mSegmentButtonMaxWidth = getContext().getResources().getDimensionPixelSize(R$dimen.coui_toolbar_segment_button_max_width);
        this.mSegmentButtonMinWidth = getContext().getResources().getDimensionPixelSize(R$dimen.coui_toolbar_segment_button_min_width);
        this.mToolbarHeight = getContext().getResources().getDimensionPixelSize(R$dimen.toolbar_min_height);
        this.mSegmentButtonHeight = getContext().getResources().getDimensionPixelSize(R$dimen.segment_button_height);
        this.mToolbarNormalPaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_left);
        if (this.mIsTiny) {
            this.mToolbarNormalPaddingRight = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_tiny_right);
            changeBackViewParams();
        } else {
            this.mToolbarNormalPaddingRight = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_normal_menu_padding_right);
        }
        this.mToolbarCenterTitlePaddingLeft = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_title_padding_left);
        this.mToolbarCenterTitlePaddingRight = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_center_title_padding_right);
        this.mToolbarOverFlowPadding = getContext().getResources().getDimensionPixelOffset(R$dimen.toolbar_overflow_menu_padding);
        this.mTitleMinWidth = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_toolbar_title_min_width);
        this.mGapBetweenSearchViewAndMenu = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_toolbar_gap_between_search_and_menu);
        this.mGapBetweenNavigationAndTitle = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_toolbar_gap_between_navigation_and_title);
        if (h0VarW.s(com.support.toolbar.R$styleable.COUIToolbar_titleCenter)) {
            this.mIsTitleCenterStyle = h0VarW.a(com.support.toolbar.R$styleable.COUIToolbar_titleCenter, false);
        }
        TextView textView = this.mSubtitleTextView;
        if (textView != null && (i12 = this.mSubtitleTextAppearance) != 0) {
            textView.setTextAppearance(context, i12);
        }
        setWillNotDraw(false);
        h0VarW.y();
    }

    public static class LayoutParams extends Toolbar.g {
        static final int CUSTOM = 0;
        static final int EXPANDED = 2;
        static final int SYSTEM = 1;
        boolean mTypeSearch;
        boolean mTypeSegmentButton;
        boolean mTypeTitle;
        int mViewType;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
        }

        void copyMarginsFromCompat(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
            this.gravity = 8388627;
        }

        public LayoutParams(int i10, int i11, int i12) {
            super(i10, i11);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
            this.gravity = i12;
        }

        public LayoutParams(int i10) {
            this(-2, -1, i10);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((Toolbar.g) layoutParams);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
            this.mViewType = layoutParams.mViewType;
        }

        public LayoutParams(a.C0005a c0005a) {
            super(c0005a);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
            copyMarginsFromCompat(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mViewType = 0;
            this.mTypeSearch = false;
            this.mTypeTitle = false;
            this.mTypeSegmentButton = false;
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private void setSegmentButtons(View view, LayoutParams layoutParams) {
        if (view == null) {
            return;
        }
        this.mSegmentButton = view;
        LayoutParams layoutParams2 = new LayoutParams(layoutParams);
        layoutParams2.mViewType = 0;
        layoutParams2.mTypeSegmentButton = true;
        layoutParams2.gravity = 1;
        addView(view, 0, layoutParams2);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof a.C0005a) {
            return new LayoutParams((a.C0005a) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public void setSearchView(View view, LayoutParams layoutParams) {
        if (view == null) {
            this.mHasSearchViewFlag = false;
            return;
        }
        this.mHasSearchViewFlag = true;
        LayoutParams layoutParams2 = new LayoutParams(layoutParams);
        layoutParams2.mTypeSearch = true;
        layoutParams2.mViewType = 0;
        addView(view, 0, layoutParams2);
    }
}
