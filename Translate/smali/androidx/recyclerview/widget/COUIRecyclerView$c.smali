.class public Landroidx/recyclerview/widget/COUIRecyclerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field c:Landroid/view/animation/Interpolator;

.field private f:Z

.field private h:Z

.field final synthetic i:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->h:Z

    return-void
.end method

.method private a(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->b(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_2

    int-to-float p0, p3

    div-float/2addr p4, p0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_3
    const/16 p1, 0x7d0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private b(F)F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/m0;->a0(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(II)V
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    int-to-float v1, p1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$702(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    int-to-float v1, p2

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$802(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->a:I

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c:Landroid/view/animation/Interpolator;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-interface/range {v1 .. v9}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->fling(IIIIIIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p1

    invoke-interface {p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$900(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->getTargetViewDistance(I)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setFinalX(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->e()V

    return-void
.end method

.method e()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->h:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->d()V

    :goto_0
    return-void
.end method

.method public f(IIILandroid/view/animation/Interpolator;)V
    .locals 8

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->a(IIII)I

    move-result p3

    :cond_0
    move v7, p3

    if-nez p4, :cond_1

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_2

    iput-object p4, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->c:Landroid/view/animation/Interpolator;

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->b:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->a:I

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p3}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->startScroll(IIIII)V

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$1000(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$700(Landroidx/recyclerview/widget/COUIRecyclerView;)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$1102(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$800(Landroidx/recyclerview/widget/COUIRecyclerView;)F

    move-result v2

    :cond_1
    invoke-static {v0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$1202(Landroidx/recyclerview/widget/COUIRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_3
    return-void
.end method

.method public run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->g()V

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->h:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v1

    const/4 v4, 0x3

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v5

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v6

    iget v7, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->a:I

    sub-int v7, v5, v7

    iget v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->b:I

    sub-int v14, v6, v8

    iput v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->a:I

    iput v6, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->b:I

    iget-object v8, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v11, v8, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v11, v2

    aput v2, v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    move v9, v7

    move v10, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v5, v2

    sub-int/2addr v7, v6

    aget v5, v5, v3

    sub-int/2addr v14, v5

    :cond_1
    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$h;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v6, v2

    aput v2, v6, v3

    invoke-virtual {v5, v7, v14, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v6, v2

    aget v6, v6, v3

    sub-int/2addr v7, v8

    sub-int/2addr v14, v6

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$p;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->b()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->stop()V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_3

    sub-int/2addr v9, v3

    invoke-virtual {v5, v9}, Landroidx/recyclerview/widget/RecyclerView$z;->setTargetPosition(I)V

    invoke-virtual {v5, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$z;->onAnimation(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v8, v6}, Landroidx/recyclerview/widget/RecyclerView$z;->onAnimation(II)V

    goto :goto_0

    :cond_4
    move v6, v2

    move v8, v6

    :cond_5
    :goto_0
    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object v15, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v5, v2

    aput v2, v5, v3

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v16, v8

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v14

    move-object/from16 v22, v5

    invoke-virtual/range {v15 .. v22}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v7, v10

    aget v9, v9, v3

    sub-int/2addr v14, v9

    if-nez v8, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {v5, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_8
    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v7, :cond_9

    if-eqz v14, :cond_a

    :cond_9
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->abortAnimation()V

    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v5, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$102(Landroidx/recyclerview/widget/COUIRecyclerView;Z)Z

    move v5, v2

    move v7, v5

    goto :goto_1

    :cond_a
    move v5, v14

    :goto_1
    if-eqz v5, :cond_c

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v10, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v10, :cond_c

    invoke-static {v9, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v13

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v17

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v11, v5

    invoke-virtual/range {v9 .. v18}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityY()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setCurrVelocityY(F)V

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-virtual {v9, v5, v2, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_2

    :cond_b
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-interface {v9, v5, v2, v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->notifyVerticalEdgeReached(III)V

    :cond_c
    :goto_2
    if-eqz v7, :cond_e

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v10, v9, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v10, :cond_e

    invoke-static {v9, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$202(Landroidx/recyclerview/widget/COUIRecyclerView;I)I

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v12

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v10, v7

    invoke-virtual/range {v9 .. v18}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCurrVelocityX()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setCurrVelocityX(F)V

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/SpringOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-virtual {v9, v7, v2, v10}, Lcom/coui/appcompat/scroll/SpringOverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_3

    :cond_d
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/scroll/COUIIOverScroller;

    move-result-object v9

    iget-object v10, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v10}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v10

    invoke-interface {v9, v7, v2, v10}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->notifyHorizontalEdgeReached(III)V

    :cond_e
    :goto_3
    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_f
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrX()I

    move-result v9

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalX()I

    move-result v10

    if-ne v9, v10, :cond_10

    move v9, v3

    goto :goto_4

    :cond_10
    move v9, v2

    :goto_4
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUICurrY()I

    move-result v10

    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->getCOUIFinalY()I

    move-result v11

    if-ne v10, v11, :cond_11

    move v10, v3

    goto :goto_5

    :cond_11
    move v10, v2

    :goto_5
    invoke-interface {v1}, Lcom/coui/appcompat/scroll/COUIIOverScroller;->isCOUIFinished()Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v9, :cond_12

    if-eqz v7, :cond_13

    :cond_12
    if-nez v10, :cond_14

    if-eqz v5, :cond_13

    goto :goto_6

    :cond_13
    move v1, v2

    goto :goto_7

    :cond_14
    :goto_6
    move v1, v3

    :goto_7
    iget-object v5, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$p;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$z;->isPendingInitialRun()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_8

    :cond_15
    if-eqz v1, :cond_16

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/m$b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/m$b;->b()V

    goto :goto_9

    :cond_16
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->e()V

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/m;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v1, v8, v6}, Landroidx/recyclerview/widget/m;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_17
    :goto_9
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$p;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$z;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$z;->isPendingInitialRun()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$z;->onAnimation(II)V

    :cond_18
    iput-boolean v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->f:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->h:Z

    if-eqz v1, :cond_19

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView$c;->d()V

    goto :goto_a

    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I

    move-result v1

    if-ne v1, v4, :cond_1a

    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v1, :cond_1b

    :cond_1a
    iget-object v1, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    iget-object v0, v0, Landroidx/recyclerview/widget/COUIRecyclerView$c;->i:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    :cond_1b
    :goto_a
    return-void
.end method
