.class public Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/e;
.implements Lj1/a$b;
.implements Li1/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lo1/b;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;

.field private final g:Lj1/a;

.field private final h:Lj1/a;

.field private i:Lj1/a;

.field private final j:Lcom/airbnb/lottie/i0;

.field private k:Lj1/a;

.field l:F

.field private m:Lj1/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li1/g;->a:Landroid/graphics/Path;

    new-instance v1, Lh1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    iput-object v1, p0, Li1/g;->b:Landroid/graphics/Paint;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Li1/g;->f:Ljava/util/List;

    iput-object p2, p0, Li1/g;->c:Lo1/b;

    invoke-virtual {p3}, Ln1/p;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Li1/g;->d:Ljava/lang/String;

    invoke-virtual {p3}, Ln1/p;->f()Z

    move-result v2

    iput-boolean v2, p0, Li1/g;->e:Z

    iput-object p1, p0, Li1/g;->j:Lcom/airbnb/lottie/i0;

    invoke-virtual {p2}, Lo1/b;->x()Ln1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lo1/b;->x()Ln1/a;

    move-result-object p1

    invoke-virtual {p1}, Ln1/a;->a()Lm1/b;

    move-result-object p1

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/g;->k:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/g;->k:Lj1/a;

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    :cond_0
    invoke-virtual {p2}, Lo1/b;->z()Lq1/j;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lj1/c;

    invoke-virtual {p2}, Lo1/b;->z()Lq1/j;

    move-result-object v2

    invoke-direct {p1, p0, p2, v2}, Lj1/c;-><init>(Lj1/a$b;Lo1/b;Lq1/j;)V

    iput-object p1, p0, Li1/g;->m:Lj1/c;

    :cond_1
    invoke-virtual {p3}, Ln1/p;->b()Lm1/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Ln1/p;->e()Lm1/d;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lo1/b;->w()Ln1/h;

    move-result-object p1

    invoke-virtual {p1}, Ln1/h;->toNativeBlendMode()Lu/a;

    move-result-object p1

    invoke-static {v1, p1}, Lu/f;->b(Landroid/graphics/Paint;Lu/a;)Z

    invoke-virtual {p3}, Ln1/p;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p3}, Ln1/p;->b()Lm1/a;

    move-result-object p1

    invoke-virtual {p1}, Lm1/a;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/g;->g:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p3}, Ln1/p;->e()Lm1/d;

    move-result-object p1

    invoke-virtual {p1}, Lm1/d;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Li1/g;->h:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p1}, Lo1/b;->j(Lj1/a;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Li1/g;->g:Lj1/a;

    iput-object p1, p0, Li1/g;->h:Lj1/a;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Li1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Li1/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li1/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Li1/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/m;

    invoke-interface {v2}, Li1/m;->a()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Li1/g;->a:Landroid/graphics/Path;

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

    iget-object p0, p0, Li1/g;->j:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

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

    check-cast v0, Li1/c;

    instance-of v1, v0, Li1/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Li1/g;->f:Ljava/util/List;

    check-cast v0, Li1/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    iget-boolean v0, p0, Li1/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Li1/g;->g:Lj1/a;

    check-cast v1, Lj1/b;

    invoke-virtual {v1}, Lj1/b;->q()I

    move-result v1

    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    iget-object v3, p0, Li1/g;->h:Lj1/a;

    invoke-virtual {v3}, Lj1/a;->h()Ljava/lang/Object;

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

    iget-object v2, p0, Li1/g;->b:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lr1/i;->c(III)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Li1/g;->i:Lj1/a;

    if-eqz p3, :cond_1

    iget-object v1, p0, Li1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Li1/g;->k:Lj1/a;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Li1/g;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_2
    iget v1, p0, Li1/g;->l:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Li1/g;->c:Lo1/b;

    invoke-virtual {v1, p3}, Lo1/b;->y(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    iget-object v2, p0, Li1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_3
    :goto_0
    iput p3, p0, Li1/g;->l:F

    :cond_4
    iget-object p3, p0, Li1/g;->m:Lj1/c;

    if-eqz p3, :cond_5

    iget-object v1, p0, Li1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lj1/c;->a(Landroid/graphics/Paint;)V

    :cond_5
    iget-object p3, p0, Li1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :goto_1
    iget-object p3, p0, Li1/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    iget-object p3, p0, Li1/g;->a:Landroid/graphics/Path;

    iget-object v1, p0, Li1/g;->f:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/m;

    invoke-interface {v1}, Li1/m;->a()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Li1/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Li1/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public g(Ll1/e;ILjava/util/List;Ll1/e;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lr1/i;->k(Ll1/e;ILjava/util/List;Ll1/e;Li1/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li1/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/m0;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Li1/g;->g:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/m0;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Li1/g;->h:Lj1/a;

    invoke-virtual {p0, p2}, Lj1/a;->o(Ls1/c;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/m0;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Li1/g;->i:Lj1/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Li1/g;->c:Lo1/b;

    invoke-virtual {v0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Li1/g;->i:Lj1/a;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/g;->i:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/g;->c:Lo1/b;

    iget-object p0, p0, Li1/g;->i:Lj1/a;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/m0;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Li1/g;->k:Lj1/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lj1/a;->o(Ls1/c;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Li1/g;->k:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Li1/g;->c:Lo1/b;

    iget-object p0, p0, Li1/g;->k:Lj1/a;

    invoke-virtual {p1, p0}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/airbnb/lottie/m0;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Li1/g;->m:Lj1/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lj1/c;->b(Ls1/c;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/airbnb/lottie/m0;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Li1/g;->m:Lj1/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Lj1/c;->f(Ls1/c;)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/m0;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Li1/g;->m:Lj1/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lj1/c;->d(Ls1/c;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/airbnb/lottie/m0;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Li1/g;->m:Lj1/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lj1/c;->e(Ls1/c;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/airbnb/lottie/m0;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Li1/g;->m:Lj1/c;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2}, Lj1/c;->g(Ls1/c;)V

    :cond_b
    :goto_0
    return-void
.end method
