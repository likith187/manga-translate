.class public Lg4/e;
.super Lg4/a;
.source "SourceFile"


# instance fields
.field private final g:F

.field private final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lg4/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_x_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lg4/e;->g:F

    sget v0, Lcom/google/android/material/R$dimen;->m3_back_progress_bottom_container_max_scale_y_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lg4/e;->h:F

    return-void
.end method

.method private g()Landroid/animation/Animator;
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lg4/a;->b:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lg4/a;->b:Landroid/view/View;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v6

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v6

    aput-object v2, v5, v4

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lg4/a;->b:Landroid/view/View;

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    move v1, v6

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v6

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v2, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    new-instance p0, Lj0/b;

    invoke-direct {p0}, Lj0/b;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 3

    invoke-super {p0}, Lg4/a;->b()Landroidx/activity/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lg4/e;->g()Landroid/animation/Animator;

    move-result-object v0

    iget p0, p0, Lg4/a;->e:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public h(Landroidx/activity/b;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    iget-object v0, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lg4/a;->b:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lj0/b;

    invoke-direct {v1}, Lj0/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lg4/a;->c:I

    iget v2, p0, Lg4/a;->d:I

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    invoke-static {v1, v2, p1}, Lx3/a;->c(IIF)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lg4/e$a;

    invoke-direct {p1, p0}, Lg4/e$a;-><init>(Lg4/e;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public i(Landroidx/activity/b;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    invoke-direct {p0}, Lg4/e;->g()Landroid/animation/Animator;

    move-result-object v0

    iget v1, p0, Lg4/a;->c:I

    iget p0, p0, Lg4/a;->d:I

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    invoke-static {v1, p0, p1}, Lx3/a;->c(IIF)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public j(Landroidx/activity/b;)V
    .locals 0

    invoke-super {p0, p1}, Lg4/a;->d(Landroidx/activity/b;)V

    return-void
.end method

.method public k(F)V
    .locals 6

    invoke-virtual {p0, p1}, Lg4/a;->a(F)F

    move-result p1

    iget-object v0, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_2

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, p0, Lg4/e;->g:F

    div-float/2addr v3, v0

    iget v0, p0, Lg4/e;->h:F

    div-float/2addr v0, v1

    invoke-static {v2, v3, p1}, Lx3/a;->a(FFF)F

    move-result v3

    invoke-static {v2, v0, p1}, Lx3/a;->a(FFF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    sub-float p1, v0, p1

    iget-object v4, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lg4/a;->b:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lg4/a;->b:Landroid/view/View;

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    cmpl-float v5, p1, v2

    if-eqz v5, :cond_1

    div-float v5, v3, p1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public l(Landroidx/activity/b;)V
    .locals 1

    invoke-super {p0, p1}, Lg4/a;->e(Landroidx/activity/b;)Landroidx/activity/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    invoke-virtual {p0, p1}, Lg4/e;->k(F)V

    return-void
.end method
