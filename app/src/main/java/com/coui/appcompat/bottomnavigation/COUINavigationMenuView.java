package com.coui.appcompat.bottomnavigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.MenuItemImpl;
import com.coui.appcompat.material.bottomnavigation.BottomNavigationMenuView;
import com.coui.appcompat.material.navigation.NavigationBarItemView;
import com.support.bottomnavigation.R$color;
import com.support.bottomnavigation.R$dimen;
import d0.h;
import java.util.ArrayList;
import r.a;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class COUINavigationMenuView extends BottomNavigationMenuView {
    protected static final long ACTIVE_ANIMATION_DURATION_MS = 100;
    public static final int MAX_ITEM_COUNT = 10;
    public static final int MAX_ITEM_COUNT_LARGE = 7;
    public static final int MAX_ITEM_COUNT_MEDIUM = 6;
    public static final int MAX_ITEM_COUNT_SMALL = 5;
    private COUINavigationItemView mCOUINavigationItemView;
    private int mDefaultPadding;
    private int mEnlargeIndex;
    private int mItemHeight;
    private int mLayoutType;
    private int mNavigationType;
    private int[] mTempChildWidths;
    private int mTextSize;

    public COUINavigationMenuView(Context context) {
        super(context);
        this.mEnlargeIndex = -1;
        this.mDefaultPadding = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_edge_item_padding);
        setClipChildren(false);
        setClipToPadding(false);
        this.mTempChildWidths = new int[10];
    }

    private void setLayoutPadding() {
        if (this.mLayoutType == 1) {
            this.mDefaultPadding = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_edge_item_default_padding);
            this.mItemHeight = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_item_default_height);
        } else {
            this.mDefaultPadding = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_edge_item_padding);
            this.mItemHeight = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_item_height);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
    }

    public void clearColorFilter() {
        for (int i10 = 0; i10 < getMenu().size(); i10++) {
            NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i10).getItemId());
            if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                ((COUINavigationItemView) navigationBarItemViewFindItemView).clearColorFilter();
            }
        }
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationMenuView, com.coui.appcompat.material.navigation.NavigationBarMenuView
    protected NavigationBarItemView createNavigationBarItemView(Context context) {
        COUINavigationItemView cOUINavigationItemView = new COUINavigationItemView(context);
        this.mCOUINavigationItemView = cOUINavigationItemView;
        cOUINavigationItemView.setLongClickable(isLongClickable());
        return this.mCOUINavigationItemView;
    }

    public COUINavigationItemView getCOUINavigationItemView() {
        return this.mCOUINavigationItemView;
    }

    public int getEnlargeId() {
        int i10 = this.mEnlargeIndex;
        return i10 == -1 ? i10 : getMenu().getVisibleItems().get(this.mEnlargeIndex).getItemId();
    }

    public MenuItemImpl getVisibleItem(int i10) {
        return getMenu().getVisibleItems().get(i10);
    }

    public ArrayList<MenuItemImpl> getVisibleItems() {
        return getMenu().getVisibleItems();
    }

    public void initEnlargeParams() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.gravity = 81;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLayoutPadding();
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarMenuView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.mNavigationType == 0) {
            h.M0(accessibilityNodeInfo).j0(null);
        }
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationMenuView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10) - (this.mDefaultPadding * 2);
        int size2 = getMenu().getVisibleItems().size();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_item_height);
        this.mItemHeight = dimensionPixelSize;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dimensionPixelSize, 1073741824);
        int i12 = size / (size2 == 0 ? 1 : size2);
        int i13 = size - (i12 * size2);
        for (int i14 = 0; i14 < size2; i14++) {
            int[] iArr = this.mTempChildWidths;
            iArr[i14] = i12;
            if (i13 > 0) {
                iArr[i14] = i12 + 1;
                i13--;
            }
        }
        int measuredWidth = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < getChildCount(); i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.mTempChildWidths[i15], 1073741824), iMakeMeasureSpec);
                childAt.getLayoutParams().width = childAt.getMeasuredWidth();
                measuredWidth += childAt.getMeasuredWidth();
                i15++;
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(this.mItemHeight, iMakeMeasureSpec, 0));
    }

    public void setEnlarge(boolean z10, int i10) {
        this.mEnlargeIndex = i10;
        if (!z10 || i10 < 0) {
            return;
        }
        int i11 = 0;
        while (i11 < getMenu().getVisibleItems().size()) {
            NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getVisibleItems().get(i11).getItemId());
            if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                ((COUINavigationItemView) navigationBarItemViewFindItemView).setEnlarge(true, i11 == this.mEnlargeIndex);
            }
            i11++;
        }
    }

    public void setItemForEnlargeColor() {
        for (int i10 = 0; i10 < getMenu().size(); i10++) {
            NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i10).getItemId());
            if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                navigationBarItemViewFindItemView.setTextColor(ColorStateList.valueOf(a.c(getContext(), R$color.coui_navigation_enlarge_item_color)));
                ((COUINavigationItemView) navigationBarItemViewFindItemView).setIconTintForWhite();
            }
        }
    }

    public void setItemLayoutType(int i10) {
        this.mLayoutType = i10;
        setLayoutPadding();
        for (int i11 = 0; i11 < getMenu().size(); i11++) {
            NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i11).getItemId());
            if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                ((COUINavigationItemView) navigationBarItemViewFindItemView).childLayout(this.mLayoutType);
            }
        }
    }

    protected void setItemNavigationType(int i10) {
        if (this.mNavigationType == i10) {
            return;
        }
        this.mNavigationType = i10;
        if (getMenu() != null) {
            for (int i11 = 0; i11 < getMenu().size(); i11++) {
                NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i11).getItemId());
                if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                    ((COUINavigationItemView) navigationBarItemViewFindItemView).setNavigationType(i10);
                }
            }
        }
    }

    protected void setShowPressShadow(boolean z10) {
        for (int i10 = 0; i10 < getMenu().size(); i10++) {
            NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i10).getItemId());
            if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                ((COUINavigationItemView) navigationBarItemViewFindItemView).setShowPressShadow(z10);
            }
        }
    }

    public void setTextSize(int i10) {
        this.mTextSize = i10;
        if (getMenu() != null) {
            for (int i11 = 0; i11 < getMenu().size(); i11++) {
                NavigationBarItemView navigationBarItemViewFindItemView = findItemView(getMenu().getItem(i11).getItemId());
                if (navigationBarItemViewFindItemView instanceof COUINavigationItemView) {
                    ((COUINavigationItemView) navigationBarItemViewFindItemView).setTextSize(this.mTextSize);
                }
            }
        }
    }
}
