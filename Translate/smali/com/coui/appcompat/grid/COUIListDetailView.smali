.class public Lcom/coui/appcompat/grid/COUIListDetailView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAIN_WIDTH_PERCENT:F = 0.4f


# instance fields
.field private mDivider:Landroid/view/View;

.field private mDividerColor:I

.field private mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

.field private mGapWidth:I

.field private mMainFragment:Landroidx/fragment/app/FragmentContainerView;

.field private mMainFragmentPercent:F

.field private mMaxMainFragmentWidth:I

.field private mMinMainFragmentWidth:I

.field private mSubFragment:Landroidx/fragment/app/FragmentContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIListDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIListDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x3ecccccd    # 0.4f

    .line 4
    iput p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragmentPercent:F

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIListDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDividerColor:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/grid/COUIListDetailView;->setDividerColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/grid/R$dimen;->coui_main_fragment_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMaxMainFragmentWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/grid/R$dimen;->coui_main_fragment_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMinMainFragmentWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/grid/R$dimen;->coui_fragment_gap_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mGapWidth:I

    return-void
.end method


# virtual methods
.method public getEmptyPageFragmentContainer()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public getMainFragmentContainer()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public getSubFragmentContainer()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public isInSplitMode()Z
    .locals 4

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object v1, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, v3, p0}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDividerColor:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/grid/COUIListDetailView;->setDividerColor(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object p4, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p4

    invoke-virtual {p1, p5, p4}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p1

    const/16 p4, 0x8

    if-eqz p3, :cond_2

    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_2
    sget-object p3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p2, p3, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    iget-object p3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object v3, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v3, v5, v1}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object v1

    int-to-float v2, v0

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragmentPercent:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMaxMainFragmentWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMinMainFragmentWidth:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    move v1, v0

    move v2, v1

    move v3, v4

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMinMainFragmentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMaxMainFragmentWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v0, v1

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mGapWidth:I

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-static {p1, v4, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mSubFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mEmptyPageFragment:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-static {p1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDividerColor:I

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mDivider:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setMainFragmentPercent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->mMainFragmentPercent:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
