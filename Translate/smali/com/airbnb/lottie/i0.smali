.class public Lcom/airbnb/lottie/i0;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/i0$b;,
        Lcom/airbnb/lottie/i0$a;
    }
.end annotation


# static fields
.field private static final U:Z

.field private static final V:Ljava/util/concurrent/Executor;


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

.field private N:Lcom/airbnb/lottie/a;

.field private final O:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final P:Ljava/util/concurrent/Semaphore;

.field private Q:Landroid/os/Handler;

.field private R:Ljava/lang/Runnable;

.field private final S:Ljava/lang/Runnable;

.field private T:F

.field private a:Lcom/airbnb/lottie/j;

.field private final b:Lr1/g;

.field private c:Z

.field private f:Z

.field private h:Z

.field private i:Lcom/airbnb/lottie/i0$b;

.field private final j:Ljava/util/ArrayList;

.field private k:Lk1/b;

.field private l:Ljava/lang/String;

.field private m:Lk1/a;

.field private n:Ljava/util/Map;

.field o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lo1/c;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/airbnb/lottie/r0;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/i0;->U:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lr1/e;

    invoke-direct {v8}, Lr1/e;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x23

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/airbnb/lottie/i0;->V:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lr1/g;

    invoke-direct {v0}, Lr1/g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/i0;->c:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->f:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->h:Z

    sget-object v3, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v3, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->q:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/i0;->r:Z

    const/16 v3, 0xff

    iput v3, p0, Lcom/airbnb/lottie/i0;->t:I

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->x:Z

    sget-object v3, Lcom/airbnb/lottie/r0;->AUTOMATIC:Lcom/airbnb/lottie/r0;

    iput-object v3, p0, Lcom/airbnb/lottie/i0;->y:Lcom/airbnb/lottie/r0;

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->z:Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iput-boolean v2, p0, Lcom/airbnb/lottie/i0;->M:Z

    new-instance v2, Lcom/airbnb/lottie/c0;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/c0;-><init>(Lcom/airbnb/lottie/i0;)V

    iput-object v2, p0, Lcom/airbnb/lottie/i0;->O:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    new-instance v1, Lcom/airbnb/lottie/d0;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/d0;-><init>(Lcom/airbnb/lottie/i0;)V

    iput-object v1, p0, Lcom/airbnb/lottie/i0;->S:Ljava/lang/Runnable;

    const v1, -0x800001

    iput v1, p0, Lcom/airbnb/lottie/i0;->T:F

    invoke-virtual {v0, v2}, Lr1/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private A(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/i0;->t:I

    invoke-virtual {v0, p1, v1, p0}, Lo1/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private B0(Landroid/graphics/Canvas;Lo1/c;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->F()V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->D:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->E:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/i0;->y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->E:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->E:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->D:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/i0;->z(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lo1/c;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/airbnb/lottie/i0;->E0(Landroid/graphics/RectF;FF)V

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->d0()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/i0;->D:Landroid/graphics/Rect;

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
    iget-object v3, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-lez v3, :cond_5

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/airbnb/lottie/i0;->E(II)V

    iget-boolean v5, p0, Lcom/airbnb/lottie/i0;->M:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->C:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/i0;->A:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/i0;->t:I

    invoke-virtual {p2, v0, v2, v5}, Lo1/b;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->L:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->L:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->I:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->H:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/i0;->z(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/i0;->G:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->G:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->H:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private E(II)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/i0;->M:Z

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->B:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/airbnb/lottie/i0;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/i0;->M:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private E0(Landroid/graphics/RectF;FF)V
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

.method private F()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->C:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->C:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->J:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->K:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->L:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->D:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->E:Landroid/graphics/RectF;

    new-instance v0, Lh1/a;

    invoke-direct {v0}, Lh1/a;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->F:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->G:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->H:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->I:Landroid/graphics/RectF;

    return-void
.end method

.method private M()Landroid/content/Context;
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

.method private N()Lk1/a;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->m:Lk1/a;

    if-nez v0, :cond_1

    new-instance v0, Lk1/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lk1/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/b;)V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->m:Lk1/a;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->o:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lk1/a;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->m:Lk1/a;

    return-object p0
.end method

.method private P()Lk1/b;
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    if-nez v0, :cond_1

    new-instance v0, Lk1/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/i0;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-virtual {v4}, Lcom/airbnb/lottie/j;->j()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lk1/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/c;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    return-object p0
.end method

.method public static synthetic a(Lcom/airbnb/lottie/i0;FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->w0(FLcom/airbnb/lottie/j;)V

    return-void
.end method

.method public static synthetic b(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/i0;->m0(Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method public static synthetic c(Lcom/airbnb/lottie/i0;Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->r0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method public static synthetic d(Lcom/airbnb/lottie/i0;ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->n0(ILcom/airbnb/lottie/j;)V

    return-void
.end method

.method private d0()Z
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

.method public static synthetic e(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/i0;->l0(Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method public static synthetic f(Lcom/airbnb/lottie/i0;Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->o0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method public static synthetic g(Lcom/airbnb/lottie/i0;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/i0;->i0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/airbnb/lottie/i0;ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->t0(ILcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic h0(Ll1/e;Ljava/lang/Object;Ls1/c;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/i0;->s(Ll1/e;Ljava/lang/Object;Ls1/c;)V

    return-void
.end method

.method public static synthetic i(Lcom/airbnb/lottie/i0;IILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/i0;->s0(IILcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic i0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->k()F

    move-result p0

    invoke-virtual {p1, p0}, Lo1/c;->N(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/airbnb/lottie/i0;FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->v0(FLcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic j0()V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/airbnb/lottie/i0;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->k0()V

    return-void
.end method

.method private synthetic k0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v1}, Lr1/g;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Lo1/c;->N(F)V

    sget-boolean v0, Lcom/airbnb/lottie/i0;->U:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->M:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->Q:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->Q:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/lottie/y;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/y;-><init>(Lcom/airbnb/lottie/i0;)V

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->R:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :goto_2
    return-void
.end method

.method public static synthetic l(Lcom/airbnb/lottie/i0;Ll1/e;Ljava/lang/Object;Ls1/c;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/i0;->h0(Ll1/e;Ljava/lang/Object;Ls1/c;Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic l0(Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->y0()V

    return-void
.end method

.method private l1()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/i0;->T:F

    iget-object v3, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v3}, Lr1/g;->k()F

    move-result v3

    iput v3, p0, Lcom/airbnb/lottie/i0;->T:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->d()F

    move-result p0

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x42480000    # 50.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic m(Lcom/airbnb/lottie/i0;Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->u0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic m0(Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->D0()V

    return-void
.end method

.method public static synthetic n(Lcom/airbnb/lottie/i0;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->j0()V

    return-void
.end method

.method private synthetic n0(ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->N0(I)V

    return-void
.end method

.method public static synthetic o(Lcom/airbnb/lottie/i0;FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->q0(FLcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic o0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->T0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/airbnb/lottie/i0;ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/i0;->p0(ILcom/airbnb/lottie/j;)V

    return-void
.end method

.method private synthetic p0(ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->S0(I)V

    return-void
.end method

.method private synthetic q0(FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->U0(F)V

    return-void
.end method

.method private synthetic r0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->W0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic s0(IILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/i0;->V0(II)V

    return-void
.end method

.method private t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->c:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->f:Z

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

.method private synthetic t0(ILcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->X0(I)V

    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lo1/c;

    invoke-static {v0}, Lq1/v;->a(Lcom/airbnb/lottie/j;)Lo1/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->k()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lo1/c;-><init>(Lcom/airbnb/lottie/i0;Lo1/e;Ljava/util/List;Lcom/airbnb/lottie/j;)V

    iput-object v1, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->v:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lo1/c;->L(Z)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->r:Z

    invoke-virtual {v0, p0}, Lo1/c;->R(Z)V

    return-void
.end method

.method private synthetic u0(Ljava/lang/String;Lcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->Y0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic v0(FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->Z0(F)V

    return-void
.end method

.method private synthetic w0(FLcom/airbnb/lottie/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->c1(F)V

    return-void
.end method

.method private x()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/i0;->y:Lcom/airbnb/lottie/r0;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->q()Z

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->m()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/airbnb/lottie/r0;->useSoftwareRendering(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/i0;->z:Z

    return-void
.end method

.method private y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
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

.method private z(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
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


# virtual methods
.method public A0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/a;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->O:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lr1/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public B(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->p:Z

    iget-object p1, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->u()V

    :cond_1
    return-void
.end method

.method public C()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->p:Z

    return p0
.end method

.method public C0(Ll1/e;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lr1/d;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    new-instance v1, Ll1/e;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Ll1/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lo1/b;->g(Ll1/e;ILjava/util/List;Ll1/e;)V

    return-object v0
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_0
    return-void
.end method

.method public D0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/z;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/z;-><init>(Lcom/airbnb/lottie/i0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->x()V

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->Y()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->w()V

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/i0$b;->RESUME:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->a0()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->U()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->T()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/i0;->N0(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_5
    return-void
.end method

.method public F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->w:Z

    return-void
.end method

.method public G()Lcom/airbnb/lottie/a;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->N:Lcom/airbnb/lottie/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/e;->d()Lcom/airbnb/lottie/a;

    move-result-object p0

    return-object p0
.end method

.method public G0(Lcom/airbnb/lottie/a;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->N:Lcom/airbnb/lottie/a;

    return-void
.end method

.method public H()Z
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->G()Lcom/airbnb/lottie/a;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/a;->ENABLED:Lcom/airbnb/lottie/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public H0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->x:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->x:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->P()Lk1/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk1/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public I0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->r:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->r:Z

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo1/c;->R(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public J()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->x:Z

    return p0
.end method

.method public J0(Lcom/airbnb/lottie/j;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/i0;->M:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->w()V

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->u()V

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v1, p1}, Lr1/g;->y(Lcom/airbnb/lottie/j;)V

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v1}, Lr1/g;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/i0;->c1(F)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/i0$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/airbnb/lottie/i0$a;->a(Lcom/airbnb/lottie/j;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/airbnb/lottie/i0;->u:Z

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/j;->v(Z)V

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->x()V

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

.method public K()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->r:Z

    return p0
.end method

.method public K0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->N()Lk1/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk1/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public L()Lcom/airbnb/lottie/j;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    return-object p0
.end method

.method public L0(Lcom/airbnb/lottie/b;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->m:Lk1/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk1/a;->d(Lcom/airbnb/lottie/b;)V

    :cond_0
    return-void
.end method

.method public M0(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->n:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/i0;->n:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method

.method public N0(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h0;-><init>(Lcom/airbnb/lottie/i0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lr1/g;->z(F)V

    return-void
.end method

.method public O()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->l()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public O0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->f:Z

    return-void
.end method

.method public P0(Lcom/airbnb/lottie/c;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk1/b;->d(Lcom/airbnb/lottie/c;)V

    :cond_0
    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->l:Ljava/lang/String;

    return-void
.end method

.method public R(Ljava/lang/String;)Lcom/airbnb/lottie/j0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/j0;

    return-object p0
.end method

.method public R0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->q:Z

    return-void
.end method

.method public S()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->q:Z

    return p0
.end method

.method public S0(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/t;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/t;-><init>(Lcom/airbnb/lottie/i0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lr1/g;->A(F)V

    return-void
.end method

.method public T()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->n()F

    move-result p0

    return p0
.end method

.method public T0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/a0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/a0;-><init>(Lcom/airbnb/lottie/i0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/j;->l(Ljava/lang/String;)Ll1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Ll1/h;->b:F

    iget v0, v0, Ll1/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->S0(I)V

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

.method public U()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->o()F

    move-result p0

    return p0
.end method

.method public U0(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/w;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/w;-><init>(Lcom/airbnb/lottie/i0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->p()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->f()F

    move-result p0

    invoke-static {v0, p0, p1}, Lr1/i;->i(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lr1/g;->A(F)V

    return-void
.end method

.method public V()Lcom/airbnb/lottie/q0;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->n()Lcom/airbnb/lottie/q0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public V0(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/x;-><init>(Lcom/airbnb/lottie/i0;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lr1/g;->B(FF)V

    return-void
.end method

.method public W()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->k()F

    move-result p0

    return p0
.end method

.method public W0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/s;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/s;-><init>(Lcom/airbnb/lottie/i0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/j;->l(Ljava/lang/String;)Ll1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Ll1/h;->b:F

    float-to-int p1, p1

    iget v0, v0, Ll1/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/i0;->V0(II)V

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

.method public X()Lcom/airbnb/lottie/r0;
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->z:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/airbnb/lottie/r0;->SOFTWARE:Lcom/airbnb/lottie/r0;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/r0;->HARDWARE:Lcom/airbnb/lottie/r0;

    :goto_0
    return-object p0
.end method

.method public X0(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/u;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/u;-><init>(Lcom/airbnb/lottie/i0;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/g;->C(I)V

    return-void
.end method

.method public Y()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public Y0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/b0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/b0;-><init>(Lcom/airbnb/lottie/i0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/j;->l(Ljava/lang/String;)Ll1/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Ll1/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->X0(I)V

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

.method public Z()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public Z0(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f0;-><init>(Lcom/airbnb/lottie/i0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-virtual {v1}, Lcom/airbnb/lottie/j;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lr1/i;->i(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->X0(I)V

    return-void
.end method

.method public a0()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->p()F

    move-result p0

    return p0
.end method

.method public a1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->v:Z

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lo1/c;->L(Z)V

    :cond_1
    return-void
.end method

.method public b0()Lcom/airbnb/lottie/t0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->u:Z

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->v(Z)V

    :cond_0
    return-void
.end method

.method public c0(Ll1/c;)Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->n:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ll1/c;->b()Ljava/lang/String;

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

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ll1/c;->c()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->N()Lk1/a;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lk1/a;->b(Ll1/c;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public c1(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/g0;-><init>(Lcom/airbnb/lottie/i0;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/j;->h(F)F

    move-result p0

    invoke-virtual {v1, p0}, Lr1/g;->z(F)V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    return-void
.end method

.method public d1(Lcom/airbnb/lottie/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->y:Lcom/airbnb/lottie/r0;

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->x()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->H()Z

    move-result v1

    const-string v2, "Drawable#draw"

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->l1()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v3}, Lr1/g;->k()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/i0;->c1(F)V

    :cond_2
    iget-boolean v3, p0, Lcom/airbnb/lottie/i0;->h:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :try_start_1
    iget-boolean v3, p0, Lcom/airbnb/lottie/i0;->z:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/i0;->B0(Landroid/graphics/Canvas;Lo1/c;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/i0;->A(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v3, "Lottie crashed in draw!"

    invoke-static {v3, p1}, Lr1/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    iget-boolean v3, p0, Lcom/airbnb/lottie/i0;->z:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/i0;->B0(Landroid/graphics/Canvas;Lo1/c;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/i0;->A(Landroid/graphics/Canvas;)V

    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->M:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lo1/c;->Q()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->k()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    :goto_3
    sget-object p1, Lcom/airbnb/lottie/i0;->V:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->S:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :goto_4
    invoke-static {v2}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lo1/c;->Q()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v1}, Lr1/g;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/airbnb/lottie/i0;->V:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->S:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    throw p1

    :catch_0
    invoke-static {v2}, Lcom/airbnb/lottie/e;->c(Ljava/lang/String;)F

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/airbnb/lottie/i0;->P:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lo1/c;->Q()F

    move-result p1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->k()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    :goto_5
    return-void
.end method

.method public e0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lr1/g;->isRunning()Z

    move-result p0

    return p0
.end method

.method public e1(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method f0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/g;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    sget-object v0, Lcom/airbnb/lottie/i0$b;->PLAY:Lcom/airbnb/lottie/i0$b;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/i0$b;->RESUME:Lcom/airbnb/lottie/i0$b;

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

.method public f1(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/g;->setRepeatMode(I)V

    return-void
.end method

.method public g0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/i0;->w:Z

    return p0
.end method

.method public g1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->h:Z

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/i0;->t:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

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

.method public h1(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/g;->D(F)V

    return-void
.end method

.method public i1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/i0;->c:Z

    return-void
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
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/i0;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/i0;->M:Z

    sget-boolean v0, Lcom/airbnb/lottie/i0;->U:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->e0()Z

    move-result p0

    return p0
.end method

.method public j1(Lcom/airbnb/lottie/t0;)V
    .locals 0

    return-void
.end method

.method public k1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/g;->E(Z)V

    return-void
.end method

.method public m1()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Lcom/airbnb/lottie/j;->c()Landroidx/collection/j;

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

.method public q(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public r(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0, p1}, Lr1/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public s(Ll1/e;Ljava/lang/Object;Ls1/c;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/v;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/v;-><init>(Lcom/airbnb/lottie/i0;Ll1/e;Ljava/lang/Object;Ls1/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Ll1/e;->c:Ll1/e;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p2, p3}, Lo1/c;->h(Ljava/lang/Object;Ls1/c;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ll1/e;->d()Ll1/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ll1/e;->d()Ll1/f;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ll1/f;->h(Ljava/lang/Object;Ls1/c;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->C0(Ll1/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll1/e;

    invoke-virtual {v1}, Ll1/e;->d()Ll1/f;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ll1/f;->h(Ljava/lang/Object;Ls1/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    sget-object p1, Lcom/airbnb/lottie/m0;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->W()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/i0;->c1(F)V

    :cond_4
    return-void
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

    iput p1, p0, Lcom/airbnb/lottie/i0;->t:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lr1/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    sget-object v0, Lcom/airbnb/lottie/i0$b;->PLAY:Lcom/airbnb/lottie/i0$b;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->y0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/i0$b;->RESUME:Lcom/airbnb/lottie/i0$b;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->D0()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p1}, Lr1/g;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->x0()V

    sget-object p1, Lcom/airbnb/lottie/i0$b;->RESUME:Lcom/airbnb/lottie/i0$b;

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object p1, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

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
    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->y0()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->D()V

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

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->a:Lcom/airbnb/lottie/j;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->k:Lk1/b;

    const v0, -0x800001

    iput v0, p0, Lcom/airbnb/lottie/i0;->T:F

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->i()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->invalidateSelf()V

    return-void
.end method

.method public x0()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->r()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_0
    return-void
.end method

.method public y0()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->s:Lo1/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/e0;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/e0;-><init>(Lcom/airbnb/lottie/i0;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->x()V

    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->Y()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->s()V

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/i0$b;->PLAY:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/i0;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->a0()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->U()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/i0;->T()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/i0;->N0(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {v0}, Lr1/g;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/airbnb/lottie/i0$b;->NONE:Lcom/airbnb/lottie/i0$b;

    iput-object v0, p0, Lcom/airbnb/lottie/i0;->i:Lcom/airbnb/lottie/i0$b;

    :cond_5
    return-void
.end method

.method public z0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/i0;->b:Lr1/g;

    invoke-virtual {p0}, Lr1/a;->removeAllListeners()V

    return-void
.end method
