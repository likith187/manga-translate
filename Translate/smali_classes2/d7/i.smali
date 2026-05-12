.class public Ld7/i;
.super Ld7/g;
.source "SourceFile"


# instance fields
.field private w:F

.field private x:F

.field private y:Z


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p2, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0}, Ld7/i;-><init>(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/RectF;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ld7/g;-><init>(ILandroid/graphics/RectF;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Ld7/i;->w:F

    .line 4
    iput p1, p0, Ld7/i;->x:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ld7/i;->y:Z

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 3

    invoke-super {p0}, Ld7/g;->C()V

    iget v0, p0, Ld7/i;->x:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    iget v2, v1, Lb7/a;->t:F

    iput v2, p0, Ld7/i;->w:F

    invoke-virtual {v1, v0}, Lb7/a;->n(F)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    if-eqz v0, :cond_0

    iget p0, p0, Ld7/i;->x:F

    invoke-virtual {v0, p0}, Lb7/a;->n(F)V

    :cond_0
    return-void
.end method

.method protected D()Z
    .locals 2

    iget v0, p0, Ld7/i;->w:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v1, v0}, Lb7/a;->n(F)V

    iget-object v0, p0, Ld7/g;->p:Lb7/a;

    if-eqz v0, :cond_0

    iget v1, p0, Ld7/i;->w:F

    invoke-virtual {v0, v1}, Lb7/a;->n(F)V

    :cond_0
    invoke-super {p0}, Ld7/g;->D()Z

    move-result p0

    return p0
.end method

.method protected I()V
    .locals 1

    iget-boolean v0, p0, Ld7/i;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Ld7/d;->I()V

    return-void
.end method

.method public k0(FF)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Ld7/i;->l0(Landroid/graphics/RectF;)V

    return-void
.end method

.method public l0(Landroid/graphics/RectF;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/g;->i0(Landroid/graphics/RectF;)V

    return-void
.end method

.method public m0(F)Ld7/i;
    .locals 0

    iput p1, p0, Ld7/i;->x:F

    return-object p0
.end method

.method public n0()V
    .locals 0

    invoke-virtual {p0}, Ld7/i;->C()V

    return-void
.end method

.method public o0(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ld7/i;->p0(FF)V

    return-void
.end method

.method public p0(FF)V
    .locals 2

    invoke-static {}, La7/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingBehavior : Fling : start : xVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",yVel =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La7/b;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld7/i;->y:Z

    iget-object v0, p0, Ld7/d;->k:Lb7/a;

    invoke-virtual {v0}, Lb7/a;->d()La7/e;

    move-result-object v0

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-static {p2}, La7/a;->d(F)F

    move-result p2

    invoke-virtual {v0, p1, p2}, La7/e;->d(FF)La7/e;

    invoke-virtual {p0}, Ld7/i;->n0()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld7/i;->y:Z

    return-void
.end method

.method public q0()V
    .locals 0

    invoke-virtual {p0}, Ld7/i;->D()Z

    return-void
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
