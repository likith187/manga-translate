.class public Lcom/oplus/anim/o;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/o$c;,
        Lcom/oplus/anim/o$b;
    }
.end annotation


# instance fields
.field private final A:Landroid/graphics/Matrix;

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Canvas;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/RectF;

.field private J:Landroid/graphics/RectF;

.field private K:Landroid/graphics/Matrix;

.field private L:Landroid/graphics/Matrix;

.field private M:Z

.field private a:Lcom/oplus/anim/a;

.field private final b:Ll6/b;

.field private c:Z

.field private f:Z

.field private h:Z

.field private i:Lcom/oplus/anim/o$c;

.field private final j:Ljava/util/ArrayList;

.field private final k:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private l:Le6/b;

.field private m:Ljava/lang/String;

.field private n:Le6/a;

.field private o:Ljava/util/Map;

.field p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Li6/c;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/oplus/anim/m0;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ll6/b;

    invoke-direct {v0}, Ll6/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/anim/o;->c:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/anim/o;->f:Z

    iput-boolean v2, p0, Lcom/oplus/anim/o;->h:Z

    sget-object v3, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v3, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/oplus/anim/o$a;

    invoke-direct {v3, p0}, Lcom/oplus/anim/o$a;-><init>(Lcom/oplus/anim/o;)V

    iput-object v3, p0, Lcom/oplus/anim/o;->k:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean v2, p0, Lcom/oplus/anim/o;->r:Z

    iput-boolean v1, p0, Lcom/oplus/anim/o;->s:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/oplus/anim/o;->u:I

    sget-object v1, Lcom/oplus/anim/m0;->AUTOMATIC:Lcom/oplus/anim/m0;

    iput-object v1, p0, Lcom/oplus/anim/o;->y:Lcom/oplus/anim/m0;

    iput-boolean v2, p0, Lcom/oplus/anim/o;->z:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/oplus/anim/o;->M:Z

    invoke-virtual {v0, v3}, Ll6/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private C(II)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/oplus/anim/o;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/oplus/anim/o;->M:Z

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/oplus/anim/o;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/oplus/anim/o;->M:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private D()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->C:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->C:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->L:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->E:Landroid/graphics/RectF;

    new-instance v0, Lb6/a;

    invoke-direct {v0}, Lb6/a;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->F:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->G:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->H:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/o;->I:Landroid/graphics/RectF;

    return-void
.end method

.method private H()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private I()Le6/a;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/o;->n:Le6/a;

    if-nez v0, :cond_1

    new-instance v0, Le6/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Le6/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/oplus/anim/i0;)V

    iput-object v0, p0, Lcom/oplus/anim/o;->n:Le6/a;

    iget-object v1, p0, Lcom/oplus/anim/o;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Le6/a;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/oplus/anim/o;->n:Le6/a;

    return-object p0
.end method

.method private K()Le6/b;
    .locals 5

    iget-object v0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/anim/o;->H()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Le6/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/oplus/anim/o;->l:Le6/b;

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    if-nez v0, :cond_1

    new-instance v0, Le6/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/anim/o;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-virtual {v4}, Lcom/oplus/anim/a;->j()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Le6/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/oplus/anim/j0;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    :cond_1
    iget-object p0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    return-object p0
.end method

