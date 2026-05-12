.class public Lcom/coui/appcompat/animation/COUISpringInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DAMPINGRATIO:D = 1.15

.field private static final DEFAULT_STIFFNESS:D = 40.0

.field private static final DEFAULT_VELOCITY_UNIT:F = 15000.0f

.field private static final VELOCITY_MAX:D = 20000.0


# instance fields
.field private mAngularFreq:D

.field private final mCutRatio:F

.field private final mDampingRatio:D

.field private mFinalValue:F

.field private final mImpulse:D

.field private final mInitialVel:D

.field private final mUnDampedAngularFreq:D


# direct methods
.method public constructor <init>(DD)V
    .locals 8

    const-wide/16 v5, 0x0

    const v7, 0x466a6000    # 15000.0f

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/animation/COUISpringInterpolator;-><init>(DDDF)V

    return-void
.end method

.method public constructor <init>(DDDF)V
    .locals 16

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double v10, v1, p3

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    move-wide/from16 v12, p5

    move/from16 v15, p7

    invoke-direct/range {v7 .. v15}, Lcom/coui/appcompat/animation/COUISpringInterpolator;-><init>(DDDFF)V

    return-void
.end method

.method public constructor <init>(DDDFF)V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mFinalValue:F

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, 0x4044000000000000L    # 40.0

    .line 5
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    const-wide p3, 0x3ff2666666666666L    # 1.15

    .line 6
    :cond_1
    iput-wide p3, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    .line 7
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p5

    const-wide v0, 0x40d3880000000000L    # 20000.0

    invoke-static {p5, p6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p5

    const/4 v0, 0x0

    cmpg-float v1, p8, v0

    if-gtz v1, :cond_2

    const p8, 0x466a6000    # 15000.0f

    :cond_2
    float-to-double v1, p8

    div-double/2addr p5, v1

    iput-wide p5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mInitialVel:D

    cmpg-float p8, p7, v0

    if-gtz p8, :cond_3

    const/high16 p7, 0x3f800000    # 1.0f

    .line 8
    :cond_3
    iput p7, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, p7

    if-gez v0, :cond_4

    mul-double v0, p3, p3

    sub-double/2addr p7, v0

    .line 9
    invoke-static {p7, p8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p7

    mul-double/2addr p7, p1

    iput-wide p7, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mAngularFreq:D

    mul-double/2addr p3, p1

    sub-double/2addr p3, p5

    div-double/2addr p3, p7

    .line 10
    iput-wide p3, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {p7, p8, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p7

    if-nez p7, :cond_5

    neg-double p3, p5

    add-double/2addr p3, p1

    .line 12
    iput-wide p3, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    goto :goto_0

    :cond_5
    neg-double p5, p5

    mul-double/2addr p3, p1

    add-double/2addr p5, p3

    .line 13
    iput-wide p5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    :goto_0
    return-void
.end method

.method private getOriginInterpolation(F)F
    .locals 13

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    neg-double v1, v1

    iget-wide v3, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v1, v3

    float-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    iget-wide v5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    iget-wide v5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mAngularFreq:D

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-wide v9, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    iget-wide p0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mAngularFreq:D

    mul-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v9, p0

    add-double/2addr v5, v9

    :goto_1
    mul-double/2addr v1, v5

    goto :goto_2

    :cond_1
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    mul-double/2addr v1, v3

    add-double/2addr v1, v7

    neg-float p1, v0

    float-to-double v3, p1

    iget-wide p0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    goto :goto_2

    :cond_2
    iget-wide v3, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    iget-wide v5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    mul-double/2addr v5, v5

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    iget-wide v5, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mInitialVel:D

    neg-double v5, v5

    iget-wide v9, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    iget-wide v11, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    float-to-double p0, p1

    mul-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    add-double/2addr v5, v3

    goto :goto_1

    :goto_2
    sub-double/2addr v7, v1

    double-to-float p0, v7

    return p0
.end method


# virtual methods
.method public getCutRatio()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    return p0
.end method

.method public getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mFinalValue:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/coui/appcompat/animation/COUISpringInterpolator;->getOriginInterpolation(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mFinalValue:F

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/animation/COUISpringInterpolator;->getOriginInterpolation(F)F

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mFinalValue:F

    div-float/2addr p1, p0

    return p1
.end method

.method public getSpeed(F)F
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    neg-float v3, v3

    float-to-double v3, v3

    iget-wide v5, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    mul-double/2addr v3, v5

    iget-wide v5, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget-wide v7, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1

    iget v1, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    neg-float v4, v1

    float-to-double v9, v4

    iget-wide v11, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    mul-double v13, v11, v7

    move-wide v15, v2

    iget-wide v2, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v13, v2

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mAngularFreq:D

    add-double/2addr v13, v4

    mul-double/2addr v9, v13

    float-to-double v13, v1

    mul-double/2addr v11, v4

    mul-double/2addr v7, v2

    sub-double/2addr v11, v7

    mul-double/2addr v13, v11

    float-to-double v1, v1

    mul-double/2addr v1, v4

    mul-double v1, v1, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v9, v1

    iget v1, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    float-to-double v1, v1

    iget-wide v3, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mAngularFreq:D

    mul-double/2addr v1, v3

    mul-double v1, v1, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v13, v0

    add-double/2addr v9, v13

    mul-double v2, v15, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v15, v2

    move-wide/from16 v17, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget v1, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    float-to-double v2, v1

    iget-wide v4, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mImpulse:D

    iget-wide v6, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    sub-double v8, v4, v6

    float-to-double v10, v1

    mul-double/2addr v4, v10

    mul-double/2addr v4, v6

    mul-double v4, v4, v17

    sub-double/2addr v8, v4

    mul-double/2addr v2, v8

    neg-float v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v6

    mul-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-wide v2, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    iget-wide v4, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    mul-double/2addr v4, v4

    sub-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    float-to-double v5, v4

    mul-double v7, v2, v2

    iget-wide v9, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mInitialVel:D

    iget-wide v11, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mDampingRatio:D

    mul-double v13, v9, v11

    move-wide/from16 v17, v2

    iget-wide v1, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mUnDampedAngularFreq:D

    mul-double/2addr v13, v1

    add-double/2addr v7, v13

    mul-double/2addr v11, v11

    mul-double/2addr v11, v1

    mul-double/2addr v11, v1

    sub-double/2addr v7, v11

    mul-double/2addr v5, v7

    neg-float v1, v4

    float-to-double v1, v1

    mul-double/2addr v1, v9

    mul-double v1, v1, v17

    div-double v7, v15, v17

    float-to-double v3, v4

    mul-double v3, v3, v17

    move/from16 v9, p1

    float-to-double v9, v9

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    iget v0, v0, Lcom/coui/appcompat/animation/COUISpringInterpolator;->mCutRatio:F

    float-to-double v3, v0

    mul-double v3, v3, v17

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    add-double/2addr v5, v1

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    return v0
.end method
