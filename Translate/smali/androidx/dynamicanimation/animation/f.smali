.class public final Landroidx/dynamicanimation/animation/f;
.super Landroidx/dynamicanimation/animation/c;
.source "SourceFile"


# instance fields
.field private A:Landroidx/dynamicanimation/animation/g;

.field private B:F

.field private C:Z


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/c;-><init>(Landroidx/dynamicanimation/animation/e;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Landroidx/dynamicanimation/animation/f;->B:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/f;->C:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/c;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput p1, p0, Landroidx/dynamicanimation/animation/f;->B:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/f;->C:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/c;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput p1, p0, Landroidx/dynamicanimation/animation/f;->B:F

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/f;->C:Z

    .line 13
    new-instance p1, Landroidx/dynamicanimation/animation/g;

    invoke-direct {p1, p3}, Landroidx/dynamicanimation/animation/g;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/g;->a()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Landroidx/dynamicanimation/animation/c;->g:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    iget p0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    float-to-double v2, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method o(F)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 3

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/f;->w()V

    iget-object v0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/c;->f()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/dynamicanimation/animation/g;->g(D)V

    invoke-super {p0}, Landroidx/dynamicanimation/animation/c;->p()V

    return-void
.end method

.method r(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/f;->C:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/dynamicanimation/animation/f;->B:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v6, v1}, Landroidx/dynamicanimation/animation/g;->e(F)Landroidx/dynamicanimation/animation/g;

    iput v5, v0, Landroidx/dynamicanimation/animation/f;->B:F

    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/g;->a()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iput v4, v0, Landroidx/dynamicanimation/animation/c;->a:F

    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/f;->C:Z

    return v2

    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/f;->B:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/g;->a()F

    iget-object v6, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    iget v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/c;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/g;->h(DDJ)Landroidx/dynamicanimation/animation/c$p;

    move-result-object v1

    iget-object v6, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    iget v7, v0, Landroidx/dynamicanimation/animation/f;->B:F

    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/g;->e(F)Landroidx/dynamicanimation/animation/g;

    iput v5, v0, Landroidx/dynamicanimation/animation/f;->B:F

    iget-object v13, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    iget v5, v1, Landroidx/dynamicanimation/animation/c$p;->a:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/c$p;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/g;->h(DDJ)Landroidx/dynamicanimation/animation/c$p;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/c$p;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/c$p;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->a:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    iget v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    float-to-double v14, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/c;->a:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/g;->h(DDJ)Landroidx/dynamicanimation/animation/c$p;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/c$p;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/c$p;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->a:F

    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/c;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/c;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/c;->a:F

    invoke-virtual {v0, v1, v5}, Landroidx/dynamicanimation/animation/f;->v(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/g;->a()F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/c;->b:F

    iput v4, v0, Landroidx/dynamicanimation/animation/c;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public s(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/f;->B:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/g;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/g;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/g;->e(F)Landroidx/dynamicanimation/animation/g;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/f;->p()V

    :goto_0
    return-void
.end method

.method public t()Z
    .locals 4

    iget-object p0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/g;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Landroidx/dynamicanimation/animation/g;
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    return-object p0
.end method

.method v(FF)Z
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/g;->c(FF)Z

    move-result p0

    return p0
.end method

.method public x(Landroidx/dynamicanimation/animation/g;)Landroidx/dynamicanimation/animation/f;
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/f;->A:Landroidx/dynamicanimation/animation/g;

    return-object p0
.end method

.method public y()V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/f;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/f;->C:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
