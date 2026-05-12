.class final Landroidx/dynamicanimation/animation/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/dynamicanimation/animation/c$p;

.field private b:F

.field private c:F

.field private d:J

.field private e:J

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/dynamicanimation/animation/c$p;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/c$p;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Landroidx/dynamicanimation/animation/b$a;->b:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/b$a;->d:J

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/b$a;->e:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/b$a;->f:F

    iput v0, p0, Landroidx/dynamicanimation/animation/b$a;->g:F

    iput v0, p0, Landroidx/dynamicanimation/animation/b$a;->h:F

    iput v0, p0, Landroidx/dynamicanimation/animation/b$a;->i:F

    return-void
.end method

.method static synthetic a(Landroidx/dynamicanimation/animation/b$a;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/b$a;->d:J

    return-wide p1
.end method

.method static synthetic b(Landroidx/dynamicanimation/animation/b$a;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/b$a;->e:J

    return-wide p1
.end method

.method static synthetic c(Landroidx/dynamicanimation/animation/b$a;F)F
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/b$a;->f:F

    return p1
.end method

.method static synthetic d(Landroidx/dynamicanimation/animation/b$a;F)F
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/b$a;->g:F

    return p1
.end method

.method static synthetic e(Landroidx/dynamicanimation/animation/b$a;F)F
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/b$a;->h:F

    return p1
.end method

.method static synthetic f(Landroidx/dynamicanimation/animation/b$a;F)F
    .locals 0

    iput p1, p0, Landroidx/dynamicanimation/animation/b$a;->i:F

    return p1
.end method

.method private g(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/b$a;->e:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget p0, p0, Landroidx/dynamicanimation/animation/b$a;->i:F

    return p0

    :cond_0
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/b$a;->d:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    sub-long/2addr v0, v2

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Landroidx/dynamicanimation/animation/b$a;->h:F

    iget p0, p0, Landroidx/dynamicanimation/animation/b$a;->i:F

    sub-float/2addr p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    return p2
.end method

.method private h(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/b$a;->e:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget p0, p0, Landroidx/dynamicanimation/animation/b$a;->g:F

    return p0

    :cond_0
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/b$a;->d:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    sub-long/2addr v0, v2

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Landroidx/dynamicanimation/animation/b$a;->f:F

    iget p0, p0, Landroidx/dynamicanimation/animation/b$a;->g:F

    sub-float/2addr p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    return p2
.end method


# virtual methods
.method public i(FF)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Landroidx/dynamicanimation/animation/b$a;->c:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method j(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/dynamicanimation/animation/b$a;->c:F

    return-void
.end method

.method k(FFJJ)Landroidx/dynamicanimation/animation/c$p;
    .locals 6

    iget v0, p0, Landroidx/dynamicanimation/animation/b$a;->g:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object p3, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    float-to-double v2, p2

    long-to-float p4, p5

    const/high16 p5, 0x447a0000    # 1000.0f

    div-float p6, p4, p5

    iget v0, p0, Landroidx/dynamicanimation/animation/b$a;->b:F

    mul-float/2addr p6, v0

    float-to-double v4, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float p6, v2

    iput p6, p3, Landroidx/dynamicanimation/animation/c$p;->b:F

    iget-object p3, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    iget p6, p0, Landroidx/dynamicanimation/animation/b$a;->b:F

    div-float v0, p2, p6

    sub-float/2addr p1, v0

    float-to-double v2, p1

    div-float/2addr p2, p6

    float-to-double p1, p2

    mul-float/2addr p6, p4

    div-float/2addr p6, p5

    float-to-double p4, p6

    invoke-static {p4, p5}, Ljava/lang/Math;->exp(D)D

    move-result-wide p4

    mul-double/2addr p1, p4

    add-double/2addr v2, p1

    double-to-float p1, v2

    iput p1, p3, Landroidx/dynamicanimation/animation/c$p;->a:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    invoke-direct {p0, p3, p4}, Landroidx/dynamicanimation/animation/b$a;->h(J)F

    move-result p2

    iput p2, p1, Landroidx/dynamicanimation/animation/c$p;->b:F

    iget-object p1, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    invoke-direct {p0, p3, p4}, Landroidx/dynamicanimation/animation/b$a;->g(J)F

    move-result p2

    iput p2, p1, Landroidx/dynamicanimation/animation/c$p;->a:F

    :goto_0
    iget-object p1, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    iget p2, p1, Landroidx/dynamicanimation/animation/c$p;->a:F

    iget p1, p1, Landroidx/dynamicanimation/animation/c$p;->b:F

    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/b$a;->i(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    iput v1, p1, Landroidx/dynamicanimation/animation/c$p;->b:F

    :cond_1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/b$a;->a:Landroidx/dynamicanimation/animation/c$p;

    return-object p0
.end method
