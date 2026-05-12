.class public Lcom/coui/appcompat/grid/COUIGridLayout;
.super Landroid/widget/GridLayout;
.source "SourceFile"


# static fields
.field public static final GRID_MODE:I = 0x0

.field private static final LARGE_MARGIN:I = 0x0

.field private static final SMALL_MARGIN:I = 0x1

.field public static final SPECIFIC_GAP_MODE:I = 0x1

.field public static final SPECIFIC_SIZE_MODE:I = 0x2


# instance fields
.field private mBottomMargin:[I

.field private mChildGridNumber:I

.field private mChildHeight:F

.field private mChildMinHeight:F

.field private mChildMinWidth:F

.field private mChildWidth:F

.field private mColumn:I

.field private mEndMargin:[I

.field private mGridMargin:I

.field private mGridMarginType:I

.field private mGridModeColumnWidth:[F

.field private mHorizontalGap:F

.field private mIsIgnoreChildMargin:Z

.field private mMaxHorizontalMargin:[I

.field private mMaxVerticalMargin:[I

.field private mMinHorizontalGap:F

.field private mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field private mStartMargin:[I

.field private mTopMargin:[I

.field private mType:I

.field private mVerticalGap:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    .line 6
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->initUIManager()V

    .line 7
    invoke-direct {p0, p2}, Lcom/coui/appcompat/grid/COUIGridLayout;->initAttr(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustHorizontalMargin()I
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    if-gt v1, v2, :cond_4

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mStartMargin:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    if-ge v1, v4, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    aget v6, v5, v1

    aget v3, v3, v2

    if-ge v6, v3, :cond_1

    aput v3, v5, v1

    :cond_1
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mEndMargin:[I

    array-length v5, v3

    if-gt v2, v5, :cond_2

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    aget v6, v5, v1

    add-int/lit8 v7, v2, -0x1

    aget v3, v3, v7

    if-ge v6, v3, :cond_2

    aput v3, v5, v1

    :cond_2
    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private calculateChildHeight()F
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinHeight:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinWidth:F

    div-float/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    mul-float/2addr v0, p0

    :cond_1
    return v0
.end method

.method private calculateHorizontalMargin()I
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    if-gt v0, v3, :cond_4

    move v3, v0

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mStartMargin:[I

    array-length v6, v5

    if-ge v3, v6, :cond_3

    iget v6, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    if-ge v0, v6, :cond_1

    aget v5, v5, v3

    if-ge v4, v5, :cond_1

    move v4, v5

    :cond_1
    if-lez v0, :cond_2

    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mEndMargin:[I

    array-length v7, v5

    if-gt v3, v7, :cond_2

    add-int/lit8 v7, v3, -0x1

    aget v5, v5, v7

    if-ge v4, v5, :cond_2

    move v4, v5

    :cond_2
    add-int/2addr v3, v6

    goto :goto_1

    :cond_3
    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private calculateInGridMode()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMarginType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMargin:I

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildGridNumber:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildGridNumber:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridModeColumnWidth:[F

    :goto_1
    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridModeColumnWidth:[F

    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildGridNumber:I

    mul-int v5, v3, v4

    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v4, v6

    sub-int/2addr v4, v1

    invoke-virtual {v2, v5, v4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v3

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    :cond_2
    return-void
.end method

.method private calculateInSpecificGapMode()V
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinWidth:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateHorizontalMargin()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinWidth:F

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->adjustHorizontalMargin()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateChildHeight()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    return-void
.end method

.method private calculateInSpecificSizeMode()V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMinHorizontalGap:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateHorizontalMargin()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMinHorizontalGap:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    add-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->adjustHorizontalMargin()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    return-void
.end method

.method private calculateMargins()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mTopMargin:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mBottomMargin:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mStartMargin:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mEndMargin:[I

    iget-boolean v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mTopMargin:[I

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    aput v5, v3, v2

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mBottomMargin:[I

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    aput v5, v3, v2

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mStartMargin:[I

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    aput v5, v3, v2

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mEndMargin:[I

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calculateVerticalMargin(I)I
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxVerticalMargin:[I

    move v0, v1

    :goto_0
    if-gt v1, p1, :cond_4

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    mul-int/2addr v2, v1

    :goto_1
    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    mul-int v5, v3, v4

    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mTopMargin:[I

    array-length v5, v3

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxVerticalMargin:[I

    aget v6, v5, v1

    aget v3, v3, v2

    if-ge v6, v3, :cond_1

    aput v3, v5, v1

    :cond_1
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    sub-int v3, v2, v4

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mBottomMargin:[I

    array-length v6, v5

    if-ge v3, v6, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxVerticalMargin:[I

    aget v6, v3, v1

    sub-int v7, v2, v4

    aget v7, v5, v7

    if-ge v6, v7, :cond_2

    sub-int v4, v2, v4

    aget v4, v5, v4

    aput v4, v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxVerticalMargin:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getVisibleChildCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getWidthWithoutPadding()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private initAttr(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/grid/R$styleable;->COUIGridLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_couiHorizontalGap:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_minHorizontalGap:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMinHorizontalGap:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_couiVerticalGap:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mVerticalGap:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_childMinWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinWidth:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_childMinHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinHeight:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_childHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_childWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_childGridNumber:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildGridNumber:I

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_gridMarginType:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMarginType:I

    sget v0, Lcom/support/grid/R$styleable;->COUIGridLayout_specificType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mType:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private initUIManager()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    :cond_0
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureHeight(ID)I
    .locals 5

    double-to-int v0, p2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateVerticalMargin(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, -0x80000000

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    if-eq v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    float-to-double v1, p1

    mul-double/2addr v1, p2

    sub-double/2addr p2, v3

    iget p0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mVerticalGap:F

    float-to-double p0, p0

    mul-double/2addr p2, p0

    add-double/2addr v1, p2

    int-to-double p0, v0

    add-double/2addr v1, p0

    double-to-int p0, v1

    return p0

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    float-to-double v1, v1

    mul-double/2addr v1, p2

    sub-double/2addr p2, v3

    iget p0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mVerticalGap:F

    float-to-double v3, p0

    mul-double/2addr p2, v3

    add-double/2addr v1, p2

    int-to-double p2, v0

    add-double/2addr v1, p2

    double-to-int p0, v1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMargin:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_6

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridModeColumnWidth:[F

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    rem-int v2, p4, v2

    aget v1, v1, v2

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    :goto_1
    iget-boolean v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    if-eqz v2, :cond_1

    move v2, p3

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxHorizontalMargin:[I

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    rem-int v3, p5, v3

    aget v2, v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2
    iget-boolean v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    if-eqz v3, :cond_2

    move v3, p3

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMaxVerticalMargin:[I

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    div-int v4, p5, v4

    aget v3, v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    int-to-float v5, v4

    sub-float/2addr v5, v1

    float-to-int v5, v5

    goto :goto_4

    :cond_3
    add-int v5, p1, v2

    int-to-float v4, v5

    add-float/2addr v4, v1

    float-to-int v4, v4

    :goto_4
    add-int v6, p2, v3

    int-to-float v7, v6

    iget v8, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    rem-int v0, p5, v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMargin:I

    add-int/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mVerticalGap:F

    add-float/2addr p2, v0

    int-to-float v0, v3

    add-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_5

    :cond_4
    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    int-to-float v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    :cond_5
    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateMargins()V

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateInSpecificSizeMode()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateInSpecificGapMode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->calculateInGridMode()V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    :cond_3
    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    float-to-int v3, v3

    invoke-static {p1, v0, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    float-to-int v4, v4

    invoke-static {p2, v0, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getVisibleChildCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mColumn:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-direct {p0, p2, v1, v2}, Lcom/coui/appcompat/grid/COUIGridLayout;->measureHeight(ID)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildGridNumber(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildGridNumber:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setChildHeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildHeight:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setChildMinHeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinHeight:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setChildMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildMinWidth:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setChildWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mChildWidth:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setGridMarginType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mGridMarginType:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mHorizontalGap:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsIgnoreChildMargin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mIsIgnoreChildMargin:Z

    return-void
.end method

.method public setMinHorizontalGap(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mMinHorizontalGap:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mType:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->mVerticalGap:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
