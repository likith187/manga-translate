.class public Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final mBottomDividerPaint:Landroid/graphics/Paint;

.field private mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

.field private mContentMinWidth:I

.field private mHorizontalLargeMargin:I

.field private mHorizontalMediumMargin:I

.field private mHorizontalSmallMargin:I

.field private mIndicatorAnimTime:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorBackgroundHeight:I

.field private mIndicatorBackgroundPaddingLeft:I

.field private mIndicatorBackgroundPaddingRight:I

.field private final mIndicatorBackgroundPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIndicatorWidthRatio:F

.field mLastOffset:F

.field private mLastPosition:I

.field mLastSelectionOffset:F

.field private mLayoutDirection:I

.field protected mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field mSelectedPosition:I

.field mSelectionOffset:F

.field private mTabMediumSpacing:I

.field private mTabSmallSpacing:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLayoutDirection:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastPosition:I

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimTime:I

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mBottomDividerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_large_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalLargeMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_medium_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalMediumMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_small_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalSmallMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_small_tab_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mTabSmallSpacing:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_medium_tab_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mTabMediumSpacing:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tablayout/R$dimen;->coui_tab_layout_content_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mContentMinWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    return-object p0
.end method

.method private getIndicatorLeft(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private getIndicatorRight(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez v0, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureChildWithRedDot(Lcom/coui/appcompat/tablayout/COUITabView;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotHorizontalOffset:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotHorizontalOffset:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotVerticalOffsetFromNumberRed:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mDotVerticalOffsetFromOnlyRed:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    if-le v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabView;->getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr p0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr p0, v0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method private measureShortChild(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    sub-int/2addr p1, p2

    mul-int p2, p3, p4

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setLayoutPadding(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, p2, p3, p3, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureSmallChild(III)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mContentMinWidth:I

    if-lt p1, v1, :cond_0

    sub-int/2addr v1, p2

    add-int/lit8 p2, v0, 0x1

    div-int/2addr v1, p2

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mContentMinWidth:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    add-int/lit8 p2, v0, 0x1

    div-int/2addr p1, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit8 p1, p2, 0x2

    :goto_0
    div-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setLayoutPadding(II)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, p3, p2, p2, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private parseMinDivider(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mTabSmallSpacing:I

    return p0

    :cond_2
    :goto_0
    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mTabMediumSpacing:I

    return p0
.end method

.method private parseMinMargin(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalLargeMargin:I

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalMediumMargin:I

    return p0

    :cond_2
    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mHorizontalSmallMargin:I

    return p0
.end method

.method private setLayoutPadding(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setPaddingLeftAndRight(II)V

    :cond_0
    return-void
.end method

.method private setMargin(Landroid/view/View;II)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method private setMargin(Landroid/view/View;III)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr p4, p3

    add-int/2addr p4, p2

    .line 2
    iput p4, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {p0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 6
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public animateIndicatorToPosition(II)V
    .locals 17

    move-object/from16 v13, p0

    move/from16 v14, p1

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastPosition:I

    if-eq v14, v0, :cond_0

    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static/range {p0 .. p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->updateIndicatorPosition()V

    return-void

    :cond_3
    move-object v6, v4

    check-cast v6, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v4, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v6}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, v6, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_7

    invoke-virtual {v6}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget v8, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    iget v9, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    iget-object v4, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v5, v4

    invoke-direct {v13, v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft(I)I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    invoke-direct {v13, v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight(I)I

    move-result v11

    sub-int v4, v11, v12

    sub-int v5, v9, v8

    sub-int v10, v4, v5

    sub-int v15, v12, v8

    iget-object v4, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v5, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v4, v14, v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorAnimTime(II)I

    move-result v4

    iget v5, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimTime:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    move v4, v5

    :cond_4
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    :goto_3
    move v5, v1

    goto :goto_4

    :cond_5
    iget-object v1, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :goto_5
    move/from16 v16, v0

    goto :goto_6

    :cond_6
    iget-object v0, v13, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    goto :goto_5

    :goto_6
    new-instance v2, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move-object v7, v6

    move/from16 v6, v16

    move-object v14, v7

    move v7, v9

    move v9, v10

    move v10, v15

    invoke-direct/range {v0 .. v12}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/tablayout/COUITabView;IIIIIII)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object v1, v14

    invoke-direct {v0, v8, v9}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$2;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;I)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_a

    :cond_7
    move-object v8, v13

    move v9, v14

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, v6, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v8, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft(I)I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, v6, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {v8, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight(I)I

    move-result v5

    iget v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    sub-int v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_8

    iget v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    iget v1, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    move v2, v0

    move v10, v1

    goto :goto_9

    :cond_8
    const/16 v0, 0x18

    invoke-virtual {v8, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->dpToPx(I)I

    move-result v0

    iget v1, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    if-ge v9, v1, :cond_b

    if-eqz v3, :cond_a

    :cond_9
    sub-int v0, v4, v0

    :goto_7
    move v2, v0

    move v10, v2

    goto :goto_9

    :cond_a
    :goto_8
    add-int/2addr v0, v5

    goto :goto_7

    :cond_b
    if-eqz v3, :cond_9

    goto :goto_8

    :goto_9
    if-ne v2, v4, :cond_c

    if-eq v10, v5, :cond_d

    :cond_c
    new-instance v11, Landroid/animation/ValueAnimator;

    invoke-direct {v11}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v11, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p2

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v12, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move v3, v4

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;IIII)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$4;-><init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;ILcom/coui/appcompat/tablayout/COUITabView;Lcom/coui/appcompat/tablayout/COUITabView;)V

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    :goto_a
    iget-object v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v8, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastPosition:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method dpToPx(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getBottomDividerPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mBottomDividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getIndicatorAnimTime()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimTime:I

    return p0
.end method

.method public getIndicatorBackgroundHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundHeight:I

    return p0
.end method

.method public getIndicatorBackgroundPaddingLeft()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return p0
.end method

.method public getIndicatorBackgroundPaddingRight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return p0
.end method

.method public getIndicatorBackgroundPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getIndicatorLeft()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    return p0
.end method

.method getIndicatorPosition()F
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method public getIndicatorRight()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    return p0
.end method

.method public getIndicatorWidthRatio()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorWidthRatio:F

    return p0
.end method

.method public getSelectedIndicatorPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->isUpdateindicatorposition()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->updateIndicatorPosition()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean p1, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide p1

    iget p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float/2addr p5, p4

    long-to-float p1, p1

    mul-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->animateIndicatorToPosition(II)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3, p2, p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinMargin()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->parseMinMargin(I)I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMinDivider()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->parseMinDivider(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabMode()I

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getDefaultIndicatoRatio()F

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorWidthRatio:F

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v4, v6

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0, v7, v6, v6}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;II)V

    invoke-direct {p0, v7, v3, p2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->measureChildWithRedDot(Lcom/coui/appcompat/tablayout/COUITabView;II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mContentMinWidth:I

    if-gt v3, v4, :cond_3

    invoke-direct {p0, v0, v5, v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->measureSmallChild(III)V

    goto :goto_3

    :cond_3
    if-gt v3, v0, :cond_4

    invoke-direct {p0, v0, v5, v2, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->measureShortChild(IIII)V

    goto :goto_3

    :cond_4
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setLayoutPadding(II)V

    move p1, v6

    :goto_1
    if-ge p1, v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mRequestedTabMaxWidth:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    invoke-direct {p0, p1, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setLayoutPadding(II)V

    move p1, v6

    :goto_2
    if-ge p1, v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v6, v6}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;II)V

    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-direct {p0, v4, v0, p2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->measureChildWithRedDot(Lcom/coui/appcompat/tablayout/COUITabView;II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-direct {p0, v3, v2, v2, v4}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setMargin(Landroid/view/View;III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move p1, v6

    :goto_4
    if-ge v6, v1, :cond_7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method setBottomDividerColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mBottomDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    return-void
.end method

.method public setIndicatorAnimTime(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimTime:I

    return-void
.end method

.method public setIndicatorBackgroundHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundHeight:I

    return-void
.end method

.method public setIndicatorBackgroundPaddingLeft(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return-void
.end method

.method public setIndicatorBackgroundPaddingRight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return-void
.end method

.method public setIndicatorLeft(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    return-void
.end method

.method public setIndicatorPosition(II)V
    .locals 1

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, p1

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->dpToPx(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p2, v0, p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    if-eq v0, p1, :cond_1

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorLeft:I

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method public setIndicatorRight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorRight:I

    return-void
.end method

.method public setIndicatorWidthRatio(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mIndicatorWidthRatio:F

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedIndicatorHeight:I

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-static {p0}, Landroidx/core/view/m0;->Z(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected updateIndicatorPosition()V
    .locals 10

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/tablayout/COUITabView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_6

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v3, v0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_2
    sub-int/2addr v0, v4

    sub-int/2addr v1, v2

    sub-int v3, v0, v1

    sub-int v5, v4, v2

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_4

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    :cond_4
    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    iget v9, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    sub-float v9, v8, v9

    cmpl-float v7, v9, v7

    if-lez v7, :cond_5

    int-to-float v0, v1

    int-to-float v1, v3

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v2

    int-to-float v2, v5

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    :goto_3
    float-to-int v1, v1

    move v2, v1

    goto :goto_4

    :cond_5
    int-to-float v0, v0

    int-to-float v1, v3

    sub-float v2, v6, v8

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v4

    int-to-float v2, v5

    sub-float/2addr v6, v8

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    goto :goto_3

    :goto_4
    add-int v1, v2, v0

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    :cond_6
    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight(I)I

    move-result v0

    goto/16 :goto_9

    :cond_7
    if-eqz v2, :cond_d

    iget-object v0, v1, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v4}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_c

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_c

    iget v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/tablayout/COUITabView;

    iget-object v3, v0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v5}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getIndicatorPadding()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_6
    sub-int/2addr v0, v4

    sub-int/2addr v1, v2

    sub-int v3, v0, v1

    sub-int v5, v4, v2

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_a

    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    :cond_a
    iget v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    iget v9, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    sub-float v9, v8, v9

    cmpl-float v7, v9, v7

    if-lez v7, :cond_b

    int-to-float v0, v1

    int-to-float v1, v3

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v2

    int-to-float v2, v5

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    :goto_7
    float-to-int v1, v1

    move v2, v1

    goto :goto_8

    :cond_b
    int-to-float v0, v0

    int-to-float v1, v3

    sub-float v2, v6, v8

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v4

    int-to-float v2, v5

    sub-float/2addr v6, v8

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    goto :goto_7

    :goto_8
    add-int v1, v2, v0

    iput v8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastSelectionOffset:F

    :cond_c
    invoke-direct {p0, v2}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorLeft(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->getIndicatorRight(I)I

    move-result v0

    goto :goto_9

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_f

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_f

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    sub-float v4, v6, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v1

    int-to-float v0, v0

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    float-to-int v0, v3

    goto :goto_9

    :cond_e
    move v0, v5

    :cond_f
    :goto_9
    invoke-virtual {p0, v5, v0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method
