.class public abstract Li6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Ld6/a$b;
.implements Lf6/g;


# instance fields
.field private A:Landroid/graphics/Paint;

.field B:F

.field C:Landroid/graphics/BlurMaskFilter;

.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Ljava/lang/String;

.field final o:Landroid/graphics/Matrix;

.field final p:Lcom/oplus/anim/o;

.field final q:Li6/e;

.field private r:Ld6/h;

.field private s:Ld6/d;

.field private t:Li6/b;

.field private u:Li6/b;

.field private v:Ljava/util/List;

.field private final w:Ljava/util/List;

.field final x:Ld6/p;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Lcom/oplus/anim/o;Li6/e;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li6/b;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Li6/b;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Li6/b;->c:Landroid/graphics/Matrix;

    new-instance v0, Lb6/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb6/a;-><init>(I)V

    iput-object v0, p0, Li6/b;->d:Landroid/graphics/Paint;

    new-instance v0, Lb6/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lb6/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Li6/b;->e:Landroid/graphics/Paint;

    new-instance v0, Lb6/a;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Lb6/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Li6/b;->f:Landroid/graphics/Paint;

    new-instance v0, Lb6/a;

    invoke-direct {v0, v1}, Lb6/a;-><init>(I)V

    iput-object v0, p0, Li6/b;->g:Landroid/graphics/Paint;

    new-instance v4, Lb6/a;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Lb6/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Li6/b;->h:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Li6/b;->i:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Li6/b;->j:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Li6/b;->k:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Li6/b;->l:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Li6/b;->m:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Li6/b;->o:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Li6/b;->w:Ljava/util/List;

    iput-boolean v1, p0, Li6/b;->y:Z

    const/4 v1, 0x0

    iput v1, p0, Li6/b;->B:F

    iput-object p1, p0, Li6/b;->p:Lcom/oplus/anim/o;

    iput-object p2, p0, Li6/b;->q:Li6/e;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Li6/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li6/b;->n:Ljava/lang/String;

    invoke-virtual {p2}, Li6/e;->h()Li6/e$b;

    move-result-object p1

    sget-object v1, Li6/e$b;->INVERT:Li6/e$b;

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    invoke-virtual {p2}, Li6/e;->w()Lg6/l;

    move-result-object p1

    invoke-virtual {p1}, Lg6/l;->b()Ld6/p;

    move-result-object p1

    iput-object p1, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {p1, p0}, Ld6/p;->b(Ld6/a$b;)V

    invoke-virtual {p2}, Li6/e;->g()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Li6/e;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ld6/h;

    invoke-virtual {p2}, Li6/e;->g()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ld6/h;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {p1}, Ld6/h;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld6/a;

    invoke-virtual {p2, p0}, Ld6/a;->a(Ld6/a$b;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {p1}, Ld6/h;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld6/a;

    invoke-virtual {p0, p2}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p2, p0}, Ld6/a;->a(Ld6/a$b;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Li6/b;->O()V

    return-void
.end method

.method private C(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Li6/b;->k:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Li6/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v0}, Ld6/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v4}, Ld6/h;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh6/h;

    iget-object v5, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v5}, Ld6/h;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld6/a;

    invoke-virtual {v5}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Li6/b$a;->b:[I

    invoke-virtual {v4}, Lh6/h;->a()Lh6/h$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lh6/h;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    :goto_1
    iget-object v4, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object v5, p0, Li6/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_4

    iget-object v4, p0, Li6/b;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Li6/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Li6/b;->k:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Li6/b;->m:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Li6/b;->k:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Li6/b;->m:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Li6/b;->k:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Li6/b;->m:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Li6/b;->k:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Li6/b;->m:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    iget-object p0, p0, Li6/b;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    return-void
.end method

.method private D(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-virtual {p0}, Li6/b;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {v0}, Li6/e;->h()Li6/e$b;

    move-result-object v0

    sget-object v1, Li6/e$b;->INVERT:Li6/e$b;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Li6/b;->l:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Li6/b;->t:Li6/b;

    iget-object v2, p0, Li6/b;->l:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Li6/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Li6/b;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private E()V
    .locals 0

    iget-object p0, p0, Li6/b;->p:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method private synthetic F()V
    .locals 2

    iget-object v0, p0, Li6/b;->s:Ld6/d;

    invoke-virtual {v0}, Ld6/d;->p()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Li6/b;->N(Z)V

    return-void
.end method

.method private G(F)V
    .locals 1

    iget-object v0, p0, Li6/b;->p:Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->G()Lcom/oplus/anim/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/a;->n()Lcom/oplus/anim/l0;

    move-result-object v0

    iget-object p0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {p0}, Li6/e;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/anim/l0;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private N(Z)V
    .locals 1

    iget-boolean v0, p0, Li6/b;->y:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Li6/b;->y:Z

    invoke-direct {p0}, Li6/b;->E()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {v0}, Li6/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ld6/d;

    iget-object v2, p0, Li6/b;->q:Li6/e;

    invoke-virtual {v2}, Li6/e;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ld6/d;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Li6/b;->s:Ld6/d;

    invoke-virtual {v0}, Ld6/a;->l()V

    iget-object v0, p0, Li6/b;->s:Ld6/d;

    new-instance v2, Li6/a;

    invoke-direct {v2, p0}, Li6/a;-><init>(Li6/b;)V

    invoke-virtual {v0, v2}, Ld6/a;->a(Ld6/a$b;)V

    iget-object v0, p0, Li6/b;->s:Ld6/d;

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Li6/b;->N(Z)V

    iget-object v0, p0, Li6/b;->s:Ld6/d;

    invoke-virtual {p0, v0}, Li6/b;->j(Ld6/a;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Li6/b;->N(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic e(Li6/b;)V
    .locals 0

    invoke-direct {p0}, Li6/b;->F()V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V
    .locals 1

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V
    .locals 2

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->e:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Ll6/h;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V
    .locals 2

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Ll6/h;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V
    .locals 2

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->e:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Ll6/h;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V
    .locals 2

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Ll6/h;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Li6/b;->e:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Ll6/h;->o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v1}, Ld6/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v1}, Ld6/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/h;

    iget-object v2, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v2}, Ld6/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld6/a;

    iget-object v3, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v3}, Ld6/h;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld6/a;

    sget-object v4, Li6/b$a;->b:[I

    invoke-virtual {v1}, Lh6/h;->a()Lh6/h$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lh6/h;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, v2, v3}, Li6/b;->m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, v2, v3}, Li6/b;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lh6/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, v2, v3}, Li6/b;->n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, v2, v3}, Li6/b;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    iget-object v4, p0, Li6/b;->d:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v5, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {v1}, Lh6/h;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, v2, v3}, Li6/b;->o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;Ld6/a;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2, v2}, Li6/b;->q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Li6/b;->r()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    const-string p0, "Layer#restoreLayer"

    invoke-static {p0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {p0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ld6/a;)V
    .locals 1

    invoke-virtual {p3}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Li6/b;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Li6/b;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li6/b;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private r()Z
    .locals 4

    iget-object v0, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v0}, Ld6/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v2}, Ld6/h;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v2}, Ld6/h;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/h;

    invoke-virtual {v2}, Lh6/h;->a()Lh6/h$a;

    move-result-object v2

    sget-object v3, Lh6/h$a;->MASK_MODE_NONE:Lh6/h$a;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Li6/b;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li6/b;->u:Li6/b;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li6/b;->v:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li6/b;->v:Ljava/util/List;

    iget-object v0, p0, Li6/b;->u:Li6/b;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Li6/b;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Li6/b;->u:Li6/b;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private t(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "Layer#clearLayer"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Li6/b;->h:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method static v(Li6/c;Li6/e;Lcom/oplus/anim/o;Lcom/oplus/anim/a;)Li6/b;
    .locals 2

    sget-object v0, Li6/b$a;->a:[I

    invoke-virtual {p1}, Li6/e;->f()Li6/e$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li6/e;->f()Li6/e$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll6/e;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Li6/i;

    invoke-direct {p0, p2, p1}, Li6/i;-><init>(Lcom/oplus/anim/o;Li6/e;)V

    return-object p0

    :pswitch_1
    new-instance p0, Li6/f;

    invoke-direct {p0, p2, p1}, Li6/f;-><init>(Lcom/oplus/anim/o;Li6/e;)V

    return-object p0

    :pswitch_2
    new-instance p0, Li6/d;

    invoke-direct {p0, p2, p1}, Li6/d;-><init>(Lcom/oplus/anim/o;Li6/e;)V

    return-object p0

    :pswitch_3
    new-instance p0, Li6/h;

    invoke-direct {p0, p2, p1}, Li6/h;-><init>(Lcom/oplus/anim/o;Li6/e;)V

    return-object p0

    :pswitch_4
    new-instance p0, Li6/c;

    invoke-virtual {p1}, Li6/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/oplus/anim/a;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, p3}, Li6/c;-><init>(Lcom/oplus/anim/o;Li6/e;Ljava/util/List;Lcom/oplus/anim/a;)V

    return-object p0

    :pswitch_5
    new-instance v0, Li6/g;

    invoke-direct {v0, p2, p1, p0, p3}, Li6/g;-><init>(Lcom/oplus/anim/o;Li6/e;Li6/c;Lcom/oplus/anim/a;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method A()Z
    .locals 0

    iget-object p0, p0, Li6/b;->r:Ld6/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld6/h;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method B()Z
    .locals 0

    iget-object p0, p0, Li6/b;->t:Li6/b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H(Ld6/a;)V
    .locals 0

    iget-object p0, p0, Li6/b;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method I(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 0

    return-void
.end method

.method J(Li6/b;)V
    .locals 0

    iput-object p1, p0, Li6/b;->t:Li6/b;

    return-void
.end method

.method K(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Li6/b;->A:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Lb6/a;

    invoke-direct {v0}, Lb6/a;-><init>()V

    iput-object v0, p0, Li6/b;->A:Landroid/graphics/Paint;

    :cond_0
    iput-boolean p1, p0, Li6/b;->z:Z

    return-void
.end method

.method L(Li6/b;)V
    .locals 0

    iput-object p1, p0, Li6/b;->u:Li6/b;

    return-void
.end method

.method M(F)V
    .locals 3

    iget-object v0, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {v0, p1}, Ld6/p;->j(F)V

    iget-object v0, p0, Li6/b;->r:Ld6/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v2}, Ld6/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Li6/b;->r:Ld6/h;

    invoke-virtual {v2}, Ld6/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld6/a;

    invoke-virtual {v2, p1}, Ld6/a;->m(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li6/b;->s:Ld6/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ld6/a;->m(F)V

    :cond_1
    iget-object v0, p0, Li6/b;->t:Li6/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Li6/b;->M(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Li6/b;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Li6/b;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/a;

    invoke-virtual {v0, p1}, Ld6/a;->m(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Li6/b;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Li6/b;->s()V

    iget-object p1, p0, Li6/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Li6/b;->v:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Li6/b;->o:Landroid/graphics/Matrix;

    iget-object p3, p0, Li6/b;->v:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li6/b;

    iget-object p3, p3, Li6/b;->x:Ld6/p;

    invoke-virtual {p3}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Li6/b;->u:Li6/b;

    if-eqz p1, :cond_1

    iget-object p2, p0, Li6/b;->o:Landroid/graphics/Matrix;

    iget-object p1, p1, Li6/b;->x:Ld6/p;

    invoke-virtual {p1}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p1, p0, Li6/b;->o:Landroid/graphics/Matrix;

    iget-object p0, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {p0}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Li6/b;->E()V

    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    iget-object v0, p0, Li6/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Li6/b;->y:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {v0}, Li6/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Li6/b;->s()V

    const-string v0, "Layer#parentMatrix"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Li6/b;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Li6/b;->b:Landroid/graphics/Matrix;

    iget-object v3, p0, Li6/b;->v:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/b;

    iget-object v3, v3, Li6/b;->x:Ld6/p;

    invoke-virtual {v3}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    iget-object v0, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {v0}, Ld6/p;->h()Ld6/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld6/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x64

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p0}, Li6/b;->B()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Li6/b;->A()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Li6/b;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {v0}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object p2, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Li6/b;->u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    iget-object p1, p0, Li6/b;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Li6/b;->G(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Li6/b;->b:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Li6/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Li6/b;->D(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Li6/b;->b:Landroid/graphics/Matrix;

    iget-object v3, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {v3}, Ld6/p;->f()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Li6/b;->C(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v2, p0, Li6/b;->j:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Li6/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Li6/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Li6/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Li6/b;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Li6/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Li6/b;->j:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Li6/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    const-string v0, "Layer#saveLayer"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v2, p0, Li6/b;->d:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Li6/b;->d:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Ll6/h;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Li6/b;->t(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v2, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Li6/b;->u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v1}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    invoke-virtual {p0}, Li6/b;->A()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Li6/b;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Li6/b;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_6
    invoke-virtual {p0}, Li6/b;->B()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_7

    const-string v1, "Layer#drawMatte"

    invoke-static {v1}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v3, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object v4, p0, Li6/b;->g:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Ll6/h;->o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    invoke-direct {p0, p1}, Li6/b;->t(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Li6/b;->t:Li6/b;

    invoke-virtual {v0, p1, p2, p3}, Li6/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {v2}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    invoke-static {v1}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    :cond_7
    invoke-static {v2}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    :cond_8
    iget-boolean p2, p0, Li6/b;->z:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Li6/b;->A:Landroid/graphics/Paint;

    if-eqz p2, :cond_9

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Li6/b;->A:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Li6/b;->A:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object p3, p0, Li6/b;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Li6/b;->A:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Li6/b;->A:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Li6/b;->i:Landroid/graphics/RectF;

    iget-object p3, p0, Li6/b;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    iget-object p1, p0, Li6/b;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Li6/b;->G(F)V

    return-void

    :cond_a
    :goto_2
    iget-object p0, p0, Li6/b;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {p0}, Li6/e;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Ljava/lang/Object;Lm6/b;)V
    .locals 0

    iget-object p0, p0, Li6/b;->x:Ld6/p;

    invoke-virtual {p0, p1, p2}, Ld6/p;->c(Ljava/lang/Object;Lm6/b;)Z

    return-void
.end method

.method public i(Lf6/f;ILjava/util/List;Lf6/f;)V
    .locals 3

    iget-object v0, p0, Li6/b;->t:Li6/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lf6/f;->a(Ljava/lang/String;)Lf6/f;

    move-result-object v0

    iget-object v1, p0, Li6/b;->t:Li6/b;

    invoke-virtual {v1}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lf6/f;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Li6/b;->t:Li6/b;

    invoke-virtual {v0, v1}, Lf6/f;->i(Lf6/g;)Lf6/f;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lf6/f;->h(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li6/b;->t:Li6/b;

    invoke-virtual {v1}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lf6/f;->e(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Li6/b;->t:Li6/b;

    invoke-virtual {v2, p1, v1, p3, v0}, Li6/b;->I(Lf6/f;ILjava/util/List;Lf6/f;)V

    :cond_1
    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lf6/f;->g(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "__container"

    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lf6/f;->a(Ljava/lang/String;)Lf6/f;

    move-result-object p4

    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lf6/f;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, p0}, Lf6/f;->i(Lf6/g;)Lf6/f;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lf6/f;->h(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li6/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lf6/f;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Li6/b;->I(Lf6/f;ILjava/util/List;Lf6/f;)V

    :cond_4
    return-void
.end method

.method public j(Ld6/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Li6/b;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public w()Lh6/a;
    .locals 0

    iget-object p0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {p0}, Li6/e;->a()Lh6/a;

    move-result-object p0

    return-object p0
.end method

.method public x(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    iget v0, p0, Li6/b;->B:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object p0, p0, Li6/b;->C:Landroid/graphics/BlurMaskFilter;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Li6/b;->C:Landroid/graphics/BlurMaskFilter;

    iput p1, p0, Li6/b;->B:F

    return-object v0
.end method

.method public y()Lk6/j;
    .locals 0

    iget-object p0, p0, Li6/b;->q:Li6/e;

    invoke-virtual {p0}, Li6/e;->c()Lk6/j;

    move-result-object p0

    return-object p0
.end method

.method z()Li6/e;
    .locals 0

    iget-object p0, p0, Li6/b;->q:Li6/e;

    return-object p0
.end method
