package com.coui.appcompat.dialog.widget;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.InsetDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.a1;
import com.coui.appcompat.buttonBar.COUIButtonBarLayout;
import com.coui.appcompat.contextutil.COUIContextUtil;
import com.coui.appcompat.grid.COUIResponsiveUtils;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.roundcorner.RoundCornerUtil;
import com.coui.appcompat.statement.COUIMaxHeightScrollView;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.graphics.OplusOutline;
import com.oplus.graphics.OplusOutlineAdapter;
import com.support.dialog.R$dimen;
import com.support.dialog.R$id;
import com.support.dialog.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class COUIAlertDialogMaxLinearLayout extends LinearLayout {
    private static final int NO_ID = -1;
    private static final int UNDEFINED_ATTR = -1;
    private final String TAG;
    private View.OnApplyWindowInsetsListener mApplyWindowInsetsListener;
    private boolean mBlurBackgroundWindow;
    private COUIButtonBarLayout mButtonPanel;
    private View mContentPanelLayout;
    private int mCouiBottomAlertDialogButtonbarMargintop;
    private int mCustomMarginExtra;
    private FrameLayout mCustomPanelLayout;
    private FrameLayout mCustomView;
    private int mDialogContentPanelLayoutMinHeight;
    private int mDialogCustomViewMinHeight;
    private int mDialogLayoutMarginHorizontal;
    private int mDialogLayoutMarginVertical;
    private COUIAlertDialogMessageView mDialogMessage;
    private COUIDialogTitle mDialogTitle;
    private boolean mHasLoading;
    private boolean mHasMessageMerge;
    private boolean mIsSupportRoundCornerWhenBlur;
    private boolean mIsSupportSmoothRoundCorner;
    private boolean mIsTiny;
    private int mLandscapeMaxHeight;
    private LinearLayout mLinearLayoutTitle;
    private int mMaxHeight;
    private int mMaxWidth;
    private int mMessagePaddingBottomWhenDialogTallDialog;
    private int mMessagePaddingEnd;
    private int mMessagePaddingStart;
    private int mMessagePaddingTopWhenDialogIsTallDialog;
    private int mNeedMinHeight;
    private int mNeedReMeasureLayoutId;
    private boolean mNeedResetButtomBarTopMargin;
    private boolean mNeedSetMarginTop;
    private int mNeedSetPaddingLayoutId;
    private int mRadius;
    private COUIMaxHeightNestedScrollView mScrollViewMessage;
    private COUIMaxHeightScrollView mScrollViewTitle;
    private View mSpacingViewForCustomView;
    private View mSpacingViewForMessage;
    private boolean mSupportDynamicMarginTop;
    private View mTopPanelLayout;

    public interface OnSizeChangeListener {
        void onSizeChange(int i10, int i11, int i12, int i13);
    }

    public COUIAlertDialogMaxLinearLayout(Context context) {
        super(context);
        this.TAG = "DialogMaxLinearLayout";
        this.mNeedReMeasureLayoutId = -1;
        this.mNeedSetPaddingLayoutId = -1;
        this.mCustomMarginExtra = 5;
        this.mBlurBackgroundWindow = false;
        this.mIsSupportRoundCornerWhenBlur = false;
        this.mIsSupportSmoothRoundCorner = false;
        this.mHasLoading = false;
        this.mIsTiny = false;
        this.mSupportDynamicMarginTop = false;
        this.mApplyWindowInsetsListener = new View.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout.1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                COUIAlertDialogMaxLinearLayout.this.setMarginTop();
                return windowInsets;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMarginTop() {
        Insets insets;
        Activity activityContextToActivity = UIUtil.contextToActivity(getContext());
        boolean zIsVisible = true;
        if (activityContextToActivity != null) {
            boolean z10 = (activityContextToActivity.getWindow().getDecorView().getRootWindowInsets() == null || (insets = activityContextToActivity.getWindow().getDecorView().getRootWindowInsets().getInsets(a1.m.e())) == null || insets.top != 0) ? false : true;
            boolean z11 = (activityContextToActivity.getWindow().getAttributes().flags & 1024) == 1024;
            boolean z12 = (activityContextToActivity.getWindow().getDecorView().getSystemUiVisibility() & 4) == 4;
            if (!z11 && !z12) {
                zIsVisible = z10;
            }
        } else {
            zIsVisible = getRootView().getRootWindowInsets() != null ? true ^ getRootView().getRootWindowInsets().isVisible(a1.m.e()) : false;
        }
        if (this.mNeedSetMarginTop != zIsVisible && (getBackground() instanceof InsetDrawable)) {
            InsetDrawable insetDrawable = (InsetDrawable) getBackground();
            Rect rect = new Rect();
            insetDrawable.getPadding(rect);
            if (zIsVisible) {
                int i10 = rect.bottom;
                rect.top = i10;
                this.mMaxHeight += i10;
            } else {
                rect.top = 0;
                this.mMaxHeight -= rect.bottom;
            }
            COUILog.d("DialogMaxLinearLayout", "refresh paddingTop:" + rect.top);
            setBackground(new InsetDrawable(insetDrawable.getDrawable(), rect.left, rect.top, rect.right, rect.bottom));
            this.mDialogLayoutMarginVertical = rect.top + rect.bottom;
        }
        this.mNeedSetMarginTop = zIsVisible;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void setOutLineProvider() {
        /*
            r3 = this;
            int r0 = r3.mRadius
            r1 = -1
            r2 = 1
            if (r0 != r1) goto L47
            boolean r0 = r3.mHasLoading
            if (r0 == 0) goto L23
            boolean r0 = r3.mIsSupportSmoothRoundCorner
            if (r0 == 0) goto L20
            int r0 = com.coui.appcompat.roundcorner.RoundCornerUtil.getSmoothStyleType()
            if (r0 != 0) goto L17
            int r0 = com.support.appcompat.R$attr.couiRoundCornerMRadius
            goto L3d
        L17:
            int r0 = com.coui.appcompat.roundcorner.RoundCornerUtil.getSmoothStyleType()
            if (r0 != r2) goto L39
            int r0 = com.support.appcompat.R$attr.couiRoundCornerM
            goto L3d
        L20:
            int r0 = com.support.appcompat.R$attr.couiRoundCornerM
            goto L3d
        L23:
            boolean r0 = r3.mIsSupportSmoothRoundCorner
            if (r0 == 0) goto L3b
            int r0 = com.coui.appcompat.roundcorner.RoundCornerUtil.getSmoothStyleType()
            if (r0 != 0) goto L30
            int r0 = com.support.appcompat.R$attr.couiRoundCornerXXLRadius
            goto L3d
        L30:
            int r0 = com.coui.appcompat.roundcorner.RoundCornerUtil.getSmoothStyleType()
            if (r0 != r2) goto L39
            int r0 = com.support.appcompat.R$attr.couiRoundCornerXXL
            goto L3d
        L39:
            r0 = 0
            goto L3d
        L3b:
            int r0 = com.support.appcompat.R$attr.couiRoundCornerXXL
        L3d:
            android.content.Context r1 = r3.getContext()
            int r0 = com.coui.appcompat.contextutil.COUIContextUtil.getAttrDimens(r1, r0)
            r3.mRadius = r0
        L47:
            int r0 = r3.mRadius
            if (r0 <= 0) goto L56
            r3.setClipToOutline(r2)
            com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout$2 r0 = new com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout$2
            r0.<init>()
            r3.setOutlineProvider(r0)
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout.setOutLineProvider():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOutLineProviderInternal(Outline outline) {
        int measuredWidth;
        int measuredHeight;
        int i10;
        int i11;
        boolean z10 = false;
        if (this.mHasLoading || this.mIsTiny) {
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
            if (this.mIsTiny) {
                measuredHeight += this.mRadius;
            }
            i10 = 0;
            i11 = 0;
        } else {
            int i12 = this.mDialogLayoutMarginHorizontal;
            int dimensionPixelSize = this.mDialogLayoutMarginVertical - getResources().getDimensionPixelSize(R$dimen.coui_dialog_layout_margin_vertical);
            measuredWidth = getMeasuredWidth() - (this.mDialogLayoutMarginHorizontal * 2);
            measuredHeight = getMeasuredHeight() - this.mDialogLayoutMarginVertical;
            i10 = i12;
            i11 = dimensionPixelSize;
        }
        if (this.mBlurBackgroundWindow && !this.mIsSupportRoundCornerWhenBlur) {
            z10 = true;
        }
        if (!this.mIsSupportSmoothRoundCorner || z10) {
            outline.setRoundRect(i10, i11, i10 + measuredWidth, i11 + measuredHeight, this.mRadius);
        } else if (RoundCornerUtil.getSmoothStyleType() == 0) {
            new OplusOutline(outline).setSmoothRoundRect(i10, i11, i10 + measuredWidth, i11 + measuredHeight, this.mRadius, this.mHasLoading ? COUIContextUtil.getFloat(getContext(), com.support.appcompat.R$dimen.coui_round_corner_m_weight) : COUIContextUtil.getFloat(getContext(), com.support.appcompat.R$dimen.coui_round_corner_xxl_weight));
        } else if (RoundCornerUtil.getSmoothStyleType() == 1) {
            new OplusOutlineAdapter(outline, RoundCornerUtil.getSmoothStyleType()).setSmoothRoundRect(new Rect(i10, i11, measuredWidth + i10, measuredHeight + i11), this.mRadius);
        }
        COUILog.i("DialogMaxLinearLayout", "getOutline: notUseRoundCornerWhenBlur" + z10 + " mBlurBackgroundWindow=" + this.mBlurBackgroundWindow + " mIsSupportRoundCornerWhenBlur=" + this.mIsSupportRoundCornerWhenBlur + " mIsSupportSmoothRoundCorner=" + this.mIsSupportSmoothRoundCorner + " mRadius=" + this.mRadius);
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        if (this.mSupportDynamicMarginTop) {
            getRootView().setOnApplyWindowInsetsListener(this.mApplyWindowInsetsListener);
        } else {
            setMarginTop();
        }
        setOutLineProvider();
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        getRootView().setOnApplyWindowInsetsListener(null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.LinearLayout, android.view.View
    @SuppressLint({"LongLogTag"})
    protected void onMeasure(int i10, int i11) {
        int lineCount;
        int lineCount2;
        View viewFindViewById;
        COUIAlertDialogMessageView cOUIAlertDialogMessageView;
        FrameLayout frameLayout;
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i12 = this.mMaxWidth;
        if (i12 != 0 && measuredWidth > i12) {
            i10 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            super.onMeasure(i10, i11);
            measuredHeight = getMeasuredHeight();
        }
        int i13 = this.mMaxHeight;
        if (measuredHeight > i13 && i13 > 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
            super.onMeasure(i10, i11);
            measuredHeight = getMeasuredHeight();
        }
        if (this.mScrollViewTitle == null) {
            try {
                this.mTopPanelLayout = findViewById(R$id.topPanel);
                this.mCustomPanelLayout = (FrameLayout) findViewById(R$id.customPanel);
                this.mCustomView = (FrameLayout) findViewById(R$id.custom);
                this.mContentPanelLayout = findViewById(R$id.contentPanel);
                this.mDialogTitle = (COUIDialogTitle) findViewById(R$id.alertTitle);
                this.mDialogMessage = (COUIAlertDialogMessageView) findViewById(R.id.message);
                this.mScrollViewMessage = (COUIMaxHeightNestedScrollView) findViewById(R$id.scrollView);
                this.mScrollViewTitle = (COUIMaxHeightScrollView) findViewById(R$id.alert_title_scroll_view);
                this.mButtonPanel = (COUIButtonBarLayout) findViewById(R$id.buttonPanel);
            } catch (Exception e10) {
                Log.e("DialogMaxLinearLayout", "Failed to get type conversion. message e:" + e10.getMessage());
                this.mHasMessageMerge = false;
                return;
            }
        }
        if (this.mDialogMessage != null) {
            lineCount = this.mDialogMessage.getLineCount();
            lineCount2 = this.mDialogTitle.getLineCount();
        } else {
            lineCount = 0;
            lineCount2 = 0;
        }
        int i14 = measuredHeight - this.mDialogLayoutMarginVertical;
        if (measuredHeight > 0 && i14 < this.mNeedMinHeight && UIUtil.getScreenHeightMetrics(getContext()) > this.mNeedMinHeight) {
            int i15 = this.mNeedReMeasureLayoutId;
            if (i15 != -1) {
                COUIMaxHeightScrollView cOUIMaxHeightScrollView = (COUIMaxHeightScrollView) findViewById(i15);
                int measuredHeight2 = cOUIMaxHeightScrollView.getMeasuredHeight() + (this.mNeedMinHeight - i14);
                if (cOUIMaxHeightScrollView.getMinHeight() != measuredHeight2) {
                    cOUIMaxHeightScrollView.setMinHeight(measuredHeight2);
                    super.onMeasure(i10, i11);
                }
            }
        } else if (this.mNeedSetPaddingLayoutId != -1) {
            boolean z10 = lineCount2 > 1;
            boolean z11 = lineCount > 1;
            boolean z12 = this.mButtonPanel.getButtonCount() > 1 && this.mButtonPanel.getOrientation() == 1;
            FrameLayout frameLayout2 = this.mCustomView;
            boolean z13 = frameLayout2 != null && frameLayout2.getMeasuredHeight() > this.mDialogCustomViewMinHeight;
            if ((z10 || z11 || z12 || z13) && (viewFindViewById = findViewById(this.mNeedSetPaddingLayoutId)) != null && viewFindViewById.getPaddingTop() != this.mMessagePaddingTopWhenDialogIsTallDialog) {
                viewFindViewById.setPadding(viewFindViewById.getPaddingStart(), this.mMessagePaddingTopWhenDialogIsTallDialog, viewFindViewById.getPaddingEnd(), this.mMessagePaddingBottomWhenDialogTallDialog);
                super.onMeasure(i10, i11);
            }
        }
        COUIAlertDialogMessageView cOUIAlertDialogMessageView2 = this.mDialogMessage;
        boolean z14 = (cOUIAlertDialogMessageView2 == null || TextUtils.isEmpty(cOUIAlertDialogMessageView2.getText())) ? false : true;
        FrameLayout frameLayout3 = this.mCustomView;
        boolean z15 = frameLayout3 != null && frameLayout3.getChildCount() > 0;
        COUIDialogTitle cOUIDialogTitle = this.mDialogTitle;
        if (cOUIDialogTitle == null || TextUtils.isEmpty(cOUIDialogTitle.getText())) {
            return;
        }
        if ((z14 || z15) && this.mHasMessageMerge) {
            if (this.mLinearLayoutTitle != null && (((cOUIAlertDialogMessageView = this.mDialogMessage) != null && cOUIAlertDialogMessageView.getParent() == this.mLinearLayoutTitle) || ((frameLayout = this.mCustomView) != null && frameLayout.getParent() == this.mLinearLayoutTitle))) {
                COUIAlertDialogMessageView cOUIAlertDialogMessageView3 = this.mDialogMessage;
                if (cOUIAlertDialogMessageView3 != null) {
                    ViewParent parent = cOUIAlertDialogMessageView3.getParent();
                    LinearLayout linearLayout = this.mLinearLayoutTitle;
                    if (parent == linearLayout) {
                        linearLayout.removeView(this.mDialogMessage);
                        View view = this.mSpacingViewForMessage;
                        if (view != null) {
                            this.mLinearLayoutTitle.removeView(view);
                        }
                        View view2 = this.mSpacingViewForCustomView;
                        if (view2 != null) {
                            this.mLinearLayoutTitle.removeView(view2);
                        }
                        COUIAlertDialogMessageView cOUIAlertDialogMessageView4 = this.mDialogMessage;
                        cOUIAlertDialogMessageView4.setPaddingRelative(this.mMessagePaddingStart, cOUIAlertDialogMessageView4.getPaddingTop(), this.mMessagePaddingEnd, this.mDialogMessage.getPaddingBottom());
                        this.mScrollViewMessage.addView(this.mDialogMessage);
                    }
                }
                FrameLayout frameLayout4 = this.mCustomView;
                if (frameLayout4 != null) {
                    ViewParent parent2 = frameLayout4.getParent();
                    LinearLayout linearLayout2 = this.mLinearLayoutTitle;
                    if (parent2 == linearLayout2) {
                        linearLayout2.removeView(this.mCustomView);
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCustomView.getLayoutParams();
                        marginLayoutParams.setMarginStart(marginLayoutParams.getMarginStart() + (this.mMessagePaddingStart - this.mCustomMarginExtra));
                        this.mCustomPanelLayout.addView(this.mCustomView);
                    }
                }
                if (this.mNeedResetButtomBarTopMargin && this.mButtonPanel != null && (this.mButtonPanel.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    this.mButtonPanel.setTopMarginFlag(true);
                }
                super.onMeasure(i10, i11);
            }
            if (COUIResponsiveUtils.isSmallScreenDp(UIUtil.px2dip(getContext(), UIUtil.getScreenHeightMetrics(getContext()))) && ((z14 && this.mContentPanelLayout.getMeasuredHeight() < this.mDialogContentPanelLayoutMinHeight) || (z15 && this.mCustomView.getMeasuredHeight() < this.mDialogCustomViewMinHeight))) {
                if (this.mLinearLayoutTitle == null) {
                    this.mLinearLayoutTitle = new LinearLayout(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 48;
                    this.mLinearLayoutTitle.setLayoutParams(layoutParams);
                    this.mLinearLayoutTitle.setOrientation(1);
                    this.mScrollViewTitle.removeAllViews();
                    this.mScrollViewTitle.addView(this.mLinearLayoutTitle);
                    this.mLinearLayoutTitle.addView(this.mDialogTitle);
                    if (z14) {
                        this.mSpacingViewForMessage = new View(getContext());
                        this.mSpacingViewForMessage.setLayoutParams(new LinearLayout.LayoutParams(-1, this.mMessagePaddingTopWhenDialogIsTallDialog));
                    }
                    if (z15) {
                        this.mSpacingViewForCustomView = new View(getContext());
                        this.mSpacingViewForCustomView.setLayoutParams(new LinearLayout.LayoutParams(-1, this.mMessagePaddingTopWhenDialogIsTallDialog));
                    }
                }
                if (z14 && this.mDialogMessage.getParent() != this.mLinearLayoutTitle) {
                    COUIAlertDialogMessageView cOUIAlertDialogMessageView5 = this.mDialogMessage;
                    cOUIAlertDialogMessageView5.setPaddingRelative(0, cOUIAlertDialogMessageView5.getPaddingTop(), 0, this.mDialogMessage.getPaddingBottom());
                    this.mScrollViewMessage.removeView(this.mDialogMessage);
                    this.mLinearLayoutTitle.addView(this.mSpacingViewForMessage);
                    this.mLinearLayoutTitle.addView(this.mDialogMessage);
                }
                if (z15 && this.mCustomView.getParent() != this.mLinearLayoutTitle) {
                    this.mCustomPanelLayout.removeView(this.mCustomView);
                    LinearLayoutCompat.a aVar = new LinearLayoutCompat.a(-2, -2);
                    aVar.setMarginStart(aVar.getMarginStart() - (this.mMessagePaddingStart - this.mCustomMarginExtra));
                    this.mLinearLayoutTitle.addView(this.mSpacingViewForCustomView);
                    this.mLinearLayoutTitle.addView(this.mCustomView, aVar);
                }
                if (this.mButtonPanel != null && (this.mButtonPanel.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mButtonPanel.getLayoutParams();
                    if (marginLayoutParams2.topMargin == this.mCouiBottomAlertDialogButtonbarMargintop) {
                        marginLayoutParams2.topMargin = 0;
                        this.mButtonPanel.setLayoutParams(marginLayoutParams2);
                        this.mNeedResetButtomBarTopMargin = true;
                        this.mButtonPanel.setTopMarginFlag(false);
                    }
                }
                super.onMeasure(i10, i11);
            }
            if (this.mButtonPanel != null) {
                COUIMaxHeightNestedScrollView cOUIMaxHeightNestedScrollView = (COUIMaxHeightNestedScrollView) this.mButtonPanel.getParent();
                cOUIMaxHeightNestedScrollView.setMaxHeight(-1);
                super.onMeasure(i10, i11);
                int measuredHeight3 = this.mTopPanelLayout.getMeasuredHeight() + this.mContentPanelLayout.getMeasuredHeight() + this.mCustomPanelLayout.getMeasuredHeight() + cOUIMaxHeightNestedScrollView.getMeasuredHeight() + this.mDialogLayoutMarginVertical;
                if (measuredHeight3 > getMeasuredHeight()) {
                    cOUIMaxHeightNestedScrollView.setMaxHeight(getMeasuredHeight() - (measuredHeight3 - cOUIMaxHeightNestedScrollView.getMeasuredHeight()));
                    super.onMeasure(i10, i11);
                }
            }
        }
    }

    public void setBlurBackgroundWindow(boolean z10) {
        this.mBlurBackgroundWindow = z10;
    }

    public void setHasLoading(boolean z10) {
        this.mHasLoading = z10;
    }

    public void setHasMessageMerge(boolean z10) {
        this.mHasMessageMerge = z10;
    }

    public void setIsSupportRoundCornerWhenBlur(boolean z10) {
        this.mIsSupportRoundCornerWhenBlur = z10;
    }

    public void setIsTiny(boolean z10) {
        this.mIsTiny = z10;
    }

    public void setMaxHeight(int i10) {
        this.mMaxHeight = i10;
    }

    public void setMaxWidth(int i10) {
        this.mMaxWidth = i10;
    }

    public void setNeedMinHeight(int i10) {
        this.mNeedMinHeight = i10;
    }

    public void setNeedReMeasureLayoutId(int i10) {
        this.mNeedReMeasureLayoutId = i10;
    }

    public void setNeedSetPaddingLayoutId(int i10) {
        this.mNeedSetPaddingLayoutId = i10;
    }

    public void setSupportDynamicMarginTop(boolean z10) {
        this.mSupportDynamicMarginTop = z10;
    }

    public COUIAlertDialogMaxLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "DialogMaxLinearLayout";
        this.mNeedReMeasureLayoutId = -1;
        this.mNeedSetPaddingLayoutId = -1;
        this.mCustomMarginExtra = 5;
        this.mBlurBackgroundWindow = false;
        this.mIsSupportRoundCornerWhenBlur = false;
        this.mIsSupportSmoothRoundCorner = false;
        this.mHasLoading = false;
        this.mIsTiny = false;
        this.mSupportDynamicMarginTop = false;
        this.mApplyWindowInsetsListener = new View.OnApplyWindowInsetsListener() { // from class: com.coui.appcompat.dialog.widget.COUIAlertDialogMaxLinearLayout.1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                COUIAlertDialogMaxLinearLayout.this.setMarginTop();
                return windowInsets;
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.COUIAlertDialogMaxLinearLayout);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIAlertDialogMaxLinearLayout_maxWidth, 0);
        this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIAlertDialogMaxLinearLayout_maxHeight, 0);
        this.mMessagePaddingTopWhenDialogIsTallDialog = getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_scroll_padding_top_message);
        this.mMessagePaddingBottomWhenDialogTallDialog = getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_scroll_padding_bottom_message);
        this.mDialogLayoutMarginVertical = getResources().getDimensionPixelSize(R$dimen.coui_dialog_layout_margin_vertical);
        this.mDialogLayoutMarginHorizontal = getResources().getDimensionPixelSize(R$dimen.coui_dialog_layout_margin_horizontal);
        this.mDialogContentPanelLayoutMinHeight = getResources().getDimensionPixelSize(R$dimen.coui_dialog_layout_content_panel_layout_min_height);
        this.mDialogCustomViewMinHeight = getResources().getDimensionPixelSize(R$dimen.coui_dialog_layout_customview_min_height);
        this.mMessagePaddingStart = getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_message_padding_left);
        this.mMessagePaddingEnd = getResources().getDimensionPixelSize(R$dimen.coui_alert_dialog_message_padding_left);
        this.mCouiBottomAlertDialogButtonbarMargintop = getResources().getDimensionPixelSize(R$dimen.coui_bottom_alert_dialog_buttonbar_margintop);
        this.mIsSupportSmoothRoundCorner = RoundCornerUtil.isVersionSupport();
        this.mRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.COUIAlertDialogMaxLinearLayout_clip_radius_root, -1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
