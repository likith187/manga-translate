.class public Lc6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Ld6/a$b;
.implements Lc6/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Li6/b;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;

.field private final g:Ld6/a;

.field private final h:Ld6/a;

.field private i:Ld6/a;

.field private final j:Lcom/oplus/anim/o;

.field private k:Ld6/a;

.field l:F

.field private m:Ld6/c;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/o;Li6/b;Lh6/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc6/g;->a:Landroid/graphics/Path;

    new-instance v1, Lb6/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lb6/a;-><init>(I)V

    iput-object v1, p0, Lc6/g;->b:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc6/g;->f:Ljava/util/List;

    iput-object p2, p0, Lc6/g;->c:Li6/b;

    invoke-virtual {p3}, Lh6/o;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc6/g;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lh6/o;->f()Z

    move-result v1

    iput-boolean v1, p0, Lc6/g;->e:Z

    iput-object p1, p0, Lc6/g;->j:Lcom/oplus/anim/o;

    invoke-virtual {p2}, Li6/b;->w()Lh6/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Li6/b;->w()Lh6/a;

    move-result-object p1

    invoke-virtual {p1}, Lh6/a;->a()Lg6/b;

    move-result-object p1

    invoke-virtual {p1}, Lg6/b;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/g;->k:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/g;->k:Ld6/a;

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    :cond_0
    invoke-virtual {p2}, Li6/b;->y()Lk6/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ld6/c;

    invoke-virtual {p2}, Li6/b;->y()Lk6/j;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Ld6/c;-><init>(Ld6/a$b;Li6/b;Lk6/j;)V

    iput-object p1, p0, Lc6/g;->m:Ld6/c;

    :cond_1
    invoke-virtual {p3}, Lh6/o;->b()Lg6/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lh6/o;->e()Lg6/d;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lh6/o;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Lh6/o;->b()Lg6/a;

    move-result-object p1

    invoke-virtual {p1}, Lg6/a;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/g;->g:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p3}, Lh6/o;->e()Lg6/d;

    move-result-object p1

    invoke-virtual {p1}, Lg6/d;->a()Ld6/a;

    move-result-object p1

    iput-object p1, p0, Lc6/g;->h:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p1}, Li6/b;->j(Ld6/a;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lc6/g;->g:Ld6/a;

    iput-object p1, p0, Lc6/g;->h:Ld6/a;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lc6/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Lc6/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc6/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lc6/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc6/m;

    invoke-interface {v2}, Lc6/m;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc6/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lc6/g;->j:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc6/c;

    instance-of v1, v0, Lc6/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc6/g;->f:Ljava/util/List;

    check-cast v0, Lc6/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Lc6/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lc6/g;->g:Ld6/a;

    check-cast v1, Ld6/b;

    invoke-virtual {v1}, Ld6/b;->p()I

    move-result v1

    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    iget-object v3, p0, Lc6/g;->h:Ld6/a;

    invoke-virtual {v3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p3, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p3, v3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    iget-object v2, p0, Lc6/g;->b:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Ll6/g;->c(III)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lc6/g;->i:Ld6/a;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lc6/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lc6/g;->k:Ld6/a;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc6/g;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_2
    iget v1, p0, Lc6/g;->l:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc6/g;->c:Li6/b;

    invoke-virtual {v1, p3}, Li6/b;->x(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    iget-object v2, p0, Lc6/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_3
    :goto_0
    iput p3, p0, Lc6/g;->l:F

    :cond_4
    iget-object p3, p0, Lc6/g;->m:Ld6/c;

    if-eqz p3, :cond_5

    iget-object v1, p0, Lc6/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Ld6/c;->a(Landroid/graphics/Paint;)V

    :cond_5
    iget-object p3, p0, Lc6/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object p3, p0, Lc6/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    iget-object p3, p0, Lc6/g;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lc6/g;->f:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6/m;

    invoke-interface {v1}, Lc6/m;->a()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lc6/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lc6/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc6/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lm6/b;)V
    .locals 1

    sget-object v0, Lcom/oplus/anim/q;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lc6/g;->g:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/anim/q;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lc6/g;->h:Ld6/a;

    invoke-virtual {p0, p2}, Ld6/a;->n(Lm6/b;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/oplus/anim/q;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lc6/g;->i:Ld6/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc6/g;->c:Li6/b;

    invoke-virtual {v0, p1}, Li6/b;->H(Ld6/a;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lc6/g;->i:Ld6/a;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/g;->i:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/g;->c:Li6/b;

    iget-object p0, p0, Lc6/g;->i:Ld6/a;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/oplus/anim/q;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lc6/g;->k:Ld6/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ld6/a;->n(Lm6/b;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ld6/q;

    invoke-direct {p1, p2}, Ld6/q;-><init>(Lm6/b;)V

    iput-object p1, p0, Lc6/g;->k:Ld6/a;

    invoke-virtual {p1, p0}, Ld6/a;->a(Ld6/a$b;)V

    iget-object p1, p0, Lc6/g;->c:Li6/b;

    iget-object p0, p0, Lc6/g;->k:Ld6/a;

    invoke-virtual {p1, p0}, Li6/b;->j(Ld6/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/oplus/anim/q;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lc6/g;->m:Ld6/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Ld6/c;->b(Lm6/b;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/oplus/anim/q;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lc6/g;->m:Ld6/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ld6/c;->f(Lm6/b;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/oplus/anim/q;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lc6/g;->m:Ld6/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Ld6/c;->d(Lm6/b;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/oplus/anim/q;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lc6/g;->m:Ld6/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Ld6/c;->e(Lm6/b;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/oplus/anim/q;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lc6/g;->m:Ld6/c;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Ld6/c;->g(Lm6/b;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public i(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Ll6/g;->k(Lf6/f;ILjava/util/List;Lf6/f;Lc6/k;)V

    return-void
.end method
