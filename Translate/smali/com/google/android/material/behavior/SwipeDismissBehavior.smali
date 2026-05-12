.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;"
    }
.end annotation


# instance fields
.field a:Landroidx/customview/widget/c;

.field private b:Z

.field private c:Z

.field private f:F

.field private h:Z

.field i:I

.field j:F

.field k:F

.field l:F

.field private final m:Landroidx/customview/widget/c$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:F

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->k:F

    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->l:F

    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->m:Landroidx/customview/widget/c$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z

    return p1
.end method

.method static c(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static d(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private e(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/c;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:F

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->m:Landroidx/customview/widget/c$c;

    invoke-static {p1, v0, v1}, Landroidx/customview/widget/c;->n(Landroid/view/ViewGroup;FLandroidx/customview/widget/c$c;)Landroidx/customview/widget/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->m:Landroidx/customview/widget/c$c;

    invoke-static {p1, v0}, Landroidx/customview/widget/c;->o(Landroid/view/ViewGroup;Landroidx/customview/widget/c$c;)Landroidx/customview/widget/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/c;

    :cond_1
    return-void
.end method

.method static f(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method private j(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Landroidx/core/view/m0;->c0(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld0/h$a;->y:Ld0/h$a;

    new-instance v1, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0, v1}, Landroidx/core/view/m0;->e0(Landroid/view/View;Ld0/h$a;Ljava/lang/CharSequence;Ld0/k;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public g(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->l:F

    return-void
.end method

.method public h(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->k:F

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->z(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e(Landroid/view/ViewGroup;)V

    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/c;

    invoke-virtual {p0, p3}, Landroidx/customview/widget/c;->P(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    return v3
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    invoke-static {p2}, Landroidx/core/view/m0;->t(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j(Landroid/view/View;)V

    :cond_0
    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/c;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/c;

    invoke-virtual {p0, p3}, Landroidx/customview/widget/c;->F(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
