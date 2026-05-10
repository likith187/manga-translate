package com.coui.appcompat.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.d0;
import androidx.core.view.m0;
import androidx.core.widget.j;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$string;
import com.google.android.material.badge.a;
import com.google.android.material.badge.b;
import d0.h;
import g4.i;
import i4.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    private static final ActiveIndicatorTransform ACTIVE_INDICATOR_LABELED_TRANSFORM;
    private static final ActiveIndicatorTransform ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int INVALID_ITEM_POSITION = -1;
    private ValueAnimator activeIndicatorAnimator;
    private int activeIndicatorDesiredHeight;
    private int activeIndicatorDesiredWidth;
    private boolean activeIndicatorEnabled;
    private int activeIndicatorMarginHorizontal;
    private float activeIndicatorProgress;
    private boolean activeIndicatorResizeable;
    private ActiveIndicatorTransform activeIndicatorTransform;
    private final View activeIndicatorView;
    private a badgeDrawable;
    private final ImageView icon;
    private final FrameLayout iconContainer;
    private ColorStateList iconTint;
    private boolean initialized;
    private boolean isShifting;
    private MenuItemImpl itemData;
    private int itemPaddingBottom;
    private int itemPaddingTop;
    private int itemPosition;
    private final ViewGroup labelGroup;
    private int labelVisibilityMode;
    private final TextView largeLabel;
    private Drawable originalIconDrawable;
    private float scaleDownFactor;
    private float scaleUpFactor;
    private float shiftAmount;
    private final TextView smallLabel;
    private Drawable wrappedIconDrawable;

    private static class ActiveIndicatorTransform {
        private static final float ALPHA_FRACTION = 0.2f;
        private static final float SCALE_X_HIDDEN = 0.4f;
        private static final float SCALE_X_SHOWN = 1.0f;

        private ActiveIndicatorTransform() {
        }

        protected float calculateAlpha(float f10, float f11) {
            return x3.a.b(0.0f, 1.0f, f11 == 0.0f ? 0.8f : 0.0f, f11 == 0.0f ? 1.0f : 0.2f, f10);
        }

        protected float calculateScaleX(float f10, float f11) {
            return x3.a.a(SCALE_X_HIDDEN, 1.0f, f10);
        }

        protected float calculateScaleY(float f10, float f11) {
            return 1.0f;
        }

        public void updateForProgress(float f10, float f11, View view) {
            view.setScaleX(calculateScaleX(f10, f11));
            view.setScaleY(calculateScaleY(f10, f11));
            view.setAlpha(calculateAlpha(f10, f11));
        }
    }

    private static class ActiveIndicatorUnlabeledTransform extends ActiveIndicatorTransform {
        private ActiveIndicatorUnlabeledTransform() {
            super();
        }

        @Override // com.coui.appcompat.material.navigation.NavigationBarItemView.ActiveIndicatorTransform
        protected float calculateScaleY(float f10, float f11) {
            return calculateScaleX(f10, f11);
        }
    }

    static {
        ACTIVE_INDICATOR_LABELED_TRANSFORM = new ActiveIndicatorTransform();
        ACTIVE_INDICATOR_UNLABELED_TRANSFORM = new ActiveIndicatorUnlabeledTransform();
    }

    public NavigationBarItemView(Context context) {
        super(context);
        this.initialized = false;
        this.itemPosition = -1;
        this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        this.activeIndicatorProgress = 0.0f;
        this.activeIndicatorEnabled = false;
        this.activeIndicatorDesiredWidth = 0;
        this.activeIndicatorDesiredHeight = 0;
        this.activeIndicatorResizeable = false;
        this.activeIndicatorMarginHorizontal = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.iconContainer = (FrameLayout) findViewById(R$id.navigation_bar_item_icon_container);
        this.activeIndicatorView = findViewById(R$id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(R$id.navigation_bar_item_icon_view);
        this.icon = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.navigation_bar_item_labels_group);
        this.labelGroup = viewGroup;
        TextView textView = (TextView) findViewById(R$id.navigation_bar_item_small_label_view);
        this.smallLabel = textView;
        TextView textView2 = (TextView) findViewById(R$id.navigation_bar_item_large_label_view);
        this.largeLabel = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.itemPaddingTop = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.itemPaddingBottom = viewGroup.getPaddingBottom();
        m0.t0(textView, 2);
        m0.t0(textView2, 2);
        setFocusable(true);
        calculateTextScaleFactors(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.coui.appcompat.material.navigation.NavigationBarItemView.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    if (NavigationBarItemView.this.icon.getVisibility() == 0) {
                        NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                        navigationBarItemView.tryUpdateBadgeBounds(navigationBarItemView.icon);
                    }
                }
            });
        }
    }

    private void calculateTextScaleFactors(float f10, float f11) {
        this.shiftAmount = f10 - f11;
        this.scaleUpFactor = (f11 * 1.0f) / f10;
        this.scaleDownFactor = (f10 * 1.0f) / f11;
    }

    private FrameLayout getCustomParentForBadge(View view) {
        ImageView imageView = this.icon;
        if (view == imageView && b.f8945a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.iconContainer;
        return frameLayout != null ? frameLayout : this.icon;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < iIndexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private int getSuggestedIconHeight() {
        a aVar = this.badgeDrawable;
        int minimumHeight = aVar != null ? aVar.getMinimumHeight() / 2 : 0;
        return Math.max(minimumHeight, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + this.icon.getMeasuredWidth() + minimumHeight;
    }

    private int getSuggestedIconWidth() {
        a aVar = this.badgeDrawable;
        int minimumWidth = aVar == null ? 0 : aVar.getMinimumWidth() - this.badgeDrawable.k();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.icon.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    private boolean hasBadge() {
        return this.badgeDrawable != null;
    }

    private boolean isActiveIndicatorResizeableAndUnlabeled() {
        return this.activeIndicatorResizeable && this.labelVisibilityMode == 2;
    }

    private void maybeAnimateActiveIndicatorToProgress(final float f10) {
        if (!this.activeIndicatorEnabled || !this.initialized || !m0.N(this)) {
            setActiveIndicatorProgress(f10, f10);
            return;
        }
        ValueAnimator valueAnimator = this.activeIndicatorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.activeIndicatorAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.activeIndicatorProgress, f10);
        this.activeIndicatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.coui.appcompat.material.navigation.NavigationBarItemView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                NavigationBarItemView.this.setActiveIndicatorProgress(((Float) valueAnimator2.getAnimatedValue()).floatValue(), f10);
            }
        });
        this.activeIndicatorAnimator.setInterpolator(i.g(getContext(), R$attr.motionEasingStandard, x3.a.f16369b));
        this.activeIndicatorAnimator.setDuration(i.f(getContext(), R$attr.motionDurationLong1, getResources().getInteger(R$integer.material_motion_duration_long_1)));
        this.activeIndicatorAnimator.start();
    }

    private void refreshChecked() {
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActiveIndicatorProgress(float f10, float f11) {
        View view = this.activeIndicatorView;
        if (view != null) {
            this.activeIndicatorTransform.updateForProgress(f10, f11, view);
        }
        this.activeIndicatorProgress = f10;
    }

    private static void setTextAppearanceWithoutFontScaling(TextView textView, int i10) {
        j.o(textView, i10);
        int i11 = c.i(textView.getContext(), i10, 0);
        if (i11 != 0) {
            textView.setTextSize(0, i11);
        }
    }

    private static void setViewScaleValues(View view, float f10, float f11, int i10) {
        view.setScaleX(f10);
        view.setScaleY(f11);
        view.setVisibility(i10);
    }

    private static void setViewTopMarginAndGravity(View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    private void tryAttachBadgeToAnchor(View view) {
        if (hasBadge() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            b.a(this.badgeDrawable, view, getCustomParentForBadge(view));
        }
    }

    private void tryRemoveBadgeFromAnchor(View view) {
        if (hasBadge()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                b.d(this.badgeDrawable, view);
            }
            this.badgeDrawable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryUpdateBadgeBounds(View view) {
        if (hasBadge()) {
            b.e(this.badgeDrawable, view, getCustomParentForBadge(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActiveIndicatorLayoutParams(int i10) {
        if (this.activeIndicatorView == null) {
            return;
        }
        int iMin = Math.min(this.activeIndicatorDesiredWidth, i10 - (this.activeIndicatorMarginHorizontal * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.activeIndicatorView.getLayoutParams();
        layoutParams.height = isActiveIndicatorResizeableAndUnlabeled() ? iMin : this.activeIndicatorDesiredHeight;
        layoutParams.width = iMin;
        this.activeIndicatorView.setLayoutParams(layoutParams);
    }

    private void updateActiveIndicatorTransform() {
        if (isActiveIndicatorResizeableAndUnlabeled()) {
            this.activeIndicatorTransform = ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
        } else {
            this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        }
    }

    private static void updateViewPaddingBottom(View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    void clear() {
        removeBadge();
        this.itemData = null;
        this.activeIndicatorProgress = 0.0f;
        this.initialized = false;
    }

    public Drawable getActiveIndicatorDrawable() {
        View view = this.activeIndicatorView;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    public a getBadge() {
        return this.badgeDrawable;
    }

    protected int getItemBackgroundResId() {
        return R$drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.itemData;
    }

    protected int getItemDefaultMarginResId() {
        return R$dimen.mtrl_navigation_bar_item_default_margin;
    }

    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.itemPosition;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        return getSuggestedIconHeight() + layoutParams.topMargin + this.labelGroup.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.labelGroup.getMeasuredWidth() + layoutParams.rightMargin);
    }

    public void initialize(MenuItemImpl menuItemImpl, int i10) {
        this.itemData = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        androidx.appcompat.widget.m0.a(this, !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.initialized = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.itemData.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        a aVar = this.badgeDrawable;
        if (aVar != null && aVar.isVisible()) {
            CharSequence title = this.itemData.getTitle();
            if (!TextUtils.isEmpty(this.itemData.getContentDescription())) {
                title = this.itemData.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.badgeDrawable.h()));
        }
        h hVarM0 = h.M0(accessibilityNodeInfo);
        hVarM0.k0(h.f.a(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            hVarM0.i0(false);
            hVarM0.a0(h.a.f11466i);
        }
        hVarM0.A0(getResources().getString(R$string.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(final int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new Runnable() { // from class: com.coui.appcompat.material.navigation.NavigationBarItemView.2
            @Override // java.lang.Runnable
            public void run() {
                NavigationBarItemView.this.updateActiveIndicatorLayoutParams(i10);
            }
        });
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    void removeBadge() {
        tryRemoveBadgeFromAnchor(this.icon);
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        View view = this.activeIndicatorView;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.activeIndicatorEnabled = z10;
        View view = this.activeIndicatorView;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        this.activeIndicatorDesiredHeight = i10;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorMarginHorizontal(int i10) {
        this.activeIndicatorMarginHorizontal = i10;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z10) {
        this.activeIndicatorResizeable = z10;
    }

    public void setActiveIndicatorWidth(int i10) {
        this.activeIndicatorDesiredWidth = i10;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    void setBadge(a aVar) {
        if (this.badgeDrawable == aVar) {
            return;
        }
        if (hasBadge() && this.icon != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            tryRemoveBadgeFromAnchor(this.icon);
        }
        this.badgeDrawable = aVar;
        ImageView imageView = this.icon;
        if (imageView != null) {
            tryAttachBadgeToAnchor(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    public void setChecked(boolean z10) {
        this.largeLabel.setPivotX(r0.getWidth() / 2);
        this.largeLabel.setPivotY(r0.getBaseline());
        this.smallLabel.setPivotX(r0.getWidth() / 2);
        this.smallLabel.setPivotY(r0.getBaseline());
        maybeAnimateActiveIndicatorToProgress(z10 ? 1.0f : 0.0f);
        int i10 = this.labelVisibilityMode;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z10) {
                    setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 49);
                    updateViewPaddingBottom(this.labelGroup, this.itemPaddingBottom);
                    this.largeLabel.setVisibility(0);
                } else {
                    setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 17);
                    updateViewPaddingBottom(this.labelGroup, 0);
                    this.largeLabel.setVisibility(4);
                }
                this.smallLabel.setVisibility(4);
            } else if (i10 == 1) {
                updateViewPaddingBottom(this.labelGroup, this.itemPaddingBottom);
                if (z10) {
                    setViewTopMarginAndGravity(getIconOrContainer(), (int) (this.itemPaddingTop + this.shiftAmount), 49);
                    setViewScaleValues(this.largeLabel, 1.0f, 1.0f, 0);
                    TextView textView = this.smallLabel;
                    float f10 = this.scaleUpFactor;
                    setViewScaleValues(textView, f10, f10, 4);
                } else {
                    setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 49);
                    TextView textView2 = this.largeLabel;
                    float f11 = this.scaleDownFactor;
                    setViewScaleValues(textView2, f11, f11, 4);
                    setViewScaleValues(this.smallLabel, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 17);
                this.largeLabel.setVisibility(8);
                this.smallLabel.setVisibility(8);
            }
        } else if (this.isShifting) {
            if (z10) {
                setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 49);
                updateViewPaddingBottom(this.labelGroup, this.itemPaddingBottom);
                this.largeLabel.setVisibility(0);
            } else {
                setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 17);
                updateViewPaddingBottom(this.labelGroup, 0);
                this.largeLabel.setVisibility(4);
            }
            this.smallLabel.setVisibility(4);
        } else {
            updateViewPaddingBottom(this.labelGroup, this.itemPaddingBottom);
            if (z10) {
                setViewTopMarginAndGravity(getIconOrContainer(), (int) (this.itemPaddingTop + this.shiftAmount), 49);
                setViewScaleValues(this.largeLabel, 1.0f, 1.0f, 0);
                TextView textView3 = this.smallLabel;
                float f12 = this.scaleUpFactor;
                setViewScaleValues(textView3, f12, f12, 4);
            } else {
                setViewTopMarginAndGravity(getIconOrContainer(), this.itemPaddingTop, 49);
                TextView textView4 = this.largeLabel;
                float f13 = this.scaleDownFactor;
                setViewScaleValues(textView4, f13, f13, 4);
                setViewScaleValues(this.smallLabel, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.smallLabel.setEnabled(z10);
        this.largeLabel.setEnabled(z10);
        this.icon.setEnabled(z10);
        if (z10) {
            m0.A0(this, d0.b(getContext(), 1002));
        } else {
            m0.A0(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable == this.originalIconDrawable) {
            return;
        }
        this.originalIconDrawable = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = v.a.r(drawable).mutate();
            this.wrappedIconDrawable = drawable;
            ColorStateList colorStateList = this.iconTint;
            if (colorStateList != null) {
                v.a.o(drawable, colorStateList);
            }
        }
        this.icon.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.icon.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.icon.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.iconTint = colorStateList;
        if (this.itemData == null || (drawable = this.wrappedIconDrawable) == null) {
            return;
        }
        v.a.o(drawable, colorStateList);
        this.wrappedIconDrawable.invalidateSelf();
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : r.a.e(getContext(), i10));
    }

    public void setItemPaddingBottom(int i10) {
        if (this.itemPaddingBottom != i10) {
            this.itemPaddingBottom = i10;
            refreshChecked();
        }
    }

    public void setItemPaddingTop(int i10) {
        if (this.itemPaddingTop != i10) {
            this.itemPaddingTop = i10;
            refreshChecked();
        }
    }

    public void setItemPosition(int i10) {
        this.itemPosition = i10;
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.labelVisibilityMode != i10) {
            this.labelVisibilityMode = i10;
            updateActiveIndicatorTransform();
            updateActiveIndicatorLayoutParams(getWidth());
            refreshChecked();
        }
    }

    public void setShifting(boolean z10) {
        if (this.isShifting != z10) {
            this.isShifting = z10;
            refreshChecked();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearanceActive(int i10) {
        setTextAppearanceWithoutFontScaling(this.largeLabel, i10);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextAppearanceInactive(int i10) {
        setTextAppearanceWithoutFontScaling(this.smallLabel, i10);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.smallLabel.setText(charSequence);
        this.largeLabel.setText(charSequence);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.itemData;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.itemData.getTooltipText();
        }
        androidx.appcompat.widget.m0.a(this, charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        m0.n0(this, drawable);
    }
}
