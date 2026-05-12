.class Lcom/google/android/material/search/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/search/SearchView;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroidx/appcompat/widget/Toolbar;

.field private final g:Landroidx/appcompat/widget/Toolbar;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/EditText;

.field private final j:Landroid/widget/ImageButton;

.field private final k:Landroid/view/View;

.field private final l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

.field private final m:Lg4/g;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/search/w;->b:Landroid/view/View;

    iget-object v0, p1, Lcom/google/android/material/search/SearchView;->b:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iput-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->h:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/w;->d:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->i:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/material/search/w;->e:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object v1, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->k:Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->l:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/search/w;->h:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->m:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/material/search/w;->i:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->n:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/material/search/w;->j:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/google/android/material/search/SearchView;->o:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/material/search/w;->k:Landroid/view/View;

    iget-object p1, p1, Lcom/google/android/material/search/SearchView;->p:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    iput-object p1, p0, Lcom/google/android/material/search/w;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-instance p1, Lg4/g;

    invoke-direct {p1, v0}, Lg4/g;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    return-void
.end method

.method private A(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/w;->i:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/w;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private B(Z)Landroid/animation/AnimatorSet;
    .locals 13

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->s(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->t(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->H(Z)Landroid/animation/Animator;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->G(Z)Landroid/animation/Animator;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->u(Z)Landroid/animation/Animator;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->w(Z)Landroid/animation/Animator;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->F(Z)Landroid/animation/Animator;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->z(Z)Landroid/animation/Animator;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->q(Z)Landroid/animation/Animator;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->A(Z)Landroid/animation/Animator;

    move-result-object v11

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->I(Z)Landroid/animation/Animator;

    move-result-object v12

    filled-new-array/range {v4 .. v12}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/google/android/material/search/w$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/w$e;-><init>(Lcom/google/android/material/search/w;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private C(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/m;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    add-int p0, v0, p1

    :goto_0
    return p0
.end method

.method private D(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroidx/core/view/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v0}, Landroidx/core/view/m0;->A(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    sub-int/2addr p0, p1

    add-int v1, p0, v0

    :goto_0
    return v1
.end method

.method private E()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/w;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private F(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/w;->d:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/w;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private G(Z)Landroid/animation/Animator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    invoke-virtual {v0}, Lg4/g;->m()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    invoke-virtual {v1}, Lg4/g;->l()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    iget-object v2, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v4}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadius()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    invoke-virtual {v5}, Lg4/g;->k()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-instance v5, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v5, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/q;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/material/search/q;-><init>(Lcom/google/android/material/search/w;FFLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private H(Z)Landroid/animation/Animator;
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lx3/a;->a:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xfa

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/search/w;->b:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private I(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/search/w;->h:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/w;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private J(Z)Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/google/android/material/search/w;->L()Landroid/animation/Animator;

    move-result-object v1

    filled-new-array {v1}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->k(Landroid/animation/AnimatorSet;)V

    sget-object p0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x12c

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private K(ZZLandroid/view/View;)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/google/android/material/search/w;->D(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/material/search/w;->C(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/4 v3, 0x0

    new-array v4, v2, [F

    aput p2, v4, v1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    filled-new-array {p3}, [Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/w;->E()I

    move-result p0

    int-to-float p0, p0

    new-array v4, v2, [F

    aput p0, v4, v1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    filled-new-array {p3}, [Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p2, v2, v1

    aput-object p0, v2, v0

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xfa

    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3
.end method

.method private L()Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-array v1, v3, [Landroid/view/View;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private static synthetic N(Lf/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lf/d;->e(F)V

    return-void
.end method

.method private static synthetic O(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    return-void
.end method

.method private synthetic P(FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-static {p1, p2, p4}, Lx3/a;->a(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V

    return-void
.end method

.method private synthetic Q()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->B(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/w$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/w$a;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->J(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/w$c;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/w$c;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private T(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private U(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/w;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->T(F)V

    return-void
.end method

.method private V(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of p0, p1, Lf/d;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lf/d;

    invoke-virtual {p0, v0}, Lf/d;->e(F)V

    :cond_0
    instance-of p0, p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/material/internal/FadeThroughDrawable;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/FadeThroughDrawable;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private W(Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->W(Landroidx/appcompat/widget/Toolbar;)V

    iget-object p0, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/search/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/w;->R()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/search/w;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/w;->P(FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private b0()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->l()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->B(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/w$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/w$b;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static synthetic c(Lf/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/w;->N(Lf/d;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private c0()Landroid/animation/AnimatorSet;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->l()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->J(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/w$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/w$d;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/material/search/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/search/w;->Q()V

    return-void
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->F()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    sget-object v1, Lcom/google/android/material/search/SearchView$b;->SHOWING:Lcom/google/android/material/search/SearchView$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$b;)V

    invoke-direct {p0}, Lcom/google/android/material/search/w;->Y()V

    iget-object v0, p0, Lcom/google/android/material/search/w;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/s;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/s;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic e(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/search/w;->O(Lcom/google/android/material/internal/FadeThroughDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private e0()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/material/search/u;

    invoke-direct {v1, v0}, Lcom/google/android/material/search/u;-><init>(Lcom/google/android/material/search/SearchView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    new-instance v1, Lcom/google/android/material/search/v;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/v;-><init>(Lcom/google/android/material/search/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/search/w;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/w;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/search/w;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->U(F)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/search/w;)Lcom/google/android/material/search/SearchBar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    return-object p0
.end method

.method private j(Landroid/animation/AnimatorSet;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/material/search/w;->C(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/w;->E()I

    move-result p0

    int-to-float p0, p0

    new-array v6, v0, [F

    aput p0, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v5, v1, [Landroid/view/View;

    aput-object v3, v5, v2

    invoke-static {v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private k(Landroid/animation/AnimatorSet;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lv/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchView;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/w;->m(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/w;->n(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->V(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private l(Landroid/animation/AnimatorSet;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/material/search/w;->D(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-array v6, v1, [Landroid/view/View;

    aput-object v3, v6, v2

    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/search/w;->E()I

    move-result p0

    int-to-float p0, p0

    new-array v6, v0, [F

    aput p0, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array v5, v1, [Landroid/view/View;

    aput-object v3, v5, v2

    invoke-static {v5}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private m(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of p0, p2, Lf/d;

    if-eqz p0, :cond_0

    check-cast p2, Lf/d;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/google/android/material/search/r;

    invoke-direct {v0, p2}, Lcom/google/android/material/search/r;-><init>(Lf/d;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private n(Landroid/animation/AnimatorSet;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of p0, p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/google/android/material/internal/FadeThroughDrawable;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/google/android/material/search/t;

    invoke-direct {v0, p2}, Lcom/google/android/material/search/t;-><init>(Lcom/google/android/material/internal/FadeThroughDrawable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private q(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/search/w;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p0

    new-instance v1, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v1, p1, p0}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s(Z)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->k(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private t(Z)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->l(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->j(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, p0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private u(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2a

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v1, Lx3/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/search/w;->j:Landroid/widget/ImageButton;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private v(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x53

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v2, Lx3/a;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/search/w;->k:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/material/search/w;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private w(Z)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->v(Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->y(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->x(Z)Landroid/animation/Animator;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private x(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/search/w;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private y(Z)Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/search/w;->l:Lcom/google/android/material/internal/TouchObserverFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lx3/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/search/w;->k:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private z(Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/search/w;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/search/w;->K(ZZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method M()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/search/w;->b0()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/w;->c0()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public S()Landroidx/activity/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    invoke-virtual {p0}, Lg4/a;->c()Landroidx/activity/b;

    move-result-object p0

    return-object p0
.end method

.method X(Lcom/google/android/material/search/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    return-void
.end method

.method Z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/search/w;->d0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/w;->e0()V

    :goto_0
    return-void
.end method

.method a0(Landroidx/activity/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    iget-object p0, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, p1, p0}, Lg4/g;->t(Landroidx/activity/b;Landroid/view/View;)V

    return-void
.end method

.method public f0(Landroidx/activity/b;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lg4/g;->v(Landroidx/activity/b;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->l()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/w;->a:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->p()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/search/w;->s(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v1

    long-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    iget-object v1, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0, v1}, Lg4/g;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public p()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/search/w;->M()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    iget-object v3, p0, Lcom/google/android/material/search/w;->o:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v2, v0, v1, v3}, Lg4/g;->j(JLandroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/search/w;->t(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/w;->n:Landroid/animation/AnimatorSet;

    return-void
.end method

.method r()Lg4/g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/w;->m:Lg4/g;

    return-object p0
.end method
