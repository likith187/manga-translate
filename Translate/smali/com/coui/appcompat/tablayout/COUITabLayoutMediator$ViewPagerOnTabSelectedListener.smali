.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private mScrollDistanceAndDuration:[I

.field private mScrollPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollDistanceAndDuration:[I

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollPathInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    return-void
.end method

.method private getScrollDistanceAndDuration(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollDistanceAndDuration:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v7

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v3, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_3

    neg-int v6, v6

    :cond_3
    sub-int/2addr p3, v0

    mul-int/2addr p3, v6

    add-int/2addr p3, v3

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollDistanceAndDuration:[I

    aput p3, p1, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->getScrollDuration(II)I

    move-result p0

    aput p0, p1, v2

    return-void
.end method

.method private getScrollDuration(II)I
    .locals 0

    mul-int/lit8 p0, p2, 0x3

    int-to-float p0, p0

    if-gt p1, p2, :cond_0

    const/16 p0, 0x15e

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    cmpl-float p2, p1, p0

    if-lez p2, :cond_1

    const/16 p0, 0x28a

    goto :goto_0

    :cond_1
    const/high16 p2, 0x43960000    # 300.0f

    div-float/2addr p1, p0

    mul-float/2addr p1, p2

    const/high16 p0, 0x43af0000    # 350.0f

    add-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public onTabReselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 4

    iget-object v0, p1, Lcom/coui/appcompat/tablayout/COUITab;->mView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getSelectedByClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->getPosition()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v3, v0, p1}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->getScrollDistanceAndDuration(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-virtual {p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->beginFakeDrag()Z

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollDistanceAndDuration:[I

    aget v3, p1, v1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mScrollPathInterpolator:Landroid/view/animation/PathInterpolator;

    aget p1, p1, v2

    invoke-virtual {v0, v3, v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 0

    return-void
.end method
