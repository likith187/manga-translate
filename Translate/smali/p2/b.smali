.class public final Lp2/b;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/b$a;
    }
.end annotation


# static fields
.field public static final l:Lp2/b$a;

.field private static final m:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:F

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp2/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lp2/b;->l:Lp2/b$a;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lp2/b;->m:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    return-void
.end method

.method public constructor <init>(Lp2/a;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mEndRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p2, p0, Lp2/b;->a:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lp2/b;->k:J

    invoke-virtual {p1}, Lp2/a;->b()I

    move-result p2

    iput p2, p0, Lp2/b;->f:I

    invoke-virtual {p1}, Lp2/a;->a()I

    move-result p2

    iput p2, p0, Lp2/b;->g:I

    invoke-virtual {p1}, Lp2/a;->g()F

    move-result p2

    iput p2, p0, Lp2/b;->e:F

    invoke-virtual {p1}, Lp2/a;->d()F

    move-result p2

    iput p2, p0, Lp2/b;->h:F

    invoke-virtual {p1}, Lp2/a;->f()I

    move-result p2

    iput p2, p0, Lp2/b;->c:I

    invoke-virtual {p1}, Lp2/a;->c()I

    move-result p2

    iput p2, p0, Lp2/b;->d:I

    invoke-virtual {p1}, Lp2/a;->e()I

    move-result p1

    iput p1, p0, Lp2/b;->b:I

    return-void
.end method

.method private final b(FII)I
    .locals 10

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v0

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v0

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    div-float/2addr p2, v0

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v0

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v0

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v0

    and-int/lit16 p3, p3, 0xff

    int-to-float p3, p3

    div-float/2addr p3, v0

    float-to-double v6, v1

    const-wide v8, 0x400199999999999aL    # 2.2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    float-to-double v6, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    float-to-double v6, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p2, v6

    float-to-double v6, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, p3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float p3, v6

    sub-float/2addr v3, p0

    mul-float/2addr v3, p1

    add-float/2addr p0, v3

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float/2addr v1, v4

    sub-float/2addr v5, v2

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    mul-float/2addr p0, v0

    float-to-double v3, v1

    const-wide v5, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float p1, v3

    mul-float/2addr p1, v0

    float-to-double v1, v2

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p3, v1

    mul-float/2addr p3, v0

    float-to-double v1, p2

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr p2, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method private final c(F)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_1

    mul-float/2addr p1, v2

    iget v0, p0, Lp2/b;->c:I

    iget v1, p0, Lp2/b;->d:I

    invoke-direct {p0, p1, v0, v1}, Lp2/b;->b(FII)I

    move-result p0

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    iget v0, p0, Lp2/b;->d:I

    iget v1, p0, Lp2/b;->b:I

    invoke-direct {p0, p1, v0, v1}, Lp2/b;->b(FII)I

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    iget p0, p0, Lp2/b;->b:I

    return p0
.end method

.method private final d(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p0, :cond_1

    cmpl-float p0, p1, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lp2/b;->m:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lp2/b;->k:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lp2/b;->j:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move-object/from16 v3, p9

    const-string v4, "canvas"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "paint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v6, v0, Lp2/b;->k:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget v4, v0, Lp2/b;->g:I

    int-to-long v12, v4

    add-long/2addr v10, v12

    iget-wide v12, v0, Lp2/b;->k:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    const/4 v12, 0x0

    if-gtz v4, :cond_0

    iput v12, v0, Lp2/b;->j:F

    goto :goto_0

    :cond_0
    iget v4, v0, Lp2/b;->f:I

    int-to-long v13, v4

    cmp-long v13, v10, v13

    if-ltz v13, :cond_1

    iput v6, v0, Lp2/b;->j:F

    iput-wide v8, v0, Lp2/b;->k:J

    iget-object v4, v0, Lp2/b;->a:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    long-to-float v8, v10

    int-to-float v4, v4

    div-float/2addr v8, v4

    invoke-direct {p0, v8}, Lp2/b;->d(F)F

    move-result v4

    iput v4, v0, Lp2/b;->j:F

    :goto_0
    iget v4, v0, Lp2/b;->g:I

    if-eqz v4, :cond_2

    iget v4, v0, Lp2/b;->j:F

    cmpg-float v4, v4, v12

    if-nez v4, :cond_2

    iget v4, v0, Lp2/b;->i:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    return-void

    :cond_2
    int-to-float v4, v7

    iget v8, v0, Lp2/b;->j:F

    sub-float v8, v4, v8

    iput v8, v0, Lp2/b;->j:F

    iget v8, v0, Lp2/b;->e:F

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v8, v0, Lp2/b;->j:F

    cmpg-float v6, v8, v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget v6, v0, Lp2/b;->i:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    :goto_1
    iget v6, v0, Lp2/b;->b:I

    goto :goto_2

    :cond_4
    invoke-direct {p0, v8}, Lp2/b;->c(F)I

    move-result v6

    :goto_2
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Lp2/b;->j:F

    iget v8, v0, Lp2/b;->b:I

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    shr-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lp2/b;->i:I

    and-int/lit8 v6, v6, 0x4

    int-to-float v2, v2

    if-eqz v6, :cond_5

    iget v6, v0, Lp2/b;->j:F

    sub-float/2addr v4, v6

    iget v0, v0, Lp2/b;->h:F

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    :cond_5
    move/from16 v0, p5

    invoke-virtual {v1, v5, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput p1, p0, Lp2/b;->i:I

    iput-wide p2, p0, Lp2/b;->k:J

    return-void
.end method

.method public final f(IIF)V
    .locals 0

    iput p1, p0, Lp2/b;->f:I

    iput p2, p0, Lp2/b;->g:I

    iput p3, p0, Lp2/b;->h:F

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const-string p0, "paint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
