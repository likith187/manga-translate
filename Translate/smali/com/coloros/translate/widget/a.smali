.class public final Lcom/coloros/translate/widget/a;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/a$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/widget/a$a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/widget/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/widget/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/widget/a;->b:Lcom/coloros/translate/widget/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/widget/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/coloros/translate/widget/a;->a:Ljava/lang/ref/WeakReference;

    const-string p0, "also(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 1

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {p9, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/widget/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p3

    :try_start_0
    iget p0, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    if-eqz p0, :cond_2

    const/4 p4, 0x1

    if-eq p0, p4, :cond_1

    const/4 p4, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, p4, :cond_0

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p4, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int p0, p4, p0

    add-int/2addr p7, p4

    int-to-float p4, p7

    int-to-float p0, p0

    div-float/2addr p0, v0

    sub-float/2addr p4, p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    sub-float/2addr p4, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    int-to-float p0, p6

    sub-int/2addr p8, p6

    int-to-float p4, p8

    div-float/2addr p4, v0

    add-float/2addr p0, p4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    sub-float p4, p0, p4

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p8, p0

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    sub-int/2addr p8, p0

    int-to-float p4, p8

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_2
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method
