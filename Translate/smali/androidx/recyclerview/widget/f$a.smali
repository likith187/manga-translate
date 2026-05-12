.class public Landroidx/recyclerview/widget/f$a;
.super Landroidx/recyclerview/widget/RecyclerView$z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/animation/Interpolator;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$z$a;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/f$a;->k:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$a;->m:Z

    iput p1, p0, Landroidx/recyclerview/widget/f$a;->n:I

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->l:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/f$a;->j:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/f$a;->j:I

    if-lt p0, v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/f$a;->k:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$z$a;->b(I)V

    iput p1, p0, Landroidx/recyclerview/widget/f$a;->k:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    instance-of v0, p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$z$a;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/f$a;->k:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Landroidx/recyclerview/widget/f$a;->k:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v1, p0, Landroidx/recyclerview/widget/f$a;->m:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/f$a;->m:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/recyclerview/widget/f$a;->e()V

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$c;

    move-result-object p1

    iget v0, p0, Landroidx/recyclerview/widget/f$a;->h:I

    iget v2, p0, Landroidx/recyclerview/widget/f$a;->i:I

    iget v3, p0, Landroidx/recyclerview/widget/f$a;->j:I

    iget-object v4, p0, Landroidx/recyclerview/widget/f$a;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Landroidx/recyclerview/widget/f$a;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/f$a;->n:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    const-string p1, "LinearSmoothScroller"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v1, p0, Landroidx/recyclerview/widget/f$a;->m:Z

    goto :goto_0

    :cond_3
    iput v1, p0, Landroidx/recyclerview/widget/f$a;->n:I

    :goto_0
    return-void
.end method

.method public d(IIILandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$z$a;->d(IIILandroid/view/animation/Interpolator;)V

    iput p1, p0, Landroidx/recyclerview/widget/f$a;->h:I

    iput p2, p0, Landroidx/recyclerview/widget/f$a;->i:I

    iput p3, p0, Landroidx/recyclerview/widget/f$a;->j:I

    iput-object p4, p0, Landroidx/recyclerview/widget/f$a;->l:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/f$a;->m:Z

    return-void
.end method
