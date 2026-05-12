.class public Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final NO_ID:I = -0x1

.field private static final UNDEFINED_ATTR:I = -0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mBlurBackgroundWindow:Z

.field private mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

.field private mContentPanelLayout:Landroid/view/View;

.field private mCouiBottomAlertDialogButtonbarMargintop:I

.field private mCustomMarginExtra:I

.field private mCustomPanelLayout:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mDialogContentPanelLayoutMinHeight:I

.field private mDialogCustomViewMinHeight:I

.field private mDialogLayoutMarginHorizontal:I

.field private mDialogLayoutMarginVertical:I

.field private mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

.field private mDialogTitle:Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

.field private mHasLoading:Z

.field private mHasMessageMerge:Z

.field private mIsSupportRoundCornerWhenBlur:Z

.field private mIsSupportSmoothRoundCorner:Z

.field private mIsTiny:Z

.field private mLandscapeMaxHeight:I

.field private mLinearLayoutTitle:Landroid/widget/LinearLayout;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMessagePaddingBottomWhenDialogTallDialog:I

.field private mMessagePaddingEnd:I

.field private mMessagePaddingStart:I

.field private mMessagePaddingTopWhenDialogIsTallDialog:I

.field private mNeedMinHeight:I

.field private mNeedReMeasureLayoutId:I

.field private mNeedResetButtomBarTopMargin:Z

.field private mNeedSetMarginTop:Z

.field private mNeedSetPaddingLayoutId:I

.field private mRadius:I

.field private mScrollViewMessage:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

.field private mScrollViewTitle:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

.field private mSpacingViewForCustomView:Landroid/view/View;

.field private mSpacingViewForMessage:Landroid/view/View;

.field private mSupportDynamicMarginTop:Z

.field private mTopPanelLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, "DialogMaxLinearLayout"

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedReMeasureLayoutId:I

    .line 4
    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetPaddingLayoutId:I

    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomMarginExtra:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mBlurBackgroundWindow:Z

    .line 7
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportRoundCornerWhenBlur:Z

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    .line 9
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    .line 10
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsTiny:Z

    .line 11
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSupportDynamicMarginTop:Z

    .line 12
    new-instance p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$1;-><init>(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;)V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "DialogMaxLinearLayout"

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedReMeasureLayoutId:I

    .line 16
    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetPaddingLayoutId:I

    const/4 v1, 0x5

    .line 17
    iput v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomMarginExtra:I

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mBlurBackgroundWindow:Z

    .line 19
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportRoundCornerWhenBlur:Z

    .line 20
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    .line 21
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    .line 22
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsTiny:Z

    .line 23
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSupportDynamicMarginTop:Z

    .line 24
    new-instance v2, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$1;-><init>(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;)V

    iput-object v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 25
    sget-object v2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 26
    sget p2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout_maxWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxWidth:I

    .line 27
    sget p2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout_maxHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_scroll_padding_top_message:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingTopWhenDialogIsTallDialog:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_scroll_padding_bottom_message:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingBottomWhenDialogTallDialog:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_dialog_layout_margin_vertical:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_dialog_layout_margin_horizontal:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginHorizontal:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_dialog_layout_content_panel_layout_min_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogContentPanelLayoutMinHeight:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_dialog_layout_customview_min_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogCustomViewMinHeight:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_message_padding_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingStart:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_message_padding_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingEnd:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/dialog/R$dimen;->coui_bottom_alert_dialog_buttonbar_margintop:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCouiBottomAlertDialogButtonbarMargintop:I

    .line 37
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    .line 38
    sget p2, Lcom/support/dialog/R$styleable;->COUIAlertDialogMaxLinearLayout_clip_radius_root:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMarginTop()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;Landroid/graphics/Outline;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setOutLineProviderInternal(Landroid/graphics/Outline;)V

    return-void
.end method

.method private setMarginTop()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-static {}, Landroidx/core/view/a1$m;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/graphics/Insets;->top:I

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v5, 0x400

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/4 v5, 0x4

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-nez v4, :cond_6

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/a1$m;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    xor-int/2addr v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetMarginTop:Z

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v1, :cond_7

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    goto :goto_4

    :cond_7
    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh paddingTop:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DialogMaxLinearLayout"

    invoke-static {v4, v2}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    :cond_8
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetMarginTop:Z

    return-void
.end method

