package com.coui.appcompat.bottomnavigation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.h0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import com.coui.appcompat.animation.COUIInEaseInterpolator;
import com.coui.appcompat.animation.COUILinearInterpolator;
import com.coui.appcompat.animation.COUIOutEaseInterpolator;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.darkmode.COUIDarkModeUtil;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.material.bottomnavigation.BottomNavigationView;
import com.coui.appcompat.material.navigation.NavigationBarMenuView;
import com.coui.appcompat.material.navigation.NavigationBarView;
import com.coui.appcompat.poplist.PopupMenuConfigRule;
import com.coui.appcompat.textutil.COUIChangeTextUtil;
import com.google.android.material.internal.ViewUtils;
import com.support.appcompat.R$attr;
import com.support.bottomnavigation.R$color;
import com.support.bottomnavigation.R$dimen;
import com.support.bottomnavigation.R$style;
import com.support.bottomnavigation.R$styleable;
import r.a;

/* JADX INFO: loaded from: classes.dex */
public class COUINavigationView extends BottomNavigationView implements PopupMenuConfigRule {
    private static final long DEFAULT_ENTER_TRANSLATE_ANIMATION_DURATION = 350;
    private static final long DEFAULT_HIDE_TRANSLATE_ANIMATION_DURATION = 200;
    public static final int DEFAULT_ITEM_LAYOUT_TYPE = 0;
    private static final long DEFAULT_SHOW_TRANSLATE_ANIMATION_DURATION = 250;
    private static final float END_ALPHA = 1.0f;
    public static final int ENTER_ANIMATION_TYPE = 1;
    public static final int EXIT_ANIMATION_TYPE = 2;
    public static final int NAVIGATION_TYPE_ENLARGE = 2;
    public static final int NAVIGATION_TYPE_TAB = 1;
    public static final int NAVIGATION_TYPE_TOOL = 0;
    private static final float START_ALPHA = 0.0f;
    public static final int VERTICAL_ITEM_LAYOUT_TYPE = 1;
    private COUINavigationMenuView mCOUINavigationMenuView;
    private OnConfigChangedListener mConfigChangedListener;
    private Rect mDisplayFrame;
    private Rect mDisplayFrameOutsets;
    private View mDividerView;
    private OnNavigationEnterExitListener mEndListener;
    private FrameLayout mEnlargeBgView;
    private int mEnlargeNavigationViewBgId;
    private OnEnlargeSelectListener mEnlargeSelectListener;
    private Animator mEnterAnimation;
    private ValueAnimator mEnterTranslateAnimation;
    private Animator mExitAnimation;
    private ValueAnimator mHideTranslateAnimation;
    private boolean mIsCheckEnlarge;
    private boolean mIsEnlarge;
    private int mLayoutType;
    private int mNavigationType;
    private int mNextMenuResId;
    private boolean mPopupRuleEnable;
    private OnNavigationShowHideListener mShowHideListener;
    private ValueAnimator mShowTranslateAnimation;
    private int mTextSizeResId;
    private Rect mWindowFrame;

    public interface OnConfigChangedListener {
        void onConfigChanged(Configuration configuration);
    }

    public interface OnEnlargeSelectListener {
        void onEnlargeSelect(boolean z10, MenuItem menuItem);
    }

    public interface OnNavigationEnterExitListener {
        void onAnimationEnterEnd();

        void onAnimationExitEnd();
    }

    public interface OnNavigationShowHideListener {
        void onAnimationHideEnd();

        void onAnimationHideStart();

        void onAnimationHideUpdate(int i10);

        void onAnimationShowEnd();

        void onAnimationShowStart();

        void onAnimationShowUpdate(int i10);
    }

    public COUINavigationView(Context context) {
        this(context, null);
    }

