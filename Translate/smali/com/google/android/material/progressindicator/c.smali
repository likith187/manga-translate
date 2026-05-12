.class final Lcom/google/android/material/progressindicator/c;
.super Lcom/google/android/material/progressindicator/g;
.source "SourceFile"


# static fields
.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:Landroid/util/Property;

.field private static final o:Landroid/util/Property;


# instance fields
.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ObjectAnimator;

.field private final e:Lj0/b;

.field private final f:Lcom/google/android/material/progressindicator/a;

.field private g:I

.field private h:F

.field private i:F

.field j:Landroidx/vectordrawable/graphics/drawable/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/c;->k:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/c;->l:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/c;->m:[I

    new-instance v0, Lcom/google/android/material/progressindicator/c$c;

    const-string v1, "animationFraction"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/progressindicator/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/c;->n:Landroid/util/Property;

    new-instance v0, Lcom/google/android/material/progressindicator/c$d;

    const-string v1, "completeEndFraction"

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/progressindicator/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/c;->o:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/g;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroidx/vectordrawable/graphics/drawable/b;

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->f:Lcom/google/android/material/progressindicator/a;

    new-instance p1, Lj0/b;

    invoke-direct {p1}, Lj0/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->e:Lj0/b;

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/progressindicator/c;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/c;->g:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/progressindicator/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->g:I

    return p1
.end method

.method static synthetic k(Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c;->f:Lcom/google/android/material/progressindicator/a;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/progressindicator/c;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->o()F

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/google/android/material/progressindicator/c;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->p()F

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/progressindicator/c;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->u(F)V

    return-void
.end method

.method private o()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/c;->h:F

    return p0
.end method

.method private p()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/c;->i:F

    return p0
.end method

.method private q()V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/material/progressindicator/c;->n:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/c$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/c$a;-><init>(Lcom/google/android/material/progressindicator/c;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/material/progressindicator/c;->o:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->e:Lj0/b;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/c$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/c$b;-><init>(Lcom/google/android/material/progressindicator/c;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private r(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/google/android/material/progressindicator/c;->m:[I

    aget v2, v2, v1

    const/16 v3, 0x14d

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/g;->b(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget p1, p0, Lcom/google/android/material/progressindicator/c;->g:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/c;->f:Lcom/google/android/material/progressindicator/a;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length v3, p1

    rem-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    rem-int/2addr v3, v4

    aget v1, p1, v1

    aget p1, p1, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/c;->e:Lj0/b;

    invoke-virtual {v3, v2}, Lj0/b;->getInterpolation(F)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/progressindicator/f$a;

    invoke-static {}, Lx3/c;->b()Lx3/c;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Lx3/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/f$a;->c:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private u(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->i:F

    return-void
.end method

.method private v(I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/f$a;

    iget v2, p0, Lcom/google/android/material/progressindicator/c;->h:F

    const/high16 v3, 0x44be0000    # 1520.0f

    mul-float v4, v2, v3

    const/high16 v5, -0x3e600000    # -20.0f

    add-float/2addr v4, v5

    iput v4, v0, Lcom/google/android/material/progressindicator/f$a;->a:F

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/google/android/material/progressindicator/c;->k:[I

    aget v2, v2, v1

    const/16 v3, 0x29b

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/g;->b(III)F

    move-result v2

    iget v4, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    iget-object v5, p0, Lcom/google/android/material/progressindicator/c;->e:Lj0/b;

    invoke-virtual {v5, v2}, Lj0/b;->getInterpolation(F)F

    move-result v2

    const/high16 v5, 0x437a0000    # 250.0f

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    iput v4, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    sget-object v2, Lcom/google/android/material/progressindicator/c;->l:[I

    aget v2, v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/g;->b(III)F

    move-result v2

    iget v3, v0, Lcom/google/android/material/progressindicator/f$a;->a:F

    iget-object v4, p0, Lcom/google/android/material/progressindicator/c;->e:Lj0/b;

    invoke-virtual {v4, v2}, Lj0/b;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    iput v3, v0, Lcom/google/android/material/progressindicator/f$a;->a:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/google/android/material/progressindicator/f$a;->a:F

    iget v1, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    sub-float v2, v1, p1

    iget p0, p0, Lcom/google/android/material/progressindicator/c;->i:F

    mul-float/2addr v2, p0

    add-float/2addr p1, v2

    const/high16 p0, 0x43b40000    # 360.0f

    div-float/2addr p1, p0

    iput p1, v0, Lcom/google/android/material/progressindicator/f$a;->a:F

    div-float/2addr v1, p0

    iput v1, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/c;->s()V

    return-void
.end method

.method public d(Landroidx/vectordrawable/graphics/drawable/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->j:Landroidx/vectordrawable/graphics/drawable/b;

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/g;->a:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/c;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method g()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/c;->q()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/c;->s()V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/c;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->j:Landroidx/vectordrawable/graphics/drawable/b;

    return-void
.end method

.method s()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->g:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/f$a;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/c;->f:Lcom/google/android/material/progressindicator/a;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v0, v2, v0

    iput v0, v1, Lcom/google/android/material/progressindicator/f$a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/c;->i:F

    return-void
.end method

.method t(F)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/progressindicator/c;->h:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->v(I)V

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/c;->r(I)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/g;->a:Lcom/google/android/material/progressindicator/h;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
