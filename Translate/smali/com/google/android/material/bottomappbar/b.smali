.class public Lcom/google/android/material/bottomappbar/b;
.super Lcom/google/android/material/shape/g;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private f:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/g;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/bottomappbar/b;->i:F

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->b:F

    iput p2, p0, Lcom/google/android/material/bottomappbar/b;->a:F

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/b;->j(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->h:F

    return-void
.end method


# virtual methods
.method public b(FFFLcom/google/android/material/shape/p;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p4

    iget v2, v0, Lcom/google/android/material/bottomappbar/b;->c:F

    const/4 v10, 0x0

    cmpl-float v3, v2, v10

    if-nez v3, :cond_0

    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/p;->m(FF)V

    return-void

    :cond_0
    iget v3, v0, Lcom/google/android/material/bottomappbar/b;->b:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v3, v11

    add-float/2addr v3, v2

    div-float v12, v3, v11

    iget v3, v0, Lcom/google/android/material/bottomappbar/b;->a:F

    mul-float v13, p3, v3

    iget v3, v0, Lcom/google/android/material/bottomappbar/b;->h:F

    add-float v14, p2, v3

    iget v3, v0, Lcom/google/android/material/bottomappbar/b;->f:F

    mul-float v3, v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p3

    mul-float/2addr v5, v12

    add-float/2addr v3, v5

    div-float v5, v3, v12

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_1

    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/p;->m(FF)V

    return-void

    :cond_1
    iget v4, v0, Lcom/google/android/material/bottomappbar/b;->i:F

    mul-float v15, v4, p3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    mul-float/2addr v4, v11

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move/from16 v16, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :goto_2
    if-nez v16, :cond_4

    const/high16 v2, 0x3fe00000    # 1.75f

    move/from16 v17, v10

    goto :goto_3

    :cond_4
    move/from16 v17, v3

    move v2, v10

    :goto_3
    add-float v3, v12, v13

    mul-float/2addr v3, v3

    add-float v4, v17, v13

    mul-float v5, v4, v4

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v5, v14, v3

    add-float v18, v14, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v8, v3

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v3, v8

    add-float v19, v3, v2

    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/p;->m(FF)V

    sub-float v3, v5, v13

    add-float/2addr v5, v13

    mul-float v20, v13, v11

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v4, 0x0

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v21, v8

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v16, :cond_5

    sub-float v3, v14, v12

    neg-float v0, v12

    sub-float v4, v0, v17

    add-float v5, v14, v12

    sub-float v6, v12, v17

    sub-float v7, v2, v19

    mul-float v19, v19, v11

    sub-float v8, v19, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    goto :goto_4

    :cond_5
    iget v3, v0, Lcom/google/android/material/bottomappbar/b;->b:F

    mul-float v16, v15, v11

    add-float v4, v3, v16

    sub-float v5, v14, v12

    add-float v6, v15, v3

    neg-float v6, v6

    add-float v7, v5, v4

    add-float v8, v3, v15

    sub-float v17, v2, v19

    mul-float v3, v19, v11

    sub-float/2addr v3, v2

    div-float v22, v3, v11

    move-object/from16 v2, p4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    add-float v5, v14, v12

    iget v2, v0, Lcom/google/android/material/bottomappbar/b;->b:F

    div-float v3, v2, v11

    add-float/2addr v3, v15

    sub-float v3, v5, v3

    add-float/2addr v2, v15

    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/p;->m(FF)V

    iget v0, v0, Lcom/google/android/material/bottomappbar/b;->b:F

    add-float v16, v16, v0

    sub-float v3, v5, v16

    add-float v2, v15, v0

    neg-float v4, v2

    add-float v6, v0, v15

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float v8, v19, v0

    const/high16 v7, 0x42b40000    # 90.0f

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    :goto_4
    sub-float v3, v18, v13

    add-float v5, v18, v13

    const/high16 v0, 0x43870000    # 270.0f

    sub-float v7, v0, v21

    const/4 v4, 0x0

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v8, v21

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/p;->a(FFFFFF)V

    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/p;->m(FF)V

    return-void
.end method

.method d()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->f:F

    return p0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->i:F

    return p0
.end method

.method f()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->b:F

    return p0
.end method

.method g()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->a:F

    return p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->c:F

    return p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomappbar/b;->h:F

    return p0
.end method

.method j(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->f:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cradleVerticalOffset must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->i:F

    return-void
.end method

.method l(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->b:F

    return-void
.end method

.method m(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->a:F

    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->c:F

    return-void
.end method

.method o(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/bottomappbar/b;->h:F

    return-void
.end method
