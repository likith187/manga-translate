package com.coui.appcompat.toolbar;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$string;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.o0;
import androidx.collection.a;
import androidx.core.view.m0;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.poplist.COUIPopupListWindow;
import com.coui.appcompat.poplist.COUISubMenuClickListener;
import com.coui.appcompat.poplist.PopupListItem;
import com.coui.appcompat.reddot.COUIHintRedDotHelper;
import com.coui.appcompat.state.COUIMaskRippleDrawable;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$style;
import com.support.reddot.R$plurals;
import com.support.reddot.R$styleable;
import com.support.toolbar.R$dimen;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class COUIActionMenuView extends ActionMenuView {
    private static final String EMPTY_TITLE = "";
    private static final int HUNDRED = 100;
    private static final int MAX_TEXT_MENU_ITEM_LINE = 2;
    private static final String OVER_FLOW_MENU_CLASS = "androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton";
    private static final String TAG = "COUIActionMenuView";
    private static final int TEN = 10;
    private AnimLevel mBlurMinAnimLevel;
    private int mEdgeIconItemMargin;
    private int mEdgeTextItemMargin;
    private boolean mEnableAddExtraWidth;
    private COUIHintRedDotHelper mHintRedDotHelper;
    private int mIconItemHorOffset;
    private boolean mIsFixTitleFontSize;
    private boolean mIsSameSide;
    private int mItemSpacing;
    private a mItemSpecialColorMap;
    private int mItemVerOffset;
    private COUIMaskRippleDrawable mMaskRippleDrawable;
    private MenuBuilder mMenu;
    private int mMenuIconBgRadius;
    private int mMenuIconTopPadding;
    private MenuItemImpl mMenuItem;
    private int mMenuViewPadding;
    private int mNonActionRedDotCount;
    private int mNonActionRedDotSum;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private AdapterView.OnItemClickListener mOnSubMenuItemClickListener;
    private final OpenOverflowRunnable mOpenOverflowRunnable;
    private String mOverFlowButtonDescription;
    private int mOverFlowHorPadding;
    private View mOverFlowMenuButton;
    private int mOverFlowMinWidth;
    private ArrayList<PopupListItem> mOverflowItems;
    private OverflowMenuListener mOverflowMenuListener;
    public COUIPopupListWindow mOverflowPopup;
    private List<Class<?>> mPresenterClasses;
    private String mRedDotDescription;
    private int mRedDotHorizontalOffset;
    private HashMap<Integer, Integer> mRedDotMap;
    private int mRedDotVerticalOffset;
    private int mRedDotWithBigNumberHorizontalOffset;
    private int mRedDotWithNumberDescriptionId;
    private int mRedDotWithNumberHorizontalOffset;
    private int mRedDotWithNumberVerticalOffset;
    private int mRedDotWithSmallNumberHorizontalOffset;
    private a mSubItemSpecialColorMap;
    private ArrayList<PopupListItem> mSubMenuList;
    private int mSubPosition;
    private int mTextExtarPadding;
    private int mTextMenuItemHorizontalPadding;
    private int mTextMenuItemMaxWidth;
    private int mToolbarTitleMinWidth;
    private boolean mUseBackgroundBlur;

    private class OpenOverflowRunnable implements Runnable {
        private OpenOverflowRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUIPopupListWindow cOUIPopupListWindow;
            if (COUIActionMenuView.this.mMenu != null) {
                COUIActionMenuView.this.mMenu.changeMenuMode();
            }
            if (COUIActionMenuView.this.getWindowToken() == null || (cOUIPopupListWindow = COUIActionMenuView.this.mOverflowPopup) == null || cOUIPopupListWindow.isShowing()) {
                return;
            }
            COUIActionMenuView cOUIActionMenuView = COUIActionMenuView.this;
            cOUIActionMenuView.mOverflowPopup.show(cOUIActionMenuView.mOverFlowMenuButton, COUIActionMenuView.this.mOverFlowMenuButton.getWidth() / 2, COUIActionMenuView.this.mOverFlowMenuButton.getHeight());
        }
    }

    public interface OverflowMenuListener {
        void onOverflowMenuPreShow(COUIPopupListWindow cOUIPopupListWindow);
    }

    public COUIActionMenuView(Context context) {
        this(context, null);
    }

    private void configOverflowIconBackground() {
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = new COUIMaskRippleDrawable(getContext());
        this.mMaskRippleDrawable = cOUIMaskRippleDrawable;
        cOUIMaskRippleDrawable.setCircleRippleMask(COUIMaskRippleDrawable.getMaskRippleRadiusByType(getContext(), 0));
        this.mOverFlowMenuButton.setBackground(this.mMaskRippleDrawable);
        COUIDarkModeUtil.setForceDarkAllow(this.mOverFlowMenuButton, false);
    }

    private void drawRedDot(View view, int i10, Canvas canvas) {
        int i11;
        int i12;
        float x10;
        float f10;
        float y10;
        float f11;
        float x11;
        float x12;
        int i13 = i10 != -1 ? i10 != 0 ? 2 : 1 : 0;
        if (view != null) {
            int viewWidth = this.mHintRedDotHelper.getViewWidth(i13, i10);
            int viewHeight = this.mHintRedDotHelper.getViewHeight(i13);
            if (i13 == 1) {
                i11 = this.mRedDotHorizontalOffset;
                i12 = this.mRedDotVerticalOffset;
            } else if (i10 < 10) {
                i11 = this.mRedDotWithSmallNumberHorizontalOffset;
                i12 = this.mRedDotWithNumberVerticalOffset;
            } else if (i10 < 100) {
                i11 = this.mRedDotWithNumberHorizontalOffset;
                i12 = this.mRedDotWithNumberVerticalOffset;
            } else {
                i11 = this.mRedDotWithBigNumberHorizontalOffset;
                i12 = this.mRedDotWithNumberVerticalOffset;
            }
            RectF rectF = new RectF();
            if ((view instanceof ActionMenuItemView) && ((ActionMenuItemView) view).getItemData().getIcon() == null) {
                if (isLayoutRTL()) {
                    x11 = (view.getX() + i11) - this.mMenuViewPadding;
                    x12 = x11 - viewWidth;
                } else {
                    x12 = ((view.getX() + view.getWidth()) - i11) + this.mMenuViewPadding;
                    x11 = viewWidth + x12;
                }
                y10 = (this.mMenuIconTopPadding - i12) + this.mItemVerOffset;
                f11 = viewHeight + y10;
            } else {
                if (isLayoutRTL()) {
                    x10 = (view.getX() + ((view.getWidth() - this.mMenuIconBgRadius) / 2)) - i11;
                    f10 = viewWidth + x10;
                } else {
                    float x13 = ((view.getX() + view.getWidth()) - ((view.getWidth() - this.mMenuIconBgRadius) / 2)) + i11;
                    x10 = x13 - viewWidth;
                    f10 = x13;
                }
                y10 = (view.getY() + ((view.getHeight() - this.mMenuIconBgRadius) / 2)) - i12;
                f11 = y10 + viewHeight;
                x11 = f10;
                x12 = x10;
            }
            rectF.left = x12;
            rectF.top = y10;
            rectF.right = x11;
            rectF.bottom = f11;
            this.mHintRedDotHelper.drawRedPoint(canvas, i13, Integer.valueOf(i10), rectF);
        }
    }

    private void ensureOverflowMenu() {
        if (this.mOverflowPopup == null) {
            Context context = getContext();
            if (!COUIContextUtil.isCOUITheme(context)) {
                Configuration configuration = getContext().getResources().getConfiguration();
                configuration.densityDpi = getContext().getResources().getDisplayMetrics().densityDpi;
                context = new ContextThemeWrapper(getContext().createConfigurationContext(configuration), R$style.Theme_COUI);
            }
            COUIPopupListWindow cOUIPopupListWindow = new COUIPopupListWindow(context);
            this.mOverflowPopup = cOUIPopupListWindow;
            cOUIPopupListWindow.setUseBackgroundBlur(this.mUseBackgroundBlur, this.mBlurMinAnimLevel);
            this.mOverflowPopup.setInputMethodMode(2);
            this.mOverflowPopup.setOnDismissListener(this.mOnDismissListener);
            this.mOverflowItems = new ArrayList<>();
        }
    }

    private boolean isLayoutRTL() {
        return m0.v(this) == 1;
    }

    private int measureChild(int i10, int i11) {
        int iMeasureChildCollapseMargins;
        int i12 = 0;
        if (!shouldUseStrictTextMeasure()) {
            int iMeasureChildCollapseMargins2 = 0;
            while (i12 < getChildCount()) {
                iMeasureChildCollapseMargins2 += measureChildCollapseMargins(getChildAt(i12), i10, iMeasureChildCollapseMargins2, i11, 0);
                i12++;
            }
            return iMeasureChildCollapseMargins2;
        }
        int size = View.MeasureSpec.getSize(i10);
        int i13 = this.mToolbarTitleMinWidth;
        while (i12 < getChildCount()) {
            View childAt = getChildAt(i12);
            if (childAt instanceof COUIActionMenuItemView) {
                COUIActionMenuItemView cOUIActionMenuItemView = (COUIActionMenuItemView) childAt;
                if (cOUIActionMenuItemView.isTextMenuItem()) {
                    TextView textView = (TextView) childAt;
                    int iMeasureTextLineCount = COUIChangeTextUtil.measureTextLineCount(textView, this.mTextMenuItemMaxWidth, this.mTextMenuItemHorizontalPadding * 2);
                    if (i12 == 0) {
                        if (iMeasureTextLineCount <= 2) {
                            cOUIActionMenuItemView.setMaxWidth(this.mTextMenuItemMaxWidth);
                        } else {
                            cOUIActionMenuItemView.setMaxWidth((size - i13) / 2);
                        }
                        iMeasureChildCollapseMargins = measureChildCollapseMargins(childAt, i10, ((size - i13) / 2) + i13, i11, 0);
                    } else {
                        if (iMeasureTextLineCount <= 2) {
                            cOUIActionMenuItemView.setMaxWidth(this.mTextMenuItemMaxWidth);
                        } else {
                            cOUIActionMenuItemView.setMaxWidth(COUIChangeTextUtil.binarySearchForOptimalTextViewWidth(textView, 2, this.mTextMenuItemMaxWidth, size - i13, this.mTextMenuItemHorizontalPadding * 2));
                        }
                        iMeasureChildCollapseMargins = measureChildCollapseMargins(childAt, i10, i13, i11, 0);
                    }
                    i13 += iMeasureChildCollapseMargins;
                }
            }
            i12++;
        }
        return i13;
    }

    private int measureChildCollapseMargins(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + i14 + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + i14;
    }

    private void resetItemMargin() {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            if (getChildAt(i13).getVisibility() != 8) {
                i12++;
                if (i12 == 1) {
                    i10 = i13;
                    i11 = i10;
                } else {
                    i11 = i13;
                }
            }
        }
        if (i10 != -1 && !this.mIsSameSide && i12 > 1) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuItemView) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                if (((ActionMenuItemView) childAt).getItemData().getIcon() == null) {
                    if (isLayoutRTL()) {
                        marginLayoutParams.rightMargin = this.mEdgeTextItemMargin;
                    } else {
                        marginLayoutParams.leftMargin = this.mEdgeTextItemMargin;
                    }
                } else if (isLayoutRTL()) {
                    marginLayoutParams.rightMargin = this.mEdgeIconItemMargin;
                } else {
                    marginLayoutParams.leftMargin = this.mEdgeIconItemMargin;
                }
            }
        }
        if (i11 != -1) {
            View childAt2 = getChildAt(i11);
            if (childAt2 instanceof ActionMenuItemView) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
                if (((ActionMenuItemView) childAt2).getItemData().getIcon() == null) {
                    if (isLayoutRTL()) {
                        marginLayoutParams2.leftMargin = this.mEdgeTextItemMargin;
                        return;
                    } else {
                        marginLayoutParams2.rightMargin = this.mEdgeTextItemMargin;
                        return;
                    }
                }
                if (isLayoutRTL()) {
                    marginLayoutParams2.leftMargin = this.mEdgeIconItemMargin;
                } else {
                    marginLayoutParams2.rightMargin = this.mEdgeIconItemMargin;
                }
            }
        }
    }

    private String setRedDotDescription(int i10) {
        return i10 != -1 ? i10 != 0 ? getResources().getQuantityString(this.mRedDotWithNumberDescriptionId, i10, Integer.valueOf(i10)) : this.mRedDotDescription : "";
    }

    private boolean shouldUseStrictTextMeasure() {
        if (getChildCount() != 2 || this.mIsSameSide) {
            return false;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if ((childAt instanceof COUIActionMenuItemView) && !((COUIActionMenuItemView) childAt).isTextMenuItem()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryBuildOverflowMenu() {
        ArrayList<PopupListItem> arrayList;
        Integer num;
        ensureOverflowMenu();
        this.mOverflowItems.clear();
        if (this.mMenu != null) {
            PopupListItem.Builder builder = new PopupListItem.Builder();
            for (int i10 = 0; i10 < this.mMenu.getNonActionItems().size(); i10++) {
                MenuItemImpl menuItemImpl = this.mMenu.getNonActionItems().get(i10);
                this.mMenuItem = menuItemImpl;
                if (menuItemImpl.hasSubMenu()) {
                    arrayList = new ArrayList<>();
                    SubMenu subMenu = this.mMenuItem.getSubMenu();
                    for (int i11 = 0; i11 < subMenu.size(); i11++) {
                        MenuItem item = subMenu.getItem(i11);
                        builder.reset().setId(item.getItemId()).setIcon(item.getIcon()).setTitle(item.getTitle() != null ? item.getTitle().toString() : "").setGroupId(item.getGroupId()).setIsEnable(item.isEnabled());
                        arrayList.add(builder.build());
                    }
                } else {
                    arrayList = null;
                }
                int i12 = -1;
                int iIntValue = (!this.mRedDotMap.containsKey(Integer.valueOf(this.mMenuItem.getItemId())) || (num = this.mRedDotMap.get(Integer.valueOf(this.mMenuItem.getItemId()))) == null) ? -1 : num.intValue();
                PopupListItem.Builder redDotAmount = builder.reset().setId(this.mMenuItem.getItemId()).setIcon(this.mMenuItem.getIcon()).setTitle(this.mMenuItem.getTitle() != null ? this.mMenuItem.getTitle().toString() : "").setIsChecked(this.mMenuItem.isChecked()).setGroupId(this.mMenuItem.getGroupId()).setRedDotAmount(iIntValue);
                if (iIntValue != -1) {
                    i12 = 0;
                }
                redDotAmount.setHintType(i12).setSubMenuItemList(arrayList).setIsEnable(this.mMenuItem.isEnabled());
                this.mOverflowItems.add(builder.build());
            }
            this.mOverflowPopup.setItemList(this.mOverflowItems);
            this.mOverflowPopup.setIsFixedFontSize(this.mIsFixTitleFontSize);
            this.mOverflowPopup.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.coui.appcompat.toolbar.COUIActionMenuView.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i13, long j10) {
                    if (i13 < COUIActionMenuView.this.mMenu.getNonActionItems().size()) {
                        if (((PopupListItem) COUIActionMenuView.this.mOverflowItems.get(i13)).getSubMenuItemList() != null) {
                            COUIActionMenuView.this.mMenu.performItemAction(COUIActionMenuView.this.mMenu.getNonActionItems().get(i13), 4);
                            return;
                        } else {
                            COUIActionMenuView.this.mMenu.performItemAction(COUIActionMenuView.this.mMenu.getNonActionItems().get(i13), 0);
                            COUIActionMenuView.this.mOverflowPopup.dismiss();
                            return;
                        }
                    }
                    COUILog.e(COUIActionMenuView.TAG, "IndexOutOfBoundsException! position = " + i13 + " non action items size = " + COUIActionMenuView.this.mMenu.getNonActionItems().size() + "popup menu size = " + COUIActionMenuView.this.mOverflowPopup.getItemList().size());
                }
            });
            this.mOverflowPopup.setSubMenuClickListener(this.mOnSubMenuItemClickListener);
            OverflowMenuListener overflowMenuListener = this.mOverflowMenuListener;
            if (overflowMenuListener != null) {
                overflowMenuListener.onOverflowMenuPreShow(this.mOverflowPopup);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        view.setHapticFeedbackEnabled(false);
        androidx.appcompat.widget.m0.a(view, "");
        if (((ActionMenuView.c) layoutParams).f624a) {
            this.mOverFlowMenuButton = view;
            configOverflowIconBackground();
            layoutParams.height = -1;
            this.mOverFlowMenuButton.setMinimumWidth(this.mOverFlowMinWidth);
            View view2 = this.mOverFlowMenuButton;
            view2.setPadding(this.mOverFlowHorPadding, view2.getPaddingTop(), this.mOverFlowHorPadding, this.mOverFlowMenuButton.getPaddingBottom());
            this.mOverFlowMenuButton.setOnTouchListener(null);
            this.mOverFlowMenuButton.setLongClickable(false);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.toolbar.COUIActionMenuView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    COUIActionMenuView.this.tryBuildOverflowMenu();
                    COUIActionMenuView cOUIActionMenuView = COUIActionMenuView.this;
                    cOUIActionMenuView.post(cOUIActionMenuView.mOpenOverflowRunnable);
                }
            });
        }
        super.addView(view, i10, layoutParams);
        configMenuItemViewAlignment();
    }

    public void clearRedDotInfo() {
        this.mNonActionRedDotSum = 0;
        this.mNonActionRedDotCount = 0;
        this.mRedDotMap.clear();
        postInvalidate();
    }

    protected void configMenuItemViewAlignment() {
        if (getParent() instanceof COUIToolbar) {
            this.mIsSameSide = !((COUIToolbar) getParent()).getIsTitleCenterStyle();
        } else {
            this.mIsSameSide = true;
        }
        if (!this.mIsSameSide) {
            View view = null;
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                if (childAt instanceof ActionMenuItemView) {
                    if (view != null) {
                        childAt.setTextAlignment(5);
                        view.setTextAlignment(6);
                    } else {
                        childAt.setTextAlignment(6);
                    }
                    view = childAt;
                }
            }
            return;
        }
        int i10 = 0;
        for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
            View childAt2 = getChildAt(childCount2);
            if (childAt2 instanceof ActionMenuItemView) {
                i10++;
                childAt2.setTextAlignment(4);
            }
        }
        if (i10 == 1 && (getChildAt(0) instanceof COUIActionMenuItemView)) {
            COUIActionMenuItemView cOUIActionMenuItemView = (COUIActionMenuItemView) getChildAt(0);
            if (cOUIActionMenuItemView.isTextMenuItem()) {
                cOUIActionMenuItemView.setTextAlignment(6);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView
    public void dismissPopupMenus() {
        COUIPopupListWindow cOUIPopupListWindow = this.mOverflowPopup;
        if (cOUIPopupListWindow != null) {
            cOUIPopupListWindow.dismiss();
        }
        super.dismissPopupMenus();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (this.mRedDotMap.containsKey(Integer.valueOf(childAt.getId()))) {
                Integer num = this.mRedDotMap.get(Integer.valueOf(childAt.getId()));
                drawRedDot(childAt, num == null ? 0 : num.intValue(), canvas);
            }
            if (((ActionMenuView.c) childAt.getLayoutParams()).f624a && this.mRedDotMap.size() > 0) {
                int i11 = this.mNonActionRedDotCount == 0 ? -1 : this.mNonActionRedDotSum;
                drawRedDot(childAt, i11, canvas);
                childAt.setContentDescription(TextUtils.isEmpty(setRedDotDescription(i11)) ? this.mOverFlowButtonDescription : this.mOverFlowButtonDescription + "," + setRedDotDescription(i11));
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView
    public Menu getMenu() {
        MenuBuilder menuBuilder = (MenuBuilder) super.getMenu();
        this.mMenu = menuBuilder;
        return menuBuilder;
    }

    public View getOverFlowMenuButton() {
        return this.mOverFlowMenuButton;
    }

    public COUIPopupListWindow getOverflowPopupWindow() {
        return this.mOverflowPopup;
    }

    @Override // androidx.appcompat.widget.ActionMenuView, androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
        super.initialize(menuBuilder);
    }

    @Override // androidx.appcompat.widget.ActionMenuView, androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            if (getChildAt(i16).getVisibility() != 8) {
                i15++;
            }
        }
        boolean zB = o0.b(this);
        int i17 = (i13 - i11) / 2;
        if (this.mIsSameSide) {
            if (zB) {
                int width = getWidth() - getPaddingRight();
                while (i14 < childCount) {
                    View childAt = getChildAt(i14);
                    ActionMenuView.c cVar = (ActionMenuView.c) childAt.getLayoutParams();
                    if (childAt.getVisibility() != 8) {
                        int i18 = width - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i19 = i17 - (measuredHeight / 2);
                        childAt.layout(i18 - measuredWidth, i19, i18, measuredHeight + i19);
                        width = i18 - ((measuredWidth + ((LinearLayout.LayoutParams) cVar).leftMargin) + this.mItemSpacing);
                    }
                    i14++;
                }
                return;
            }
            int paddingLeft = getPaddingLeft();
            while (i14 < childCount) {
                View childAt2 = getChildAt(i14);
                ActionMenuView.c cVar2 = (ActionMenuView.c) childAt2.getLayoutParams();
                if (childAt2.getVisibility() != 8) {
                    int i20 = paddingLeft + ((LinearLayout.LayoutParams) cVar2).leftMargin;
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    int i21 = i17 - (measuredHeight2 / 2);
                    childAt2.layout(i20, i21, i20 + measuredWidth2, measuredHeight2 + i21);
                    paddingLeft = i20 + measuredWidth2 + ((LinearLayout.LayoutParams) cVar2).rightMargin + this.mItemSpacing;
                }
                i14++;
            }
            return;
        }
        if (zB) {
            int paddingLeft2 = getPaddingLeft();
            boolean z11 = true;
            for (int i22 = childCount - 1; i22 >= 0; i22--) {
                View childAt3 = getChildAt(i22);
                ActionMenuView.c cVar3 = (ActionMenuView.c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8) {
                    paddingLeft2 += ((LinearLayout.LayoutParams) cVar3).leftMargin;
                    if (z11) {
                        if ((childAt3 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt3).getText())) {
                            paddingLeft2 += this.mTextExtarPadding;
                        }
                        z11 = false;
                    }
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i23 = i17 - (measuredHeight3 / 2);
                    if (i22 != 0 || i15 <= 1) {
                        childAt3.layout(paddingLeft2, i23, paddingLeft2 + measuredWidth3, measuredHeight3 + i23);
                        paddingLeft2 += measuredWidth3 + ((LinearLayout.LayoutParams) cVar3).rightMargin + this.mItemSpacing;
                    } else {
                        int width2 = ((getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar3).rightMargin) - measuredWidth3;
                        if ((childAt3 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt3).getText())) {
                            width2 -= this.mMenuViewPadding;
                        }
                        childAt3.layout(width2, i23, measuredWidth3 + width2, measuredHeight3 + i23);
                    }
                }
            }
            return;
        }
        int width3 = getWidth() - getPaddingRight();
        boolean z12 = true;
        for (int i24 = childCount - 1; i24 >= 0; i24--) {
            View childAt4 = getChildAt(i24);
            ActionMenuView.c cVar4 = (ActionMenuView.c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8) {
                width3 -= ((LinearLayout.LayoutParams) cVar4).rightMargin;
                if (z12) {
                    if ((childAt4 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt4).getText())) {
                        width3 -= this.mTextExtarPadding;
                    }
                    z12 = false;
                }
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i25 = i17 - (measuredHeight4 / 2);
                if (i24 != 0 || i15 <= 1) {
                    childAt4.layout(width3 - measuredWidth4, i25, width3, measuredHeight4 + i25);
                    width3 -= (measuredWidth4 + ((LinearLayout.LayoutParams) cVar4).leftMargin) + this.mItemSpacing;
                } else {
                    int paddingLeft3 = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar4).leftMargin;
                    if ((childAt4 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt4).getText())) {
                        paddingLeft3 += this.mMenuViewPadding;
                    }
                    childAt4.layout(paddingLeft3, i25, measuredWidth4 + paddingLeft3, measuredHeight4 + i25);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView, androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.mMenu == null) {
            super.onMeasure(i10, i11);
            return;
        }
        this.mIsSameSide = true;
        if ((getParent() instanceof COUIToolbar) && ((COUIToolbar) getParent()).getIsTitleCenterStyle()) {
            this.mIsSameSide = false;
        }
        setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        boolean z10 = m0.v(this) == 1;
        int size = View.MeasureSpec.getSize(i10);
        View.MeasureSpec.getSize(i11);
        resetItemMargin();
        int iMeasureChild = measureChild(i10, i11);
        int measuredHeight = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getMeasuredHeight() > measuredHeight) {
                measuredHeight = childAt.getMeasuredHeight();
            }
        }
        if (this.mIsSameSide) {
            int childCount = getChildCount();
            if (childCount > 0) {
                int i13 = 0;
                int i14 = -1;
                for (int i15 = 0; i15 < childCount; i15++) {
                    if (getChildAt(i15).getVisibility() != 8) {
                        i13++;
                        i14 = i15;
                    }
                }
                int i16 = iMeasureChild + ((i13 - 1) * this.mItemSpacing);
                if (i14 != -1) {
                    View childAt2 = getChildAt(i14);
                    if ((childAt2 instanceof TextView) && !TextUtils.isEmpty(((TextView) childAt2).getText())) {
                        i16 += this.mTextExtarPadding;
                    }
                }
                size = i16;
            } else {
                size = 0;
            }
            if (z10) {
                setPadding(getPaddingLeft(), getPaddingTop(), 0, getPaddingBottom());
            }
        }
        setMeasuredDimension(size, measuredHeight);
    }

    public void refresh() {
        COUIPopupListWindow cOUIPopupListWindow = this.mOverflowPopup;
        if (cOUIPopupListWindow != null) {
            cOUIPopupListWindow.refresh();
        }
        COUIMaskRippleDrawable cOUIMaskRippleDrawable = this.mMaskRippleDrawable;
        if (cOUIMaskRippleDrawable != null) {
            cOUIMaskRippleDrawable.refresh(getContext());
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof COUIActionMenuItemView) {
                ((COUIActionMenuItemView) childAt).refresh();
            }
        }
    }

    public void setBlurMinAnimLevel(AnimLevel animLevel) {
        this.mBlurMinAnimLevel = animLevel;
    }

    @Deprecated
    public void setEnableAddExtraWidth(boolean z10) {
    }

    @Deprecated
    public void setIsFixTitleFontSize(boolean z10) {
        this.mIsFixTitleFontSize = z10;
    }

    @Deprecated
    public void setItemSpecialColor(int i10, int i11) {
    }

    void setMenuItemGap(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof COUIActionMenuItemView) {
                ((COUIActionMenuItemView) childAt).setItemWithGap(z10);
            }
        }
    }

    public void setOnSubMenuItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mOnSubMenuItemClickListener = onItemClickListener;
    }

    public void setOverflowMenuListener(OverflowMenuListener overflowMenuListener) {
        this.mOverflowMenuListener = overflowMenuListener;
    }

    @Override // androidx.appcompat.widget.ActionMenuView
    public void setOverflowReserved(boolean z10) {
        super.setOverflowReserved(z10);
        COUIPopupListWindow cOUIPopupListWindow = this.mOverflowPopup;
        if (cOUIPopupListWindow == null || !cOUIPopupListWindow.isShowing()) {
            return;
        }
        if (this.mMenu.getNonActionItems().isEmpty()) {
            if (this.mOverflowPopup.getAdapter() instanceof BaseAdapter) {
                ((BaseAdapter) this.mOverflowPopup.getAdapter()).notifyDataSetChanged();
            }
            this.mOverflowPopup.dismiss();
        } else {
            tryBuildOverflowMenu();
            if (this.mOverflowPopup.getAdapter() instanceof BaseAdapter) {
                ((BaseAdapter) this.mOverflowPopup.getAdapter()).notifyDataSetChanged();
            }
        }
    }

    public void setPopupWindowOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void setRedDot(int i10, int i11) {
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder == null) {
            Log.e(TAG, "The MenuBuilder is null");
            return;
        }
        menuBuilder.flagActionItems();
        MenuItemImpl menuItemImpl = (MenuItemImpl) this.mMenu.findItem(i10);
        if (menuItemImpl == null) {
            return;
        }
        if (i11 != -1) {
            if (!menuItemImpl.isActionButton()) {
                if (this.mRedDotMap.containsKey(Integer.valueOf(i10))) {
                    Integer num = this.mRedDotMap.get(Integer.valueOf(i10));
                    this.mNonActionRedDotSum = (this.mNonActionRedDotSum + i11) - (num != null ? num.intValue() : 0);
                } else {
                    this.mNonActionRedDotCount++;
                    this.mNonActionRedDotSum += i11;
                }
            }
            this.mRedDotMap.put(Integer.valueOf(i10), Integer.valueOf(i11));
        } else if (this.mRedDotMap.containsKey(Integer.valueOf(i10))) {
            if (!menuItemImpl.isActionButton()) {
                int i12 = this.mNonActionRedDotCount;
                this.mNonActionRedDotCount = i12 - (i12 == 0 ? 0 : 1);
                Integer num2 = this.mRedDotMap.get(Integer.valueOf(i10));
                this.mNonActionRedDotSum -= num2 != null ? num2.intValue() : 0;
            }
            this.mRedDotMap.remove(Integer.valueOf(i10));
        }
        CharSequence title = menuItemImpl.getTitle();
        if (i11 != -1) {
            title = ((Object) title) + "," + setRedDotDescription(i11);
        }
        menuItemImpl.setContentDescription(title);
        postInvalidate();
    }

    @Deprecated
    public void setSubItemSpecialColor(int i10, int i11) {
    }

    @Deprecated
    public void setSubMenuClickListener(COUISubMenuClickListener cOUISubMenuClickListener) {
        this.mOnSubMenuItemClickListener = cOUISubMenuClickListener;
    }

    @Deprecated
    public void setSubMenuList(ArrayList<PopupListItem> arrayList, int i10) {
    }

    public void setUseBackgroundBlur(boolean z10) {
        this.mUseBackgroundBlur = z10;
    }

    @Override // androidx.appcompat.widget.ActionMenuView
    public boolean showOverflowMenu() {
        View view;
        Activity activityContextToActivity = UIUtil.contextToActivity(getContext());
        if ((activityContextToActivity != null && (activityContextToActivity.isFinishing() || activityContextToActivity.isDestroyed())) || this.mOverflowPopup == null || (view = this.mOverFlowMenuButton) == null || view.getParent() == null) {
            return false;
        }
        tryBuildOverflowMenu();
        post(this.mOpenOverflowRunnable);
        return true;
    }

    public COUIActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOpenOverflowRunnable = new OpenOverflowRunnable();
        this.mMenu = null;
        this.mPresenterClasses = new ArrayList();
        this.mIsSameSide = true;
        this.mMenuViewPadding = 0;
        this.mSubMenuList = null;
        this.mSubPosition = -1;
        this.mEnableAddExtraWidth = true;
        this.mOverflowMenuListener = null;
        this.mUseBackgroundBlur = false;
        this.mBlurMinAnimLevel = UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN;
        this.mOverFlowMinWidth = getResources().getDimensionPixelSize(R$dimen.coui_action_menu_item_min_width);
        this.mOverFlowHorPadding = getResources().getDimensionPixelSize(R$dimen.overflow_button_padding_horizontal);
        this.mEdgeIconItemMargin = getResources().getDimensionPixelSize(R$dimen.toolbar_edge_icon_menu_item_margin);
        this.mIconItemHorOffset = getResources().getDimensionPixelSize(R$dimen.toolbar_icon_item_horizontal_offset);
        this.mItemVerOffset = getResources().getDimensionPixelSize(R$dimen.toolbar_item_vertical_offset);
        this.mItemSpacing = getResources().getDimensionPixelSize(R$dimen.coui_actionbar_menuitemview_item_spacing);
        this.mRedDotMap = new HashMap<>();
        this.mRedDotHorizontalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_horizontal_offset);
        this.mRedDotVerticalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_vertical_offset);
        this.mRedDotWithNumberVerticalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_with_number_vertical_offset);
        this.mRedDotWithNumberHorizontalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_with_number_horizontal_offset);
        this.mRedDotWithSmallNumberHorizontalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_with_small_number_horizontal_offset);
        this.mRedDotWithBigNumberHorizontalOffset = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_red_dot_with_big_number_horizontal_offset);
        this.mMenuIconTopPadding = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_icon_top_padding);
        this.mHintRedDotHelper = new COUIHintRedDotHelper(getContext(), null, R$styleable.COUIHintRedDot, 0, com.support.reddot.R$style.Widget_COUI_COUIHintRedDot_Small);
        this.mOverFlowButtonDescription = getResources().getString(R$string.abc_action_menu_overflow_description);
        this.mRedDotDescription = getResources().getString(com.support.reddot.R$string.red_dot_description);
        this.mRedDotWithNumberDescriptionId = R$plurals.red_dot_with_number_description;
        this.mMenuIconBgRadius = getResources().getDimensionPixelSize(R$dimen.coui_toolbar_menu_bg_radius);
        this.mTextMenuItemMaxWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_action_bar_text_menu_item_max_width);
        this.mToolbarTitleMinWidth = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_title_min_width);
        this.mTextMenuItemHorizontalPadding = context.getResources().getDimensionPixelSize(R$dimen.coui_toolbar_text_menu_bg_padding_horizontal);
    }

    public void dismissPopupMenus(boolean z10) {
        COUIPopupListWindow cOUIPopupListWindow = this.mOverflowPopup;
        if (cOUIPopupListWindow != null) {
            if (z10) {
                cOUIPopupListWindow.dismiss();
            } else {
                cOUIPopupListWindow.superDismiss();
            }
        }
    }
}
