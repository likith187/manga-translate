.class public Lb7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La7/e;

.field public final b:La7/e;

.field public final c:La7/e;

.field public final d:La7/e;

.field public final e:La7/e;

.field public final f:La7/e;

.field public g:Ld7/d;

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/RectF;

.field public j:Lb7/a;

.field public k:Lb7/a;

.field public l:Lc7/a;

.field public m:Z

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:I

.field public v:I

.field w:Z

.field x:Z

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>(La7/e;IIFF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La7/e;

    invoke-direct {v0}, La7/e;-><init>()V

    iput-object v0, p0, Lb7/a;->a:La7/e;

    new-instance v1, La7/e;

    invoke-direct {v1}, La7/e;-><init>()V

    iput-object v1, p0, Lb7/a;->b:La7/e;

    new-instance v1, La7/e;

    invoke-direct {v1}, La7/e;-><init>()V

    iput-object v1, p0, Lb7/a;->c:La7/e;

    new-instance v1, La7/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, La7/e;-><init>(FF)V

    iput-object v1, p0, Lb7/a;->d:La7/e;

    new-instance v1, La7/e;

    invoke-direct {v1}, La7/e;-><init>()V

    iput-object v1, p0, Lb7/a;->e:La7/e;

    new-instance v1, La7/e;

    invoke-direct {v1}, La7/e;-><init>()V

    iput-object v1, p0, Lb7/a;->f:La7/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lb7/a;->g:Ld7/d;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lb7/a;->m:Z

    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Lb7/a;->n:F

    iput-boolean v2, p0, Lb7/a;->w:Z

    iput-boolean v2, p0, Lb7/a;->x:Z

    const-string v2, ""

    iput-object v2, p0, Lb7/a;->y:Ljava/lang/String;

    invoke-direct {p0, p2}, Lb7/a;->v(I)V

    invoke-direct {p0, p3}, Lb7/a;->s(I)V

    invoke-virtual {v0, p1}, La7/e;->e(La7/e;)La7/e;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lb7/a;->q:F

    invoke-virtual {p0, p4, p5}, Lb7/a;->t(FF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb7/a;->w:Z

    iput-object v1, p0, Lb7/a;->l:Lc7/a;

    iput-object v1, p0, Lb7/a;->j:Lb7/a;

    iput-object v1, p0, Lb7/a;->k:Lb7/a;

    return-void
.end method

.method private final j()V
    .locals 4

    iget v0, p0, Lb7/a;->u:I

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lb7/a;->p(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb7/a;->n(F)V

    return-void

    :cond_0
    iget v0, p0, Lb7/a;->o:F

    iget v1, p0, Lb7/a;->p:F

    mul-float/2addr v0, v1

    iget v1, p0, Lb7/a;->q:F

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lb7/a;->p(F)V

    iget v0, p0, Lb7/a;->r:F

    invoke-static {v0}, La7/a;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lb7/a;->n(F)V

    iget-boolean v0, p0, Lb7/a;->w:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lb7/a;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lb7/a;->b:La7/e;

    iget v1, p0, Lb7/a;->o:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lb7/a;->p:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, La7/e;->d(FF)La7/e;

    iget-object v0, p0, Lb7/a;->c:La7/e;

    iget-object v1, p0, Lb7/a;->a:La7/e;

    invoke-virtual {v0, v1}, La7/e;->e(La7/e;)La7/e;

    move-result-object v0

    iget-object p0, p0, Lb7/a;->b:La7/e;

    invoke-virtual {v0, p0}, La7/e;->a(La7/e;)La7/e;

    :cond_2
    return-void
.end method

.method private final p(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lb7/a;->r:F

    div-float/2addr v0, p1

    iput v0, p0, Lb7/a;->s:F

    return-void
.end method

.method private s(I)V
    .locals 0

    iput p1, p0, Lb7/a;->v:I

    return-void
.end method

.method private v(I)V
    .locals 0

    iput p1, p0, Lb7/a;->u:I

    return-void
.end method


# virtual methods
.method public a(Ld7/d;)V
    .locals 1

    iget-object v0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb7/a;->g:Ld7/d;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb7/a;->h:Landroid/graphics/RectF;

    iput-object p1, p0, Lb7/a;->i:Landroid/graphics/RectF;

    const/high16 p1, 0x42480000    # 50.0f

    invoke-virtual {p0, p1}, Lb7/a;->k(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ld7/d;)V
    .locals 1

    iget-object v0, p0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lb7/a;->g:Ld7/d;

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()La7/e;
    .locals 0

    iget-object p0, p0, Lb7/a;->d:La7/e;

    return-object p0
.end method

.method public final d()La7/e;
    .locals 0

    iget-object p0, p0, Lb7/a;->e:La7/e;

    return-object p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lb7/a;->r:F

    return p0
.end method

.method public final f()La7/e;
    .locals 0

    iget-object p0, p0, Lb7/a;->a:La7/e;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lb7/a;->v:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lb7/a;->u:I

    return p0
.end method

.method public final i()La7/e;
    .locals 0

    iget-object p0, p0, Lb7/a;->c:La7/e;

    return-object p0
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Lb7/a;->n:F

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lb7/a;->m:Z

    return-void
.end method

.method public final m(FF)V
    .locals 0

    iget-object p0, p0, Lb7/a;->d:La7/e;

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-static {p2}, La7/a;->d(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, La7/e;->d(FF)La7/e;

    return-void
.end method

.method public final n(F)V
    .locals 0

    iput p1, p0, Lb7/a;->t:F

    return-void
.end method

.method public final o(La7/e;)V
    .locals 1

    iget v0, p0, Lb7/a;->u:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lb7/a;->e:La7/e;

    invoke-virtual {p0, p1}, La7/e;->e(La7/e;)La7/e;

    return-void
.end method

.method public q(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    :cond_1
    iget-object p0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, La7/a;->d(F)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, La7/a;->d(F)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, La7/a;->d(F)F

    move-result v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, La7/a;->d(F)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(La7/e;)V
    .locals 1

    iget-object v0, p0, Lb7/a;->a:La7/e;

    invoke-virtual {v0, p1}, La7/e;->e(La7/e;)La7/e;

    iget-object v0, p0, Lb7/a;->c:La7/e;

    invoke-virtual {v0, p1}, La7/e;->e(La7/e;)La7/e;

    move-result-object p1

    iget-object p0, p0, Lb7/a;->b:La7/e;

    invoke-virtual {p1, p0}, La7/e;->a(La7/e;)La7/e;

    return-void
.end method

.method public t(FF)V
    .locals 0

    iput p1, p0, Lb7/a;->o:F

    iput p2, p0, Lb7/a;->p:F

    invoke-direct {p0}, Lb7/a;->j()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Body{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb7/a;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb7/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLinearVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->e:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLinearDamping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb7/a;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->a:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHookPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->d:La7/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginActiveRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mActiveRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb7/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb7/a;->y:Ljava/lang/String;

    return-void
.end method

.method w()V
    .locals 4

    iget-object v0, p0, Lb7/a;->a:La7/e;

    iget-object v1, p0, Lb7/a;->c:La7/e;

    iget v2, v1, La7/e;->a:F

    iget-object p0, p0, Lb7/a;->b:La7/e;

    iget v3, p0, La7/e;->a:F

    sub-float/2addr v2, v3

    iget v1, v1, La7/e;->b:F

    iget p0, p0, La7/e;->b:F

    sub-float/2addr v1, p0

    invoke-virtual {v0, v2, v1}, La7/e;->d(FF)La7/e;

    return-void
.end method

.method x()V
    .locals 7

    iget-object v0, p0, Lb7/a;->i:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb7/a;->g:Ld7/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ld7/d;->s()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb7/a;->i:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lb7/a;->a:La7/e;

    iget v5, v4, La7/e;->a:F

    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    iget-object v2, p0, Lb7/a;->f:La7/e;

    sub-float/2addr v1, v5

    iput v1, v2, La7/e;->a:F

    goto :goto_0

    :cond_1
    cmpl-float v1, v5, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lb7/a;->f:La7/e;

    sub-float/2addr v2, v5

    iput v2, v1, La7/e;->a:F

    :cond_2
    :goto_0
    iget v1, v4, La7/e;->b:F

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3

    iget-object v0, p0, Lb7/a;->f:La7/e;

    sub-float/2addr v3, v1

    iput v3, v0, La7/e;->b:F

    goto :goto_1

    :cond_3
    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    iget-object v2, p0, Lb7/a;->f:La7/e;

    sub-float/2addr v0, v1

    iput v0, v2, La7/e;->b:F

    :cond_4
    :goto_1
    const v0, 0x40c90fdb

    iget v1, p0, Lb7/a;->n:F

    mul-float/2addr v1, v0

    iget v0, p0, Lb7/a;->r:F

    mul-float/2addr v1, v1

    mul-float/2addr v0, v1

    iget-object p0, p0, Lb7/a;->f:La7/e;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, La7/e;->b(F)La7/e;

    :cond_5
    :goto_2
    return-void
.end method

.method public y(Ld7/d;)Z
    .locals 7

    iget-object v0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lb7/a;->g:Ld7/d;

    iget-object p1, p0, Lb7/a;->i:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lb7/a;->i:Landroid/graphics/RectF;

    :cond_1
    iget-object p1, p0, Lb7/a;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lb7/a;->h:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lb7/a;->d:La7/e;

    iget v3, v2, La7/e;->a:F

    add-float/2addr v1, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, La7/e;->b:F

    add-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lb7/a;->o:F

    sub-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lb7/a;->p:F

    sub-float/2addr p0, v2

    sub-float/2addr v0, p0

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
