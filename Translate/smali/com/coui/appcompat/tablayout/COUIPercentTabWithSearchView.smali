.class public Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final MAX_CHILD_COUNT:I = 0x2

.field private static final RESPONSIVE_WIDTH_TYPE_COMPAT:I = 0x0

.field private static final RESPONSIVE_WIDTH_TYPE_EXPANDED:I = 0x2

.field private static final RESPONSIVE_WIDTH_TYPE_MEDIUM:I = 0x1


# instance fields
.field private mHorizontalPaddingInLargerScreen:I

.field private mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field private mResponsiveWidthSize:I

.field private final mSearchBarPaddingEnd:[I

.field private final mSearchBarPaddingStart:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveWidthSize:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_start_compat:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_start_medium:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_start_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    filled-new-array {p2, p3, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mSearchBarPaddingStart:[I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_end_compat:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_end_medium:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tablayout/R$dimen;->coui_tab_search_bar_padding_end_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    filled-new-array {p2, p3, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mSearchBarPaddingEnd:[I

    .line 11
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->initAttr()V

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    return-void
.end method

.method private initAttr()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tablayout/R$dimen;->coui_tab_search_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    :cond_0
    return-void
.end method

.method private layoutSearchBarAndTabLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p2, v1, p0, p1, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :cond_2
    const/16 v0, 0x8

    const/4 v3, 0x4

    if-eqz v2, :cond_6

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v3, v1, v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    :goto_3
    add-int/2addr p2, v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v1, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int p2, p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_7
    iget v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v3, v1, v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    :goto_6
    add-int/2addr p2, p0

    goto :goto_7

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v1, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    goto :goto_6

    :goto_7
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    :cond_a
    :goto_8
    return-void
.end method

.method private layoutToolbarAndTabLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1, v1, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v2

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p0, v3

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, p0, p1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :cond_3
    const/16 v0, 0x8

    const/4 v3, 0x4

    if-eqz v2, :cond_7

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v3, v1, v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    :goto_3
    add-int/2addr p2, v0

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v1, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int p2, p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    :cond_7
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_8
    iget v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {p2, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {p2, v2, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v3, v1, v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    :goto_6
    add-int/2addr p2, p0

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v1, v1, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    goto :goto_6

    :goto_7
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v1, p0, v0}, Landroid/view/View;->layout(IIII)V

    :cond_b
    :goto_8
    return-void
.end method

.method private measureSearchBar(IILandroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v1, v1, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mSearchBarPaddingStart:[I

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveWidthSize:I

    aget v2, v2, v3

    iget-object v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mSearchBarPaddingEnd:[I

    aget v3, v4, v3

    invoke-virtual {p3, v2, v1, v3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method private measureTabLayout(IILandroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v3, v2, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method private measureToolbar(IILandroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v2, v3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mHorizontalPaddingInLargerScreen:I

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method private updateResponsiveUI()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v2, v0, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v1

    sget-object v2, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveWidthSize:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveWidthSize:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveWidthSize:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->mResponsiveUIModel:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    sget-object p1, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p4, p2

    move p5, p3

    move-object p3, p4

    :goto_0
    if-ge p5, p1, :cond_4

    const/4 v0, 0x2

    if-lt p5, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v1, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v1, :cond_2

    move-object p3, v0

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/coui/appcompat/searchview/COUISearchBar;

    if-eqz v1, :cond_3

    move-object p4, v0

    :cond_3
    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez p4, :cond_5

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->layoutToolbarAndTabLayout(Landroid/view/View;Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p4, p3}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->layoutSearchBarAndTabLayout(Landroid/view/View;Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->updateResponsiveUI()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v2, v0, :cond_4

    const/4 v7, 0x2

    if-lt v2, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, p2, v7}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->measureToolbar(IILandroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    instance-of v8, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v8, :cond_2

    invoke-direct {p0, p1, p2, v7}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->measureTabLayout(IILandroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    instance-of v8, v7, Lcom/coui/appcompat/searchview/COUISearchBar;

    if-eqz v8, :cond_3

    move-object v4, v7

    check-cast v4, Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->setUseResponsivePadding(Z)V

    invoke-direct {p0, p1, p2, v7}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->measureSearchBar(IILandroid/view/View;)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p2, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    add-int/2addr v5, v3

    invoke-virtual {p0, p1, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method
