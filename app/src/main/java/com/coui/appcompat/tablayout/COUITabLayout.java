package com.coui.appcompat.tablayout;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.core.view.m0;
import androidx.viewpager.widget.ViewPager;
import c0.e;
import c0.f;
import c0.g;
import com.coui.appcompat.animation.COUIEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.hapticfeedback.COUIHapticFeedbackConstants;
import com.coui.appcompat.scrollview.COUIHorizontalScrollView;
import com.support.appcompat.R$attr;
import com.support.tablayout.R$color;
import com.support.tablayout.R$dimen;
import com.support.tablayout.R$style;
import com.support.tablayout.R$styleable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class COUITabLayout extends COUIHorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    protected static final int DEFAULT_GAP_TEXT_ICON = 8;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
    private static final float DEFAULT_MAXIMUM_WIDTH_RATIO = 0.7f;
    public static final int DEFAULT_MIN_INDICATOR = 32;
    private static final int FIFTY = 50;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    private static final int HUNDRED_FIFTY = 150;
    public static final int INVALID_WIDTH = -1;
    private static final String MEDIUM_FONT = "sans-serif-medium";
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    public static final int MOTION_NON_ADJACENT_OFFSET = 24;
    public static final float ONE = 1.0f;
    private static final float POINT_FIVE = 0.5f;
    public static final int PRESS_RIPPLE_CORNER_RADIUS = 8;
    private static final String REGULAR_FONT = "sans-serif";
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final e TAB_POOL = new g(16);
    private static final int THREE_HUNDRED = 300;
    public static final float ZERO = 0.0f;
    private AdapterChangeListener mAdapterChangeListener;
    private int mBottomDividerColor;
    private boolean mBottomDividerEnabled;
    private int mButtonMarginEnd;
    private ArrayList<PrivateButton> mButtons;
    private OnTabSelectedListener mCurrentVpSelectedListener;
    private float mDefaultIndicatorRatio;
    private float mDefaultTabTextSize;
    protected int mDotHorizontalOffset;
    protected int mDotVerticalOffsetFromNumberRed;
    protected int mDotVerticalOffsetFromOnlyRed;
    protected boolean mEnableVibrator;
    private ArgbEvaluator mEvaluator;
    private int mIndicatorPadding;
    private boolean mIsUpdateindicatorposition;
    private float mLastOffset;
    private int mLongTextViewHeight;
    private int mMode;
    protected boolean mNeedAdjust;
    protected int mNormalTextColor;
    protected Typeface mNormalTypeface;
    private int mOriginalRequestedTabMaxWidth;
    private int mOriginalRequestedTabMinWidth;
    private TabLayoutOnPageChangeListener mPageChangeListener;
    private androidx.viewpager.widget.a mPagerAdapter;
    private DataSetObserver mPagerAdapterObserver;
    protected int mRequestedTabMaxWidth;
    private int mRequestedTabMinWidth;
    private int mResizeHeight;
    private ValueAnimator mScrollAnimator;
    private int mSelectedIndicatorColor;
    private int mSelectedIndicatorDisableColor;
    private OnTabSelectedListener mSelectedListener;
    private final ArrayList<OnTabSelectedListener> mSelectedListeners;
    private int mSelectedPosition;
    protected COUITab mSelectedTab;
    protected int mSelectedTextColor;
    protected Typeface mSelectedTypeface;
    private boolean mSetupViewPagerImplicitly;
    private int mStyle;
    protected boolean mTabAlreadyMeasure;
    protected final int mTabBackgroundResId;

    @Deprecated
    private int mTabGravity;
    private int mTabMinDivider;
    private int mTabMinMargin;
    protected int mTabPaddingBottom;
    protected int mTabPaddingEnd;
    protected int mTabPaddingStart;
    protected int mTabPaddingTop;
    protected final COUISlidingTabStrip mTabStrip;
    private int mTabTextAppearance;
    protected ColorStateList mTabTextColors;
    private int mTabTextDisabledColor;
    private float mTabTextSize;
    private Typeface mTabTextTypeFace;
    private final e mTabViewPool;
    private final ArrayList<COUITab> mTabs;
    private int mTextColorBlue;
    private int mTextColorGreen;
    private int mTextColorRed;
    private ViewPager mViewPager;

    /* JADX INFO: renamed from: com.coui.appcompat.tablayout.COUITabLayout$1 */
    class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        AnonymousClass1() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            COUITabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    private class AdapterChangeListener implements ViewPager.i {
        private boolean mAutoRefresh;

        AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.i
        public void onAdapterChanged(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2) {
            if (COUITabLayout.this.mViewPager == viewPager) {
                COUITabLayout.this.setPagerAdapter(aVar2, this.mAutoRefresh);
            }
        }

        void setAutoRefresh(boolean z10) {
            this.mAutoRefresh = z10;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public interface OnTabSelectedListener {
        void onTabReselected(COUITab cOUITab);

        void onTabSelected(COUITab cOUITab);

        void onTabUnselected(COUITab cOUITab);
    }

    private class PagerAdapterObserver extends DataSetObserver {
        PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            COUITabLayout.this.populateFromPagerAdapter();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            COUITabLayout.this.populateFromPagerAdapter();
        }
    }

    private class PrivateButton {
        View.OnClickListener mButtonClicklistener;
        Drawable mButtonDrawable;

        public PrivateButton(Drawable drawable, View.OnClickListener onClickListener) {
            this.mButtonDrawable = drawable;
            this.mButtonClicklistener = onClickListener;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabGravity {
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.j {
        private int mPreviousScrollState;
        private int mScrollState;
        private final WeakReference<COUITabLayout> mTabLayoutRef;

        public TabLayoutOnPageChangeListener(COUITabLayout cOUITabLayout) {
            this.mTabLayoutRef = new WeakReference<>(cOUITabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrollStateChanged(int i10) {
            this.mPreviousScrollState = this.mScrollState;
            this.mScrollState = i10;
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrolled(int i10, float f10, int i11) {
            COUITabLayout cOUITabLayout = this.mTabLayoutRef.get();
            if (cOUITabLayout != null) {
                int i12 = this.mScrollState;
                cOUITabLayout.setScrollPosition(i10, f10, i12 != 2 || this.mPreviousScrollState == 1, (i12 == 2 && this.mPreviousScrollState == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageSelected(int i10) {
            COUITabLayout cOUITabLayout = this.mTabLayoutRef.get();
            if (cOUITabLayout == null || cOUITabLayout.getSelectedTabPosition() == i10 || i10 >= cOUITabLayout.getTabCount()) {
                return;
            }
            int i11 = this.mScrollState;
            cOUITabLayout.selectTab(cOUITabLayout.getTabAt(i10), i11 == 0 || (i11 == 2 && this.mPreviousScrollState == 0));
        }

        void reset() {
            this.mPreviousScrollState = 0;
            this.mScrollState = 0;
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager mViewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.mViewPager = viewPager;
        }

        @Override // com.coui.appcompat.tablayout.COUITabLayout.OnTabSelectedListener
        public void onTabReselected(COUITab cOUITab) {
        }

        @Override // com.coui.appcompat.tablayout.COUITabLayout.OnTabSelectedListener
        public void onTabSelected(COUITab cOUITab) {
            this.mViewPager.setCurrentItem(cOUITab.getPosition());
        }

        @Override // com.coui.appcompat.tablayout.COUITabLayout.OnTabSelectedListener
        public void onTabUnselected(COUITab cOUITab) {
        }
    }

    public COUITabLayout(Context context) {
        this(context, null);
    }

    private void addTabFromItemView(COUITabItem cOUITabItem) {
        COUITab cOUITabNewTab = newTab();
        CharSequence charSequence = cOUITabItem.mText;
        if (charSequence != null) {
            cOUITabNewTab.setText(charSequence);
        }
        Drawable drawable = cOUITabItem.mIcon;
        if (drawable != null) {
            cOUITabNewTab.setIcon(drawable);
        }
        int i10 = cOUITabItem.mCustomLayout;
        if (i10 != 0) {
            cOUITabNewTab.setCustomView(i10);
        }
        if (!TextUtils.isEmpty(cOUITabItem.getContentDescription())) {
            cOUITabNewTab.setContentDescription(cOUITabItem.getContentDescription());
        }
        addTab(cOUITabNewTab);
    }

    private void addTabView(COUITab cOUITab) {
        this.mTabStrip.addView(cOUITab.mView, cOUITab.getPosition(), createLayoutParamsForTabs());
    }

    private void addViewInternal(View view) {
        if (!(view instanceof COUITabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        addTabFromItemView((COUITabItem) view);
    }

    private void animateToTab(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() == null || !m0.O(this) || this.mTabStrip.childrenNeedLayout()) {
            setScrollPosition(i10, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iCalculateScrollXForTab = calculateScrollXForTab(i10, 0.0f);
        if (scrollX != iCalculateScrollXForTab) {
            ensureScrollAnimator();
            this.mScrollAnimator.setIntValues(scrollX, iCalculateScrollXForTab);
            this.mScrollAnimator.start();
        }
        this.mTabStrip.animateIndicatorToPosition(i10, 300);
    }

    private void applyModeAndGravity() {
        updateTabViews(true);
    }

    private int calculateScrollXForTab(int i10, float f10) {
        int width;
        int width2 = 0;
        if (getWidth() == 0) {
            return 0;
        }
        View childAt = this.mTabStrip.getChildAt(i10);
        int i11 = i10 + 1;
        View childAt2 = i11 < this.mTabStrip.getChildCount() ? this.mTabStrip.getChildAt(i11) : null;
        if (childAt != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            width = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        } else {
            width = 0;
        }
        if (childAt2 != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) childAt2.getLayoutParams();
            width2 = layoutParams2.rightMargin + childAt2.getWidth() + layoutParams2.leftMargin;
        }
        int width3 = (width / 2) - (getWidth() / 2);
        if (childAt != null) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            width3 += m0.v(this) == 0 ? (childAt.getLeft() - layoutParams3.leftMargin) + (getPaddingLeft() / 2) + (getPaddingRight() / 2) : ((childAt.getRight() + layoutParams3.rightMargin) - (getPaddingLeft() / 2)) - (getPaddingRight() / 2);
        }
        int i12 = (int) ((width + width2) * 0.5f * f10);
        return m0.v(this) == 0 ? width3 + i12 : width3 - i12;
    }

    private void configureTab(COUITab cOUITab, int i10) {
        cOUITab.setPosition(i10);
        this.mTabs.add(i10, cOUITab);
        int size = this.mTabs.size();
        while (true) {
            i10++;
            if (i10 >= size) {
                return;
            } else {
                this.mTabs.get(i10).setPosition(i10);
            }
        }
    }

    private static ColorStateList createColorStateList(int i10, int i11, int i12) {
        return new ColorStateList(new int[][]{new int[]{16842913, 16842910}, new int[]{-16842913, -16842910}, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i12, i11, i10});
    }

    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        return new LinearLayout.LayoutParams(1, -1);
    }

    private COUITabView createTabView(COUITab cOUITab) {
        e eVar = this.mTabViewPool;
        COUITabView cOUITabView = eVar != null ? (COUITabView) eVar.b() : null;
        if (cOUITabView == null) {
            cOUITabView = new COUITabView(getContext(), this);
        }
        cOUITabView.setTab(cOUITab);
        cOUITabView.setFocusable(true);
        cOUITabView.setMinimumWidth(getTabMinWidth());
        cOUITabView.setEnabled(isEnabled());
        return cOUITabView;
    }

    private void dispatchTabReselected(COUITab cOUITab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            this.mSelectedListeners.get(size).onTabReselected(cOUITab);
        }
    }

    private void dispatchTabSelected(COUITab cOUITab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            this.mSelectedListeners.get(size).onTabSelected(cOUITab);
        }
    }

    private void dispatchTabUnselected(COUITab cOUITab) {
        for (int size = this.mSelectedListeners.size() - 1; size >= 0; size--) {
            this.mSelectedListeners.get(size).onTabUnselected(cOUITab);
        }
    }

    private void drawButton(Canvas canvas) {
        int width;
        int scrollX;
        int width2;
        int width3;
        int scrollX2;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_width);
        if (this.mButtons.size() == 1) {
            Drawable drawable = this.mButtons.get(0).mButtonDrawable;
            int dimensionPixelSize2 = this.mButtonMarginEnd;
            if (dimensionPixelSize2 == -1) {
                dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_default_horizontal_margin);
            }
            if (m0.v(this) == 1) {
                width2 = getScrollX() + dimensionPixelSize2;
                width3 = dimensionPixelSize + dimensionPixelSize2;
                scrollX2 = getScrollX();
            } else {
                width2 = (getWidth() - (dimensionPixelSize + dimensionPixelSize2)) + getScrollX();
                width3 = getWidth() - dimensionPixelSize2;
                scrollX2 = getScrollX();
            }
            drawable.setBounds(width2, (getHeight() / 2) - getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_default_vertical_margin), width3 + scrollX2, (getHeight() / 2) + getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_default_vertical_margin));
            drawable.draw(canvas);
            return;
        }
        if (this.mButtons.size() >= 2) {
            for (int i10 = 0; i10 < this.mButtons.size(); i10++) {
                int dimensionPixelSize3 = this.mButtonMarginEnd;
                if (dimensionPixelSize3 == -1) {
                    dimensionPixelSize3 = getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_multi_button_default_horizontal_margin);
                }
                if (m0.v(this) == 1) {
                    scrollX = dimensionPixelSize3 + (getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_multi_button_default_padding) * i10);
                    width = getScrollX();
                } else {
                    width = getWidth() - ((dimensionPixelSize3 + dimensionPixelSize) + (getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_multi_button_default_padding) * i10));
                    scrollX = getScrollX();
                }
                int i11 = scrollX + width;
                Drawable drawable2 = this.mButtons.get(i10).mButtonDrawable;
                drawable2.setBounds(i11, (getHeight() / 2) - getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_default_vertical_margin), i11 + dimensionPixelSize, (getHeight() / 2) + getResources().getDimensionPixelSize(R$dimen.coui_tab_layout_button_default_vertical_margin));
                drawable2.draw(canvas);
            }
        }
    }

    private void ensureScrollAnimator() {
        if (this.mScrollAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.mScrollAnimator = valueAnimator;
            valueAnimator.setInterpolator(new COUIEaseInterpolator());
            this.mScrollAnimator.setDuration(300L);
            this.mScrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.tablayout.COUITabLayout.1
                AnonymousClass1() {
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    COUITabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    private int getDefaultHeight() {
        int size = this.mTabs.size();
        for (int i10 = 0; i10 < size; i10++) {
            COUITab cOUITab = this.mTabs.get(i10);
            if (cOUITab != null && cOUITab.getIcon() != null && !TextUtils.isEmpty(cOUITab.getText())) {
                return DEFAULT_HEIGHT_WITH_TEXT_ICON;
            }
        }
        return 48;
    }

    private float getScrollPosition() {
        return this.mTabStrip.getIndicatorPosition();
    }

    private int getTabMinWidth() {
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.mTabStrip.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void removeTabViewAt(int i10) {
        COUITabView cOUITabView = (COUITabView) this.mTabStrip.getChildAt(i10);
        this.mTabStrip.removeViewAt(i10);
        if (cOUITabView != null) {
            cOUITabView.reset();
            this.mTabViewPool.a(cOUITabView);
        }
        requestLayout();
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.mTabStrip.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                this.mTabStrip.getChildAt(i11).setSelected(i11 == i10);
                i11++;
            }
        }
    }

    private void updateAllTabs() {
        int size = this.mTabs.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTabs.get(i10).updateView();
        }
    }

    private void updateTextColor() {
        this.mNormalTextColor = this.mTabTextColors.getDefaultColor();
        int colorForState = this.mTabTextColors.getColorForState(new int[]{16842910, 16842913}, COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorPrimaryText, 0));
        this.mSelectedTextColor = colorForState;
        this.mTextColorRed = Math.abs(Color.red(colorForState) - Color.red(this.mNormalTextColor));
        this.mTextColorGreen = Math.abs(Color.green(this.mSelectedTextColor) - Color.green(this.mNormalTextColor));
        this.mTextColorBlue = Math.abs(Color.blue(this.mSelectedTextColor) - Color.blue(this.mNormalTextColor));
    }

    public void addButton(int i10, View.OnClickListener onClickListener) {
        addButton(r.a.e(getContext(), i10), onClickListener);
    }

    public void addOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        if (this.mSelectedListeners.contains(onTabSelectedListener)) {
            return;
        }
        this.mSelectedListeners.add(onTabSelectedListener);
    }

    public void addTab(COUITab cOUITab) {
        addTab(cOUITab, this.mTabs.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        addViewInternal(view);
    }

    @Deprecated
    protected void changeTabTextFont(COUITabView cOUITabView, boolean z10) {
    }

    public void clearOnTabSelectedListeners() {
        this.mSelectedListeners.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip != null) {
            if (cOUISlidingTabStrip.getIndicatorBackgroundPaint() != null) {
                canvas.drawRect(this.mTabStrip.getIndicatorBackgroundPaddingLeft() + getScrollX(), getHeight() - this.mTabStrip.getIndicatorBackgroundHeight(), (getWidth() + getScrollX()) - this.mTabStrip.getIndicatorBackgroundPaddingRight(), getHeight(), this.mTabStrip.getIndicatorBackgroundPaint());
            }
            if (this.mTabStrip.getSelectedIndicatorPaint() != null) {
                canvas.drawText(" ", 0.0f, 0.0f, this.mTabStrip.getSelectedIndicatorPaint());
                if (this.mTabStrip.getIndicatorRight() > this.mTabStrip.getIndicatorLeft()) {
                    int paddingLeft = getPaddingLeft() + this.mTabStrip.getIndicatorLeft();
                    int paddingLeft2 = getPaddingLeft() + this.mTabStrip.getIndicatorRight();
                    int scrollX = (getScrollX() + getPaddingLeft()) - this.mIndicatorPadding;
                    int scrollX2 = ((getScrollX() + getWidth()) - getPaddingRight()) + this.mIndicatorPadding;
                    if (paddingLeft2 > scrollX && paddingLeft < scrollX2) {
                        if (paddingLeft < scrollX) {
                            paddingLeft = scrollX;
                        }
                        if (paddingLeft2 > scrollX2) {
                            paddingLeft2 = scrollX2;
                        }
                        canvas.drawRect(paddingLeft, getHeight() - this.mTabStrip.mSelectedIndicatorHeight, paddingLeft2, getHeight(), this.mTabStrip.getSelectedIndicatorPaint());
                    }
                }
                if (this.mBottomDividerEnabled) {
                    canvas.drawRect(getLeft(), getHeight() - 1, getScrollX() + getWidth() + this.mIndicatorPadding, getHeight(), this.mTabStrip.getBottomDividerPaint());
                }
            }
        }
        drawButton(canvas);
    }

    int dpToPx(int i10) {
        return Math.round(getResources().getDisplayMetrics().density * i10);
    }

    public boolean enableTab(int i10, boolean z10) {
        COUITabView cOUITabView;
        COUITab tabAt = getTabAt(i10);
        if (tabAt == null || (cOUITabView = tabAt.mView) == null) {
            return false;
        }
        cOUITabView.setEnabled(z10);
        return true;
    }

    public float getDefaultIndicatoRatio() {
        return this.mDefaultIndicatorRatio;
    }

    protected int getIndicatorAnimTime(int i10, int i11) {
        return Math.min(300, (Math.abs(i10 - i11) * 50) + 150);
    }

    public int getIndicatorBackgroundHeight() {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return -1;
        }
        return cOUISlidingTabStrip.getIndicatorBackgroundHeight();
    }

    public int getIndicatorBackgroundPaddingLeft() {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return -1;
        }
        return cOUISlidingTabStrip.getIndicatorBackgroundPaddingLeft();
    }

    public int getIndicatorBackgroundPaddingRight() {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return -1;
        }
        return cOUISlidingTabStrip.getIndicatorBackgroundPaddingRight();
    }

    public int getIndicatorBackgroundPaintColor() {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return -1;
        }
        return cOUISlidingTabStrip.getIndicatorBackgroundPaint().getColor();
    }

    public int getIndicatorPadding() {
        return this.mIndicatorPadding;
    }

    public float getIndicatorWidthRatio() {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return -1.0f;
        }
        return cOUISlidingTabStrip.getIndicatorWidthRatio();
    }

    public int getRequestedTabMaxWidth() {
        return this.mRequestedTabMaxWidth;
    }

    public int getRequestedTabMinWidth() {
        return this.mRequestedTabMinWidth;
    }

    public int getSelectedIndicatorColor() {
        return this.mSelectedIndicatorColor;
    }

    public int getSelectedTabPosition() {
        COUITab cOUITab = this.mSelectedTab;
        if (cOUITab != null) {
            return cOUITab.getPosition();
        }
        return -1;
    }

    public COUITab getTabAt(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return this.mTabs.get(i10);
    }

    public int getTabCount() {
        return this.mTabs.size();
    }

    public int getTabGravity() {
        return this.mTabGravity;
    }

    public int getTabMinDivider() {
        return this.mTabMinDivider;
    }

    public int getTabMinMargin() {
        return this.mTabMinMargin;
    }

    public int getTabMode() {
        return this.mMode;
    }

    public int getTabPaddingBottom() {
        return this.mTabPaddingBottom;
    }

    public int getTabPaddingEnd() {
        return this.mTabPaddingEnd;
    }

    public int getTabPaddingStart() {
        return this.mTabPaddingStart;
    }

    public int getTabPaddingTop() {
        return this.mTabPaddingTop;
    }

    public COUISlidingTabStrip getTabStrip() {
        return this.mTabStrip;
    }

    public ColorStateList getTabTextColors() {
        return this.mTabTextColors;
    }

    public float getTabTextSize() {
        return this.mTabTextSize;
    }

    @Deprecated
    public boolean isResizeText() {
        return false;
    }

    public boolean isUpdateindicatorposition() {
        return this.mIsUpdateindicatorposition;
    }

    public COUITab newTab() {
        COUITab cOUITab = (COUITab) TAB_POOL.b();
        if (cOUITab == null) {
            cOUITab = new COUITab();
        }
        cOUITab.mParent = this;
        cOUITab.mView = createTabView(cOUITab);
        return cOUITab;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mViewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                setupWithViewPager((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mTabAlreadyMeasure = false;
    }

    @Override // com.coui.appcompat.scrollview.COUIHorizontalScrollView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mSetupViewPagerImplicitly) {
            setupWithViewPager(null);
            this.mSetupViewPagerImplicitly = false;
        }
    }

    @Override // com.coui.appcompat.scrollview.COUIHorizontalScrollView, android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            for (int i10 = 0; i10 < this.mButtons.size(); i10++) {
                if (this.mButtons.get(i10).mButtonClicklistener != null && this.mButtons.get(i10).mButtonDrawable.getBounds().contains(((int) motionEvent.getX()) + getScrollX(), (int) motionEvent.getY())) {
                    return true;
                }
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        super.onLayout(z10, i10, i11, i12, i13);
        if (!this.mNeedAdjust || (i14 = this.mSelectedPosition) < 0 || i14 >= this.mTabStrip.getChildCount()) {
            return;
        }
        this.mNeedAdjust = false;
        scrollTo(calculateScrollXForTab(this.mSelectedPosition, 0.0f), 0);
    }

    @Override // com.coui.appcompat.scrollview.COUIHorizontalScrollView, android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iDpToPx = dpToPx(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(iDpToPx, View.MeasureSpec.getSize(i11)), 1073741824);
        } else if (mode == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(iDpToPx, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.mOriginalRequestedTabMaxWidth == -1) {
            this.mRequestedTabMaxWidth = (int) (size * DEFAULT_MAXIMUM_WIDTH_RATIO);
        }
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            setMeasuredDimension(0, 0);
            return;
        }
        int i12 = this.mMode;
        if (i12 == 0) {
            getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE), i11);
        } else if (i12 == 1) {
            getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i11);
        }
        setMeasuredDimension(size, getChildAt(0).getMeasuredHeight());
    }

    @Override // com.coui.appcompat.scrollview.COUIHorizontalScrollView, android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            for (int i10 = 0; i10 < this.mButtons.size(); i10++) {
                if (this.mButtons.get(i10).mButtonClicklistener != null && this.mButtons.get(i10).mButtonDrawable.getBounds().contains(((int) motionEvent.getX()) + getScrollX(), (int) motionEvent.getY())) {
                    this.mButtons.get(i10).mButtonClicklistener.onClick(this);
                    return true;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        androidx.viewpager.widget.a aVar = this.mPagerAdapter;
        if (aVar != null) {
            int count = aVar.getCount();
            androidx.viewpager.widget.a aVar2 = this.mPagerAdapter;
            if (aVar2 instanceof COUIFragmentStatePagerAdapter) {
                COUIFragmentStatePagerAdapter cOUIFragmentStatePagerAdapter = (COUIFragmentStatePagerAdapter) aVar2;
                for (int i10 = 0; i10 < count; i10++) {
                    if (cOUIFragmentStatePagerAdapter.getPageIcon(i10) > 0) {
                        addTab(newTab().setIcon(cOUIFragmentStatePagerAdapter.getPageIcon(i10)), false);
                    } else {
                        addTab(newTab().setText(cOUIFragmentStatePagerAdapter.getPageTitle(i10)), false);
                    }
                }
            } else {
                for (int i11 = 0; i11 < count; i11++) {
                    addTab(newTab().setText(this.mPagerAdapter.getPageTitle(i11)), false);
                }
            }
            ViewPager viewPager = this.mViewPager;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            selectTab(getTabAt(currentItem));
        }
    }

    public void refresh() {
        String resourceTypeName = getResources().getResourceTypeName(this.mStyle);
        TypedArray typedArrayObtainStyledAttributes = null;
        if ("attr".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUITabLayout, this.mStyle, 0);
        } else if ("style".equals(resourceTypeName)) {
            typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(null, R$styleable.COUITabLayout, 0, this.mStyle);
        }
        if (typedArrayObtainStyledAttributes != null) {
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUITabLayout_couiTabTextColor)) {
                this.mTabTextColors = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUITabLayout_couiTabTextColor);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUITabLayout_couiTabIndicatorColor)) {
                setSelectedTabIndicatorColor(typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabIndicatorColor, 0));
            }
            updateTextColor();
            typedArrayObtainStyledAttributes.recycle();
        }
        for (COUITab cOUITab : this.mTabs) {
            if (cOUITab != null && cOUITab.getView() != null) {
                cOUITab.getView().refresh();
            }
        }
    }

    public void removeAllButtons(int i10) {
        this.mButtons.clear();
        setTabMode(i10);
        invalidate();
    }

    public void removeAllTabs() {
        for (int childCount = this.mTabStrip.getChildCount() - 1; childCount >= 0; childCount--) {
            removeTabViewAt(childCount);
        }
        Iterator<COUITab> it = this.mTabs.iterator();
        while (it.hasNext()) {
            COUITab next = it.next();
            it.remove();
            next.reset();
            TAB_POOL.a(next);
        }
        this.mSelectedTab = null;
        this.mTabAlreadyMeasure = false;
    }

    public void removeOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        this.mSelectedListeners.remove(onTabSelectedListener);
    }

    public void removeTab(COUITab cOUITab) {
        if (cOUITab.mParent != this) {
            throw new IllegalArgumentException("COUITab does not belong to this TabLayout.");
        }
        removeTabAt(cOUITab.getPosition());
    }

    public void removeTabAt(int i10) {
        COUITab cOUITab = this.mSelectedTab;
        int position = cOUITab != null ? cOUITab.getPosition() : 0;
        removeTabViewAt(i10);
        COUITab cOUITabRemove = this.mTabs.remove(i10);
        if (cOUITabRemove != null) {
            cOUITabRemove.reset();
            TAB_POOL.a(cOUITabRemove);
        }
        int size = this.mTabs.size();
        for (int i11 = i10; i11 < size; i11++) {
            this.mTabs.get(i11).setPosition(i11);
        }
        if (position == i10) {
            selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, i10 - 1)));
        }
    }

    protected void resetTextColorAfterAnim() {
        int childCount = this.mTabStrip.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = this.mTabStrip.getChildAt(i10);
            if (childAt instanceof COUITabView) {
                ((COUITabView) childAt).getTextView().setTextColor(this.mTabTextColors);
            }
        }
    }

    public void selectTab(COUITab cOUITab) {
        selectTab(cOUITab, true);
    }

    public void setEnableVibrator(boolean z10) {
        this.mEnableVibrator = z10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.mTabStrip.setSelectedIndicatorColor(z10 ? this.mSelectedIndicatorColor : this.mSelectedIndicatorDisableColor);
        for (int i10 = 0; i10 < getTabCount(); i10++) {
            enableTab(i10, z10);
        }
    }

    public void setIndicatorAnimTime(int i10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip != null) {
            cOUISlidingTabStrip.setIndicatorAnimTime(i10);
        }
    }

    public void setIndicatorBackgroundColor(int i10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return;
        }
        cOUISlidingTabStrip.getIndicatorBackgroundPaint().setColor(i10);
    }

    public void setIndicatorBackgroundHeight(int i10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return;
        }
        cOUISlidingTabStrip.setIndicatorBackgroundHeight(i10);
    }

    public void setIndicatorBackgroundPaddingLeft(int i10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return;
        }
        cOUISlidingTabStrip.setIndicatorBackgroundPaddingLeft(i10);
    }

    public void setIndicatorBackgroundPaddingRight(int i10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return;
        }
        cOUISlidingTabStrip.setIndicatorBackgroundPaddingRight(i10);
    }

    public void setIndicatorPadding(int i10) {
        this.mIndicatorPadding = i10;
        requestLayout();
    }

    public void setIndicatorWidthRatio(float f10) {
        COUISlidingTabStrip cOUISlidingTabStrip = this.mTabStrip;
        if (cOUISlidingTabStrip == null) {
            return;
        }
        this.mDefaultIndicatorRatio = f10;
        cOUISlidingTabStrip.setIndicatorWidthRatio(f10);
    }

    @Deprecated
    public void setOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        OnTabSelectedListener onTabSelectedListener2 = this.mSelectedListener;
        if (onTabSelectedListener2 != null) {
            removeOnTabSelectedListener(onTabSelectedListener2);
        }
        this.mSelectedListener = onTabSelectedListener;
        if (onTabSelectedListener != null) {
            addOnTabSelectedListener(onTabSelectedListener);
        }
    }

    protected void setPaddingLeftAndRight(int i10, int i11) {
        m0.z0(this, i10, 0, i11, 0);
    }

    void setPagerAdapter(androidx.viewpager.widget.a aVar, boolean z10) {
        DataSetObserver dataSetObserver;
        androidx.viewpager.widget.a aVar2 = this.mPagerAdapter;
        if (aVar2 != null && (dataSetObserver = this.mPagerAdapterObserver) != null) {
            aVar2.unregisterDataSetObserver(dataSetObserver);
        }
        this.mPagerAdapter = aVar;
        if (z10 && aVar != null) {
            if (this.mPagerAdapterObserver == null) {
                this.mPagerAdapterObserver = new PagerAdapterObserver();
            }
            aVar.registerDataSetObserver(this.mPagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    public void setRequestedTabMaxWidth(int i10) {
        this.mRequestedTabMaxWidth = i10;
        this.mOriginalRequestedTabMaxWidth = i10;
    }

    public void setRequestedTabMinWidth(int i10) {
        this.mRequestedTabMinWidth = i10;
        this.mOriginalRequestedTabMinWidth = i10;
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.mScrollAnimator.addListener(animatorListener);
    }

    public void setScrollPosition(int i10, float f10, boolean z10) {
        setScrollPosition(i10, f10, z10, true);
    }

    public void setSelectedTabIndicatorColor(int i10) {
        this.mTabStrip.setSelectedIndicatorColor(i10);
        this.mSelectedIndicatorColor = i10;
    }

    public void setSelectedTabIndicatorHeight(int i10) {
        this.mTabStrip.setSelectedIndicatorHeight(i10);
    }

    public void setTabGravity(int i10) {
    }

    public void setTabMinDivider(int i10) {
        this.mTabMinDivider = i10;
        requestLayout();
    }

    public void setTabMinMargin(int i10) {
        this.mTabMinMargin = i10;
        m0.z0(this, i10, 0, i10, 0);
        requestLayout();
    }

    public void setTabMode(int i10) {
        if (i10 != this.mMode) {
            this.mMode = i10;
            applyModeAndGravity();
        }
    }

    public void setTabPaddingBottom(int i10) {
        this.mTabPaddingBottom = i10;
        requestLayout();
    }

    public void setTabPaddingEnd(int i10) {
        this.mTabPaddingEnd = i10;
        requestLayout();
    }

    public void setTabPaddingStart(int i10) {
        this.mTabPaddingStart = i10;
        requestLayout();
    }

    public void setTabPaddingTop(int i10) {
        this.mTabPaddingTop = i10;
        requestLayout();
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.mTabTextColors != colorStateList) {
            this.mTabTextColors = colorStateList;
            updateTextColor();
            updateAllTabs();
        }
    }

    public void setTabTextSize(float f10) {
        if (this.mTabStrip != null) {
            this.mDefaultTabTextSize = f10;
            this.mTabTextSize = f10;
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(androidx.viewpager.widget.a aVar) {
        setPagerAdapter(aVar, false);
    }

    public void setUpdateindicatorposition(boolean z10) {
        this.mIsUpdateindicatorposition = z10;
    }

    public void setupWithViewPager(ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public void updateTabViews(boolean z10) {
        for (int i10 = 0; i10 < this.mTabStrip.getChildCount(); i10++) {
            COUITabView cOUITabView = (COUITabView) this.mTabStrip.getChildAt(i10);
            cOUITabView.setMinimumWidth(getTabMinWidth());
            if (cOUITabView.getTextView() != null) {
                m0.z0(cOUITabView.getTextView(), this.mTabPaddingStart, this.mTabPaddingTop, this.mTabPaddingEnd, this.mTabPaddingBottom);
            }
            if (z10) {
                cOUITabView.requestLayout();
            }
        }
    }

    public COUITabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.support.tablayout.R$attr.couiTabLayoutStyle);
    }

    public void addButton(Drawable drawable, View.OnClickListener onClickListener) {
        addButton(drawable, onClickListener, (Drawable) null, (View.OnClickListener) null);
    }

    public void addTab(COUITab cOUITab, int i10) {
        addTab(cOUITab, i10, this.mTabs.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10) {
        addViewInternal(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public void selectTab(COUITab cOUITab, boolean z10) {
        COUITab cOUITab2 = this.mSelectedTab;
        if (cOUITab2 == cOUITab) {
            if (cOUITab2 != null) {
                dispatchTabReselected(cOUITab);
                return;
            }
            return;
        }
        int position = cOUITab != null ? cOUITab.getPosition() : -1;
        if (z10) {
            if ((cOUITab2 == null || cOUITab2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                animateToTab(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
            this.mSelectedPosition = position;
        } else if (isEnabled() && this.mEnableVibrator) {
            performHapticFeedback(COUIHapticFeedbackConstants.GRANULAR_SHORT_VIBRATE);
        }
        if (cOUITab2 != null) {
            dispatchTabUnselected(cOUITab2);
        }
        this.mSelectedTab = cOUITab;
        if (cOUITab != null) {
            dispatchTabSelected(cOUITab);
        }
    }

    public void setScrollPosition(int i10, float f10, boolean z10, boolean z11) {
        int iRound = Math.round(i10 + f10);
        if (iRound < 0 || iRound >= this.mTabStrip.getChildCount()) {
            return;
        }
        if (z11) {
            this.mTabStrip.setIndicatorPositionFromTabPosition(i10, f10);
        } else if (this.mTabStrip.mSelectedPosition != getSelectedTabPosition()) {
            this.mTabStrip.mSelectedPosition = getSelectedTabPosition();
            this.mTabStrip.updateIndicatorPosition();
        }
        ValueAnimator valueAnimator = this.mScrollAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mScrollAnimator.cancel();
        }
        scrollTo(calculateScrollXForTab(i10, f10), 0);
        if (z10) {
            setSelectedTabView(iRound, f10);
        }
    }

    public void setupWithViewPager(ViewPager viewPager, boolean z10) {
        setupWithViewPager(viewPager, z10, false);
    }

    public COUITabLayout(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.COUITabLayoutBaseStyle);
    }

    private void setupWithViewPager(ViewPager viewPager, boolean z10, boolean z11) {
        ViewPager viewPager2 = this.mViewPager;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.mPageChangeListener;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.I(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.mAdapterChangeListener;
            if (adapterChangeListener != null) {
                this.mViewPager.H(adapterChangeListener);
            }
        }
        OnTabSelectedListener onTabSelectedListener = this.mCurrentVpSelectedListener;
        if (onTabSelectedListener != null) {
            removeOnTabSelectedListener(onTabSelectedListener);
            this.mCurrentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.mViewPager = viewPager;
            if (this.mPageChangeListener == null) {
                this.mPageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.mPageChangeListener.reset();
            viewPager.c(this.mPageChangeListener);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.mCurrentVpSelectedListener = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener(viewPagerOnTabSelectedListener);
            if (viewPager.getAdapter() != null) {
                setPagerAdapter(viewPager.getAdapter(), z10);
            }
            if (this.mAdapterChangeListener == null) {
                this.mAdapterChangeListener = new AdapterChangeListener();
            }
            this.mAdapterChangeListener.setAutoRefresh(z10);
            viewPager.b(this.mAdapterChangeListener);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.mViewPager = null;
            setPagerAdapter(null, false);
        }
        this.mSetupViewPagerImplicitly = z11;
    }

    public void addButton(int i10, View.OnClickListener onClickListener, int i11, View.OnClickListener onClickListener2) {
        addButton(r.a.e(getContext(), i10), onClickListener, r.a.e(getContext(), i11), onClickListener2);
    }

    public void addTab(COUITab cOUITab, boolean z10) {
        addTab(cOUITab, this.mTabs.size(), z10);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public COUITabLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mTabs = new ArrayList<>();
        this.mSelectedListeners = new ArrayList<>();
        this.mTabViewPool = new f(12);
        this.mRequestedTabMaxWidth = -1;
        this.mSelectedPosition = 0;
        this.mLastOffset = 0.0f;
        this.mEvaluator = new ArgbEvaluator();
        this.mIsUpdateindicatorposition = false;
        this.mButtons = new ArrayList<>();
        if (attributeSet != null) {
            int styleAttribute = attributeSet.getStyleAttribute();
            this.mStyle = styleAttribute;
            if (styleAttribute == 0) {
                this.mStyle = i10;
            }
        } else {
            this.mStyle = i10;
        }
        this.mSelectedTypeface = Typeface.create("sans-serif-medium", 0);
        this.mNormalTypeface = Typeface.create(REGULAR_FONT, 0);
        setHorizontalScrollBarEnabled(false);
        COUISlidingTabStrip cOUISlidingTabStrip = new COUISlidingTabStrip(context, this);
        this.mTabStrip = cOUISlidingTabStrip;
        super.addView(cOUISlidingTabStrip, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUITabLayout, i10, i11);
        cOUISlidingTabStrip.setSelectedIndicatorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabIndicatorHeight, 0));
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabIndicatorColor, 0);
        this.mSelectedIndicatorColor = color;
        cOUISlidingTabStrip.setSelectedIndicatorColor(color);
        this.mBottomDividerColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabBottomDividerColor, 0);
        this.mBottomDividerEnabled = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUITabLayout_couiTabBottomDividerEnabled, false);
        cOUISlidingTabStrip.setBottomDividerColor(this.mBottomDividerColor);
        setIndicatorBackgroundHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabIndicatorBackgroundHeight, 0));
        setIndicatorBackgroundColor(typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabIndicatorBackgroundColor, 0));
        setIndicatorBackgroundPaddingLeft(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabIndicatorBackgroundPaddingLeft, 0));
        setIndicatorBackgroundPaddingRight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabIndicatorBackgroundPaddingRight, 0));
        setIndicatorWidthRatio(typedArrayObtainStyledAttributes.getFloat(R$styleable.COUITabLayout_couiTabIndicatorWidthRatio, 0.0f));
        this.mResizeHeight = getResources().getDimensionPixelOffset(R$dimen.coui_tablayout_default_resize_height);
        this.mLongTextViewHeight = getResources().getDimensionPixelOffset(R$dimen.tablayout_long_text_view_height);
        this.mTabMinDivider = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUITabLayout_couiTabMinDivider, -1);
        this.mTabMinMargin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUITabLayout_couiTabMinMargin, -1);
        this.mIndicatorPadding = getResources().getDimensionPixelOffset(R$dimen.coui_tablayout_indicator_padding);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabPadding, -1);
        this.mTabPaddingStart = dimensionPixelSize;
        this.mTabPaddingTop = dimensionPixelSize;
        this.mTabPaddingEnd = dimensionPixelSize;
        this.mTabPaddingBottom = dimensionPixelSize;
        this.mTabPaddingStart = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabPaddingStart, dimensionPixelSize);
        this.mTabPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabPaddingTop, this.mTabPaddingTop);
        this.mTabPaddingEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabPaddingEnd, this.mTabPaddingEnd);
        this.mTabPaddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabPaddingBottom, this.mTabPaddingBottom);
        this.mTabPaddingStart = Math.max(0, this.mTabPaddingStart);
        this.mTabPaddingTop = Math.max(0, this.mTabPaddingTop);
        this.mTabPaddingEnd = Math.max(0, this.mTabPaddingEnd);
        this.mTabPaddingBottom = Math.max(0, this.mTabPaddingBottom);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUITabLayout_couiTabTextAppearance, R$style.TextAppearance_Design_COUITab);
        this.mTabTextAppearance = resourceId;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, androidx.appcompat.R$styleable.TextAppearance);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
            this.mTabTextSize = dimensionPixelSize2;
            this.mDefaultTabTextSize = dimensionPixelSize2;
            this.mTabTextColors = typedArrayObtainStyledAttributes2.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes2.recycle();
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUITabLayout_couiTabTextColor)) {
                this.mTabTextColors = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUITabLayout_couiTabTextColor);
            }
            this.mTabTextDisabledColor = COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDisabledNeutral, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUITabLayout_couiTabSelectedTextColor)) {
                this.mTabTextColors = createColorStateList(this.mTabTextColors.getDefaultColor(), this.mTabTextDisabledColor, typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabSelectedTextColor, 0));
            }
            this.mRequestedTabMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUITabLayout_couiTabMinWidth, -1);
            this.mTabBackgroundResId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUITabLayout_couiTabBackground, 0);
            this.mMode = typedArrayObtainStyledAttributes.getInt(R$styleable.COUITabLayout_couiTabMode, 1);
            this.mTabGravity = typedArrayObtainStyledAttributes.getInt(R$styleable.COUITabLayout_couiTabGravity, 0);
            this.mEnableVibrator = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUITabLayout_couiTabEnableVibrator, true);
            this.mSelectedIndicatorDisableColor = typedArrayObtainStyledAttributes.getColor(R$styleable.COUITabLayout_couiTabIndicatorDisableColor, getResources().getColor(R$color.couiTabIndicatorDisableColor));
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.COUITabLayout_couiTabTextSize)) {
                float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUITabLayout_couiTabTextSize, 0.0f);
                this.mTabTextSize = dimension;
                this.mDefaultTabTextSize = dimension;
            }
            this.mOriginalRequestedTabMinWidth = this.mRequestedTabMinWidth;
            this.mOriginalRequestedTabMaxWidth = this.mRequestedTabMaxWidth;
            this.mButtonMarginEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUITabLayout_couiTabButtonMarginEnd, -1);
            typedArrayObtainStyledAttributes.recycle();
            this.mDotHorizontalOffset = context.getResources().getDimensionPixelSize(com.support.reddot.R$dimen.coui_dot_horizontal_offset);
            this.mDotVerticalOffsetFromOnlyRed = context.getResources().getDimensionPixelSize(com.support.reddot.R$dimen.coui_dot_vertical_offset_only_red);
            this.mDotVerticalOffsetFromNumberRed = context.getResources().getDimensionPixelSize(com.support.reddot.R$dimen.coui_dot_vertical_offset_number_red);
            applyModeAndGravity();
            updateTextColor();
            setOverScrollMode(1);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    private void setSelectedTabView(int i10, float f10) {
        COUITabView cOUITabView;
        float f11;
        if (Math.abs(f10 - this.mLastOffset) > 0.5f || f10 == 0.0f) {
            this.mSelectedPosition = i10;
        }
        this.mLastOffset = f10;
        if (i10 != this.mSelectedPosition && isEnabled()) {
            COUITabView cOUITabView2 = (COUITabView) this.mTabStrip.getChildAt(i10);
            if (f10 >= 0.5f) {
                cOUITabView = (COUITabView) this.mTabStrip.getChildAt(i10 - 1);
                f11 = f10 - 0.5f;
            } else {
                cOUITabView = (COUITabView) this.mTabStrip.getChildAt(i10 + 1);
                f11 = 0.5f - f10;
            }
            float f12 = f11 / 0.5f;
            if (cOUITabView.getTextView() != null) {
                cOUITabView.getTextView().setTextColor(((Integer) this.mEvaluator.evaluate(f12, Integer.valueOf(this.mSelectedTextColor), Integer.valueOf(this.mNormalTextColor))).intValue());
            }
            if (cOUITabView2.getTextView() != null) {
                cOUITabView2.getTextView().setTextColor(((Integer) this.mEvaluator.evaluate(f12, Integer.valueOf(this.mNormalTextColor), Integer.valueOf(this.mSelectedTextColor))).intValue());
            }
        }
        if (f10 != 0.0f || i10 >= getTabCount()) {
            return;
        }
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i11 < getTabCount()) {
                View childAt = this.mTabStrip.getChildAt(i11);
                COUITabView cOUITabView3 = (COUITabView) childAt;
                if (cOUITabView3.getTextView() != null) {
                    cOUITabView3.getTextView().setTextColor(this.mTabTextColors);
                }
                if (i11 != i10) {
                    z10 = false;
                }
                childAt.setSelected(z10);
                i11++;
            } else {
                this.mNeedAdjust = true;
                return;
            }
        }
    }

    public void addTab(COUITab cOUITab, int i10, boolean z10) {
        if (cOUITab.mParent == this) {
            configureTab(cOUITab, i10);
            addTabView(cOUITab);
            if (z10) {
                cOUITab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("COUITab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    @Deprecated
    public void setTabTextSize(float f10, boolean z10) {
        setTabTextSize(f10);
    }

    public void setTabTextColors(int i10, int i11) {
        setTabTextColors(createColorStateList(i10, this.mTabTextDisabledColor, i11));
    }

    public void addButton(Drawable drawable, View.OnClickListener onClickListener, Drawable drawable2, View.OnClickListener onClickListener2) {
        this.mButtons.clear();
        this.mButtons.add(new PrivateButton(drawable, onClickListener));
        if (drawable2 != null) {
            this.mButtons.add(new PrivateButton(drawable2, onClickListener2));
        }
        setTabMode(0);
        invalidate();
    }
}
