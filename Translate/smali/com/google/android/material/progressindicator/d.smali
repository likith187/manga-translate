.class public final Lcom/google/android/material/progressindicator/d;
.super Lcom/google/android/material/progressindicator/e;
.source "SourceFile"


# static fields
.field private static final x:Landroidx/dynamicanimation/animation/d;


# instance fields
.field private s:Lcom/google/android/material/progressindicator/f;

.field private final t:Landroidx/dynamicanimation/animation/g;

.field private final u:Landroidx/dynamicanimation/animation/f;

.field private final v:Lcom/google/android/material/progressindicator/f$a;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/d$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/d$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/d;->x:Landroidx/dynamicanimation/animation/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/d;->w:Z

    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/d;->z(Lcom/google/android/material/progressindicator/f;)V

    new-instance p1, Lcom/google/android/material/progressindicator/f$a;

    invoke-direct {p1}, Lcom/google/android/material/progressindicator/f$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->v:Lcom/google/android/material/progressindicator/f$a;

    new-instance p1, Landroidx/dynamicanimation/animation/g;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->t:Landroidx/dynamicanimation/animation/g;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/g;->d(F)Landroidx/dynamicanimation/animation/g;

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    new-instance p3, Landroidx/dynamicanimation/animation/f;

    sget-object v0, Lcom/google/android/material/progressindicator/d;->x:Landroidx/dynamicanimation/animation/d;

    invoke-direct {p3, p0, v0}, Landroidx/dynamicanimation/animation/f;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object p3, p0, Lcom/google/android/material/progressindicator/d;->u:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/f;->x(Landroidx/dynamicanimation/animation/g;)Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p0, p2}, Lcom/google/android/material/progressindicator/e;->n(F)V

    return-void
.end method

.method private A(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->v:Lcom/google/android/material/progressindicator/f$a;

    iput p1, v0, Lcom/google/android/material/progressindicator/f$a;->b:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method static synthetic t(Lcom/google/android/material/progressindicator/d;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->y()F

    move-result p0

    return p0
.end method

.method static synthetic u(Lcom/google/android/material/progressindicator/d;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/d;->A(F)V

    return-void
.end method

.method static v(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;Lcom/google/android/material/progressindicator/b;)Lcom/google/android/material/progressindicator/d;
    .locals 1

    new-instance v0, Lcom/google/android/material/progressindicator/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/progressindicator/d;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;)V

    return-object v0
.end method

.method static w(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;Lcom/google/android/material/progressindicator/i;)Lcom/google/android/material/progressindicator/d;
    .locals 1

    new-instance v0, Lcom/google/android/material/progressindicator/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/progressindicator/d;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/a;Lcom/google/android/material/progressindicator/f;)V

    return-object v0
.end method

.method private y()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->v:Lcom/google/android/material/progressindicator/f$a;

    iget p0, p0, Lcom/google/android/material/progressindicator/f$a;->b:F

    return p0
.end method


# virtual methods
.method B(F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->h()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->k()Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->j()Z

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/progressindicator/f;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->v:Lcom/google/android/material/progressindicator/f$a;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget-object v3, v2, Lcom/google/android/material/progressindicator/a;->c:[I

    const/4 v9, 0x0

    aget v3, v3, v9

    iput v3, v1, Lcom/google/android/material/progressindicator/f$a;->c:I

    iget v1, v2, Lcom/google/android/material/progressindicator/a;->g:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    instance-of v2, v2, Lcom/google/android/material/progressindicator/i;

    if-eqz v2, :cond_1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->y()F

    move-result v2

    const/4 v3, 0x0

    const v4, 0x3c23d70a    # 0.01f

    invoke-static {v2, v3, v4}, Lx/a;->a(FFF)F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->y()F

    move-result v4

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget v6, v2, Lcom/google/android/material/progressindicator/a;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->getAlpha()I

    move-result v7

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget v6, v2, Lcom/google/android/material/progressindicator/a;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->getAlpha()I

    move-result v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/material/progressindicator/f;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V

    :goto_2
    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/d;->v:Lcom/google/android/material/progressindicator/f$a;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->getAlpha()I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/material/progressindicator/f;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/android/material/progressindicator/f$a;I)V

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/progressindicator/e;->b:Lcom/google/android/material/progressindicator/a;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/a;->c:[I

    aget v3, v3, v9

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/d;->getAlpha()I

    move-result v0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/material/progressindicator/f;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_3
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

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->e()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

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

.method public jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->u:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/f;->y()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/d;->A(F)V

    return-void
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

.method protected onLevelChange(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/d;->w:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->u:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/f;->y()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/d;->A(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/d;->u:Landroidx/dynamicanimation/animation/f;

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/d;->y()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/c;->m(F)Landroidx/dynamicanimation/animation/c;

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->u:Landroidx/dynamicanimation/animation/f;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/f;->s(F)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic q(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/e;->q(ZZZ)Z

    move-result p0

    return p0
.end method

.method r(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/e;->r(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/e;->c:Lh4/a;

    iget-object p3, p0, Lcom/google/android/material/progressindicator/e;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lh4/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/d;->w:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/d;->w:Z

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->t:Landroidx/dynamicanimation/animation/g;

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p3, p2

    invoke-virtual {p0, p3}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    :goto_0
    return p1
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

.method x()Lcom/google/android/material/progressindicator/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    return-object p0
.end method

.method z(Lcom/google/android/material/progressindicator/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/d;->s:Lcom/google/android/material/progressindicator/f;

    return-void
.end method
