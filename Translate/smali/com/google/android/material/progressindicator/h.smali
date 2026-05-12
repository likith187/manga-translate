.class public final Lcom/google/android/material/progressindicator/h;
.super Lcom/google/android/material/progressindicator/e;
.source "SourceFile"


# instance fields
.field private s:Lcom/google/android/material/progressindicator/f;

.field private t:Lcom/google/android/material/progressindicator/g;

.field private u:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;Lcom/google/android/material/progressindicator/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/h;->z(Lcom/google/android/material/progressindicator/f;)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/progressindicator/h;->y(Lcom/google/android/material/progressindicator/g;)V

    return-void
.end method

.method static t(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/b;)Lcom/google/android/material/progressindicator/h;
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/h;

    new-instance v1, Lcom/google/android/material/progressindicator/c;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/h;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;Lcom/google/android/material/progressindicator/g;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/material/R$drawable;->indeterminate_static:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/vectordrawable/graphics/drawable/g;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/g;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/progressindicator/h;->A(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static u(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/i;)Lcom/google/android/material/progressindicator/h;
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/h;

    iget v1, p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->h:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/material/progressindicator/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/material/progressindicator/k;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/progressindicator/k;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/h;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;Lcom/google/android/material/progressindicator/g;)V

    return-object v0
.end method

.method private x()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->c:Lh4/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh4/a;->a(Landroid/content/ContentResolver;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public A(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->u:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/h;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->u:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v1, v2, v1

    invoke-static {v0, v1}, Lv/a;->n(Landroid/graphics/drawable/Drawable;I)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->h()F

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->k()Z

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->j()Z

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/f;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v0, v0, Lcom/google/android/material/progressindicator/a;->g:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->getAlpha()I

    move-result v10

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v7, v3, Lcom/google/android/material/progressindicator/a;->d:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    move v8, v10

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/f$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/progressindicator/f$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    instance-of v4, v3, Lcom/google/android/material/progressindicator/i;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget v6, v2, Lcom/google/android/material/progressindicator/f$a;->a:F

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v7, v2, Lcom/google/android/material/progressindicator/a;->d:I

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, p1

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget v5, v11, Lcom/google/android/material/progressindicator/f$a;->b:F

    iget-object v3, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v7, v3, Lcom/google/android/material/progressindicator/a;->d:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget v5, v11, Lcom/google/android/material/progressindicator/f$a;->b:F

    iget v2, v2, Lcom/google/android/material/progressindicator/f$a;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v7, v2, Lcom/google/android/material/progressindicator/a;->d:I

    const/4 v10, 0x0

    move-object v2, v3

    move-object v3, p1

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/progressindicator/f$a;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->getAlpha()I

    move-result v5

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/google/android/material/progressindicator/f;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/f$a;I)V

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/g;->b:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/progressindicator/f$a;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v5, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget v6, v3, Lcom/google/android/material/progressindicator/f$a;->b:F

    iget v7, v2, Lcom/google/android/material/progressindicator/f$a;->a:F

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v8, v2, Lcom/google/android/material/progressindicator/a;->d:I

    move-object v2, v4

    move-object v3, p1

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->e()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->f()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getOpacity()I
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->getOpacity()I

    move-result p0

    return p0
.end method

.method public bridge synthetic i()Z
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->i()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRunning()Z
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->isRunning()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic j()Z
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->j()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic k()Z
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->k()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic m(Landroidx/vectordrawable/graphics/drawable/b;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/e;->m(Landroidx/vectordrawable/graphics/drawable/b;)V

    return-void
.end method

.method public bridge synthetic q(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/e;->q(ZZZ)Z

    move-result p0

    return p0
.end method

.method r(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/e;->r(ZZZ)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/h;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/h;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/h;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p2}, Lcom/google/android/material/progressindicator/g;->a()V

    :cond_1
    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/g;->g()V

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic s(Landroidx/vectordrawable/graphics/drawable/b;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/e;->s(Landroidx/vectordrawable/graphics/drawable/b;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/e;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/e;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/material/progressindicator/e;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/progressindicator/e;->stop()V

    return-void
.end method

.method v()Lcom/google/android/material/progressindicator/g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    return-object p0
.end method

.method w()Lcom/google/android/material/progressindicator/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    return-object p0
.end method

.method y(Lcom/google/android/material/progressindicator/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->t:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/g;->e(Lcom/google/android/material/progressindicator/h;)V

    return-void
.end method

.method z(Lcom/google/android/material/progressindicator/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/h;->s:Lcom/google/android/material/progressindicator/f;

    return-void
.end method
