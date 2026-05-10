package com.coui.appcompat.bottomnavigation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.core.view.m0;
import com.coui.appcompat.accessibilityutil.COUIAccessibilityUtil;
import com.coui.appcompat.material.bottomnavigation.BottomNavigationItemView;
import com.coui.appcompat.reddot.COUIHintRedDot;
import com.coui.appcompat.state.COUIMaskEffectDrawable;
import com.coui.appcompat.state.COUIStateEffectDrawable;
import com.coui.appcompat.uiutil.UIUtil;
import com.google.android.material.R$id;
import com.support.bottomnavigation.R$bool;
import com.support.bottomnavigation.R$dimen;
import com.support.bottomnavigation.R$layout;
import d0.h;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public class COUINavigationItemView extends BottomNavigationItemView {
    public static final int TIPS_CIRCLE = 1;
    public static final int TIPS_HIDE = 3;
    public static final int TIPS_OVAL = 2;
    private int bigOffsetHorizontal;
    private AccessibilityManager mAccessibilityManager;
    private COUIHintRedDot mCOUIHintRedDot;
    private int mDefRedDotOffset;
    private int mDefRedDotTextOffsetHorizontal;
    private int mDefRedDotTextOffsetVertical;
    private int mEnlargeIconSize;
    private int mEnlargeItemHeight;
    private FrameLayout mFlRoot;
    private ImageView mIcon;
    private FrameLayout mIconContainer;
    private int mIconMarginTop;
    private boolean mIsEnlarge;
    private boolean mIsEnlargeView;
    private boolean mIsHorizontalView;
    private boolean mIsShowPressShadow;
    private final RectF mItemRect;
    private TextView mLargeLabel;
    private int mLayoutType;
    private COUIMaskEffectDrawable mMaskEffectDrawable;
    private int mNavigationType;
    private int mNormalIconSize;
    private int mNormalItemHeight;
    private Rect mRedDotRect;
    private TextView mSmallLabel;
    private COUIStateEffectDrawable mStateEffectBackground;
    private int mTextSize;
    private int[] offset;
    private int smallOffsetHorizontal;

    public COUINavigationItemView(Context context) {
        super(context);
        this.mItemRect = new RectF();
        this.smallOffsetHorizontal = -2;
        this.bigOffsetHorizontal = 1;
        this.mEnlargeIconSize = getResources().getDimensionPixelSize(R$dimen.coui_navigation_enlarge_icon_size);
        this.mNormalIconSize = getResources().getDimensionPixelSize(R$dimen.coui_navigation_normal_icon_size);
        this.mEnlargeItemHeight = getResources().getDimensionPixelSize(R$dimen.coui_navigation_enlarge_item_height);
        this.mNormalItemHeight = getResources().getDimensionPixelSize(R$dimen.coui_navigation_normal_item_height);
        this.mIconMarginTop = getResources().getDimensionPixelSize(R$dimen.coui_navigation_enlarge_icon_margin_top);
        this.mDefRedDotTextOffsetVertical = getResources().getDimensionPixelSize(R$dimen.coui_navigation_red_dot_with_number_vertical_offset);
        this.mDefRedDotTextOffsetHorizontal = 0;
        this.mDefRedDotOffset = getResources().getDimensionPixelSize(R$dimen.coui_navigation_red_dot_offset);
        this.offset = new int[2];
        this.mIsEnlarge = false;
        this.mIsEnlargeView = false;
        this.mIsShowPressShadow = false;
        this.mIsHorizontalView = false;
        this.mAccessibilityManager = null;
        this.mSmallLabel = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.mLargeLabel = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.mIcon = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        this.mIconContainer = (FrameLayout) findViewById(R$id.navigation_bar_item_icon_container);
        this.mFlRoot = (FrameLayout) findViewById(com.support.bottomnavigation.R$id.fl_root);
        this.mCOUIHintRedDot = (COUIHintRedDot) findViewById(com.support.bottomnavigation.R$id.red_dot);
        setTextSize(context.getResources().getDimensionPixelSize(R$dimen.coui_navigation_item_text_size));
        setClipChildren(false);
        setClipToPadding(false);
        setHapticFeedbackEnabled(false);
        this.mDefRedDotTextOffsetHorizontal = context.getResources().getDimensionPixelSize(R$dimen.coui_navigation_red_dot_with_number_horizontal_offset);
        configStateEffectBackground();
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
    }

    private void configStateEffectBackground() {
        setDefaultFocusHighlightEnabled(false);
        float dimension = getContext().getResources().getDimension(R$dimen.coui_navigation_item_background_radius);
        COUIMaskEffectDrawable cOUIMaskEffectDrawable = new COUIMaskEffectDrawable(getContext(), 1);
        this.mMaskEffectDrawable = cOUIMaskEffectDrawable;
        cOUIMaskEffectDrawable.setMaskRect(this.mItemRect, dimension, dimension);
        this.mMaskEffectDrawable.enableSelectedState(false);
        this.mMaskEffectDrawable.setMinProgressForTouchEnterAnimation(0.0f);
        COUIStateEffectDrawable cOUIStateEffectDrawable = new COUIStateEffectDrawable(new Drawable[]{getBackground() == null ? new ColorDrawable(0) : getBackground(), this.mMaskEffectDrawable});
        this.mStateEffectBackground = cOUIStateEffectDrawable;
        super.setBackground(cOUIStateEffectDrawable);
    }

    public static int dp2px(Context context, int i10) {
        return Double.valueOf(((double) (context.getResources().getConfiguration().densityDpi * i10)) + 0.5d).intValue();
    }

    private void enlargeSelectView(boolean z10) {
        if (this.mIsEnlargeView) {
            setIconSize(z10 ? this.mEnlargeIconSize : this.mNormalIconSize);
            this.mSmallLabel.setVisibility(z10 ? 8 : 0);
            if (this.mIsHorizontalView) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mIconContainer.getLayoutParams();
            layoutParams.setMargins(0, z10 ? 0 : this.mIconMarginTop, 0, 0);
            this.mIconContainer.setLayoutParams(layoutParams);
        }
    }

    private void getOffset(int[] iArr) {
        if (this.mCOUIHintRedDot.getPointMode() == 1) {
            int i10 = this.mDefRedDotOffset;
            iArr[1] = i10;
            iArr[0] = i10;
            return;
        }
        iArr[1] = this.mDefRedDotTextOffsetVertical;
        iArr[0] = this.mDefRedDotTextOffsetHorizontal;
        if (this.mCOUIHintRedDot.getPointNumber() >= 100 && this.mCOUIHintRedDot.getPointNumber() < 1000) {
            iArr[0] = iArr[0] + UIUtil.dip2px(getContext(), this.bigOffsetHorizontal);
        } else {
            if (this.mCOUIHintRedDot.getPointNumber() <= 0 || this.mCOUIHintRedDot.getPointNumber() >= 10) {
                return;
            }
            iArr[0] = iArr[0] + UIUtil.dip2px(getContext(), this.smallOffsetHorizontal);
        }
    }

    private boolean isRtlMode() {
        return getLayoutDirection() == 1;
    }

    private void layoutRedDot() {
        if (this.mCOUIHintRedDot.getVisibility() == 8) {
            return;
        }
        if (this.mRedDotRect == null) {
            this.mRedDotRect = new Rect();
        }
        getOffset(this.offset);
        if (m0.v(this) == 1) {
            this.mRedDotRect.set(this.mIconContainer.getLeft(), this.mIconContainer.getTop(), this.mIconContainer.getLeft() + this.mCOUIHintRedDot.getMeasuredWidth(), this.mIconContainer.getTop() + this.mCOUIHintRedDot.getMeasuredHeight());
            Rect rect = this.mRedDotRect;
            int[] iArr = this.offset;
            rect.offset(-iArr[0], -iArr[1]);
        } else {
            this.mRedDotRect.set(this.mIconContainer.getRight() - this.mCOUIHintRedDot.getMeasuredWidth(), this.mIconContainer.getTop(), this.mIconContainer.getRight(), this.mIconContainer.getTop() + this.mCOUIHintRedDot.getMeasuredHeight());
            Rect rect2 = this.mRedDotRect;
            int[] iArr2 = this.offset;
            rect2.offset(iArr2[0], -iArr2[1]);
        }
        COUIHintRedDot cOUIHintRedDot = this.mCOUIHintRedDot;
        Rect rect3 = this.mRedDotRect;
        cOUIHintRedDot.layout(rect3.left, rect3.top, rect3.right, rect3.bottom);
    }

    private void leftToRight() {
        int measuredWidth;
        int measuredWidth2;
        View childAt = this.mFlRoot.getChildAt(0);
        View childAt2 = this.mFlRoot.getChildAt(1);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_navigation_enlarge_icon_horizontal_margin);
        int measuredWidth3 = ((this.mFlRoot.getMeasuredWidth() - childAt.getMeasuredWidth()) - childAt2.getMeasuredWidth()) - dimensionPixelSize;
        int i10 = measuredWidth3 > 0 ? measuredWidth3 / 2 : 0;
        if (this.mIsEnlargeView) {
            measuredWidth2 = (this.mFlRoot.getMeasuredWidth() / 2) - (childAt.getMeasuredWidth() / 2);
            measuredWidth = (this.mFlRoot.getMeasuredWidth() / 2) + (childAt.getMeasuredWidth() / 2);
        } else {
            measuredWidth = i10 + childAt.getMeasuredWidth();
            measuredWidth2 = i10;
        }
        childAt.layout(measuredWidth2, (this.mFlRoot.getMeasuredHeight() / 2) - (childAt.getMeasuredHeight() / 2), measuredWidth, (this.mFlRoot.getMeasuredHeight() / 2) + (childAt.getMeasuredHeight() / 2));
        int right = childAt.getRight() + dimensionPixelSize;
        int measuredWidth4 = this.mFlRoot.getMeasuredWidth() - i10;
        int measuredHeight = (this.mFlRoot.getMeasuredHeight() / 2) - (childAt2.getMeasuredHeight() / 2);
        int measuredHeight2 = (this.mFlRoot.getMeasuredHeight() / 2) + (childAt2.getMeasuredHeight() / 2);
        childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4 - right, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
        childAt2.layout(right, measuredHeight, measuredWidth4, measuredHeight2);
        if (this.mIsEnlargeView) {
            childAt2.setVisibility(8);
        }
        this.mIsHorizontalView = true;
    }

    private void rightToLeft() {
        View childAt = this.mFlRoot.getChildAt(0);
        View childAt2 = this.mFlRoot.getChildAt(1);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_navigation_enlarge_icon_horizontal_margin);
        int measuredWidth = ((this.mFlRoot.getMeasuredWidth() - childAt.getMeasuredWidth()) - childAt2.getMeasuredWidth()) - dimensionPixelSize;
        int i10 = measuredWidth > 0 ? measuredWidth / 2 : 0;
        if (this.mIsEnlargeView) {
            childAt.layout((this.mFlRoot.getMeasuredWidth() / 2) - (childAt.getMeasuredWidth() / 2), (this.mFlRoot.getMeasuredHeight() / 2) - (childAt.getMeasuredHeight() / 2), (this.mFlRoot.getMeasuredWidth() / 2) + (childAt.getMeasuredWidth() / 2), (this.mFlRoot.getMeasuredHeight() / 2) + (childAt.getMeasuredHeight() / 2));
        } else {
            int measuredWidth2 = this.mFlRoot.getMeasuredWidth() - i10;
            childAt.layout(measuredWidth2 - childAt.getMeasuredWidth(), (this.mFlRoot.getMeasuredHeight() / 2) - (childAt.getMeasuredHeight() / 2), measuredWidth2, (this.mFlRoot.getMeasuredHeight() / 2) + (childAt.getMeasuredHeight() / 2));
        }
        int left = childAt.getLeft() - dimensionPixelSize;
        int measuredHeight = (this.mFlRoot.getMeasuredHeight() / 2) - (childAt2.getMeasuredHeight() / 2);
        int measuredHeight2 = (this.mFlRoot.getMeasuredHeight() / 2) + (childAt2.getMeasuredHeight() / 2);
        childAt2.measure(View.MeasureSpec.makeMeasureSpec(left - i10, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824));
        childAt2.layout(i10, measuredHeight, left, measuredHeight2);
        if (this.mIsEnlargeView) {
            childAt2.setVisibility(8);
        }
        this.mIsHorizontalView = true;
    }

    public void childLayout(int i10) {
        this.mLayoutType = i10;
        requestLayout();
    }

    public void clearColorFilter() {
        this.mIcon.clearColorFilter();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mIsShowPressShadow) {
            if (motionEvent.getActionMasked() == 0) {
                this.mStateEffectBackground.setTouched(true);
            }
            if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
                this.mStateEffectBackground.setTouched(false);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public COUIHintRedDot getCOUIHintRedDot() {
        return this.mCOUIHintRedDot;
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationItemView, com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemDefaultMarginResId() {
        return R$dimen.coui_navigation_enlarge_default_margin;
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationItemView, com.coui.appcompat.material.navigation.NavigationBarItemView
    protected int getItemLayoutResId() {
        return R$layout.coui_navigation_item_layout;
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i10) {
        super.initialize(menuItemImpl, i10);
        androidx.appcompat.widget.m0.a(this, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsEnlarge) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mFlRoot.getLayoutParams();
            layoutParams.gravity = 80;
            if (this.mIsEnlargeView) {
                layoutParams.height = this.mEnlargeItemHeight;
                setIconSize(this.mNormalIconSize);
                setIconTintList(null);
            } else {
                layoutParams.height = this.mNormalItemHeight;
            }
            this.mFlRoot.setLayoutParams(layoutParams);
            enlargeSelectView(isSelected());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mCOUIHintRedDot.setPointMode(0);
        this.mCOUIHintRedDot.setPointText("");
        this.mCOUIHintRedDot.setVisibility(4);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (this.mAccessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        return zOnHoverEvent;
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.mNavigationType == 0) {
            h hVarM0 = h.M0(accessibilityNodeInfo);
            hVarM0.k0(null);
            hVarM0.A0(null);
            accessibilityNodeInfo.setClassName(COUIAccessibilityUtil.BUTTON_CLASS_NAME);
            accessibilityNodeInfo.setSelected(false);
            hVarM0.b(h.a.f11466i);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = getResources().getConfiguration().orientation == 2;
        boolean z12 = getContext().getResources().getBoolean(R$bool.is_normal_layout);
        boolean z13 = getContext().getResources().getBoolean(R$bool.is_big_layout);
        boolean z14 = getContext().getResources().getBoolean(R$bool.is_small_layout);
        if (this.mLayoutType == 1) {
            topToBottom();
        } else if ((z11 || z13) && !isRtlMode() && !z14) {
            leftToRight();
        } else if ((z11 || z13) && isRtlMode()) {
            rightToLeft();
        } else if (z12 || z14) {
            topToBottom();
        }
        layoutRedDot();
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.mItemRect.set(0.0f, 0.0f, i10, i11);
    }

    public void refresh() {
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable != null) {
            cOUIStateEffectDrawable.refresh(getContext());
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        COUIStateEffectDrawable cOUIStateEffectDrawable = this.mStateEffectBackground;
        if (cOUIStateEffectDrawable == null) {
            super.setBackground(drawable);
        } else if (drawable == null) {
            cOUIStateEffectDrawable.setViewBackground(new ColorDrawable(0));
        } else {
            cOUIStateEffectDrawable.setViewBackground(drawable);
        }
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z10) {
        enlargeSelectView(z10);
        setSelected(z10);
    }

    public void setEnlarge(boolean z10, boolean z11) {
        this.mIsEnlarge = z10;
        this.mIsEnlargeView = z11;
    }

    public void setIconTintForWhite() {
        if (this.mIsEnlargeView) {
            return;
        }
        this.mIcon.setColorFilter(-1);
    }

    public void setNavigationType(int i10) {
        if (this.mNavigationType != i10) {
            this.mNavigationType = i10;
        }
    }

    protected void setShowPressShadow(boolean z10) {
        this.mIsShowPressShadow = z10;
    }

    public void setTextSize(int i10) {
        this.mTextSize = i10;
        this.mSmallLabel.setTextSize(0, i10);
        this.mLargeLabel.setTextSize(0, this.mTextSize);
        requestLayout();
    }

    public void topToBottom() {
        View childAt = this.mFlRoot.getChildAt(0);
        View childAt2 = this.mFlRoot.getChildAt(1);
        int dimensionPixelSize = (this.mIsEnlargeView && isSelected()) ? 0 : getResources().getDimensionPixelSize(R$dimen.coui_navigation_icon_margin_top);
        childAt.layout((this.mFlRoot.getMeasuredWidth() / 2) - (childAt.getMeasuredWidth() / 2), dimensionPixelSize, (this.mFlRoot.getMeasuredWidth() / 2) + (childAt.getMeasuredWidth() / 2), childAt.getMeasuredHeight() + dimensionPixelSize);
        childAt2.layout((this.mFlRoot.getMeasuredWidth() / 2) - (childAt2.getMeasuredWidth() / 2), ((this.mFlRoot.getMeasuredHeight() - childAt2.getMeasuredHeight()) - getResources().getDimensionPixelSize(R$dimen.coui_navigation_icon_margin_top)) + getResources().getDimensionPixelSize(R$dimen.coui_navigation_text_margin_top), (this.mFlRoot.getMeasuredWidth() / 2) + (childAt2.getMeasuredWidth() / 2), (this.mFlRoot.getMeasuredHeight() - getResources().getDimensionPixelSize(R$dimen.coui_navigation_icon_margin_top)) + getResources().getDimensionPixelSize(R$dimen.coui_navigation_text_margin_top));
        if (this.mIsEnlargeView) {
            childAt2.setVisibility(0);
        }
        this.mIsHorizontalView = false;
    }
}
