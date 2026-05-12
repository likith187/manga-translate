.class public Lcom/google/android/material/shape/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/i$c;
    }
.end annotation


# static fields
.field public static final SHADOW_COMPAT_MODE_ALWAYS:I = 0x2

.field public static final SHADOW_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final SHADOW_COMPAT_MODE_NEVER:I = 0x1

.field private static final SHADOW_OFFSET_MULTIPLIER:F = 0.25f

.field private static final SHADOW_RADIUS_MULTIPLIER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "i"

.field private static final clearPaint:Landroid/graphics/Paint;


# instance fields
.field private final containsIncompatibleShadowOp:Ljava/util/BitSet;

.field private final cornerShadowOperation:[Lcom/google/android/material/shape/p$g;

.field private drawableState:Lcom/google/android/material/shape/i$c;

.field private final edgeShadowOperation:[Lcom/google/android/material/shape/p$g;

.field private final fillPaint:Landroid/graphics/Paint;

.field private final insetRectF:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final path:Landroid/graphics/Path;

.field private final pathBounds:Landroid/graphics/RectF;

.field private pathDirty:Z

.field private final pathInsetByStroke:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/o;

.field private final pathShadowListener:Lcom/google/android/material/shape/o$b;

.field private final rectF:Landroid/graphics/RectF;

.field private resolvedTintColor:I

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowBitmapDrawingEnable:Z

.field private final shadowRenderer:Lk4/a;

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeShapeAppearance:Lcom/google/android/material/shape/n;

.field private strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final transparentRegion:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/shape/i;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/shape/n;

    invoke-direct {v0}, Lcom/google/android/material/shape/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/shape/n;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/n$b;->m()Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/material/shape/i$c;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/p$g;

    iput-object v1, p0, Lcom/google/android/material/shape/i;->cornerShadowOperation:[Lcom/google/android/material/shape/p$g;

    .line 6
    new-array v0, v0, [Lcom/google/android/material/shape/p$g;

    iput-object v0, p0, Lcom/google/android/material/shape/i;->edgeShadowOperation:[Lcom/google/android/material/shape/p$g;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->matrix:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->pathInsetByStroke:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->rectF:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->insetRectF:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->transparentRegion:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->scratchRegion:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    .line 17
    new-instance v3, Lk4/a;

    invoke-direct {v3}, Lk4/a;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    invoke-static {}, Lcom/google/android/material/shape/o;->k()Lcom/google/android/material/shape/o;

    move-result-object v3

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Lcom/google/android/material/shape/o;

    invoke-direct {v3}, Lcom/google/android/material/shape/o;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/android/material/shape/i;->pathProvider:Lcom/google/android/material/shape/o;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, Lcom/google/android/material/shape/i;->shadowBitmapDrawingEnable:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->r([I)Z

    .line 28
    new-instance p1, Lcom/google/android/material/shape/i$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/shape/i$a;-><init>(Lcom/google/android/material/shape/i;)V

    iput-object p1, p0, Lcom/google/android/material/shape/i;->pathShadowListener:Lcom/google/android/material/shape/o$b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/n;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/material/shape/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/shape/i$c;-><init>(Lcom/google/android/material/shape/n;Ld4/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/i;-><init>(Lcom/google/android/material/shape/i$c;)V

    return-void
.end method

.method private a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->compositeElevationOverlayIfNeeded(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/shape/i;->resolvedTintColor:I

    if-eq p2, p1, :cond_0

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$000(Lcom/google/android/material/shape/i;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/shape/i;)[Lcom/google/android/material/shape/p$g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->cornerShadowOperation:[Lcom/google/android/material/shape/p$g;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/i;)[Lcom/google/android/material/shape/p$g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->edgeShadowOperation:[Lcom/google/android/material/shape/p$g;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/shape/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    return p1
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/i;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v0, v0, Lcom/google/android/material/shape/i$c;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/i;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/google/android/material/shape/i;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v1, Lcom/google/android/material/shape/i$c;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lcom/google/android/material/shape/i;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private c()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->j()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShapeAppearanceModel()Lcom/google/android/material/shape/n;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/shape/i$b;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/shape/i$b;-><init>(Lcom/google/android/material/shape/i;F)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/n;->y(Lcom/google/android/material/shape/n$c;)Lcom/google/android/material/shape/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/i;->strokeShapeAppearance:Lcom/google/android/material/shape/n;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->pathProvider:Lcom/google/android/material/shape/o;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v2, v2, Lcom/google/android/material/shape/i$c;->k:F

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->i()Landroid/graphics/RectF;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/material/shape/i;->pathInsetByStroke:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/google/android/material/shape/o;->d(Lcom/google/android/material/shape/n;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/material/shape/i;->createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/i;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;F)Lcom/google/android/material/shape/i;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/material/shape/i;->createWithElevationOverlay(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lcom/google/android/material/shape/i;

    move-result-object p0

    return-object p0
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;FLandroid/content/res/ColorStateList;)Lcom/google/android/material/shape/i;
    .locals 1

    if-nez p2, :cond_0

    .line 3
    sget p2, Lcom/google/android/material/R$attr;->colorSurface:I

    const-class v0, Lcom/google/android/material/shape/i;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0, p2, v0}, Lb4/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 6
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/i;

    invoke-direct {v0}, Lcom/google/android/material/shape/i;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/i;->setElevation(F)V

    return-object v0
.end method

.method private d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->compositeElevationOverlayIfNeeded(I)I

    move-result p1

    :cond_0
    iput p1, p0, Lcom/google/android/material/shape/i;->resolvedTintColor:I

    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private e(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/shape/i;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/shape/i;->a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/i;->containsIncompatibleShadowOp:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/android/material/shape/i;->TAG:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v0, v0, Lcom/google/android/material/shape/i$c;->s:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    invoke-virtual {v1}, Lk4/a;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/shape/i;->cornerShadowOperation:[Lcom/google/android/material/shape/p$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    iget-object v3, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v3, v3, Lcom/google/android/material/shape/i$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/p$g;->b(Lk4/a;ILandroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/material/shape/i;->edgeShadowOperation:[Lcom/google/android/material/shape/p$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    iget-object v3, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v3, v3, Lcom/google/android/material/shape/i$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/shape/p$g;->b(Lk4/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/shape/i;->shadowBitmapDrawingEnable:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShadowOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShadowOffsetY()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    sget-object v2, Lcom/google/android/material/shape/i;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float p0, v0

    int-to-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v4, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/i;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lcom/google/android/material/shape/n;->u(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/material/shape/n;->t()Lcom/google/android/material/shape/d;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/google/android/material/shape/d;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->k:F

    mul-float/2addr p3, p0

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private i()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->insetRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->j()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->insetRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p0, p0, Lcom/google/android/material/shape/i;->insetRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private j()F
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lcom/google/android/material/shape/i$c;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->requiresCompatShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private l()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->v:Landroid/graphics/Paint$Style;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_0

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

.method private m()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private n()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->q(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/shape/i;->shadowBitmapDrawingEnable:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v3, v3, Lcom/google/android/material/shape/i$c;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/shape/i;->pathBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v4, v4, Lcom/google/android/material/shape/i$c;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v5, v5, Lcom/google/android/material/shape/i$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v5, v5, Lcom/google/android/material/shape/i$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v3}, Lcom/google/android/material/shape/i;->f(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private q(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShadowOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShadowOffsetY()I

    move-result p0

    int-to-float v0, v0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private r([I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v2, v2, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v2, v2, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v3, v3, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private s()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/shape/i;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v3, v2, Lcom/google/android/material/shape/i$c;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lcom/google/android/material/shape/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/google/android/material/shape/i;->e(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/i;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v3, v2, Lcom/google/android/material/shape/i$c;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lcom/google/android/material/shape/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v4, v6}, Lcom/google/android/material/shape/i;->e(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/shape/i;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-boolean v3, v2, Lcom/google/android/material/shape/i$c;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    iget-object v2, v2, Lcom/google/android/material/shape/i$c;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Lk4/a;->d(I)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/shape/i;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/shape/i;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, p0}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getZ()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/shape/i$c;->r:I

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/shape/i$c;->s:I

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method


# virtual methods
.method protected final calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/shape/i;->pathProvider:Lcom/google/android/material/shape/o;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v2, v1, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    iget v3, v1, Lcom/google/android/material/shape/i$c;->k:F

    iget-object v4, p0, Lcom/google/android/material/shape/i;->pathShadowListener:Lcom/google/android/material/shape/o$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/o;->e(Lcom/google/android/material/shape/n;FLandroid/graphics/RectF;Lcom/google/android/material/shape/o$b;Landroid/graphics/Path;)V

    return-void
.end method

.method protected compositeElevationOverlayIfNeeded(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getZ()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getParentAbsoluteElevation()F

    move-result v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->b:Ld4/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Ld4/a;->c(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v2, v2, Lcom/google/android/material/shape/i$c;->m:I

    invoke-static {v0, v2}, Lcom/google/android/material/shape/i;->p(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->strokeTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v2, v2, Lcom/google/android/material/shape/i$c;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v3, v3, Lcom/google/android/material/shape/i$c;->m:I

    invoke-static {v1, v3}, Lcom/google/android/material/shape/i;->p(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->c()V

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/shape/i;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->o(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->g(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/shape/i;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->drawStrokeShape(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/shape/i;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v5, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/shape/i;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/material/shape/i;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/shape/i;->pathInsetByStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/google/android/material/shape/i;->strokeShapeAppearance:Lcom/google/android/material/shape/n;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->i()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/i;->h(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/shape/n;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->m:I

    return p0
.end method

.method public getBottomLeftCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0}, Lcom/google/android/material/shape/n;->j()Lcom/google/android/material/shape/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getBottomRightCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0}, Lcom/google/android/material/shape/n;->l()Lcom/google/android/material/shape/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method protected getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/material/shape/i;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    return-object p0
.end method

.method public getElevation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->o:F

    return p0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getInterpolation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->k:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v0, v0, Lcom/google/android/material/shape/i$c;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->isRoundRect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTopLeftCornerResolvedSize()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v1, Lcom/google/android/material/shape/i$c;->k:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/i;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    invoke-static {p1, p0}, Lcom/google/android/material/drawable/a;->l(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getPaintStyle()Landroid/graphics/Paint$Style;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->v:Landroid/graphics/Paint$Style;

    return-object p0
.end method

.method public getParentAbsoluteElevation()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->n:F

    return p0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/material/shape/i;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method public getResolvedTintColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/i;->resolvedTintColor:I

    return p0
.end method

.method public getScale()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->j:F

    return p0
.end method

.method public getShadowCompatRotation()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->t:I

    return p0
.end method

.method public getShadowCompatibilityMode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->q:I

    return p0
.end method

.method public getShadowElevation()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getElevation()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getShadowOffsetX()I
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v0, p0, Lcom/google/android/material/shape/i$c;->s:I

    int-to-double v0, v0

    iget p0, p0, Lcom/google/android/material/shape/i$c;->t:I

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getShadowOffsetY()I
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v0, p0, Lcom/google/android/material/shape/i$c;->s:I

    int-to-double v0, v0

    iget p0, p0, Lcom/google/android/material/shape/i$c;->t:I

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getShadowRadius()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->r:I

    return p0
.end method

.method public getShadowVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->s:I

    return p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    return-object p0
.end method

.method public getShapedViewModel()Lcom/google/android/material/shape/q;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShapeAppearanceModel()Lcom/google/android/material/shape/n;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->f:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->l:F

    return p0
.end method

.method public getTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTopLeftCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0}, Lcom/google/android/material/shape/n;->r()Lcom/google/android/material/shape/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getTopRightCornerResolvedSize()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0}, Lcom/google/android/material/shape/n;->t()Lcom/google/android/material/shape/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/shape/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public getTranslationZ()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->p:F

    return p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/shape/i;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/google/android/material/shape/i;->scratchRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/shape/i;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/google/android/material/shape/i;->transparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->scratchRegion:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/google/android/material/shape/i;->transparentRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method public getZ()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTranslationZ()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public initializeElevationOverlay(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    new-instance v1, Ld4/a;

    invoke-direct {v1, p1}, Ld4/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/shape/i$c;->b:Ld4/a;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->t()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->b:Ld4/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld4/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isElevationOverlayInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->b:Ld4/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPointInTransparentRegion(II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isRoundRect()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/n;->u(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public isShadowEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget p0, p0, Lcom/google/android/material/shape/i$c;->q:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object p0, p0, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/i$c;

    iget-object v1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/i$c;-><init>(Lcom/google/android/material/shape/i$c;)V

    iput-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/i;->r([I)Z

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public requiresCompatShadow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->isRoundRect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isConvex()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->m:I

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->c:Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method

.method public setCornerSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/n;->w(F)Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method public setCornerSize(Lcom/google/android/material/shape/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/n;->x(Lcom/google/android/material/shape/d;)Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method public setEdgeIntersectionCheckEnable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/shape/i;->pathProvider:Lcom/google/android/material/shape/o;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/o;->n(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->o:F

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->t()V

    :cond_0
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v1, v0, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setInterpolation(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/shape/i;->pathDirty:Z

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v1, v0, Lcom/google/android/material/shape/i$c;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/shape/i$c;->i:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v0, v0, Lcom/google/android/material/shape/i$c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->v:Landroid/graphics/Paint$Style;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->n:F

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->t()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->j:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setShadowBitmapDrawingEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/shape/i;->shadowBitmapDrawingEnable:Z

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->shadowRenderer:Lk4/a;

    invoke-virtual {v0, p1}, Lk4/a;->d(I)V

    iget-object p1, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/shape/i$c;->u:Z

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method

.method public setShadowCompatRotation(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->t:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->t:I

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    :cond_0
    return-void
.end method

.method public setShadowCompatibilityMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->q:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->q:I

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    :cond_0
    return-void
.end method

.method public setShadowElevation(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setElevation(F)V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShadowCompatibilityMode(I)V

    return-void
.end method

.method public setShadowRadius(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput p1, p0, Lcom/google/android/material/shape/i$c;->r:I

    return-void
.end method

.method public setShadowVerticalOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->s:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->s:I

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->a:Lcom/google/android/material/shape/n;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    return-void
.end method

.method public setShapedViewModel(Lcom/google/android/material/shape/q;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    return-void
.end method

.method public setStroke(FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeWidth(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeWidth(F)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/material/shape/i;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v1, v0, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setStrokeTint(I)V
    .locals 0

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->f:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput p1, v0, Lcom/google/android/material/shape/i$c;->l:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-object v1, v0, Lcom/google/android/material/shape/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/google/android/material/shape/i$c;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->s()Z

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->n()V

    :cond_0
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget v1, v0, Lcom/google/android/material/shape/i$c;->p:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lcom/google/android/material/shape/i$c;->p:F

    invoke-direct {p0}, Lcom/google/android/material/shape/i;->t()V

    :cond_0
    return-void
.end method

.method public setUseTintColorForShadow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/shape/i;->drawableState:Lcom/google/android/material/shape/i$c;

    iget-boolean v1, v0, Lcom/google/android/material/shape/i$c;->u:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/google/android/material/shape/i$c;->u:Z

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setZ(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getElevation()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setTranslationZ(F)V

    return-void
.end method
