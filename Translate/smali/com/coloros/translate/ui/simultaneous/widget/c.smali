.class public Lcom/coloros/translate/ui/simultaneous/widget/c;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# static fields
.field private static final l:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:F

.field private e:J

.field private f:J

.field private g:F

.field private h:I

.field private i:F

.field private j:J

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->l:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/b;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->e:J

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->f:J

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->g()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->d:F

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->d()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->g:F

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->f()I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->b:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->c()I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->c:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/widget/b;->e()I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->a:I

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private b(FII)I
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

.method private c(F)I
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->b:I

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->c:I

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/translate/ui/simultaneous/widget/c;->b(FII)I

    move-result p0

    return p0

    :cond_1
    iget p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    iget v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->c:I

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->a:I

    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/translate/ui/simultaneous/widget/c;->b(FII)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->a:I

    return p0
.end method

.method private d(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p0, :cond_1

    cmpl-float p0, p1, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->l:Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p9

    iget-wide v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    sub-long/2addr v7, v9

    iget-wide v9, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->f:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v11, 0x0

    if-gtz v3, :cond_0

    iput v11, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    goto :goto_0

    :cond_0
    iget-wide v12, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->e:J

    cmp-long v3, v7, v12

    if-ltz v3, :cond_1

    iput v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    iput-wide v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->k:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    long-to-float v3, v7

    mul-float/2addr v3, v4

    long-to-float v5, v12

    div-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/coloros/translate/ui/simultaneous/widget/c;->d(F)F

    move-result v3

    iput v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    :goto_0
    iget-wide v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->f:J

    cmp-long v3, v5, v9

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_2

    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->h:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->d:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->h:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/coloros/translate/ui/simultaneous/widget/c;->c(F)I

    move-result v3

    goto :goto_2

    :cond_4
    :goto_1
    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->a:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    iget v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->a:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->h:I

    and-int/lit8 v5, v5, 0x4

    int-to-float v1, v1

    if-eqz v5, :cond_5

    iget v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->i:F

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/coloros/translate/ui/simultaneous/widget/c;->g:F

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    :cond_5
    move-object v0, p1

    move/from16 v4, p5

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public e(IJ)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->h:I

    iput-wide p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->j:J

    return-void
.end method

.method public f(JJF)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->e:J

    iput-wide p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->f:J

    iput p5, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->g:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/c;->d:F

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_0
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
