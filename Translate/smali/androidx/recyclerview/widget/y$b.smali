.class Landroidx/recyclerview/widget/y$b;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/y;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$p;)Landroidx/recyclerview/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Landroidx/recyclerview/widget/y;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/y;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/y$b;->i:Landroidx/recyclerview/widget/y;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V
    .locals 2

    iget-object p2, p0, Landroidx/recyclerview/widget/y$b;->i:Landroidx/recyclerview/widget/y;

    iget-object v0, p2, Landroidx/recyclerview/widget/y;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/y;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$p;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/p;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/p;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z$a;->d(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
