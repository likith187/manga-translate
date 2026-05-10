package com.coui.appcompat.snackbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.dynamicanimation.animation.d;
import com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import com.coui.appcompat.dialog.AppFeatureUtil;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.textviewcompatutil.COUITextViewCompatUtil;
import com.coui.appcompat.uiutil.ShadowUtils;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.oplus.graphics.OplusOutline;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.appcompat.R$attr;
import com.support.appcompat.R$style;
import com.support.snackbar.R$color;
import com.support.snackbar.R$dimen;
import com.support.snackbar.R$id;
import com.support.snackbar.R$layout;
import com.support.snackbar.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUISnackBar extends RelativeLayout {
    private static final float DEFAULT_SNACKBAR_DISMISS_SPRING_RESPONSE = 0.25f;
    private static final float DEFAULT_SNACKBAR_SHOW_SPRING_RESPONSE = 0.3f;
    private static final float DEFAULT_SNACKBAR_SPRING_BOUNCE = 0.0f;
    private static final float DEFAULT_SPRING_FACTOR = 10000.0f;
    private static final int DEFAULT_TRANSLATION_END = 0;
    private static final float ONE = 1.0f;
    private static final float POINT_EIGHT = 0.8f;
    private static final int SINGLE_LINE_NUMBER = 1;
    private static final String TAG = "COUISnackBar";
    private static final float ZERO = 0.0f;
    protected static int mCOUISnackBarBottomMargin;
    private final int DEFAULT_ACTION_MARGIN_HORIZONTAL_END;
    private final int DEFAULT_ACTION_MARGIN_HORIZONTAL_START;
    private final int DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL;
    private final int DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY;
    private final int DEFAULT_ACTION_MARGIN_VERTICAL;
    private final int DEFAULT_ACTION_TEXT_MAX_WIDTH;
    private final int DEFAULT_CONTENT_MARGIN_HORIZONTAL;
    private final int DEFAULT_CONTENT_MARGIN_VERTICAL;
    private final int DEFAULT_CONTEXT_MARGIN_START_WITH_ICON;
    private final int DEFAULT_ICON_WIDTH;
    protected boolean isAdjustLayout;
    protected TextView mActionView;
    protected Runnable mAutoDismissRunnable;
    private ViewGroup mCOUISnackBarParent;
    private int mCardMarginEnd;
    private int mCardMarginStart;
    private String mContentText;
    private int mContentTextWidth;
    protected TextView mContentView;
    private int mDuration;
    protected ImageView mIconDrawableView;
    private boolean mIsDefaultRadius;
    private boolean mIsEntering;
    private boolean mIsSupportSmoothRoundCorner;
    private boolean mIsTiny;
    private int mLastLayoutType;
    private OnStatusChangeListener mOnStatusChangeListener;
    private Rect mRect;
    private ResponsiveUIModel mResponsiveUIModel;
    protected View mRootView;
    private float mSnackBarAnimationProgress;
    protected ViewGroup mSnackBarLayout;
    private final d mSnackBarProperty;
    private COUISpringAnimation mSpringAnimation;
    private boolean mWithoutAnima;

    /* JADX INFO: renamed from: com.coui.appcompat.snackbar.COUISnackBar$1 */
    class AnonymousClass1 implements COUIDynamicAnimation.OnAnimationEndListener {
        final /* synthetic */ boolean val$isEntering;

        AnonymousClass1(boolean z10) {
            z = z10;
        }

        @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
        public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
            if (z) {
                return;
            }
            COUISnackBar.this.dismissView();
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.snackbar.COUISnackBar$2 */
    class AnonymousClass2 extends d {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(Float f10) {
            return COUISnackBar.this.mSnackBarAnimationProgress;
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(Float f10, float f11) {
            COUISnackBar.this.setSnackBarProgress(f11);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.snackbar.COUISnackBar$3 */
    class AnonymousClass3 implements View.OnClickListener {
        final /* synthetic */ View.OnClickListener val$listener;

        AnonymousClass3(View.OnClickListener onClickListener) {
            onClickListener = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            onClickListener.onClick(view);
            COUISnackBar cOUISnackBar = COUISnackBar.this;
            cOUISnackBar.dismiss(cOUISnackBar.mWithoutAnima);
        }
    }

    /* JADX INFO: renamed from: com.coui.appcompat.snackbar.COUISnackBar$4 */
    class AnonymousClass4 extends ViewOutlineProvider {
        final /* synthetic */ int val$multipleRowsNormalRadius;
        final /* synthetic */ int val$multipleRowsOs15Radius;
        final /* synthetic */ float val$multipleRowsOs15Weight;
        final /* synthetic */ int val$radius;

        AnonymousClass4(int i10, int i11, float f10, int i12) {
            i = i10;
            i = i11;
            f = f10;
            i = i12;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (RoundCornerUtil.getSmoothStyleType() == 1) {
                new OplusOutlineAdapter(outline, 1).setSmoothRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight()), COUISnackBar.this.mIsDefaultRadius ? view.getHeight() / 2.0f : i);
                return;
            }
            if (RoundCornerUtil.getSmoothStyleType() != 0) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), COUISnackBar.this.mIsDefaultRadius ? i : i);
            } else if (COUISnackBar.this.mIsDefaultRadius) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i);
            } else {
                new OplusOutline(outline).setSmoothRoundRect(0, 0, view.getWidth(), view.getHeight(), i, f);
            }
        }
    }

    protected class AutoDismissRunnable implements Runnable {
        protected AutoDismissRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            COUISnackBar.this.dismiss();
        }
    }

    public interface OnStatusChangeListener {
        void onDismissed(COUISnackBar cOUISnackBar);

        void onShown(COUISnackBar cOUISnackBar);
    }

    public COUISnackBar(Context context) {
        super(context);
        this.DEFAULT_ACTION_TEXT_MAX_WIDTH = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_max_width);
        this.DEFAULT_CONTENT_MARGIN_VERTICAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical);
        this.DEFAULT_CONTENT_MARGIN_HORIZONTAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_horizontal_start);
        this.DEFAULT_ACTION_MARGIN_VERTICAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_vertical);
        this.DEFAULT_CONTEXT_MARGIN_START_WITH_ICON = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_context_margin_start_with_icon);
        this.DEFAULT_ICON_WIDTH = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_icon_width);
        this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_top_horizontal);
        this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_top_horizontal_tiny);
        this.DEFAULT_ACTION_MARGIN_HORIZONTAL_START = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_horizontal_start);
        this.DEFAULT_ACTION_MARGIN_HORIZONTAL_END = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_horizontal_end);
        this.mWithoutAnima = false;
        this.mRect = new Rect();
        this.mResponsiveUIModel = new ResponsiveUIModel(getContext(), 0, 0);
        this.mIsDefaultRadius = true;
        this.isAdjustLayout = true;
        this.mIsSupportSmoothRoundCorner = false;
        this.mSnackBarAnimationProgress = 0.0f;
        this.mLastLayoutType = -1;
        this.mSnackBarProperty = new d("snackBarProperty") { // from class: com.coui.appcompat.snackbar.COUISnackBar.2
            AnonymousClass2(String str) {
                super(str);
            }

            @Override // androidx.dynamicanimation.animation.d
            public float getValue(Float f10) {
                return COUISnackBar.this.mSnackBarAnimationProgress;
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(Float f10, float f11) {
                COUISnackBar.this.setSnackBarProgress(f11);
            }
        };
        initCOUISnackBar(context, null);
    }

    private void alignCenter(View view, int i10) {
        if (view == null || getViewTotalHeight(view) == i10) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        int measuredHeight = (i10 - view.getMeasuredHeight()) / 2;
        if (this.mLastLayoutType != 0) {
            view.offsetTopAndBottom(measuredHeight - layoutParams.topMargin);
        }
        layoutParams.topMargin = measuredHeight;
        layoutParams.bottomMargin = measuredHeight;
    }

    private void animateSpring(boolean z10) {
        this.mIsEntering = z10;
        this.mSpringAnimation = new COUISpringAnimation(Float.valueOf(this.mSnackBarAnimationProgress), this.mSnackBarProperty);
        COUISpringForce cOUISpringForce = new COUISpringForce();
        cOUISpringForce.setBounce(0.0f);
        if (z10) {
            cOUISpringForce.setResponse(0.3f);
        } else {
            cOUISpringForce.setResponse(DEFAULT_SNACKBAR_DISMISS_SPRING_RESPONSE);
        }
        this.mSpringAnimation.setSpring(cOUISpringForce);
        this.mSpringAnimation.addEndListener(new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.snackbar.COUISnackBar.1
            final /* synthetic */ boolean val$isEntering;

            AnonymousClass1(boolean z102) {
                z = z102;
            }

            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z102, float f10, float f11) {
                if (z) {
                    return;
                }
                COUISnackBar.this.dismissView();
            }
        });
        this.mSpringAnimation.setStartValue(0.0f);
        this.mSpringAnimation.animateToFinalPosition(10000.0f);
    }

    private void animationIn() {
        setVisibility(0);
        setTranslationY(0.0f);
        animateSpring(true);
    }

    public void dismissView() {
        ViewGroup viewGroup = this.mSnackBarLayout;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        ViewGroup viewGroup2 = this.mCOUISnackBarParent;
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.mRootView);
        }
        OnStatusChangeListener onStatusChangeListener = this.mOnStatusChangeListener;
        if (onStatusChangeListener != null) {
            onStatusChangeListener.onDismissed(this);
        }
    }

    protected static ViewGroup findSuitableParent(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    private int getContainerWidth() {
        int paddingLeft = this.mContentTextWidth + this.mSnackBarLayout.getPaddingLeft() + this.mSnackBarLayout.getPaddingRight();
        if (this.mActionView.getVisibility() == 0) {
            paddingLeft += this.mActionView.getMeasuredWidth() + this.DEFAULT_ACTION_MARGIN_HORIZONTAL_END;
        }
        return isCOUISnackBarHasIcon() ? paddingLeft + this.DEFAULT_ICON_WIDTH + this.DEFAULT_CONTEXT_MARGIN_START_WITH_ICON : paddingLeft;
    }

    private int getMaxWidth() {
        getWindowVisibleDisplayFrame(this.mRect);
        this.mResponsiveUIModel.rebuild(Math.max(0, this.mRect.width()), Math.max(0, this.mRect.height())).chooseMargin(MarginType.MARGIN_SMALL);
        return this.mResponsiveUIModel.calculateGridWidth(6);
    }

    private int getViewTotalHeight(View view) {
        if (view == null) {
            return 0;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean isCOUISnackBarHasIcon() {
        return this.mIconDrawableView.getDrawable() != null;
    }

    private boolean isInSecondaryDisplay(Context context) {
        try {
            return context.getDisplay().getDisplayId() == 1;
        } catch (UnsupportedOperationException e10) {
            Log.w(TAG, e10.toString());
            return AppFeatureUtil.isSecondaryScreen(context);
        } catch (RuntimeException e11) {
            Log.w(TAG, e11.toString());
            return AppFeatureUtil.isSecondaryScreen(context);
        }
    }

    private boolean isVertical(int i10) {
        return this.mContentView.getLineCount() > 1 || (getContainerWidth() > i10);
    }

    private void layoutHorizontally() {
        int iMax = Math.max(getViewTotalHeight(this.mContentView), getViewTotalHeight(this.mActionView));
        if (this.mIsTiny) {
            setTinyParams(this.mContentView);
            setTinyParams(this.mActionView);
            return;
        }
        if (isCOUISnackBarHasIcon()) {
            iMax = Math.max(getViewTotalHeight(this.mIconDrawableView), iMax);
            alignCenter(this.mIconDrawableView, iMax);
        }
        alignCenter(this.mContentView, iMax);
        alignCenter(this.mActionView, iMax);
    }

    private void layoutVertically() {
        Resources resources;
        int i10;
        if (isCOUISnackBarHasIcon()) {
            ((RelativeLayout.LayoutParams) this.mIconDrawableView.getLayoutParams()).topMargin = ((this.mContentView.getMeasuredHeight() - this.mIconDrawableView.getMeasuredHeight()) / 2) + this.DEFAULT_CONTENT_MARGIN_VERTICAL;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mContentView.getLayoutParams();
        marginLayoutParams.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical_multi_lines);
        this.mContentView.setLayoutParams(marginLayoutParams);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mActionView.getLayoutParams();
        layoutParams.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical_multi_lines) + this.mContentView.getMeasuredHeight() + (this.mIsTiny ? this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY : this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL);
        if (this.mIsTiny) {
            resources = getResources();
            i10 = R$dimen.coui_snack_bar_action_margin_bottom_multi_lines_tiny;
        } else {
            resources = getResources();
            i10 = R$dimen.coui_snack_bar_action_margin_bottom_multi_lines;
        }
        layoutParams.bottomMargin = resources.getDimensionPixelSize(i10);
        this.mActionView.setLayoutParams(layoutParams);
        if (this.mIsTiny) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_padding_tiny);
            TextView textView = this.mActionView;
            textView.setPadding(textView.getPaddingLeft(), dimensionPixelSize, this.mActionView.getPaddingRight(), dimensionPixelSize);
        }
    }

    public static COUISnackBar make(View view, String str, int i10) {
        return make(view.getContext(), view, str, i10);
    }

    private void resetMarginHorizontal() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mIconDrawableView.getLayoutParams();
        layoutParams.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_icon_margin_top_horizontal);
        layoutParams.bottomMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_icon_margin_top_horizontal);
        this.mIconDrawableView.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mContentView.getLayoutParams();
        layoutParams2.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical);
        layoutParams2.bottomMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical);
        this.mContentView.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.mActionView.getLayoutParams();
        layoutParams3.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_vertical);
        layoutParams3.bottomMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_vertical);
        this.mActionView.setLayoutParams(layoutParams3);
    }

    private void setActionText(String str) {
        this.mActionView.setText(str);
    }

    public void setSnackBarProgress(float f10) {
        float f11;
        this.mSnackBarAnimationProgress = f10;
        float f12 = f10 / 10000.0f;
        boolean z10 = this.mIsEntering;
        float f13 = POINT_EIGHT;
        float f14 = 0.0f;
        float f15 = 1.0f;
        if (z10) {
            f11 = 1.0f;
        } else {
            f11 = 0.0f;
            f14 = 1.0f;
            f15 = 0.8f;
            f13 = 1.0f;
        }
        this.mSnackBarLayout.setScaleX(UIUtil.getConvertedFraction(f13, f15, f12));
        this.mSnackBarLayout.setScaleY(UIUtil.getConvertedFraction(f13, f15, f12));
        this.mSnackBarLayout.setAlpha(UIUtil.getConvertedFraction(f14, f11, f12));
    }

    private void setTinyParams(TextView textView) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
        marginLayoutParams.topMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_bottom_single_lines_tiny);
        marginLayoutParams.bottomMargin = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_bottom_single_lines_tiny);
        textView.setLayoutParams(marginLayoutParams);
        textView.setPadding(textView.getPaddingStart(), 0, textView.getPaddingEnd(), 0);
    }

    public void adjustLayout() {
        if (isVertical(this.mSnackBarLayout.getMeasuredWidth())) {
            this.mIsDefaultRadius = false;
            layoutVertically();
            this.mLastLayoutType = 1;
        } else {
            this.mIsDefaultRadius = true;
            layoutHorizontally();
            this.mLastLayoutType = 0;
        }
    }

    public void dismiss() {
        COUISpringAnimation cOUISpringAnimation = this.mSpringAnimation;
        if (cOUISpringAnimation != null && cOUISpringAnimation.isRunning() && !this.mIsEntering) {
            COUILog.d(TAG, "is in dismissing");
            return;
        }
        Runnable runnable = this.mAutoDismissRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        animateSpring(false);
    }

    public String getActionText() {
        return String.valueOf(this.mActionView.getText());
    }

    public TextView getActionView() {
        return this.mActionView;
    }

    public String getContentText() {
        return String.valueOf(this.mContentView.getText());
    }

    public TextView getContentView() {
        return this.mContentView;
    }

    public int getDuration() {
        return this.mDuration;
    }

    protected void initCOUISnackBar(Context context, AttributeSet attributeSet) {
        View viewInflate = View.inflate(context, R$layout.coui_snack_bar_item, this);
        this.mRootView = viewInflate;
        this.mSnackBarLayout = (ViewGroup) viewInflate.findViewById(R$id.snack_bar);
        this.mContentView = (TextView) this.mRootView.findViewById(R$id.tv_snack_bar_content);
        this.mActionView = (TextView) this.mRootView.findViewById(R$id.tv_snack_bar_action);
        this.mIconDrawableView = (ImageView) this.mRootView.findViewById(R$id.iv_snack_bar_icon);
        this.mIsTiny = isInSecondaryDisplay(getContext());
        mCOUISnackBarBottomMargin = new ViewGroup.MarginLayoutParams(context, attributeSet).bottomMargin;
        setVisibility(8);
        this.mAutoDismissRunnable = new AutoDismissRunnable();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUISnackBar, 0, 0);
        try {
            try {
                if (typedArrayObtainStyledAttributes.getString(R$styleable.COUISnackBar_defaultSnackBarContentText) != null) {
                    setContentText(typedArrayObtainStyledAttributes.getString(R$styleable.COUISnackBar_defaultSnackBarContentText));
                    setDuration(typedArrayObtainStyledAttributes.getInt(R$styleable.COUISnackBar_snackBarDisappearTime, 0));
                }
                setIconDrawable(typedArrayObtainStyledAttributes.getDrawable(R$styleable.COUISnackBar_couiSnackBarIcon));
            } catch (Exception e10) {
                Log.e(TAG, "Failure setting COUISnackBar " + e10.getMessage());
            }
            typedArrayObtainStyledAttributes.recycle();
            this.mIsSupportSmoothRoundCorner = RoundCornerUtil.isVersionSupport();
            this.mSnackBarLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: com.coui.appcompat.snackbar.COUISnackBar.4
                final /* synthetic */ int val$multipleRowsNormalRadius;
                final /* synthetic */ int val$multipleRowsOs15Radius;
                final /* synthetic */ float val$multipleRowsOs15Weight;
                final /* synthetic */ int val$radius;

                AnonymousClass4(int i10, int i11, float f10, int i12) {
                    i = i10;
                    i = i11;
                    f = f10;
                    i = i12;
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    if (RoundCornerUtil.getSmoothStyleType() == 1) {
                        new OplusOutlineAdapter(outline, 1).setSmoothRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight()), COUISnackBar.this.mIsDefaultRadius ? view.getHeight() / 2.0f : i);
                        return;
                    }
                    if (RoundCornerUtil.getSmoothStyleType() != 0) {
                        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), COUISnackBar.this.mIsDefaultRadius ? i : i);
                    } else if (COUISnackBar.this.mIsDefaultRadius) {
                        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i);
                    } else {
                        new OplusOutline(outline).setSmoothRoundRect(0, 0, view.getWidth(), view.getHeight(), i, f);
                    }
                }
            });
            this.mSnackBarLayout.setClipToOutline(true);
            ShadowUtils.setElevationToView(this.mSnackBarLayout, 2, getContext().getResources().getDimensionPixelOffset(R$dimen.coui_snack_bar_shadow_size), context.getResources().getDimensionPixelOffset(com.support.appcompat.R$dimen.support_shadow_size_level_one), getContext().getResources().getColor(R$color.coui_snack_bar_background_shadow_color));
            this.mCardMarginStart = getResources().getDimensionPixelOffset(com.support.grid.R$dimen.grid_guide_column_card_margin_start) - this.mSnackBarLayout.getPaddingStart();
            this.mCardMarginEnd = getResources().getDimensionPixelOffset(com.support.grid.R$dimen.grid_guide_column_card_margin_start) - this.mSnackBarLayout.getPaddingEnd();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mAutoDismissRunnable);
        this.mCOUISnackBarParent = null;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10 && this.isAdjustLayout) {
            adjustLayout();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        this.mContentTextWidth = ((int) this.mContentView.getPaint().measureText(this.mContentText)) + (this.DEFAULT_CONTENT_MARGIN_HORIZONTAL << 1);
        int maxWidth = getMaxWidth() + this.mSnackBarLayout.getPaddingLeft() + this.mSnackBarLayout.getPaddingRight();
        if (maxWidth > size) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mSnackBarLayout.getLayoutParams();
            layoutParams.setMarginStart(this.mCardMarginStart);
            layoutParams.setMarginEnd(this.mCardMarginEnd);
            this.mSnackBarLayout.setLayoutParams(layoutParams);
            i12 = (size - this.mCardMarginStart) - this.mCardMarginEnd;
        } else {
            i12 = (maxWidth <= 0 || mode == 0) ? size : maxWidth;
        }
        if (!isVertical(i12) && this.mLastLayoutType == 1) {
            resetMarginHorizontal();
        }
        if (maxWidth > 0 && mode != 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(maxWidth, size), mode);
        }
        if (this.mIsTiny) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mSnackBarLayout.getLayoutParams();
            layoutParams2.setMarginStart(getResources().getDimensionPixelOffset(R$dimen.coui_snack_bar_layout_margin_tiny));
            layoutParams2.setMarginEnd(getResources().getDimensionPixelOffset(R$dimen.coui_snack_bar_layout_margin_tiny));
            this.mSnackBarLayout.setLayoutParams(layoutParams2);
        }
        super.onMeasure(i10, i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x002a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r4 = r4.getAction()
            r0 = 1
            if (r4 == 0) goto L2a
            if (r4 == r0) goto L10
            r1 = 2
            if (r4 == r1) goto L2a
            r1 = 3
            if (r4 == r1) goto L10
            goto L31
        L10:
            java.lang.Runnable r4 = r3.mAutoDismissRunnable
            if (r4 == 0) goto L31
            int r4 = r3.getDuration()
            if (r4 == 0) goto L31
            java.lang.Runnable r4 = r3.mAutoDismissRunnable
            r3.removeCallbacks(r4)
            java.lang.Runnable r4 = r3.mAutoDismissRunnable
            int r1 = r3.getDuration()
            long r1 = (long) r1
            r3.postDelayed(r4, r1)
            goto L31
        L2a:
            java.lang.Runnable r4 = r3.mAutoDismissRunnable
            if (r4 == 0) goto L31
            r3.removeCallbacks(r4)
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.snackbar.COUISnackBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setContentText(int i10) {
        setContentText(getResources().getString(i10));
    }

    public void setDismissWithoutAnimate(boolean z10) {
        this.mWithoutAnima = z10;
    }

    public void setDuration(int i10) {
        this.mDuration = i10;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        Runnable runnable;
        super.setEnabled(z10);
        this.mActionView.setEnabled(z10);
        this.mContentView.setEnabled(z10);
        this.mIconDrawableView.setEnabled(z10);
        if (getDuration() == 0 || (runnable = this.mAutoDismissRunnable) == null) {
            return;
        }
        removeCallbacks(runnable);
        postDelayed(this.mAutoDismissRunnable, getDuration());
    }

    public void setIconDrawable(int i10) {
        setIconDrawable(getResources().getDrawable(i10, getContext().getTheme()));
    }

    public void setOnAction(int i10, View.OnClickListener onClickListener) {
        setOnAction(getResources().getString(i10), onClickListener);
    }

    public void setOnStatusChangeListener(OnStatusChangeListener onStatusChangeListener) {
        this.mOnStatusChangeListener = onStatusChangeListener;
    }

    protected void setParent(ViewGroup viewGroup) {
        this.mCOUISnackBarParent = viewGroup;
    }

    public void show() {
        Runnable runnable;
        if (getDuration() != 0 && (runnable = this.mAutoDismissRunnable) != null) {
            removeCallbacks(runnable);
            postDelayed(this.mAutoDismissRunnable, getDuration());
        }
        OnStatusChangeListener onStatusChangeListener = this.mOnStatusChangeListener;
        if (onStatusChangeListener != null) {
            onStatusChangeListener.onShown(this);
        }
        animationIn();
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    public static COUISnackBar make(Context context, View view, String str, int i10) {
        return make(context, view, str, i10, context.getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_margin_bottom));
    }

    public void setContentText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mContentView.setText(str);
            this.mContentText = str;
            return;
        }
        this.mContentView.setVisibility(8);
        Runnable runnable = this.mAutoDismissRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    public void setIconDrawable(Drawable drawable) {
        if (drawable == null) {
            this.mIconDrawableView.setVisibility(8);
            ((ViewGroup.MarginLayoutParams) this.mContentView.getLayoutParams()).setMarginStart(getContext().getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_horizontal_no_icon_start));
        } else {
            this.mIconDrawableView.setVisibility(0);
            this.mIconDrawableView.setImageDrawable(drawable);
            ((ViewGroup.MarginLayoutParams) this.mContentView.getLayoutParams()).setMarginStart(this.DEFAULT_CONTENT_MARGIN_HORIZONTAL);
        }
    }

    public void setOnAction(String str, View.OnClickListener onClickListener) {
        if (TextUtils.isEmpty(str)) {
            this.mActionView.setVisibility(8);
            this.mActionView.setOnClickListener(null);
            Runnable runnable = this.mAutoDismissRunnable;
            if (runnable != null) {
                removeCallbacks(runnable);
                return;
            }
            return;
        }
        this.mActionView.setVisibility(0);
        setActionText(str);
        if (onClickListener != null) {
            COUITextViewCompatUtil.setPressRippleDrawable(this.mActionView);
            this.mActionView.setOnClickListener(new View.OnClickListener() { // from class: com.coui.appcompat.snackbar.COUISnackBar.3
                final /* synthetic */ View.OnClickListener val$listener;

                AnonymousClass3(View.OnClickListener onClickListener2) {
                    onClickListener = onClickListener2;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    COUISnackBar cOUISnackBar = COUISnackBar.this;
                    cOUISnackBar.dismiss(cOUISnackBar.mWithoutAnima);
                }
            });
        }
    }

    public static COUISnackBar make(View view, String str, int i10, int i11) {
        return make(view.getContext(), view, str, i10, i11);
    }

    public static COUISnackBar make(Context context, View view, String str, int i10, int i11) {
        ViewGroup viewGroupFindSuitableParent = findSuitableParent(view);
        if (viewGroupFindSuitableParent != null) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R$attr.couiColorSurfaceTop, typedValue, true) || !context.getTheme().resolveAttribute(R$attr.couiColorPrimaryNeutral, typedValue, true)) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, R$style.Theme_COUI_Main);
                Log.e(TAG, "Expected theme to define couiColorSurfaceTop and couiColorPrimaryNeutral.");
                context = contextThemeWrapper;
            }
            COUISnackBar cOUISnackBar = (COUISnackBar) LayoutInflater.from(context).inflate(R$layout.coui_snack_bar_show_layout, viewGroupFindSuitableParent, false);
            cOUISnackBar.setContentText(str);
            cOUISnackBar.setDuration(i10);
            cOUISnackBar.setParent(viewGroupFindSuitableParent);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) cOUISnackBar.getLayoutParams();
            marginLayoutParams.bottomMargin = i11;
            mCOUISnackBarBottomMargin = i11;
            cOUISnackBar.setTranslationY(cOUISnackBar.getHeight() + i11);
            boolean z10 = false;
            for (int i12 = 0; i12 < viewGroupFindSuitableParent.getChildCount(); i12++) {
                if (viewGroupFindSuitableParent.getChildAt(i12) instanceof COUISnackBar) {
                    z10 = viewGroupFindSuitableParent.getChildAt(i12).getVisibility() != 8;
                }
            }
            if (!z10) {
                viewGroupFindSuitableParent.addView(cOUISnackBar, marginLayoutParams);
            }
            return cOUISnackBar;
        }
        throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
    }

    public void dismiss(boolean z10) {
        if (z10) {
            COUISpringAnimation cOUISpringAnimation = this.mSpringAnimation;
            if (cOUISpringAnimation != null && cOUISpringAnimation.isRunning() && !this.mIsEntering) {
                this.mSpringAnimation.cancel();
            }
            Runnable runnable = this.mAutoDismissRunnable;
            if (runnable != null) {
                removeCallbacks(runnable);
            }
            dismissView();
            return;
        }
        dismiss();
    }

    public COUISnackBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.DEFAULT_ACTION_TEXT_MAX_WIDTH = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_max_width);
        this.DEFAULT_CONTENT_MARGIN_VERTICAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_vertical);
        this.DEFAULT_CONTENT_MARGIN_HORIZONTAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_child_margin_horizontal_start);
        this.DEFAULT_ACTION_MARGIN_VERTICAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_vertical);
        this.DEFAULT_CONTEXT_MARGIN_START_WITH_ICON = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_context_margin_start_with_icon);
        this.DEFAULT_ICON_WIDTH = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_icon_width);
        this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_top_horizontal);
        this.DEFAULT_ACTION_MARGIN_TOP_HORIZONTAL_TINY = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_top_horizontal_tiny);
        this.DEFAULT_ACTION_MARGIN_HORIZONTAL_START = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_horizontal_start);
        this.DEFAULT_ACTION_MARGIN_HORIZONTAL_END = getResources().getDimensionPixelSize(R$dimen.coui_snack_bar_action_margin_horizontal_end);
        this.mWithoutAnima = false;
        this.mRect = new Rect();
        this.mResponsiveUIModel = new ResponsiveUIModel(getContext(), 0, 0);
        this.mIsDefaultRadius = true;
        this.isAdjustLayout = true;
        this.mIsSupportSmoothRoundCorner = false;
        this.mSnackBarAnimationProgress = 0.0f;
        this.mLastLayoutType = -1;
        this.mSnackBarProperty = new d("snackBarProperty") { // from class: com.coui.appcompat.snackbar.COUISnackBar.2
            AnonymousClass2(String str) {
                super(str);
            }

            @Override // androidx.dynamicanimation.animation.d
            public float getValue(Float f10) {
                return COUISnackBar.this.mSnackBarAnimationProgress;
            }

            @Override // androidx.dynamicanimation.animation.d
            public void setValue(Float f10, float f11) {
                COUISnackBar.this.setSnackBarProgress(f11);
            }
        };
        initCOUISnackBar(context, attributeSet);
    }
}
