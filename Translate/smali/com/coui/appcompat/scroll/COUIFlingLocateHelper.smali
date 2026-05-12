.class public Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;
    }
.end annotation


# static fields
.field private static final CENTER_ALIGN:I = 0x2

.field private static final INVALID_ALIGN:I = 0x0

.field private static final INVALID_POSITION:I = -0x1

.field private static final ONE:F = 1.0f

.field private static final START_ALIGN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIFlingLocateHelper"


# instance fields
.field private mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$u;

.field private mContext:Landroid/content/Context;

.field private mCustomDuration:I

.field private mCustomInterpolator:Landroid/view/animation/Interpolator;

.field private mEnableSnapToCenter:Z

.field private mHorizontalHelper:Landroidx/recyclerview/widget/t;

.field private mHorizontalItemAlign:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

.field private mOnCalculatePreChildDistanceListener:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mEnableSnapToCenter:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomInterpolator:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomDuration:I

    new-instance v0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;-><init>(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$u;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->snapToTargetExistingView()V

    return-void
.end method

.method private computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)F
    .locals 9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    :goto_0
    if-ge v5, p0, :cond_4

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_3

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ge v7, v3, :cond_2

    move-object v1, v6

    move v3, v7

    :cond_2
    if-le v7, v4, :cond_3

    move-object v2, v6

    move v4, v7

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_7

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/t;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/t;->d(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p0

    if-nez p1, :cond_6

    return v0

    :cond_6
    int-to-float p0, p1

    mul-float/2addr p0, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    int-to-float p1, v4

    div-float/2addr p0, p1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/t;->n()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/t;->o()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    const p2, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p2, :cond_1

    move-object v0, v3

    move p2, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)Landroid/view/View;
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-nez v4, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    return-object v1

    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/t;->i()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/t;->n()I

    move-result v2

    :goto_2
    const v4, 0x7fffffff

    :goto_3
    if-ge v3, v0, :cond_8

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/t;->d(Landroid/view/View;)I

    move-result v6

    goto :goto_4

    :cond_6
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v6

    :goto_4
    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_7

    move-object v1, v5

    move v4, v6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/t;->k()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/t;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/t;

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/t;

    return-object p0
.end method

.method private getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$p;

    return-object p0
.end method

.method private isRtlMode(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method private smoothScrollBy(II)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomDuration:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(II)V

    :goto_1
    return-void
.end method

.method private snapToTargetExistingView()V
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mEnableSnapToCenter:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-ne v3, v1, :cond_7

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->n()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/t;->o()I

    move-result v7

    div-int/2addr v7, v1

    add-int/2addr v3, v7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v3, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->i()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v3, v6

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->n()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v3, v6

    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v6, v7, :cond_6

    iget-object v3, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->n()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v6

    div-int/2addr v6, v1

    add-int/2addr v3, v6

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/t;->i()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v3, v6

    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr v6, v0

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    invoke-direct {p0, v6, v4}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->smoothScrollBy(II)V

    goto :goto_4

    :cond_7
    if-ne v3, v6, :cond_9

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/t;->d(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/t;->i()I

    move-result v0

    :goto_2
    sub-int/2addr v1, v0

    goto :goto_3

    :cond_8
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/t;->n()I

    move-result v0

    goto :goto_2

    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    invoke-direct {p0, v1, v4}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->smoothScrollBy(II)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public cancelHorizontalItemAlign()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getHorizontalItemAlign()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    return p0
.end method

.method public getTargetViewDistance(I)I
    .locals 10

    invoke-direct {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getItemCount()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v4

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$z$b;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$z$b;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->canScrollHorizontally()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mOnCalculatePreChildDistanceListener:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;->onCalculatePreChildDistance()I

    move-result v7

    int-to-float v7, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/t;)F

    move-result v7

    :goto_0
    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x0

    cmpg-float v5, v5, v9

    if-gez v5, :cond_5

    neg-int p1, p1

    goto :goto_1

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    move p1, v8

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mOnCalculatePreChildDistanceListener:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;

    if-eqz v5, :cond_6

    invoke-interface {v5, v4, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;->onCalculateTargetPosition(II)I

    move-result p1

    goto :goto_2

    :cond_6
    add-int/2addr p1, v4

    :goto_2
    if-eq p1, v4, :cond_11

    if-ltz p1, :cond_11

    if-lt p1, v1, :cond_7

    goto/16 :goto_a

    :cond_7
    iget v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v5, 0x1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_d

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v6, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$p;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_9
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/t;->n()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/t;->o()I

    move-result v4

    div-int/2addr v4, v9

    add-int/2addr v2, v4

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr p1, v7

    float-to-int p1, p1

    neg-int p1, p1

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr p1, v7

    float-to-int p1, p1

    :goto_4
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result p0

    div-int/2addr p0, v9

    add-int/2addr v3, p0

    add-int/2addr v3, p1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    float-to-int p1, p1

    neg-int p1, p1

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$p;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    float-to-int p1, p1

    :goto_5
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/t;->e(Landroid/view/View;)I

    move-result p0

    div-int/2addr p0, v9

    add-int/2addr v1, p0

    add-int v3, v1, p1

    :goto_6
    sub-int/2addr v3, v2

    return v3

    :cond_d
    if-ne v1, v5, :cond_11

    iget-object v1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/t;->i()I

    move-result v1

    goto :goto_7

    :cond_e
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/t;->n()I

    move-result v1

    :goto_7
    iget-object v2, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/t;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_8

    :cond_f
    invoke-direct {p0, v0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/t;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/t;->g(Landroid/view/View;)I

    move-result v0

    :goto_8
    iget-object v2, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result p0

    sub-int/2addr p1, v4

    if-eqz p0, :cond_10

    int-to-float p0, p1

    mul-float/2addr p0, v7

    float-to-int p0, p0

    neg-int p0, p0

    goto :goto_9

    :cond_10
    int-to-float p0, p1

    mul-float/2addr p0, v7

    float-to-int p0, p0

    :goto_9
    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    return v0

    :cond_11
    :goto_a
    return v2
.end method

.method public setCustomSmooth(Landroid/view/animation/Interpolator;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomInterpolator:Landroid/view/animation/Interpolator;

    iput p2, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mCustomDuration:I

    return-void
.end method

.method public setEnableSnapToCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mEnableSnapToCenter:Z

    return-void
.end method

.method public setHorizontalItemAlign(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    iget-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method public setOnCalculatePreChildDistanceListener(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mOnCalculatePreChildDistanceListener:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$OnCalculatePreChildDistanceListener;

    return-void
.end method

.method public trySnapToTargetExistingView()V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->snapToTargetExistingView()V

    :cond_0
    return-void
.end method