.method private setOutLineProvider()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-ne v0, v2, :cond_4

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXXLRadius:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-ne v0, v2, :cond_4

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXXL:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXXL:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    if-lez v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$2;-><init>(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_7
    return-void
.end method

.method private setOutLineProviderInternal(Landroid/graphics/Outline;)V
    .locals 12

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsTiny:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginHorizontal:I

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/dialog/R$dimen;->coui_dialog_layout_margin_vertical:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginHorizontal:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    sub-int/2addr v4, v5

    move v6, v0

    move v7, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsTiny:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    add-int/2addr v4, v0

    :cond_2
    move v6, v1

    move v7, v6

    :goto_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mBlurBackgroundWindow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportRoundCornerWhenBlur:Z

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v5, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v5, p1}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_round_corner_m_weight:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getFloat(Landroid/content/Context;I)F

    move-result p1

    :goto_2
    move v11, p1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_round_corner_xxl_weight:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getFloat(Landroid/content/Context;I)F

    move-result p1

    goto :goto_2

    :goto_3
    add-int v8, v6, v3

    add-int v9, v7, v4

    iget p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    int-to-float v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-ne v0, v2, :cond_8

    new-instance v0, Lcom/oplus/graphics/OplusOutlineAdapter;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v3, v6

    add-int/2addr v4, v7

    invoke-direct {p1, v6, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v2}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_5

    :cond_7
    :goto_4
    add-int v8, v6, v3

    add-int v9, v7, v4

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    int-to-float v10, v0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_8
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOutline: notUseRoundCornerWhenBlur"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mBlurBackgroundWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mBlurBackgroundWindow:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsSupportRoundCornerWhenBlur="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportRoundCornerWhenBlur:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsSupportSmoothRoundCorner="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportSmoothRoundCorner:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mRadius="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mRadius:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DialogMaxLinearLayout"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxWidth:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSupportDynamicMarginTop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMarginTop()V

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setOutLineProvider()V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    if-le v0, v2, :cond_0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    if-le v1, v0, :cond_1

    if-lez v0, :cond_1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewTitle:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    sget v0, Lcom/support/dialog/R$id;->topPanel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mTopPanelLayout:Landroid/view/View;

    sget v0, Lcom/support/dialog/R$id;->customPanel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomPanelLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/support/dialog/R$id;->custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    sget v0, Lcom/support/dialog/R$id;->contentPanel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mContentPanelLayout:Landroid/view/View;

    sget v0, Lcom/support/dialog/R$id;->alertTitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogTitle:Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    sget v0, Lcom/support/dialog/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewMessage:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    sget v0, Lcom/support/dialog/R$id;->alert_title_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewTitle:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    sget v0, Lcom/support/dialog/R$id;->buttonPanel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get type conversion. message e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialogMaxLinearLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasMessageMerge:Z

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogTitle:Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    goto :goto_1

    :cond_3
    move v0, v2

    move v3, v0

    :goto_1
    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    sub-int v4, v1, v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lez v1, :cond_4

    iget v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedMinHeight:I

    if-ge v4, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v1

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedMinHeight:I

    if-le v1, v7, :cond_4

    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedReMeasureLayoutId:I

    if-eq v0, v5, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedMinHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMinHeight()I

    move-result v3

    if-eq v3, v1, :cond_a

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_6

    :cond_4
    iget v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetPaddingLayoutId:I

    if-eq v1, v5, :cond_a

    if-le v3, v6, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-le v0, v6, :cond_6

    move v0, v6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v3

    if-le v3, v6, :cond_7

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-ne v3, v6, :cond_7

    move v3, v6

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogCustomViewMinHeight:I

    if-le v4, v7, :cond_8

    move v4, v6

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    if-nez v1, :cond_9

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    iget v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetPaddingLayoutId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingTopWhenDialogIsTallDialog:I

    if-eq v1, v3, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingTopWhenDialogIsTallDialog:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingBottomWhenDialogTallDialog:I

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v6

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_c

    move v1, v6

    goto :goto_8

    :cond_c
    move v1, v2

    :goto_8
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogTitle:Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    if-nez v0, :cond_d

    if-eqz v1, :cond_1f

    :cond_d
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasMessageMerge:Z

    if-nez v3, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-eq v3, v4, :cond_10

    :cond_f
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-ne v3, v4, :cond_16

    :cond_10
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForMessage:Landroid/view/View;

    if-eqz v3, :cond_11

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForCustomView:Landroid/view/View;

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingStart:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingEnd:I

    iget-object v9, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewMessage:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    :cond_13
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingStart:I

    iget v8, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomMarginExtra:I

    sub-int/2addr v7, v8

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomPanelLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedResetButtomBarTopMargin:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v3, v6}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setTopMarginFlag(Z)V

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mContentPanelLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogContentPanelLayoutMinHeight:I

    if-lt v3, v4, :cond_18

    :cond_17
    if-eqz v1, :cond_1e

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogCustomViewMinHeight:I

    if-ge v3, v4, :cond_1e

    :cond_18
    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    if-nez v3, :cond_1a

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x30

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewTitle:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewTitle:Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogTitle:Lcom/coui/appcompat/dialog/widget/COUIDialogTitle;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_19

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForMessage:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingTopWhenDialogIsTallDialog:I

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForMessage:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    if-eqz v1, :cond_1a

    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForCustomView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingTopWhenDialogIsTallDialog:I

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForCustomView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-eq v0, v3, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v7, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v2, v3, v2, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mScrollViewMessage:Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForMessage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogMessage:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMessageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1b
    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    invoke-direct {v0, v4, v4}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMessagePaddingStart:I

    iget v4, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomMarginExtra:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSpacingViewForCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mLinearLayoutTitle:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCouiBottomAlertDialogButtonbarMargintop:I

    if-ne v1, v3, :cond_1d

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v6, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedResetButtomBarTopMargin:Z

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setTopMarginFlag(Z)V

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1e
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mButtonPanel:Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mTopPanelLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mContentPanelLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mCustomPanelLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mDialogLayoutMarginVertical:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1f
    :goto_9
    return-void
.end method

.method public setBlurBackgroundWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mBlurBackgroundWindow:Z

    return-void
.end method

.method public setHasLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasLoading:Z

    return-void
.end method

.method public setHasMessageMerge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mHasMessageMerge:Z

    return-void
.end method

.method public setIsSupportRoundCornerWhenBlur(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsSupportRoundCornerWhenBlur:Z

    return-void
.end method

.method public setIsTiny(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mIsTiny:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mMaxWidth:I

    return-void
.end method

.method public setNeedMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedMinHeight:I

    return-void
.end method

.method public setNeedReMeasureLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedReMeasureLayoutId:I

    return-void
.end method

.method public setNeedSetPaddingLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mNeedSetPaddingLayoutId:I

    return-void
.end method

.method public setSupportDynamicMarginTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->mSupportDynamicMarginTop:Z

    return-void
.end method
