.class public Lo1/i;
.super Lo1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/i$d;
    }
.end annotation


# instance fields
.field private final D:Ljava/lang/StringBuilder;

.field private final E:Landroid/graphics/RectF;

.field private final F:Landroid/graphics/Matrix;

.field private final G:Landroid/graphics/Paint;

.field private final H:Landroid/graphics/Paint;

.field private final I:Ljava/util/Map;

.field private final J:Landroidx/collection/f;

.field private final K:Ljava/util/List;

.field private final L:Lj1/o;

.field private final M:Lcom/airbnb/lottie/i0;

.field private final N:Lcom/airbnb/lottie/j;

.field private O:Lj1/a;

.field private P:Lj1/a;

.field private Q:Lj1/a;

.field private R:Lj1/a;

.field private S:Lj1/a;

.field private T:Lj1/a;

.field private U:Lj1/a;

.field private V:Lj1/a;

.field private W:Lj1/a;

.field private X:Lj1/a;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/i0;Lo1/e;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lo1/b;-><init>(Lcom/airbnb/lottie/i0;Lo1/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lo1/i;->D:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo1/i;->E:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo1/i;->F:Landroid/graphics/Matrix;

    new-instance v0, Lo1/i$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo1/i$a;-><init>(Lo1/i;I)V

    iput-object v0, p0, Lo1/i;->G:Landroid/graphics/Paint;

    new-instance v0, Lo1/i$b;

    invoke-direct {v0, p0, v1}, Lo1/i$b;-><init>(Lo1/i;I)V

    iput-object v0, p0, Lo1/i;->H:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo1/i;->I:Ljava/util/Map;

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iput-object v0, p0, Lo1/i;->J:Landroidx/collection/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/i;->K:Ljava/util/List;

    iput-object p1, p0, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    invoke-virtual {p2}, Lo1/e;->c()Lcom/airbnb/lottie/j;

    move-result-object p1

    iput-object p1, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {p2}, Lo1/e;->t()Lm1/j;

    move-result-object p1

    invoke-virtual {p1}, Lm1/j;->d()Lj1/o;

    move-result-object p1

    iput-object p1, p0, Lo1/i;->L:Lj1/o;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p2}, Lo1/e;->u()Lm1/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lm1/k;->a:Lm1/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lm1/a;->a()Lj1/a;

    move-result-object p2

    iput-object p2, p0, Lo1/i;->O:Lj1/a;

    invoke-virtual {p2, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p2, p0, Lo1/i;->O:Lj1/a;

    invoke-virtual {p0, p2}, Lo1/b;->j(Lj1/a;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lm1/k;->b:Lm1/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lm1/a;->a()Lj1/a;

    move-result-object p2

    iput-object p2, p0, Lo1/i;->Q:Lj1/a;

    invoke-virtual {p2, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p2, p0, Lo1/i;->Q:Lj1/a;

    invoke-virtual {p0, p2}, Lo1/b;->j(Lj1/a;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lm1/k;->c:Lm1/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lm1/b;->a()Lj1/a;

    move-result-object p2

    iput-object p2, p0, Lo1/i;->S:Lj1/a;

    invoke-virtual {p2, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p2, p0, Lo1/i;->S:Lj1/a;

    invoke-virtual {p0, p2}, Lo1/b;->j(Lj1/a;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Lm1/k;->d:Lm1/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lm1/b;->a()Lj1/a;

    move-result-object p1

    iput-object p1, p0, Lo1/i;->U:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->U:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    :cond_3
    return-void
.end method

.method private Q(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lo1/i;->e0(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lo1/i;->J:Landroidx/collection/f;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/f;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lo1/i;->J:Landroidx/collection/f;

    invoke-virtual {p0, v3, v4}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    iget-object v0, p0, Lo1/i;->D:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v2, p0, Lo1/i;->D:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lo1/i;->D:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lo1/i;->J:Landroidx/collection/f;

    invoke-virtual {p0, v3, v4, p1}, Landroidx/collection/f;->i(JLjava/lang/Object;)V

    return-object p1
.end method

.method private R(Ll1/b;I)V
    .locals 2

    iget-object v0, p0, Lo1/i;->P:Lj1/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo1/i;->O:Lj1/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo1/i;->G:Landroid/graphics/Paint;

    iget v1, p1, Ll1/b;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lo1/i;->R:Lj1/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo1/i;->Q:Lj1/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo1/i;->H:Landroid/graphics/Paint;

    iget v1, p1, Ll1/b;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lo1/b;->x:Lj1/p;

    invoke-virtual {v0}, Lj1/p;->h()Lj1/a;

    move-result-object v0

    const/16 v1, 0x64

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lo1/b;->x:Lj1/p;

    invoke-virtual {v0}, Lj1/p;->h()Lj1/a;

    move-result-object v0

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    mul-int/2addr v0, p2

    div-int/lit16 v0, v0, 0xff

    iget-object p2, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lo1/i;->T:Lj1/a;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lo1/i;->S:Lj1/a;

    if-eqz p2, :cond_6

    iget-object p0, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lo1/i;->H:Landroid/graphics/Paint;

    iget p1, p1, Ll1/b;->j:F

    invoke-static {}, Lr1/j;->e()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    return-void
.end method

.method private S(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private T(Ll1/d;FLl1/b;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0, p1}, Lo1/i;->b0(Ll1/d;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/d;

    invoke-virtual {v2}, Li1/d;->a()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lo1/i;->E:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Lo1/i;->F:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lo1/i;->F:Landroid/graphics/Matrix;

    iget v4, p3, Ll1/b;->g:F

    neg-float v4, v4

    invoke-static {}, Lr1/j;->e()F

    move-result v5

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Lo1/i;->F:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, p0, Lo1/i;->F:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v3, p3, Ll1/b;->k:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lo1/i;->W(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lo1/i;->W(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lo1/i;->W(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p4}, Lo1/i;->W(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private U(Ljava/lang/String;Ll1/b;Landroid/graphics/Canvas;)V
    .locals 0

    iget-boolean p2, p2, Ll1/b;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lo1/i;->S(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lo1/i;->S(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo1/i;->H:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lo1/i;->S(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lo1/i;->S(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private V(Ljava/lang/String;Ll1/b;Landroid/graphics/Canvas;F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lo1/i;->Q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p2, p3}, Lo1/i;->U(Ljava/lang/String;Ll1/b;Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, p4

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private W(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private X(Ljava/lang/String;Ll1/b;Ll1/c;Landroid/graphics/Canvas;FFF)V
    .locals 3

    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p5, v0, :cond_1

    invoke-virtual {p1, p5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ll1/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ll1/d;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->c()Landroidx/collection/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/collection/j;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/d;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0, p6, p2, p4}, Lo1/i;->T(Ll1/d;FLl1/b;Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Ll1/d;->b()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p6

    invoke-static {}, Lr1/j;->e()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p7

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Y(Ll1/b;Ll1/c;Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct {v7, v9}, Lo1/i;->d0(Ll1/c;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v8, Ll1/b;->a:Ljava/lang/String;

    iget-object v2, v7, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    invoke-virtual {v2}, Lcom/airbnb/lottie/i0;->b0()Lcom/airbnb/lottie/t0;

    iget-object v2, v7, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Lo1/i;->W:Lj1/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v8, Ll1/b;->c:F

    :goto_0
    iget-object v2, v7, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-static {}, Lr1/j;->e()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v7, Lo1/i;->H:Landroid/graphics/Paint;

    iget-object v3, v7, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v7, Lo1/i;->H:Landroid/graphics/Paint;

    iget-object v3, v7, Lo1/i;->G:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v8, Ll1/b;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, v7, Lo1/i;->V:Lj1/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    :cond_2
    iget-object v3, v7, Lo1/i;->U:Lj1/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Lr1/j;->e()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v11, v2, v0

    invoke-direct {v7, v1}, Lo1/i;->c0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v0, -0x1

    move v15, v0

    move v6, v14

    :goto_3
    if-ge v6, v13, :cond_7

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v8, Ll1/b;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_4
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v5, v11

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lo1/i;->g0(Ljava/lang/String;FLl1/c;FFZ)Ljava/util/List;

    move-result-object v0

    move v1, v14

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo1/i$d;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    invoke-static {v2}, Lo1/i$d;->a(Lo1/i$d;)F

    move-result v3

    invoke-direct {v7, v10, v8, v15, v3}, Lo1/i;->f0(Landroid/graphics/Canvas;Ll1/b;IF)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lo1/i$d;->b(Lo1/i$d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v8, v10, v11}, Lo1/i;->V(Ljava/lang/String;Ll1/b;Landroid/graphics/Canvas;F)V

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v17, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private Z(Ll1/b;Landroid/graphics/Matrix;Ll1/c;Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lo1/i;->W:Lj1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v9, Ll1/b;->c:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v10, v0, v1

    invoke-static/range {p2 .. p2}, Lr1/j;->g(Landroid/graphics/Matrix;)F

    move-result v11

    iget-object v0, v9, Ll1/b;->a:Ljava/lang/String;

    invoke-direct {v8, v0}, Lo1/i;->c0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    iget v0, v9, Ll1/b;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, v8, Lo1/i;->V:Lj1/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    :cond_1
    move v14, v0

    goto :goto_2

    :cond_2
    iget-object v1, v8, Lo1/i;->U:Lj1/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :goto_2
    const/4 v15, 0x0

    const/4 v0, -0x1

    move v7, v0

    move v6, v15

    :goto_3
    if-ge v6, v13, :cond_6

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v9, Ll1/b;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_3
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move v4, v10

    move v5, v14

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lo1/i;->g0(Ljava/lang/String;FLl1/c;FFZ)Ljava/util/List;

    move-result-object v6

    move v5, v15

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/i$d;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    invoke-static {v0}, Lo1/i$d;->a(Lo1/i$d;)F

    move-result v1

    move-object/from16 v4, p4

    invoke-direct {v8, v4, v9, v7, v1}, Lo1/i;->f0(Landroid/graphics/Canvas;Ll1/b;IF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lo1/i$d;->b(Lo1/i$d;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v16, v5

    move v5, v11

    move-object/from16 v18, v6

    move v6, v10

    move/from16 v19, v7

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lo1/i;->X(Ljava/lang/String;Ll1/b;Ll1/c;Landroid/graphics/Canvas;FFF)V

    goto :goto_7

    :cond_4
    move/from16 v16, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    :goto_7
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v6, v18

    move/from16 v7, v19

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v17, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private a0(I)Lo1/i$d;
    .locals 4

    iget-object v0, p0, Lo1/i;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lo1/i;->K:Ljava/util/List;

    new-instance v2, Lo1/i$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo1/i$d;-><init>(Lo1/i$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo1/i;->K:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo1/i$d;

    return-object p0
.end method

.method private b0(Ll1/d;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lo1/i;->I:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo1/i;->I:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ll1/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/q;

    new-instance v5, Li1/d;

    iget-object v6, p0, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    iget-object v7, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-direct {v5, v6, p0, v4, v7}, Li1/d;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/q;Lcom/airbnb/lottie/j;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lo1/i;->I:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private c0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string p0, "\r\n"

    const-string v0, "\r"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u0003"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d0(Ll1/c;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lo1/i;->X:Lj1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->c0(Ll1/c;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ll1/c;->d()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private e0(I)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 p1, 0x13

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private f0(Landroid/graphics/Canvas;Ll1/b;IF)Z
    .locals 6

    iget-object v0, p2, Ll1/b;->l:Landroid/graphics/PointF;

    iget-object v1, p2, Ll1/b;->m:Landroid/graphics/PointF;

    invoke-static {}, Lr1/j;->e()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p2, Ll1/b;->f:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    iget v5, p2, Ll1/b;->f:F

    mul-float/2addr p3, v5

    mul-float/2addr p3, v2

    add-float/2addr p3, v4

    iget-object p0, p0, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->J()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v2

    iget v2, p2, Ll1/b;->c:F

    add-float/2addr p0, v2

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    sget-object v0, Lo1/i$c;->a:[I

    iget-object p2, p2, Ll1/b;->d:Ll1/b$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    goto :goto_3

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr p0, v3

    div-float/2addr p4, p2

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_5
    add-float/2addr p0, v3

    sub-float/2addr p0, p4

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    return v0
.end method

.method private g0(Ljava/lang/String;FLl1/c;FFZ)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v6, v4

    move v7, v6

    move v8, v7

    move v10, v8

    move v5, v3

    move v9, v5

    move v11, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eqz p6, :cond_1

    invoke-virtual/range {p3 .. p3}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ll1/c;->c()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ll1/d;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {v14}, Lcom/airbnb/lottie/j;->c()Landroidx/collection/j;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/collection/j;->e(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ll1/d;

    if-nez v13, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v13}, Ll1/d;->b()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, p4

    invoke-static {}, Lr1/j;->e()F

    move-result v14

    mul-float/2addr v13, v14

    :goto_1
    add-float v13, v13, p5

    goto :goto_2

    :cond_1
    iget-object v13, v0, Lo1/i;->G:Landroid/graphics/Paint;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    goto :goto_1

    :goto_2
    const/16 v14, 0x20

    if-ne v12, v14, :cond_2

    const/4 v8, 0x1

    move v11, v13

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    move v8, v2

    move v10, v4

    move v9, v13

    goto :goto_3

    :cond_3
    add-float/2addr v9, v13

    :goto_3
    add-float/2addr v5, v13

    cmpl-float v15, p2, v3

    if-lez v15, :cond_6

    cmpl-float v15, v5, p2

    if-ltz v15, :cond_6

    if-ne v12, v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v6}, Lo1/i;->a0(I)Lo1/i$d;

    move-result-object v12

    if-ne v10, v7, :cond_5

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v10, v7

    int-to-float v7, v10

    mul-float/2addr v7, v11

    sub-float/2addr v5, v13

    sub-float/2addr v5, v7

    invoke-virtual {v12, v9, v5}, Lo1/i$d;->c(Ljava/lang/String;F)V

    move v7, v4

    move v10, v7

    move v5, v13

    move v9, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v11

    sub-float/2addr v5, v9

    sub-float/2addr v5, v7

    sub-float/2addr v5, v11

    invoke-virtual {v12, v13, v5}, Lo1/i$d;->c(Ljava/lang/String;F)V

    move v5, v9

    move v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v3, v5, v3

    if-lez v3, :cond_8

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v6}, Lo1/i;->a0(I)Lo1/i$d;

    move-result-object v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Lo1/i$d;->c(Ljava/lang/String;F)V

    :cond_8
    iget-object v0, v0, Lo1/i;->K:Ljava/util/List;

    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lo1/b;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {p2}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public h(Ljava/lang/Object;Ls1/c;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lo1/b;->h(Ljava/lang/Object;Ls1/c;)V

    sget-object v0, Lcom/airbnb/lottie/m0;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lo1/i;->P:Lj1/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_0
    if-nez p2, :cond_1

    iput-object v1, p0, Lo1/i;->P:Lj1/a;

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->P:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->P:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/m0;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lo1/i;->R:Lj1/a;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_3
    if-nez p2, :cond_4

    iput-object v1, p0, Lo1/i;->R:Lj1/a;

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->R:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->R:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/m0;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lo1/i;->T:Lj1/a;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_6
    if-nez p2, :cond_7

    iput-object v1, p0, Lo1/i;->T:Lj1/a;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->T:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->T:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/m0;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lo1/i;->V:Lj1/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_9
    if-nez p2, :cond_a

    iput-object v1, p0, Lo1/i;->V:Lj1/a;

    goto :goto_0

    :cond_a
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->V:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->V:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/m0;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lo1/i;->W:Lj1/a;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_c
    if-nez p2, :cond_d

    iput-object v1, p0, Lo1/i;->W:Lj1/a;

    goto :goto_0

    :cond_d
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->W:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->W:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/airbnb/lottie/m0;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lo1/i;->X:Lj1/a;

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lo1/b;->I(Lj1/a;)V

    :cond_f
    if-nez p2, :cond_10

    iput-object v1, p0, Lo1/i;->X:Lj1/a;

    goto :goto_0

    :cond_10
    new-instance p1, Lj1/q;

    invoke-direct {p1, p2}, Lj1/q;-><init>(Ls1/c;)V

    iput-object p1, p0, Lo1/i;->X:Lj1/a;

    invoke-virtual {p1, p0}, Lj1/a;->a(Lj1/a$b;)V

    iget-object p1, p0, Lo1/i;->X:Lj1/a;

    invoke-virtual {p0, p1}, Lo1/b;->j(Lj1/a;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lcom/airbnb/lottie/m0;->O:Ljava/lang/CharSequence;

    if-ne p1, v0, :cond_12

    iget-object p0, p0, Lo1/i;->L:Lj1/o;

    invoke-virtual {p0, p2}, Lj1/o;->r(Ls1/c;)V

    :cond_12
    :goto_0
    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Lo1/i;->L:Lj1/o;

    invoke-virtual {v0}, Lj1/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    iget-object v1, p0, Lo1/i;->N:Lcom/airbnb/lottie/j;

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->g()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Ll1/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/c;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, v0, p3}, Lo1/i;->R(Ll1/b;I)V

    iget-object p3, p0, Lo1/i;->M:Lcom/airbnb/lottie/i0;

    invoke-virtual {p3}, Lcom/airbnb/lottie/i0;->m1()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v0, p2, v1, p1}, Lo1/i;->Z(Ll1/b;Landroid/graphics/Matrix;Ll1/c;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lo1/i;->Y(Ll1/b;Ll1/c;Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