    private void addCompatibilityTopDivider(Context context) {
        View view = new View(context);
        this.mDividerView = view;
        COUIDarkModeUtil.setForceDarkAllow(view, false);
        this.mDividerView.setBackgroundColor(COUIContextUtil.getAttrColor(context, R$attr.couiColorDivider));
        this.mDividerView.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.coui_navigation_shadow_height)));
        if (this.mIsEnlarge) {
            addView(this.mDividerView, 0);
        } else {
            addView(this.mDividerView);
            this.mCOUINavigationMenuView.setTop(0);
        }
    }

    private void addEnlargeBackgroundView() {
        this.mEnlargeBgView = new FrameLayout(getContext());
        this.mEnlargeBgView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.mEnlargeBgView, 0);
        m0.n0(this.mEnlargeBgView, new ColorDrawable(a.c(getContext(), R$color.coui_navigation_enlarge_default_bg)));
    }

    private void adjustMenuItemTextSize(Context context) {
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.coui_navigation_item_text_size);
        if (this.mTextSizeResId != 0) {
            dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(this.mTextSizeResId);
        } else if (this.mLayoutType == 1) {
            dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.coui_navigation_item_small_text_size);
        }
        this.mCOUINavigationMenuView.setTextSize(dimensionPixelOffset);
    }

    @SuppressLint({"RestrictedApi"})
    private void applyWindowInsets() {
        ViewUtils.doOnApplyWindowInsets(this, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.1
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public a1 onApplyWindowInsets(View view, a1 a1Var, ViewUtils.RelativePadding relativePadding) {
                boolean z10 = m0.v(view) == 1;
                int i10 = a1Var.f(a1.m.f()).f15807a;
                int i11 = a1Var.f(a1.m.f()).f15809c;
                relativePadding.start += z10 ? i11 : i10;
                int i12 = relativePadding.end;
                if (!z10) {
                    i10 = i11;
                }
                relativePadding.end = i12 + i10;
                relativePadding.applyToView(view);
                return a1Var;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"RestrictedApi"})
    public void checkEnlargeState() {
        if (this.mEnlargeNavigationViewBgId == 0) {
            return;
        }
        if (this.mIsCheckEnlarge) {
            setItemForEnlargeColor();
            this.mEnlargeBgView.setBackgroundResource(this.mEnlargeNavigationViewBgId);
        } else {
            this.mCOUINavigationMenuView.clearColorFilter();
            this.mCOUINavigationMenuView.setItemTextColor(getItemTextColor());
            this.mEnlargeBgView.setBackgroundColor(getResources().getColor(R$color.coui_navigation_enlarge_default_bg));
        }
    }

    private void initAnimation() {
        final AnimatorSet animatorSet = new AnimatorSet();
        COUINavigationMenuView cOUINavigationMenuView = this.mCOUINavigationMenuView;
        Property property = View.ALPHA;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cOUINavigationMenuView, (Property<COUINavigationMenuView, Float>) property, 0.0f, 1.0f);
        this.mEnterAnimation = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new COUIInEaseInterpolator());
        this.mEnterAnimation.setDuration(100L);
        this.mEnterAnimation.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUINavigationView.this.mEndListener != null) {
                    COUINavigationView.this.mEndListener.onAnimationEnterEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (COUINavigationView.this.mNextMenuResId != 0) {
                    COUINavigationView cOUINavigationView = COUINavigationView.this;
                    cOUINavigationView.inflateMenu(cOUINavigationView.mNextMenuResId);
                    COUINavigationView.this.mNextMenuResId = 0;
                }
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mCOUINavigationMenuView, (Property<COUINavigationMenuView, Float>) property, 1.0f, 0.0f);
        this.mExitAnimation = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setInterpolator(new COUILinearInterpolator());
        this.mExitAnimation.setDuration(100L);
        this.mExitAnimation.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUINavigationView.this.mNextMenuResId != 0) {
                    COUINavigationView.this.mCOUINavigationMenuView.setTranslationY(-COUINavigationView.this.getHeight());
                    animatorSet.start();
                }
                if (COUINavigationView.this.mEndListener != null) {
                    COUINavigationView.this.mEndListener.onAnimationExitEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mEnterTranslateAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new COUIInEaseInterpolator());
        this.mEnterTranslateAnimation.setDuration(DEFAULT_ENTER_TRANSLATE_ANIMATION_DURATION);
        this.mEnterTranslateAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                COUINavigationView.this.mCOUINavigationMenuView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue() * COUINavigationView.this.getMeasuredHeight());
            }
        });
        animatorSet.playTogether(this.mEnterAnimation, this.mEnterTranslateAnimation);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mHideTranslateAnimation = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setInterpolator(new COUIOutEaseInterpolator());
        this.mHideTranslateAnimation.setDuration(DEFAULT_HIDE_TRANSLATE_ANIMATION_DURATION);
        this.mHideTranslateAnimation.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.6
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationHideEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationHideStart();
                }
            }
        });
        this.mHideTranslateAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) COUINavigationView.this.getLayoutParams();
                marginLayoutParams.bottomMargin = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * COUINavigationView.this.getMeasuredHeight() * (-1.0f));
                COUINavigationView.this.setLayoutParams(marginLayoutParams);
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationHideUpdate(marginLayoutParams.bottomMargin);
                }
            }
        });
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mShowTranslateAnimation = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setInterpolator(new COUIInEaseInterpolator());
        this.mShowTranslateAnimation.setDuration(DEFAULT_SHOW_TRANSLATE_ANIMATION_DURATION);
        this.mShowTranslateAnimation.addListener(new Animator.AnimatorListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.8
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationShowEnd();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationShowStart();
                }
            }
        });
        this.mShowTranslateAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) COUINavigationView.this.getLayoutParams();
                marginLayoutParams.bottomMargin = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * COUINavigationView.this.getMeasuredHeight() * (-1.0f));
                COUINavigationView.this.setLayoutParams(marginLayoutParams);
                if (COUINavigationView.this.mShowHideListener != null) {
                    COUINavigationView.this.mShowHideListener.onAnimationShowUpdate(marginLayoutParams.bottomMargin);
                }
            }
        });
    }

    private static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    private void setItemForEnlargeColor() {
        this.mCOUINavigationMenuView.setItemForEnlargeColor();
    }

    public void adjustNavigationItem() {
        if (COUIResponsiveUtils.isSmallScreen(getContext(), getMeasuredWidth())) {
            setItemLayoutType(1);
            this.mCOUINavigationMenuView.setTextSize(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_navigation_item_text_size));
        } else {
            setItemLayoutType(0);
            this.mCOUINavigationMenuView.setTextSize(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_navigation_item_large_text_size));
        }
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationView, com.coui.appcompat.material.navigation.NavigationBarView
    protected NavigationBarMenuView createNavigationBarMenuView(Context context) {
        return new COUINavigationMenuView(new ContextThemeWrapper(context, COUIContextUtil.getAttrId(context, com.support.bottomnavigation.R$attr.COUINavigationViewItemStyle, R$style.COUINavigationView_NoAnimation)));
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getBarrierDirection() {
        if (this.mWindowFrame == null) {
            this.mWindowFrame = new Rect();
        }
        getRootView().getGlobalVisibleRect(this.mWindowFrame);
        return this.mWindowFrame.height() <= getContext().getResources().getDimensionPixelSize(com.support.poplist.R$dimen.coui_popup_list_window_min_window_height_to_apply_vertical_barrier) ? -1 : 3;
    }

    public COUINavigationMenuView getCOUINavigationMenuView() {
        return this.mCOUINavigationMenuView;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getDisplayFrame() {
        if (this.mDisplayFrame == null) {
            this.mDisplayFrame = new Rect();
        }
        getGlobalVisibleRect(this.mDisplayFrame);
        return this.mDisplayFrame;
    }

    public View getDividerView() {
        return this.mDividerView;
    }

    public FrameLayout getEnlargeBgView() {
        return this.mEnlargeBgView;
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationView, com.coui.appcompat.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 10;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public Rect getOutsets() {
        if (this.mDisplayFrameOutsets == null) {
            this.mDisplayFrameOutsets = new Rect(0, getContext().getResources().getDimensionPixelOffset(R$dimen.coui_popup_list_window_gap_to_navigation_view), 0, 0);
        }
        return this.mDisplayFrameOutsets;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public boolean getPopupMenuRuleEnabled() {
        return this.mPopupRuleEnable;
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public int getType() {
        return 2;
    }

    public void hide() {
        hide(true);
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarView
    public void inflateMenu(int i10) {
        if (getMenu().size() > 0) {
            getMenu().clear();
        }
        super.inflateMenu(i10);
        if (this.mNavigationType == 0) {
            this.mCOUINavigationMenuView.setShowPressShadow(true);
        }
    }

    @Override // com.coui.appcompat.material.navigation.NavigationBarView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsEnlarge) {
            addEnlargeBackgroundView();
        }
        adjustMenuItemTextSize(getContext());
        this.mCOUINavigationMenuView.setItemLayoutType(this.mLayoutType);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        OnConfigChangedListener onConfigChangedListener = this.mConfigChangedListener;
        if (onConfigChangedListener != null) {
            onConfigChangedListener.onConfigChanged(configuration);
        }
        adjustMenuItemTextSize(getContext().createConfigurationContext(configuration));
    }

    @Override // com.coui.appcompat.material.bottomnavigation.BottomNavigationView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_tool_navigation_item_height);
        if (mode == Integer.MIN_VALUE) {
            i11 = View.MeasureSpec.makeMeasureSpec(dimensionPixelSize, 1073741824);
        } else if (mode == 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @SuppressLint({"RestrictedApi"})
    public void refresh() {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUINavigationMenuView, com.support.bottomnavigation.R$attr.couiNavigationViewStyle, COUIContextUtil.isCOUIDarkTheme(getContext()) ? R$style.Widget_COUI_COUINavigationView_Dark : R$style.Widget_COUI_COUINavigationView);
        this.mCOUINavigationMenuView.setIconTintList(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUINavigationMenuView_couiNaviIconTint));
        this.mCOUINavigationMenuView.setItemTextColor(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.COUINavigationMenuView_couiNaviTextColor));
        this.mDividerView.setBackgroundColor(COUIContextUtil.getAttrColor(getContext(), R$attr.couiColorDivider));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUINavigationMenuView_couiToolNavigationViewBg, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUINavigationMenuView_couiTabNavigationViewBg, 0);
        int i10 = this.mNavigationType;
        if (i10 == 2) {
            setBackgroundColor(0);
        } else if (i10 == 0) {
            setBackground(a.e(getContext(), resourceId));
        } else {
            setBackground(a.e(getContext(), resourceId2));
        }
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt instanceof COUINavigationItemView) {
                ((COUINavigationItemView) childAt).refresh();
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAnimationType(int i10) {
        if (i10 == 1) {
            this.mEnterAnimation.start();
        } else if (i10 == 2) {
            this.mExitAnimation.start();
        }
    }

    public void setEnlargeIndex(int i10) {
        this.mCOUINavigationMenuView.setEnlarge(this.mIsEnlarge, i10);
    }

    public void setItemLayoutType(int i10) {
        this.mLayoutType = i10;
        adjustMenuItemTextSize(getContext());
        this.mCOUINavigationMenuView.setItemLayoutType(this.mLayoutType);
    }

    @Deprecated
    public void setNeedTextAnim(boolean z10) {
    }

    public void setOnAnimatorListener(OnNavigationEnterExitListener onNavigationEnterExitListener) {
        this.mEndListener = onNavigationEnterExitListener;
    }

    public void setOnAnimatorShowHideListener(OnNavigationShowHideListener onNavigationShowHideListener) {
        this.mShowHideListener = onNavigationShowHideListener;
    }

    public void setOnConfigChangedListener(OnConfigChangedListener onConfigChangedListener) {
        this.mConfigChangedListener = onConfigChangedListener;
    }

    public void setOnEnlargeSelectListener(OnEnlargeSelectListener onEnlargeSelectListener) {
        this.mEnlargeSelectListener = onEnlargeSelectListener;
        setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: com.coui.appcompat.bottomnavigation.COUINavigationView.2
            @Override // com.coui.appcompat.material.navigation.NavigationBarView.OnItemSelectedListener
            public boolean onNavigationItemSelected(MenuItem menuItem) {
                COUINavigationView cOUINavigationView = COUINavigationView.this;
                cOUINavigationView.mIsCheckEnlarge = cOUINavigationView.mCOUINavigationMenuView.getEnlargeId() == menuItem.getItemId();
                COUINavigationView.this.mEnlargeSelectListener.onEnlargeSelect(COUINavigationView.this.mIsCheckEnlarge, menuItem);
                COUINavigationView.this.checkEnlargeState();
                return true;
            }
        });
    }

    @Override // com.coui.appcompat.poplist.PopupMenuConfigRule
    public void setPopupMenuRuleEnabled(boolean z10) {
        this.mPopupRuleEnable = z10;
    }

    @SuppressLint({"RestrictedApi"})
    public void setTipsView(int i10, int i11, int i12) {
        if (i10 >= this.mCOUINavigationMenuView.getVisibleItems().size()) {
            return;
        }
        setTipsView(i10, String.valueOf(i11), i12);
    }

    public void setTipsViewByItemId(int i10, int i11, int i12) {
        setTipsView((COUINavigationItemView) this.mCOUINavigationMenuView.findItemView(i10), String.valueOf(i11), i12);
    }

    public void show() {
        show(true);
    }

    public void switchToMenu(int i10) {
        switchToMenu(i10, true);
    }

    public COUINavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.support.bottomnavigation.R$attr.couiNavigationViewStyle);
    }

    @Deprecated
    public int getMaxItemCount(int i10) {
        if (COUIResponsiveUtils.isLargeScreen(getContext(), i10)) {
            return 7;
        }
        return COUIResponsiveUtils.isMediumScreen(getContext(), i10) ? 6 : 5;
    }

    public void hide(boolean z10) {
        if (z10) {
            this.mHideTranslateAnimation.start();
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.bottomMargin = getMeasuredHeight() * (-1);
        setLayoutParams(marginLayoutParams);
    }

    public void show(boolean z10) {
        if (z10) {
            this.mShowTranslateAnimation.start();
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        marginLayoutParams.bottomMargin = 0;
        setLayoutParams(marginLayoutParams);
    }

    public void switchToMenu(int i10, boolean z10) {
        if (!z10) {
            inflateMenu(i10);
        } else {
            this.mNextMenuResId = i10;
            this.mExitAnimation.start();
        }
    }

    public COUINavigationView(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, R$style.Widget_COUI_COUINavigationView);
    }

    public void setTipsView(int i10, String str, int i11) {
        if (i10 >= this.mCOUINavigationMenuView.getVisibleItems().size()) {
            return;
        }
        setTipsView((COUINavigationItemView) this.mCOUINavigationMenuView.findItemView(getCOUINavigationMenuView().getVisibleItem(i10).getItemId()), str, i11);
    }

    public void setTipsViewByItemId(int i10, String str, int i11) {
        setTipsView((COUINavigationItemView) this.mCOUINavigationMenuView.findItemView(i10), str, i11);
    }

    @SuppressLint({"RestrictedApi"})
    public COUINavigationView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mNextMenuResId = 0;
        this.mTextSizeResId = 0;
        this.mIsEnlarge = false;
        this.mIsCheckEnlarge = false;
        this.mPopupRuleEnable = true;
        this.mDisplayFrame = null;
        this.mWindowFrame = null;
        this.mDisplayFrameOutsets = null;
        h0 h0VarW = h0.w(context, attributeSet, R$styleable.COUINavigationMenuView, i10, i11);
        this.mCOUINavigationMenuView = (COUINavigationMenuView) getMenuView();
        if (h0VarW.s(R$styleable.COUINavigationMenuView_couiNaviTextColor)) {
            setItemTextColor(h0VarW.c(R$styleable.COUINavigationMenuView_couiNaviTextColor));
        } else {
            setItemTextColor(getResources().getColorStateList(R$color.coui_bottom_tool_navigation_item_selector));
        }
        this.mCOUINavigationMenuView.setIconTintList(h0VarW.c(R$styleable.COUINavigationMenuView_couiNaviIconTint));
        this.mNavigationType = h0VarW.k(R$styleable.COUINavigationMenuView_navigationType, 0);
        int iF = h0VarW.f(R$styleable.COUINavigationMenuView_couiNaviTextSize, getResources().getDimensionPixelSize(R$dimen.coui_navigation_item_text_size));
        this.mTextSizeResId = h0VarW.n(R$styleable.COUINavigationMenuView_couiNaviTextSize, 0);
        this.mCOUINavigationMenuView.setTextSize((int) COUIChangeTextUtil.getSuitableFontSize(iF, getResources().getConfiguration().fontScale, 2));
        int iL = h0VarW.l(R$styleable.COUINavigationMenuView_couiNaviTipsType, -1);
        int iL2 = h0VarW.l(R$styleable.COUINavigationMenuView_couiNaviTipsNumber, 0);
        if (h0VarW.s(R$styleable.COUINavigationMenuView_couiNaviMenu)) {
            inflateMenu(h0VarW.n(R$styleable.COUINavigationMenuView_couiNaviMenu, 0));
            setTipsView(0, iL2, iL);
        }
        int iN = h0VarW.n(R$styleable.COUINavigationMenuView_couiToolNavigationViewBg, 0);
        int iN2 = h0VarW.n(R$styleable.COUINavigationMenuView_couiTabNavigationViewBg, 0);
        this.mEnlargeNavigationViewBgId = h0VarW.n(R$styleable.COUINavigationMenuView_couiEnlargeNavigationViewBg, 0);
        int i12 = this.mNavigationType;
        if (i12 == 2) {
            this.mIsEnlarge = true;
            setBackgroundColor(0);
            this.mCOUINavigationMenuView.initEnlargeParams();
        } else if (i12 == 0) {
            setBackgroundResource(iN);
        } else {
            setBackgroundResource(iN2);
        }
        this.mCOUINavigationMenuView.setItemNavigationType(this.mNavigationType);
        if (h0VarW.s(R$styleable.COUINavigationMenuView_couiItemLayoutType)) {
            setItemLayoutType(h0VarW.l(R$styleable.COUINavigationMenuView_couiItemLayoutType, 0));
        }
        setLabelVisibilityMode(1);
        setClipChildren(false);
        setClipToPadding(false);
        addCompatibilityTopDivider(context);
        setElevation(0.0f);
        h0VarW.y();
        initAnimation();
        applyWindowInsets();
        COUIDarkModeUtil.setForceDarkAllow(this, false);
    }

    public int getMaxItemCount(int i10, int i11) {
        if (COUIResponsiveUtils.isLargeScreen(getContext(), i10, i11)) {
            return 7;
        }
        return COUIResponsiveUtils.isMediumScreen(getContext(), i10, i11) ? 6 : 5;
    }

    private void setTipsView(COUINavigationItemView cOUINavigationItemView, String str, int i10) {
        if (cOUINavigationItemView != null) {
            if (i10 == 1) {
                cOUINavigationItemView.getCOUIHintRedDot().setVisibility(0);
                cOUINavigationItemView.getCOUIHintRedDot().setPointMode(1);
            } else {
                if (i10 != 2) {
                    cOUINavigationItemView.getCOUIHintRedDot().setVisibility(4);
                    return;
                }
                cOUINavigationItemView.getCOUIHintRedDot().setVisibility(0);
                if (isNumeric(str)) {
                    cOUINavigationItemView.getCOUIHintRedDot().setPointMode(2);
                    cOUINavigationItemView.getCOUIHintRedDot().setPointNumber(Integer.parseInt(str));
                } else {
                    cOUINavigationItemView.getCOUIHintRedDot().setPointMode(3);
                    cOUINavigationItemView.getCOUIHintRedDot().setPointText(str);
                }
            }
        }
    }
}
