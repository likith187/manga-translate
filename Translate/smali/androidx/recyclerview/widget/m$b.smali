.class Landroidx/recyclerview/widget/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$p$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/m$b;->d:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Landroidx/recyclerview/widget/m$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/m$b;->d:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/m$b;->d:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/m$b;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/a;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$p$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/recyclerview/widget/m$b;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/m$b;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$p;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$p$c;)V

    :cond_2
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/m$b;->d:I

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$p;->mPrefetchMaxCountObserved:I

    if-le p0, v1, :cond_3

    iput p0, v0, Landroidx/recyclerview/widget/RecyclerView$p;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$p;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->K()V

    :cond_3
    return-void
.end method

.method d(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/m$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/m$b;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method e(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/m$b;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/m$b;->b:I

    return-void
.end method
