package com.coui.appcompat.dialog;

import android.R;
import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.c;
import com.coui.appcompat.buttonBar.COUIButtonBarLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.dialog.adapter.COUIListDialogAdapter;
import com.coui.appcompat.dialog.adapter.ChoiceListAdapter;
import com.coui.appcompat.dialog.adapter.SummaryAdapter;
import com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout;
import com.coui.appcompat.dialog.widget.COUIAlertDialogMaxScrollView;
import com.coui.appcompat.dialog.widget.COUIMaxHeightNestedScrollView;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.imageview.COUIRoundImageView;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.statement.COUIMaxHeightScrollView;
import com.coui.appcompat.uiutil.AnimLevel;
import com.coui.appcompat.uiutil.COUIBackgroundBlurBuilder;
import com.coui.appcompat.uiutil.UIUtil;
import com.support.appcompat.R$color;
import com.support.dialog.R$dimen;
import com.support.dialog.R$id;
import com.support.dialog.R$style;
import com.support.dialog.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIAlertDialogBuilder extends c.a {
    private static final int DEF_STYLE_ATTR = R$attr.alertDialogStyle;
    private static final int DEF_STYLE_RES = R$style.AlertDialogBuildStyle;
    private static final int DEF_WINDOW_ANIM = R$style.Animation_COUI_Dialog_Alpha;
    private static final int DEF_WINDOW_GRAVITY = 17;
    private static final String TAG = "COUIAlertDialogBuilder";
    private static final int UNSET_WIDTH = -1;
    private boolean hasAdapter;
    private boolean hasMessage;
    private boolean hasSetButton;
    private boolean hasSetView;
    private boolean hasTitle;
    private boolean isAssignMentLayout;
    private boolean mAlwaysFollowHand;
    private View mAnchorView;
    private Point mAnchorViewTouchPoint;
    private COUIBackgroundBlurBuilder mBackgroundBlurBuilder;
    private boolean mButtonLayoutDynamicLayout;
    private COUIListDialogAdapter mCOUIListDialogAdapter;
    private ChoiceListAdapter mChoiceListAdapter;
    private ComponentCallbacks mComponentCallbacks;
    private Configuration mConfiguration;
    private int mContentMaxHeight;
    private int mContentMaxWidth;
    private View mContentView;
    private int mCustomContentLayoutRes;
    private Drawable mCustomDrawable;
    private CharSequence mCustomMessage;
    private String mCustomTitle;
    private c mDialog;
    private int mDialogStyle;
    private int mDialogWindowType;
    private Point mExtraOffsetPoint;
    private boolean mForcePhysicalDimensions;
    private int mGravity;
    private boolean mHasLoading;
    private boolean mHasMessageMerge;
    private boolean mIsCustomStyle;
    private boolean mIsForceCenterInLargeScreen;
    private boolean mIsForceCenterStyleStatus;
    private boolean mIsNeedToAdaptMessageAndList;
    private boolean mIsTinyStyle;
    private DialogInterface.OnClickListener mItemClickListener;
    private CharSequence[] mItems;
    private int mOldConfigurationHeightDP;
    private int mOldConfigurationWidthDP;
    private int mOriginWidth;
    private int mRecommendButtonId;
    private boolean mRegisterConfigurationChangeCallBack;
    private CharSequence[] mSummaryItems;
    private boolean mSupportDynamicMarginTop;
    public int[] mTextColor;
    private int mWindowAnimStyleRes;
    private int parentPanelMinHeight;

    static class OutsideTouchListener implements View.OnTouchListener {
        private final Dialog dialog;
        private final int prePieSlop;

        public OutsideTouchListener(Dialog dialog) {
            this.dialog = dialog;
            this.prePieSlop = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (view.findViewById(R$id.parentPanel) == null) {
                COUILog.e(COUIAlertDialogBuilder.TAG, "parentPanel is null; Need to check whether the application has a layout that covers the coui's");
                return this.dialog.onTouchEvent(motionEvent);
            }
            if (new RectF(r0.getLeft() + r0.getPaddingLeft(), r0.getTop() + r0.getPaddingTop(), r0.getRight() - r0.getPaddingRight(), r0.getBottom() - r0.getPaddingBottom()).contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            if (motionEvent.getAction() == 1) {
                motionEventObtain.setAction(4);
            }
            view.performClick();
            boolean zOnTouchEvent = this.dialog.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            return zOnTouchEvent;
        }
    }

    public COUIAlertDialogBuilder(Context context) {
        this(context, R$style.COUIAlertDialog_BottomWarning);
    }

    private void disabledTitleScroll(c cVar) {
        View viewFindViewById = cVar.findViewById(R$id.alert_title_scroll_view);
        if (!(viewFindViewById instanceof COUIMaxHeightScrollView)) {
            COUILog.e(TAG, "alert_title_scroll_view is error; Need to check whether the application has a layout that covers the coui's");
        } else {
            final COUIMaxHeightScrollView cOUIMaxHeightScrollView = (COUIMaxHeightScrollView) viewFindViewById;
            cOUIMaxHeightScrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.coui.appcompat.dialog.COUIAlertDialogBuilder.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return cOUIMaxHeightScrollView.getHeight() < cOUIMaxHeightScrollView.getMaxHeight();
                }
            });
        }
    }

    private void initAttrs() {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.COUIAlertDialogBuilder, DEF_STYLE_ATTR, DEF_STYLE_RES);
        this.mGravity = typedArrayObtainStyledAttributes.getInt(R$styleable.COUIAlertDialogBuilder_android_gravity, 17);
        this.mWindowAnimStyleRes = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIAlertDialogBuilder_windowAnimStyle, DEF_WINDOW_ANIM);
        this.mContentMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIAlertDialogBuilder_contentMaxWidth, 0);
        this.mContentMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.COUIAlertDialogBuilder_contentMaxHeight, 0);
        this.mCustomContentLayoutRes = typedArrayObtainStyledAttributes.getResourceId(R$styleable.COUIAlertDialogBuilder_customContentLayout, 0);
        this.mIsNeedToAdaptMessageAndList = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_isNeedToAdaptMessageAndList, false);
        this.mIsTinyStyle = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_isTinyDialog, false);
        this.mHasLoading = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_hasLoading, false);
        this.isAssignMentLayout = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_isAssignMentLayout, false);
        this.mIsForceCenterInLargeScreen = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_isForceCenterStyleInLargeScreen, false);
        this.mIsCustomStyle = typedArrayObtainStyledAttributes.getBoolean(R$styleable.COUIAlertDialogBuilder_isCustomStyle, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initBlurBuilder(Context context) {
        COUIBackgroundBlurBuilder cOUIBackgroundBlurBuilder = new COUIBackgroundBlurBuilder(context);
        this.mBackgroundBlurBuilder = cOUIBackgroundBlurBuilder;
        cOUIBackgroundBlurBuilder.setMixColorLight(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), R$color.coui_dialog_list_mix_blur_light)));
        this.mBackgroundBlurBuilder.setMixColorDark(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), R$color.coui_dialog_list_mix_blur_dark)));
        this.mBackgroundBlurBuilder.setBlendColorLight(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), R$color.coui_dialog_list_blend_blur_light)));
        this.mBackgroundBlurBuilder.setBlendColorDark(UIUtil.colorToFloats(COUIContextUtil.getColor(getContext(), R$color.coui_dialog_list_blend_blur_dark)));
    }

    private void initBlurListener() {
        this.mDialog.getWindow().getDecorView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.coui.appcompat.dialog.COUIAlertDialogBuilder.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                COUIAlertDialogBuilder.this.registerApplicationConfigChangeListener();
                try {
                    if (COUIAlertDialogBuilder.this.mBackgroundBlurBuilder.isMaterialBlurEnabled()) {
                        COUIAlertDialogBuilder.this.operateBlur(view);
                    }
                } catch (Exception e10) {
                    Log.e(COUIAlertDialogBuilder.TAG, "operateBlur error message:" + e10.getMessage());
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                COUIAlertDialogBuilder.this.releaseApplicationConfigChangeListener();
                COUIAlertDialogBuilder.this.mBackgroundBlurBuilder.release();
                view.removeOnAttachStateChangeListener(this);
            }
        });
    }

    private void initCOUIDialogTitle(View view) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = -1;
        view.setLayoutParams(layoutParams);
    }

    private void initContentMaxHeight(Window window) {
        if (this.mContentMaxHeight <= 0) {
            return;
        }
        View viewFindViewById = window.findViewById(R$id.parentPanel);
        if (viewFindViewById instanceof COUIAlertDialogMaxLinearLayout) {
            ((COUIAlertDialogMaxLinearLayout) viewFindViewById).setMaxHeight(this.mContentMaxHeight);
        } else if (viewFindViewById instanceof COUIAlertDialogMaxScrollView) {
            ((COUIAlertDialogMaxScrollView) viewFindViewById).setMaxHeight(this.mContentMaxHeight);
        } else {
            COUILog.e(TAG, "parentPanel is error; Need to check whether the application has a layout that covers the coui's");
        }
    }

    private void initContentMaxWidth(Window window) {
        if (this.mContentMaxWidth <= 0) {
            return;
        }
        View viewFindViewById = window.findViewById(R$id.parentPanel);
        if (viewFindViewById instanceof COUIAlertDialogMaxLinearLayout) {
            ((COUIAlertDialogMaxLinearLayout) viewFindViewById).setMaxWidth(this.mContentMaxWidth);
        } else if (viewFindViewById instanceof COUIAlertDialogMaxScrollView) {
            ((COUIAlertDialogMaxScrollView) viewFindViewById).setMaxWidth(this.mContentMaxWidth);
        } else {
            COUILog.e(TAG, "parentPanel is error; Need to check whether the application has a layout that covers the coui's");
        }
    }

    private void initCustomPanel() {
        int i10;
        if (this.hasSetView || (i10 = this.mCustomContentLayoutRes) == 0) {
            return;
        }
        setView(i10);
    }

    private void initCustomPanelVisibility(Window window) {
        if (this.hasSetView) {
            View viewFindViewById = window.findViewById(R$id.customPanel);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
            }
            View viewFindViewById2 = window.findViewById(R$id.custom);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(0);
            }
            if (this.mHasLoading || this.hasMessage) {
                return;
            }
            viewFindViewById2.setPaddingRelative(viewFindViewById2.getPaddingStart(), !this.hasTitle ? getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_builder_customstyle_padding_top_withouttitle) : !this.isAssignMentLayout ? getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_customer_layout_imageview_margin_top) : 0, viewFindViewById2.getPaddingEnd(), this.isAssignMentLayout ? getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_customer_layout_imageview_margin_bottom) : 0);
        }
    }

    private void initListPanel(Window window) {
        View viewFindViewById = window.findViewById(R$id.listPanel);
        if (!(viewFindViewById instanceof ViewGroup)) {
            COUILog.e(TAG, "listPanel is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        ViewGroup viewGroup = (ViewGroup) viewFindViewById;
        c cVar = this.mDialog;
        ListView listViewG = cVar != null ? cVar.g() : null;
        if (listViewG != null) {
            listViewG.setScrollIndicators(0);
        }
        boolean z10 = (viewGroup == null || listViewG == null) ? false : true;
        if (z10) {
            if (listViewG.getParent() != null && (listViewG.getParent() instanceof ViewGroup)) {
                ((ViewGroup) listViewG.getParent()).removeView(listViewG);
            }
            viewGroup.addView(listViewG, new ViewGroup.LayoutParams(-1, -1));
        }
        final ViewGroup viewGroup2 = (ViewGroup) window.findViewById(R$id.scrollView);
        if (viewGroup2 != null) {
            viewGroup2.setScrollIndicators(0);
            if (this.mIsNeedToAdaptMessageAndList && z10) {
                setViewHorizontalWeight(viewGroup2, 1);
                setViewHorizontalWeight(viewGroup, 1);
            }
            if (!(viewGroup2 instanceof COUIMaxHeightNestedScrollView)) {
                COUILog.e(TAG, "scrollView isn't instanceof COUIMaxHeightNestedScrollView; Need to check whether the application has a layout that covers the coui's");
                return;
            }
            boolean zIsSecondaryScreen = AppFeatureUtil.isSecondaryScreen(getContext());
            if (this.hasAdapter && !zIsSecondaryScreen) {
                ((COUIMaxHeightNestedScrollView) viewGroup2).setMaxHeight(getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_builder_content_max_height_with_adapter));
            }
            if (window.getAttributes().gravity == 80 && this.hasMessage) {
                if (this.mHasLoading || this.mIsTinyStyle) {
                    ((COUIMaxHeightNestedScrollView) viewGroup2).setConfigChangeListener(new COUIMaxHeightNestedScrollView.ConfigChangeListener() { // from class: com.coui.appcompat.dialog.COUIAlertDialogBuilder.2
                        @Override // com.coui.appcompat.dialog.widget.COUIMaxHeightNestedScrollView.ConfigChangeListener
                        public void onChange() {
                            viewGroup2.setPadding(0, COUIAlertDialogBuilder.this.getContext().getResources().getDimensionPixelOffset(R$dimen.bottom_dialog_scroll_padding_top), 0, COUIAlertDialogBuilder.this.getContext().getResources().getDimensionPixelOffset(R$dimen.bottom_dialog_scroll_padding_bottom));
                        }
                    });
                }
            }
        }
    }

    private void initMessagePadding() {
        c cVar = this.mDialog;
        if (cVar == null) {
            return;
        }
        View viewFindViewById = cVar.findViewById(R$id.scrollView);
        View viewFindViewById2 = this.mDialog.getWindow().findViewById(R$id.parentPanel);
        if (!(viewFindViewById2 instanceof COUIAlertDialogMaxLinearLayout)) {
            COUILog.e(TAG, "parentPanel is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        COUIAlertDialogMaxLinearLayout cOUIAlertDialogMaxLinearLayout = (COUIAlertDialogMaxLinearLayout) viewFindViewById2;
        cOUIAlertDialogMaxLinearLayout.setHasLoading(this.mHasLoading);
        cOUIAlertDialogMaxLinearLayout.setIsTiny(this.mIsTinyStyle);
        cOUIAlertDialogMaxLinearLayout.setSupportDynamicMarginTop(this.mSupportDynamicMarginTop);
        if (this.mIsTinyStyle || this.mHasLoading || !this.hasMessage || viewFindViewById == null) {
            return;
        }
        if (this.hasTitle && this.isAssignMentLayout) {
            viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), 0, viewFindViewById.getPaddingRight(), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_scroll_padding_bottom_message_has_title_in_assignment));
        }
        cOUIAlertDialogMaxLinearLayout.setHasMessageMerge(this.mHasMessageMerge);
        if (this.mIsTinyStyle || this.isAssignMentLayout) {
            return;
        }
        cOUIAlertDialogMaxLinearLayout.setNeedSetPaddingLayoutId(R$id.scrollView);
    }

    private void initSingleContentPadding(Window window) {
        View viewFindViewById = window.findViewById(R$id.buttonPanel);
        CharSequence[] charSequenceArr = this.mItems;
        boolean z10 = this.hasTitle || this.hasMessage || this.hasSetView || this.hasAdapter || (charSequenceArr != null && charSequenceArr.length > 0);
        if (this.mIsTinyStyle) {
            if (viewFindViewById == null || z10) {
                return;
            }
            viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), getContext().getResources().getDimensionPixelOffset(R$dimen.coui_tiny_dialog_btn_bar_padding_vertical), viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingBottom());
            return;
        }
        if (!(viewFindViewById instanceof COUIButtonBarLayout)) {
            COUILog.e(TAG, "buttonPanel is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        COUIButtonBarLayout cOUIButtonBarLayout = (COUIButtonBarLayout) viewFindViewById;
        cOUIButtonBarLayout.setRecommendButtonId(this.mRecommendButtonId);
        cOUIButtonBarLayout.setDynamicLayout(this.mButtonLayoutDynamicLayout);
        cOUIButtonBarLayout.setShowDividerWhenHasItems(this.mItems != null);
    }

    private void initTitle(Window window) {
        if (this.mIsTinyStyle || this.mHasLoading) {
            return;
        }
        View viewFindViewById = window.findViewById(R$id.title_template);
        if (viewFindViewById == null || !(viewFindViewById instanceof LinearLayout)) {
            COUILog.e(TAG, "title_template is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.topMargin = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_no_message_alert_dialog_title_margin_top);
        layoutParams.bottomMargin = getContext().getResources().getDimensionPixelOffset(R$dimen.coui_no_message_alert_dialog_title_margin_bottom);
        viewFindViewById.setLayoutParams(layoutParams);
        initTitleScrollView(window, window.findViewById(R$id.alert_title_scroll_view));
        initCOUIDialogTitle(window.findViewById(R$id.alertTitle));
    }

    private void initTitleScrollView(Window window, View view) {
        if (view == null || !(view instanceof COUIMaxHeightScrollView)) {
            COUILog.e(TAG, "alert_title_scroll_view is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        COUIMaxHeightScrollView cOUIMaxHeightScrollView = (COUIMaxHeightScrollView) view;
        cOUIMaxHeightScrollView.setMinHeight((window.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_builder_title_scroll_min_height) - getContext().getResources().getDimensionPixelOffset(R$dimen.coui_no_message_alert_dialog_title_margin_top)) - getContext().getResources().getDimensionPixelOffset(R$dimen.coui_no_message_alert_dialog_title_margin_bottom));
        cOUIMaxHeightScrollView.setFillViewport(true);
        View viewFindViewById = window.findViewById(R$id.parentPanel);
        if (!(viewFindViewById instanceof COUIAlertDialogMaxLinearLayout)) {
            COUILog.e(TAG, "parentPanelView is error; Need to check whether the application has a layout that covers the coui's");
            return;
        }
        COUIAlertDialogMaxLinearLayout cOUIAlertDialogMaxLinearLayout = (COUIAlertDialogMaxLinearLayout) viewFindViewById;
        if (!this.hasMessage) {
            cOUIAlertDialogMaxLinearLayout.setNeedMinHeight(window.getContext().getResources().getDimensionPixelOffset(R$dimen.coui_alert_dialog_builder_parent_panel_min_height_normal));
        }
        cOUIAlertDialogMaxLinearLayout.setNeedReMeasureLayoutId(cOUIMaxHeightScrollView.getId());
    }

    private void initWindow(Window window) {
        if (isFollowHandMode()) {
            COUIBottomAlertDialogAdjustUtil.adjustToFree(window, this.mAnchorView, this.mAnchorViewTouchPoint, this.mExtraOffsetPoint);
            window.getDecorView().setVisibility(4);
        } else {
            Configuration configuration = this.mConfiguration;
            if (configuration == null) {
                configuration = window.getContext().getResources().getConfiguration();
            }
            updateGravityAndAnimation(configuration);
        }
        window.getDecorView().setOnTouchListener(new OutsideTouchListener(this.mDialog));
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i10 = this.mDialogWindowType;
        if (i10 > 0) {
            attributes.type = i10;
        }
        attributes.width = isFollowHandMode() ? -2 : -1;
        window.setAttributes(attributes);
    }

    private boolean isFollowHandMode() {
        return (this.mAnchorView == null && this.mAnchorViewTouchPoint == null) ? false : true;
    }

    private boolean isForceCenterStyleInLargeScreen(Configuration configuration) {
        return isLargeScreen(configuration) && this.mIsForceCenterInLargeScreen;
    }

    private boolean isLargeScreen(Configuration configuration) {
        int iPx2dip = configuration.screenWidthDp;
        int iPx2dip2 = configuration.screenHeightDp;
        if (this.mForcePhysicalDimensions) {
            iPx2dip = UIUtil.px2dip(getContext(), UIUtil.getScreenWidthRealSize(getContext()));
            iPx2dip2 = UIUtil.px2dip(getContext(), UIUtil.getScreenHeightRealSize(getContext()));
        }
        return COUIResponsiveUtils.isLargePadWindow(getContext(), iPx2dip, iPx2dip2);
    }

    private boolean isMiddleAndLargeScreen(Configuration configuration) {
        if (this.mAlwaysFollowHand) {
            return true;
        }
        return !COUIResponsiveUtils.isSmallScreenDp(configuration.screenWidthDp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void operateBlur(View view) {
        if (!view.isHardwareAccelerated()) {
            COUILog.e(TAG, "Hardware accelerate is disabled! Set background blur failed.");
            return;
        }
        if (this.mBackgroundBlurBuilder.useBackgroundBlur()) {
            boolean zIsSupportRoundCornerWhenBlur = RoundCornerUtil.isSupportRoundCornerWhenBlur();
            View viewFindViewById = this.mDialog.getWindow().findViewById(R$id.rootView);
            View viewFindViewById2 = this.mDialog.getWindow().findViewById(R$id.parentPanel);
            this.mBackgroundBlurBuilder.setTargetView(viewFindViewById);
            this.mBackgroundBlurBuilder.setRootView(view);
            if (viewFindViewById2 instanceof COUIAlertDialogMaxLinearLayout) {
                COUIAlertDialogMaxLinearLayout cOUIAlertDialogMaxLinearLayout = (COUIAlertDialogMaxLinearLayout) viewFindViewById2;
                cOUIAlertDialogMaxLinearLayout.setBlurBackgroundWindow(this.mBackgroundBlurBuilder.useBackgroundBlur());
                cOUIAlertDialogMaxLinearLayout.setIsSupportRoundCornerWhenBlur(zIsSupportRoundCornerWhenBlur);
            } else {
                COUILog.e(TAG, "operateBlur: parentPanel is not COUIAlertDialogMaxLinearLayout");
            }
            int i10 = com.support.appcompat.R$attr.couiRoundCornerXXLWeight;
            if (this.mHasLoading) {
                i10 = com.support.appcompat.R$attr.couiRoundCornerMWeight;
            }
            this.mBackgroundBlurBuilder.setSmoothWeight(COUIContextUtil.getAttrFloat(getContext(), i10));
            int i11 = com.support.appcompat.R$attr.couiRoundCornerXXLRadius;
            if (this.mHasLoading) {
                i11 = com.support.appcompat.R$attr.couiRoundCornerMRadius;
            }
            float attrDimens = COUIContextUtil.getAttrDimens(getContext(), i11);
            if (this.mIsTinyStyle) {
                this.mBackgroundBlurBuilder.setCornerRadius(attrDimens, attrDimens, 0.0f, 0.0f);
            } else {
                this.mBackgroundBlurBuilder.setCornerRadius(attrDimens);
            }
            this.mBackgroundBlurBuilder.applyBlurBackground();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerApplicationConfigChangeListener() {
        getContext().registerComponentCallbacks(this.mComponentCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseApplicationConfigChangeListener() {
        if (this.mComponentCallbacks != null) {
            getContext().unregisterComponentCallbacks(this.mComponentCallbacks);
        }
    }

    private void setCustomLayout() {
        if (this.mIsCustomStyle) {
            if (this.mCustomDrawable != null) {
                View viewFindViewById = this.mDialog.findViewById(R$id.customImageview);
                if (viewFindViewById instanceof COUIRoundImageView) {
                    COUIRoundImageView cOUIRoundImageView = (COUIRoundImageView) viewFindViewById;
                    if (cOUIRoundImageView != null) {
                        cOUIRoundImageView.setImageDrawable(this.mCustomDrawable);
                        cOUIRoundImageView.setVisibility(0);
                    }
                } else {
                    COUILog.e(TAG, "customImageview is error; Need to check whether the application has a layout that covers the coui's");
                }
            }
            if (this.mCustomTitle != null) {
                View viewFindViewById2 = this.mDialog.findViewById(R$id.customTitle);
                if (viewFindViewById2 instanceof TextView) {
                    TextView textView = (TextView) viewFindViewById2;
                    if (textView != null) {
                        textView.setText(this.mCustomTitle);
                        textView.setVisibility(0);
                    }
                } else {
                    COUILog.e(TAG, "customTitle is error; Need to check whether the application has a layout that covers the coui's");
                }
            }
            if (this.mCustomMessage != null) {
                View viewFindViewById3 = this.mDialog.findViewById(R$id.customMessage);
                if (!(viewFindViewById3 instanceof TextView)) {
                    COUILog.e(TAG, "customMessage is error; Need to check whether the application has a layout that covers the coui's");
                    return;
                }
                TextView textView2 = (TextView) viewFindViewById3;
                if (textView2 != null) {
                    textView2.setText(this.mCustomMessage);
                    textView2.setVisibility(0);
                }
            }
        }
    }

    private void setViewHorizontalWeight(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            layoutParams.height = 0;
            ((LinearLayout.LayoutParams) layoutParams).weight = i10;
            view.setLayoutParams(layoutParams);
        }
    }

    private void updateGravityAndAnimation(Configuration configuration) {
        if (isForceCenterStyleInLargeScreen(configuration)) {
            this.mIsForceCenterStyleStatus = true;
            this.mDialog.getWindow().setGravity(17);
            this.mDialog.getWindow().setWindowAnimations(DEF_WINDOW_ANIM);
        } else {
            this.mIsForceCenterStyleStatus = false;
            this.mDialog.getWindow().setGravity(this.mGravity);
            this.mDialog.getWindow().setWindowAnimations(this.mWindowAnimStyleRes);
        }
    }

    public static Context wrapColorContext(Context context, int i10, int i11) {
        return new ContextThemeWrapper(new ContextThemeWrapper(context, i10), i11);
    }

    @Override // androidx.appcompat.app.c.a
    public c create() {
        initCustomPanel();
        initAdapter();
        c cVarCreate = super.create();
        this.mDialog = cVarCreate;
        initWindow(cVarCreate.getWindow());
        return this.mDialog;
    }

    public c createWithExtraOffset(View view, int i10, int i11) {
        return createWithExtraOffset(view, 0, 0, i10, i11);
    }

    public void enforceChangeScreenWidth(int i10) {
        if (i10 < 0) {
            Log.d(TAG, "enforceChangeScreenWidth : given value not satisfy : preferWidth =" + i10);
            return;
        }
        try {
            Resources resources = getContext().getResources();
            Configuration configuration = resources.getConfiguration();
            this.mOriginWidth = configuration.screenWidthDp;
            configuration.screenWidthDp = i10;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "enforceChangeScreenWidth : OriginWidth=" + this.mOriginWidth + " ,PreferWidth:" + i10);
        } catch (Exception unused) {
            Log.d(TAG, "enforceChangeScreenWidth : failed to updateConfiguration");
        }
    }

    public View getAnchorView() {
        return this.mAnchorView;
    }

    public int getBottomAlertDialogWindowAnimStyle(Context context) {
        return (isMiddleAndLargeScreen(context.getResources().getConfiguration()) && isFollowHandMode()) ? R$style.Animation_COUI_DialogListWindow : this.mWindowAnimStyleRes;
    }

    public int getBottomAlertDialogWindowGravity(Context context) {
        if (isMiddleAndLargeScreen(context.getResources().getConfiguration()) && isFollowHandMode()) {
            return 51;
        }
        return this.mGravity;
    }

    protected void initAdapter() {
        CharSequence[] charSequenceArr;
        COUIListDialogAdapter cOUIListDialogAdapter = this.mCOUIListDialogAdapter;
        if (cOUIListDialogAdapter != null) {
            cOUIListDialogAdapter.setIsTop((this.hasTitle || this.hasMessage) ? false : true);
            this.mCOUIListDialogAdapter.setIsBottom((this.hasSetView || this.hasSetButton) ? false : true);
        }
        ChoiceListAdapter choiceListAdapter = this.mChoiceListAdapter;
        if (choiceListAdapter != null) {
            choiceListAdapter.setIsTop((this.hasTitle || this.hasMessage) ? false : true);
            this.mChoiceListAdapter.setIsBottom((this.hasSetView || this.hasSetButton) ? false : true);
        }
        if (this.hasAdapter || (charSequenceArr = this.mItems) == null || charSequenceArr.length <= 0) {
            return;
        }
        setAdapter((ListAdapter) new SummaryAdapter(getContext(), (this.hasTitle || this.hasMessage) ? false : true, (this.hasSetView || this.hasSetButton) ? false : true, this.mItems, this.mSummaryItems, this.mTextColor), this.mItemClickListener);
    }

    public void restoreScreenWidth() {
        if (this.mOriginWidth == -1) {
            return;
        }
        try {
            Resources resources = getContext().getResources();
            Configuration configuration = resources.getConfiguration();
            configuration.screenWidthDp = this.mOriginWidth;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            Log.d(TAG, "restoreScreenWidth : OriginWidth=" + this.mOriginWidth);
            this.mOriginWidth = -1;
        } catch (Exception unused) {
            Log.d(TAG, "restoreScreenWidth : failed to updateConfiguration");
        }
    }

    public COUIAlertDialogBuilder setAlwaysFollowHand(boolean z10) {
        this.mAlwaysFollowHand = z10;
        return this;
    }

    public COUIAlertDialogBuilder setAnchorView(View view) {
        this.mAnchorView = view;
        return this;
    }

    public COUIAlertDialogBuilder setAnchorViewTouchPoint(Point point) {
        this.mAnchorViewTouchPoint = point;
        return this;
    }

    public COUIAlertDialogBuilder setBlurBackgroundDrawable(boolean z10) {
        setBlurBackgroundDrawable(z10, UIUtil.ANIM_LEVEL_SUPPORT_BLUR_MIN);
        return this;
    }

    public COUIAlertDialogBuilder setButtonLayoutDynamicLayout(boolean z10) {
        this.mButtonLayoutDynamicLayout = z10;
        return this;
    }

    public COUIAlertDialogBuilder setCustomDrawable(Drawable drawable) {
        this.mCustomDrawable = drawable;
        return this;
    }

    public COUIAlertDialogBuilder setCustomMessage(CharSequence charSequence) {
        this.mCustomMessage = charSequence;
        return this;
    }

    public COUIAlertDialogBuilder setCustomTitle(String str) {
        this.mCustomTitle = str;
        return this;
    }

    public COUIAlertDialogBuilder setExtraOffsetPoint(Point point) {
        this.mExtraOffsetPoint = point;
        return this;
    }

    public COUIAlertDialogBuilder setForcePhysicalDimensions(boolean z10) {
        this.mForcePhysicalDimensions = z10;
        return this;
    }

    public COUIAlertDialogBuilder setHasMessageMerge(boolean z10) {
        this.mHasMessageMerge = z10;
        return this;
    }

    public void setHasSetButton(boolean z10) {
        this.hasSetButton = z10;
    }

    public COUIAlertDialogBuilder setIsForceCenterInLargeScreen(boolean z10) {
        this.mIsForceCenterInLargeScreen = z10;
        return this;
    }

    public COUIAlertDialogBuilder setNeedToAdaptMessageAndList(boolean z10) {
        this.mIsNeedToAdaptMessageAndList = z10;
        return this;
    }

    public COUIAlertDialogBuilder setRegisterConfigurationChangeCallBack(boolean z10) {
        this.mRegisterConfigurationChangeCallBack = z10;
        return this;
    }

    public COUIAlertDialogBuilder setSummaryItems(int i10) {
        this.mSummaryItems = getContext().getResources().getTextArray(i10);
        return this;
    }

    public void setSupportDynamicMarginTop(boolean z10) {
        this.mSupportDynamicMarginTop = z10;
    }

    @Override // androidx.appcompat.app.c.a
    public c.a setView(int i10) {
        this.hasSetView = true;
        return super.setView(i10);
    }

    public COUIAlertDialogBuilder setWindowAnimStyle(int i10) {
        this.mWindowAnimStyleRes = i10;
        return this;
    }

    public COUIAlertDialogBuilder setWindowGravity(int i10) {
        this.mGravity = i10;
        return this;
    }

    public COUIAlertDialogBuilder setWindowType(int i10) {
        this.mDialogWindowType = i10;
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public c show() {
        c cVarShow = super.show();
        disabledTitleScroll(cVarShow);
        updateViewAfterShown();
        return cVarShow;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateGravityWhileConfigChange(android.content.res.Configuration r5) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.dialog.COUIAlertDialogBuilder.updateGravityWhileConfigChange(android.content.res.Configuration):void");
    }

    public void updateViewAfterShown() {
        c cVar = this.mDialog;
        if (cVar == null) {
            return;
        }
        initTitle(cVar.getWindow());
        initMessagePadding();
        initCustomPanelVisibility(this.mDialog.getWindow());
        initListPanel(this.mDialog.getWindow());
        initContentMaxWidth(this.mDialog.getWindow());
        initContentMaxHeight(this.mDialog.getWindow());
        initSingleContentPadding(this.mDialog.getWindow());
        setCustomLayout();
        initBlurListener();
    }

    public COUIAlertDialogBuilder(Context context, int i10) {
        super(new ContextThemeWrapper(context, i10));
        this.hasTitle = false;
        this.hasMessage = false;
        this.hasAdapter = false;
        this.mHasLoading = false;
        this.isAssignMentLayout = false;
        this.mCOUIListDialogAdapter = null;
        this.hasSetView = false;
        this.mDialogWindowType = 0;
        this.mChoiceListAdapter = null;
        this.hasSetButton = false;
        this.mAnchorView = null;
        this.mAnchorViewTouchPoint = null;
        this.mExtraOffsetPoint = null;
        this.mOriginWidth = -1;
        this.mButtonLayoutDynamicLayout = true;
        this.mIsTinyStyle = false;
        this.mRegisterConfigurationChangeCallBack = true;
        this.mIsForceCenterInLargeScreen = false;
        this.mForcePhysicalDimensions = false;
        this.mRecommendButtonId = -1;
        this.mIsCustomStyle = false;
        this.mHasMessageMerge = false;
        this.mSupportDynamicMarginTop = false;
        this.mComponentCallbacks = new ComponentCallbacks() { // from class: com.coui.appcompat.dialog.COUIAlertDialogBuilder.4
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                if (COUIAlertDialogBuilder.this.mRegisterConfigurationChangeCallBack) {
                    COUIAlertDialogBuilder.this.mConfiguration = configuration;
                    COUIAlertDialogBuilder.this.updateGravityWhileConfigChange(configuration);
                }
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }
        };
        this.mDialogStyle = i10;
        initAttrs();
        initBlurBuilder(context);
    }

    public c createWithExtraOffset(View view, int i10, int i11, int i12, int i13) {
        if (isMiddleAndLargeScreen(getContext().getResources().getConfiguration())) {
            this.mAnchorView = view;
            if (i10 != 0 || i11 != 0) {
                Point point = new Point();
                this.mAnchorViewTouchPoint = point;
                point.set(i10, i11);
            }
            if (i12 != 0 || i13 != 0) {
                Point point2 = new Point();
                this.mExtraOffsetPoint = point2;
                point2.set(i12, i13);
            }
        }
        return create();
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        this.hasAdapter = listAdapter != null;
        if (listAdapter instanceof COUIListDialogAdapter) {
            this.mCOUIListDialogAdapter = (COUIListDialogAdapter) listAdapter;
        }
        super.setAdapter(listAdapter, onClickListener);
        return this;
    }

    public COUIAlertDialogBuilder setBlurBackgroundDrawable(boolean z10, AnimLevel animLevel) {
        this.mBackgroundBlurBuilder.setUseBackgroundBlur(z10, animLevel);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setSingleChoiceItems(ListAdapter listAdapter, int i10, DialogInterface.OnClickListener onClickListener) {
        this.hasAdapter = listAdapter != null;
        super.setSingleChoiceItems(listAdapter, i10, onClickListener);
        return this;
    }

    public COUIAlertDialogBuilder setSummaryItems(CharSequence[] charSequenceArr) {
        this.mSummaryItems = charSequenceArr;
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setItems(int i10, DialogInterface.OnClickListener onClickListener) {
        this.mItems = getContext().getResources().getTextArray(i10);
        this.mItemClickListener = onClickListener;
        super.setItems(i10, onClickListener);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setMessage(CharSequence charSequence) {
        this.hasMessage = !TextUtils.isEmpty(charSequence);
        super.setMessage(charSequence);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
        super.setNegativeButton(i10, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setNeutralButton(int i10, DialogInterface.OnClickListener onClickListener) {
        super.setNeutralButton(i10, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
        super.setPositiveButton(i10, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setTitle(CharSequence charSequence) {
        this.hasTitle = !TextUtils.isEmpty(charSequence);
        super.setTitle(charSequence);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public c.a setView(View view) {
        this.hasSetView = true;
        this.mContentView = view;
        return super.setView(view);
    }

    public c show(View view) {
        if (!isMiddleAndLargeScreen(getContext().getResources().getConfiguration())) {
            view = null;
        }
        this.mAnchorView = view;
        return show();
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setMessage(int i10) {
        this.hasMessage = !TextUtils.isEmpty(getContext().getString(i10));
        super.setMessage(i10);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.setNegativeButton(charSequence, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.setNeutralButton(charSequence, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        super.setPositiveButton(charSequence, onClickListener);
        setHasSetButton(true);
        return this;
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setTitle(int i10) {
        this.hasTitle = !TextUtils.isEmpty(getContext().getString(i10));
        super.setTitle(i10);
        return this;
    }

    public c create(View view) {
        if (!isMiddleAndLargeScreen(getContext().getResources().getConfiguration())) {
            view = null;
        }
        this.mAnchorView = view;
        return create();
    }

    public COUIAlertDialogBuilder setItems(int i10, DialogInterface.OnClickListener onClickListener, int[] iArr) {
        this.mItems = getContext().getResources().getTextArray(i10);
        this.mItemClickListener = onClickListener;
        this.mTextColor = iArr;
        super.setItems(i10, onClickListener);
        return this;
    }

    public COUIAlertDialogBuilder setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setNegativeButton(i10, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button2;
        }
        return this;
    }

    public COUIAlertDialogBuilder setNeutralButton(int i10, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setNeutralButton(i10, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button3;
        }
        return this;
    }

    public COUIAlertDialogBuilder setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setPositiveButton(i10, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button1;
        }
        return this;
    }

    public c create(View view, Point point) {
        return create(view, point.x, point.y);
    }

    public c create(View view, int i10, int i11) {
        return createWithExtraOffset(view, i10, i11, 0, 0);
    }

    @Override // androidx.appcompat.app.c.a
    public COUIAlertDialogBuilder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        this.mItems = charSequenceArr;
        this.mItemClickListener = onClickListener;
        super.setItems(charSequenceArr, onClickListener);
        return this;
    }

    public COUIAlertDialogBuilder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setNegativeButton(charSequence, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button2;
        }
        return this;
    }

    public COUIAlertDialogBuilder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setNeutralButton(charSequence, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button3;
        }
        return this;
    }

    public COUIAlertDialogBuilder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener, boolean z10) {
        super.setPositiveButton(charSequence, onClickListener);
        setHasSetButton(true);
        if (z10) {
            this.mRecommendButtonId = R.id.button1;
        }
        return this;
    }

    public COUIAlertDialogBuilder(Context context, int i10, int i11) {
        super(wrapColorContext(context, i10, i11));
        this.hasTitle = false;
        this.hasMessage = false;
        this.hasAdapter = false;
        this.mHasLoading = false;
        this.isAssignMentLayout = false;
        this.mCOUIListDialogAdapter = null;
        this.hasSetView = false;
        this.mDialogWindowType = 0;
        this.mChoiceListAdapter = null;
        this.hasSetButton = false;
        this.mAnchorView = null;
        this.mAnchorViewTouchPoint = null;
        this.mExtraOffsetPoint = null;
        this.mOriginWidth = -1;
        this.mButtonLayoutDynamicLayout = true;
        this.mIsTinyStyle = false;
        this.mRegisterConfigurationChangeCallBack = true;
        this.mIsForceCenterInLargeScreen = false;
        this.mForcePhysicalDimensions = false;
        this.mRecommendButtonId = -1;
        this.mIsCustomStyle = false;
        this.mHasMessageMerge = false;
        this.mSupportDynamicMarginTop = false;
        this.mComponentCallbacks = new ComponentCallbacks() { // from class: com.coui.appcompat.dialog.COUIAlertDialogBuilder.4
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                if (COUIAlertDialogBuilder.this.mRegisterConfigurationChangeCallBack) {
                    COUIAlertDialogBuilder.this.mConfiguration = configuration;
                    COUIAlertDialogBuilder.this.updateGravityWhileConfigChange(configuration);
                }
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }
        };
        initAttrs();
        initBlurBuilder(context);
    }
}