.method private Y()Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static synthetic a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/anim/o;->e0(Lcom/oplus/anim/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/anim/o;Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->k0(Ljava/lang/String;Lcom/oplus/anim/a;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/anim/o;ILcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->g0(ILcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic c0(Lf6/f;Ljava/lang/Object;Lm6/b;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/o;->q(Lf6/f;Ljava/lang/Object;Lm6/b;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/anim/o;FLcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->i0(FLcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic d0(Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->q0()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/anim/o;IILcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/o;->j0(IILcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic e0(Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->t0()V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/anim/o;Lf6/f;Ljava/lang/Object;Lm6/b;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/anim/o;->c0(Lf6/f;Ljava/lang/Object;Lm6/b;Lcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic f0(ILcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->B0(I)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/anim/o;ILcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->f0(ILcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic g0(ILcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->G0(I)V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/anim/o;FLcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->n0(FLcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic h0(Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/oplus/anim/o;ILcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->l0(ILcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic i0(FLcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->I0(F)V

    return-void
.end method

.method public static synthetic j(Lcom/oplus/anim/o;Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->m0(Ljava/lang/String;Lcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic j0(IILcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/o;->J0(II)V

    return-void
.end method

.method public static synthetic k(Lcom/oplus/anim/o;Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->h0(Ljava/lang/String;Lcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic k0(Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->K0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/oplus/anim/o;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/anim/o;->d0(Lcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic l0(ILcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->L0(I)V

    return-void
.end method

.method public static synthetic m(Lcom/oplus/anim/o;FLcom/oplus/anim/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/o;->o0(FLcom/oplus/anim/a;)V

    return-void
.end method

.method private synthetic m0(Ljava/lang/String;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->M0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/oplus/anim/o;)Li6/c;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    return-object p0
.end method

.method private synthetic n0(FLcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->N0(F)V

    return-void
.end method

.method static synthetic o(Lcom/oplus/anim/o;)Ll6/b;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    return-object p0
.end method

.method private synthetic o0(FLcom/oplus/anim/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->Q0(F)V

    return-void
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/o;->c:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/anim/o;->f:Z

    if-eqz p0, :cond_0

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

.method private r0(Landroid/graphics/Canvas;Li6/c;)V
    .locals 8

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/o;->D()V

    iget-object v0, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/oplus/anim/o;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/oplus/anim/o;->D:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/anim/o;->E:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/oplus/anim/o;->w(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/oplus/anim/o;->E:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/oplus/anim/o;->E:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/anim/o;->D:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/oplus/anim/o;->x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/oplus/anim/o;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oplus/anim/o;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Li6/c;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_0
    iget-object v0, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/oplus/anim/o;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/oplus/anim/o;->u0(Landroid/graphics/RectF;FF)V

    invoke-direct {p0}, Lcom/oplus/anim/o;->Y()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/oplus/anim/o;->D:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_2
    iget-object v3, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/oplus/anim/o;->C(II)V

    iget-boolean v5, p0, Lcom/oplus/anim/o;->M:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/oplus/anim/o;->C:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/oplus/anim/o;->u:I

    invoke-virtual {p2, v0, v2, v5}, Li6/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/oplus/anim/o;->K:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/oplus/anim/o;->L:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/oplus/anim/o;->L:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/oplus/anim/o;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/anim/o;->J:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/oplus/anim/o;->I:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/oplus/anim/o;->H:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/oplus/anim/o;->x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_4
    iget-object p2, p0, Lcom/oplus/anim/o;->G:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/oplus/anim/o;->B:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oplus/anim/o;->G:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/anim/o;->H:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/anim/o;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Li6/c;

    invoke-static {v0}, Lk6/w;->a(Lcom/oplus/anim/a;)Li6/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/anim/a;->k()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Li6/c;-><init>(Lcom/oplus/anim/o;Li6/e;Ljava/util/List;Lcom/oplus/anim/a;)V

    iput-object v1, p0, Lcom/oplus/anim/o;->t:Li6/c;

    iget-boolean v0, p0, Lcom/oplus/anim/o;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Li6/c;->K(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    iget-boolean p0, p0, Lcom/oplus/anim/o;->s:Z

    invoke-virtual {v0, p0}, Li6/c;->P(Z)V

    return-void
.end method

.method private u0(Landroid/graphics/RectF;FF)V
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/o;->y:Lcom/oplus/anim/m0;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Lcom/oplus/anim/a;->q()Z

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/anim/a;->m()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/anim/m0;->useSoftwareRendering(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/anim/o;->z:Z

    return-void
.end method

.method private w(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 4

    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private y(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    iget-object v1, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/oplus/anim/a;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/oplus/anim/a;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/oplus/anim/o;->A:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/oplus/anim/o;->u:I

    invoke-virtual {v0, p1, v1, p0}, Li6/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/anim/o;->q:Z

    return p0
.end method

.method public A0(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->o:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oplus/anim/o;->o:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_0
    return-void
.end method

.method public B0(I)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/i;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/i;-><init>(Lcom/oplus/anim/o;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Ll6/b;->B(F)V

    return-void
.end method

.method public C0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->f:Z

    return-void
.end method

.method public D0(Lcom/oplus/anim/j0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/b;->d(Lcom/oplus/anim/j0;)V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/anim/o;->K()Le6/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public E0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/o;->m:Ljava/lang/String;

    return-void
.end method

.method public F()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/anim/o;->s:Z

    return p0
.end method

.method public F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->r:Z

    return-void
.end method

.method public G()Lcom/oplus/anim/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    return-object p0
.end method

.method public G0(I)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/d;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/d;-><init>(Lcom/oplus/anim/o;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ll6/b;->C(F)V

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/b;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/b;-><init>(Lcom/oplus/anim/o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oplus/anim/a;->l(Ljava/lang/String;)Lf6/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lf6/h;->b:F

    iget v0, v0, Lf6/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->G0(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public I0(F)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/g;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/g;-><init>(Lcom/oplus/anim/o;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Lcom/oplus/anim/a;->p()F

    move-result v0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-virtual {p0}, Lcom/oplus/anim/a;->f()F

    move-result p0

    invoke-static {v0, p0, p1}, Ll6/g;->i(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Ll6/b;->C(F)V

    return-void
.end method

.method public J()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->l()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public J0(II)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/anim/e;-><init>(Lcom/oplus/anim/o;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Ll6/b;->D(FF)V

    return-void
.end method

.method public K0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/k;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/k;-><init>(Lcom/oplus/anim/o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oplus/anim/a;->l(Ljava/lang/String;)Lf6/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lf6/h;->b:F

    float-to-int p1, p1

    iget v0, v0, Lf6/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/o;->J0(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public L()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->m:Ljava/lang/String;

    return-object p0
.end method

.method public L0(I)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/m;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/m;-><init>(Lcom/oplus/anim/o;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Ll6/b;->E(I)V

    return-void
.end method

.method public M(Ljava/lang/String;)Lcom/oplus/anim/g0;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/a;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/g0;

    return-object p0
.end method

.method public M0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/n;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/n;-><init>(Lcom/oplus/anim/o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oplus/anim/a;->l(Ljava/lang/String;)Lf6/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lf6/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->L0(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public N()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/anim/o;->r:Z

    return p0
.end method

.method public N0(F)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/c;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/c;-><init>(Lcom/oplus/anim/o;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/anim/a;->p()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-virtual {v1}, Lcom/oplus/anim/a;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Ll6/g;->i(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->L0(I)V

    return-void
.end method

.method public O()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->n()F

    move-result p0

    return p0
.end method

.method public O0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/o;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oplus/anim/o;->w:Z

    iget-object p0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Li6/c;->K(Z)V

    :cond_1
    return-void
.end method

.method public P()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->o()F

    move-result p0

    return p0
.end method

.method public P0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->v:Z

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/anim/a;->v(Z)V

    :cond_0
    return-void
.end method

.method public Q()Lcom/oplus/anim/l0;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/a;->n()Lcom/oplus/anim/l0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Q0(F)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/f;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/f;-><init>(Lcom/oplus/anim/o;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/a;->h(F)F

    move-result p0

    invoke-virtual {v1, p0}, Ll6/b;->B(F)V

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method public R()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->k()F

    move-result p0

    return p0
.end method

.method public R0(Lcom/oplus/anim/m0;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/o;->y:Lcom/oplus/anim/m0;

    invoke-direct {p0}, Lcom/oplus/anim/o;->v()V

    return-void
.end method

.method public S()Lcom/oplus/anim/m0;
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/anim/o;->z:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oplus/anim/m0;->SOFTWARE:Lcom/oplus/anim/m0;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/anim/m0;->HARDWARE:Lcom/oplus/anim/m0;

    :goto_0
    return-object p0
.end method

.method public S0(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public T()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public T0(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Ll6/b;->setRepeatMode(I)V

    return-void
.end method

.method public U()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public U0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->h:Z

    return-void
.end method

.method public V()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->p()F

    move-result p0

    return p0
.end method

.method public V0(F)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Ll6/b;->F(F)V

    return-void
.end method

.method public W()Lcom/oplus/anim/o0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public W0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/anim/o;->c:Z

    return-void
.end method

.method public X(Lf6/d;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/oplus/anim/o;->o:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lf6/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lf6/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf6/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf6/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/oplus/anim/o;->I()Le6/a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Le6/a;->b(Lf6/d;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public X0(Lcom/oplus/anim/o0;)V
    .locals 0

    return-void
.end method

.method public Y0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Ll6/b;->G(Z)V

    return-void
.end method

.method public Z()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ll6/b;->isRunning()Z

    move-result p0

    return p0
.end method

.method public Z0()Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-virtual {p0}, Lcom/oplus/anim/a;->c()Landroidx/collection/j;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/j;->i()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method a0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0}, Ll6/b;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    sget-object v0, Lcom/oplus/anim/o$c;->PLAY:Lcom/oplus/anim/o$c;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/oplus/anim/o$c;->RESUME:Lcom/oplus/anim/o$c;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/anim/o;->x:Z

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/oplus/anim/k0;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/anim/o;->h:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/anim/o;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/anim/o;->t:Li6/c;

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/o;->r0(Landroid/graphics/Canvas;Li6/c;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/anim/o;->y(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v1, "Lottie crashed in draw!"

    invoke-static {v1, p1}, Ll6/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/oplus/anim/o;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/anim/o;->t:Li6/c;

    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/o;->r0(Landroid/graphics/Canvas;Li6/c;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/anim/o;->y(Landroid/graphics/Canvas;)V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->M:Z

    invoke-static {v0}, Lcom/oplus/anim/k0;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/oplus/anim/o;->u:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/a;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/a;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/o;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/o;->M:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->Z()Z

    move-result p0

    return p0
.end method

.method public p(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p0, p1}, Ll6/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public p0()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->t()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_0
    return-void
.end method

.method public q(Lf6/f;Ljava/lang/Object;Lm6/b;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/anim/h;-><init>(Lcom/oplus/anim/o;Lf6/f;Ljava/lang/Object;Lm6/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Lf6/f;->c:Lf6/f;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p2, p3}, Li6/c;->h(Ljava/lang/Object;Lm6/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lf6/f;->d()Lf6/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lf6/f;->d()Lf6/g;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lf6/g;->h(Ljava/lang/Object;Lm6/b;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->s0(Lf6/f;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf6/f;

    invoke-virtual {v1}, Lf6/f;->d()Lf6/g;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lf6/g;->h(Ljava/lang/Object;Lm6/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    sget-object p1, Lcom/oplus/anim/q;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/o;->R()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->Q0(F)V

    :cond_4
    return-void
.end method

.method public q0()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/j;

    invoke-direct {v1, p0}, Lcom/oplus/anim/j;-><init>(Lcom/oplus/anim/o;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/o;->v()V

    invoke-direct {p0}, Lcom/oplus/anim/o;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/o;->T()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->u()V

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/oplus/anim/o$c;->PLAY:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oplus/anim/o;->r()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oplus/anim/o;->V()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/o;->P()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/o;->O()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/o;->B0(I)V

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_5
    return-void
.end method

.method public s0(Lf6/f;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Ll6/e;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    new-instance v1, Lf6/f;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lf6/f;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Li6/b;->i(Lf6/f;ILjava/util/List;Lf6/f;)V

    return-object v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/anim/o;->u:I

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Ll6/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    sget-object v0, Lcom/oplus/anim/o$c;->PLAY:Lcom/oplus/anim/o$c;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->q0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/anim/o$c;->RESUME:Lcom/oplus/anim/o$c;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/oplus/anim/o;->t0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {p1}, Ll6/b;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/anim/o;->p0()V

    sget-object p1, Lcom/oplus/anim/o$c;->RESUME:Lcom/oplus/anim/o$c;

    iput-object p1, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object p1, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/o;->q0()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/anim/o;->B()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_0
    return-void
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/l;

    invoke-direct {v1, p0}, Lcom/oplus/anim/l;-><init>(Lcom/oplus/anim/o;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oplus/anim/o;->v()V

    invoke-direct {p0}, Lcom/oplus/anim/o;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/anim/o;->T()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->y()V

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/oplus/anim/o$c;->RESUME:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oplus/anim/o;->r()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oplus/anim/o;->V()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/o;->P()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/anim/o;->O()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/o;->B0(I)V

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_5
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/anim/o$c;->NONE:Lcom/oplus/anim/o$c;

    iput-object v0, p0, Lcom/oplus/anim/o;->i:Lcom/oplus/anim/o$c;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    iput-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    iput-object v0, p0, Lcom/oplus/anim/o;->l:Le6/b;

    iget-object v0, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v0}, Ll6/b;->i()V

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public v0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/o;->x:Z

    return-void
.end method

.method public w0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/o;->s:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/oplus/anim/o;->s:Z

    iget-object v0, p0, Lcom/oplus/anim/o;->t:Li6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li6/c;->P(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public x0(Lcom/oplus/anim/a;)Z
    .locals 3

    iget-object v0, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/o;->M:Z

    invoke-virtual {p0}, Lcom/oplus/anim/o;->u()V

    iput-object p1, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    invoke-direct {p0}, Lcom/oplus/anim/o;->s()V

    iget-object v1, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v1, p1}, Ll6/b;->A(Lcom/oplus/anim/a;)V

    iget-object v1, p0, Lcom/oplus/anim/o;->b:Ll6/b;

    invoke-virtual {v1}, Ll6/b;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/o;->Q0(F)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/o$b;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/oplus/anim/o$b;->a(Lcom/oplus/anim/a;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oplus/anim/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/oplus/anim/o;->v:Z

    invoke-virtual {p1, v1}, Lcom/oplus/anim/a;->v(Z)V

    invoke-direct {p0}, Lcom/oplus/anim/o;->v()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public y0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/o;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/anim/o;->I()Le6/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/o;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oplus/anim/o;->q:Z

    iget-object p1, p0, Lcom/oplus/anim/o;->a:Lcom/oplus/anim/a;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oplus/anim/o;->s()V

    :cond_1
    return-void
.end method

.method public z0(Lcom/oplus/anim/i0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/o;->n:Le6/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/a;->d(Lcom/oplus/anim/i0;)V

    :cond_0
    return-void
.end method
