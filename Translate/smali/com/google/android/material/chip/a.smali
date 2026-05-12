.class public Lcom/google/android/material/chip/a;
.super Lcom/google/android/material/shape/i;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final n0:[I

.field private static final o0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:Lx3/h;

.field private B:Lx3/h;

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private final K:Landroid/content/Context;

.field private final L:Landroid/graphics/Paint;

.field private final M:Landroid/graphics/Paint;

.field private final N:Landroid/graphics/Paint$FontMetrics;

.field private final O:Landroid/graphics/RectF;

.field private final P:Landroid/graphics/PointF;

.field private final Q:Landroid/graphics/Path;

.field private final R:Lcom/google/android/material/internal/TextDrawableHelper;

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:I

.field private a:Landroid/content/res/ColorStateList;

.field private a0:I

.field private b:Landroid/content/res/ColorStateList;

.field private b0:Landroid/graphics/ColorFilter;

.field private c:F

.field private c0:Landroid/graphics/PorterDuffColorFilter;

.field private d0:Landroid/content/res/ColorStateList;

.field private e0:Landroid/graphics/PorterDuff$Mode;

.field private f:F

.field private f0:[I

.field private g0:Z

.field private h:Landroid/content/res/ColorStateList;

.field private h0:Landroid/content/res/ColorStateList;

.field private i:F

.field private i0:Ljava/lang/ref/WeakReference;

.field private j:Landroid/content/res/ColorStateList;

.field private j0:Landroid/text/TextUtils$TruncateAt;

.field private k:Ljava/lang/CharSequence;

.field private k0:Z

.field private l:Z

.field private l0:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private m0:Z

.field private n:Landroid/content/res/ColorStateList;

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/content/res/ColorStateList;

.field private u:F

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/a;->n0:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->o0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/google/android/material/chip/a;->f:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lcom/google/android/material/chip/a;->a0:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/a;->e0:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->i0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->initializeElevationOverlay(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    new-instance p2, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    iput-object p4, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    sget-object p1, Lcom/google/android/material/chip/a;->n0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->v1([I)Z

    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->k0:Z

    sget-boolean p0, Lj4/b;->a:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/material/chip/a;->o0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->A()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v1, v2

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->left:F

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static B0(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private C()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object p0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/Paint$FontMetrics;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private static C0(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static D0(Li4/d;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li4/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li4/d;->i()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private E0(Landroid/util/AttributeSet;II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->m0:Z

    iget-object p3, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    invoke-static {p3, p2, v0}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/material/chip/a;->l1(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    invoke-static {p3, p2, v0}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->P0(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->d1(F)V

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->R0(F)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    invoke-static {p3, p2, v1}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->h1(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->j1(F)V

    iget-object p3, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {p3, p2, v1}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->I1(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->N1(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    invoke-static {p3, p2, v1}, Li4/c;->h(Landroid/content/Context;Landroid/content/res/TypedArray;I)Li4/d;

    move-result-object p3

    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    invoke-virtual {p3}, Li4/d;->j()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p3, v1}, Li4/d;->l(F)V

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->O1(Li4/d;)V

    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->A1(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->A1(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->A1(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->c1(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_4

    const-string v1, "chipIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "chipIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c1(Z)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v1, p2, v2}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->V0(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-static {v1, p2, v2}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->Z0(Landroid/content/res/ColorStateList;)V

    :cond_5
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->X0(F)V

    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->y1(Z)V

    if-eqz p1, :cond_6

    const-string v1, "closeIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "closeIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->y1(Z)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v1, p2, v2}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->m1(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    invoke-static {v1, p2, v2}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->w1(Landroid/content/res/ColorStateList;)V

    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->r1(F)V

    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->H0(Z)V

    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->O0(Z)V

    if-eqz p1, :cond_7

    const-string v1, "checkedIconEnabled"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "checkedIconVisible"

    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->O0(Z)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {p1, p2, p3}, Li4/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->J0(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-static {p1, p2, p3}, Li4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->L0(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {p1, p2, p3}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->L1(Lx3/h;)V

    iget-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {p1, p2, p3}, Lx3/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->B1(Lx3/h;)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->F1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->D1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->T1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->Q1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->t1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->o1(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->T0(F)V

    sget p1, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H1(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static F(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    .locals 1

    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/a;->E0(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private G(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->v(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, v0

    neg-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private G0([I[I)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/google/android/material/shape/i;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->a:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/material/chip/a;->S:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/i;->compositeElevationOverlayIfNeeded(I)I

    move-result v1

    iget v3, p0, Lcom/google/android/material/chip/a;->S:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lcom/google/android/material/chip/a;->S:I

    move v0, v4

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/google/android/material/chip/a;->T:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/i;->compositeElevationOverlayIfNeeded(I)I

    move-result v3

    iget v5, p0, Lcom/google/android/material/chip/a;->T:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lcom/google/android/material/chip/a;->T:I

    move v0, v4

    :cond_3
    invoke-static {v1, v3}, Lb4/a;->i(II)I

    move-result v1

    iget v3, p0, Lcom/google/android/material/chip/a;->U:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    iput v1, p0, Lcom/google/android/material/chip/a;->U:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/i;->setFillColor(Landroid/content/res/ColorStateList;)V

    move v0, v4

    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/google/android/material/chip/a;->V:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/a;->V:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lcom/google/android/material/chip/a;->V:I

    move v0, v4

    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->h0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lj4/b;->e([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/a;->h0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    if-eq v3, v1, :cond_a

    iput v1, p0, Lcom/google/android/material/chip/a;->W:I

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->g0:Z

    if-eqz v1, :cond_a

    move v0, v4

    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object v1

    invoke-virtual {v1}, Li4/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object v1

    invoke-virtual {v1}, Li4/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v3, p0, Lcom/google/android/material/chip/a;->X:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/a;->X:I

    if-eq v3, v1, :cond_c

    iput v1, p0, Lcom/google/android/material/chip/a;->X:I

    move v0, v4

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/a;->x0([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    move v1, v2

    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->Y:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->Y:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    move v0, v4

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v2

    move v0, v4

    goto :goto_8

    :cond_f
    move v1, v2

    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, Lcom/google/android/material/chip/a;->Z:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    move v3, v2

    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->Z:I

    if-eq v5, v3, :cond_11

    iput v3, p0, Lcom/google/android/material/chip/a;->Z:I

    iget-object v0, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->e0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->c0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_a

    :cond_11
    move v4, v0

    :goto_a
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_14
    sget-boolean p1, Lj4/b;->a:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_17
    return v4
.end method

.method private H(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->T:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->v0()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private I(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->v(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, v0

    neg-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private J(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    iget v0, p0, Lcom/google/android/material/chip/a;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->V:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->v0()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/a;->i:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v5, v2, v3

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float v6, v2, v3

    sub-float/2addr v5, v6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/google/android/material/chip/a;->f:F

    iget v0, p0, Lcom/google/android/material/chip/a;->i:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private K(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->S:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private L(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v1, Lj4/b;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object p0, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    neg-float p0, v0

    neg-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private M(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->W:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->S()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/shape/i;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/i;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private N(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Lu/d;->u(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->v(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Lu/d;->u(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->x(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Lu/d;->u(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->z(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private O(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/a;->D(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/a;->B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->r0()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/chip/a;->j0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->j0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private X1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->Y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Y1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Z1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a2(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private b2()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->g0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lj4/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->h0:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private c2()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->p0()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lj4/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->o0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private j0()F
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->o:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    :cond_1
    return p0

    :cond_2
    return v1
.end method

.method private k0()F
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget p0, p0, Lcom/google/android/material/chip/a;->o:F

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    int-to-float p0, p0

    :cond_1
    return p0
.end method

.method private l1(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->a:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method private u(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Lv/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g0()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/a;->t:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private v(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    iget v1, p0, Lcom/google/android/material/chip/a;->D:F

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->k0()F

    move-result v1

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->j0()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method private v0()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->b0:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c0:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method private x(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    iget v1, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->u:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method private static x0([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    iget v1, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/google/android/material/chip/a;->u:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/google/android/material/chip/a;->u:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget p0, p0, Lcom/google/android/material/chip/a;->u:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private z(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    iget v1, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->u:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, p0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method


# virtual methods
.method A()F
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    iget v1, p0, Lcom/google/android/material/chip/a;->u:F

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public A0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->q:Z

    return p0
.end method

.method public A1(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->j0:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public B1(Lx3/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->B:Lx3/h;

    return-void
.end method

.method public C1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->B1(Lx3/h;)V

    return-void
.end method

.method D(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/chip/a;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v1, v2

    invoke-static {p0}, Lv/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->C()F

    move-result p0

    sub-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public D1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    iput p1, p0, Lcom/google/android/material/chip/a;->E:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public E1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->D1(F)V

    return-void
.end method

.method protected F0()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->i0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/chip/a$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/material/chip/a$a;->a()V

    :cond_0
    return-void
.end method

.method public F1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    iput p1, p0, Lcom/google/android/material/chip/a;->D:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public G1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->F1(F)V

    return-void
.end method

.method public H0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->w:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->Y:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->Y:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_1
    return-void
.end method

.method public H1(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/chip/a;->l0:I

    return-void
.end method

.method public I0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H0(Z)V

    return-void
.end method

.method public I1(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->j:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->b2()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public J0(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public J1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->I1(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public K0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->J0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method K1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->k0:Z

    return-void
.end method

.method public L0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->z:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->z:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public L1(Lx3/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->A:Lx3/h;

    return-void
.end method

.method public M0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->L0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public M1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Lx3/h;->d(Landroid/content/Context;I)Lx3/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->L1(Lx3/h;)V

    return-void
.end method

.method public N0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->O0(Z)V

    return-void
.end method

.method public N1(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_1
    return-void
.end method

.method public O0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->x:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->x:Z

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_1
    return-void
.end method

.method public O1(Li4/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Li4/d;Landroid/content/Context;)V

    return-void
.end method

.method public P()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public P0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public P1(I)V
    .locals 2

    new-instance v0, Li4/d;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Li4/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->O1(Li4/d;)V

    return-void
.end method

.method public Q()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->z:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public Q0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->P0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public Q1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->G:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public R()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public R0(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->f:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getShapeAppearanceModel()Lcom/google/android/material/shape/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/n;->w(F)Lcom/google/android/material/shape/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setShapeAppearanceModel(Lcom/google/android/material/shape/n;)V

    :cond_0
    return-void
.end method

.method public R1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->Q1(F)V

    return-void
.end method

.method public S()F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->getTopLeftCornerResolvedSize()F

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/chip/a;->f:F

    :goto_0
    return p0
.end method

.method public S0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->R0(F)V

    return-void
.end method

.method public S1(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->s0()Li4/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li4/d;->l(F)V

    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->onTextSizeChange()V

    :cond_0
    return-void
.end method

.method public T()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->J:F

    return p0
.end method

.method public T0(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->J:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public T1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->F:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public U()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lv/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public U0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->T0(F)V

    return-void
.end method

.method public U1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->T1(F)V

    return-void
.end method

.method public V()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->o:F

    return p0
.end method

.method public V0(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->U()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_2
    return-void
.end method

.method public V1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->g0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->g0:Z

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->b2()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public W()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public W0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->V0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method W1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->k0:Z

    return p0
.end method

.method public X()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->c:F

    return p0
.end method

.method public X0(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    iput p1, p0, Lcom/google/android/material/chip/a;->o:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public Y()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->C:F

    return p0
.end method

.method public Y0(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->X0(F)V

    return-void
.end method

.method public Z()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public Z0(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    iget-object v0, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public a0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->i:F

    return p0
.end method

.method public a1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->Z0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public b0()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lv/a;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c1(Z)V

    return-void
.end method

.method public c0()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->v:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->l:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->l:Z

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_1
    return-void
.end method

.method public d0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->I:F

    return p0
.end method

.method public d1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->c:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v7, p0, Lcom/google/android/material/chip/a;->a0:I

    const/16 v1, 0xff

    if-ge v7, v1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Ly3/a;->a(Landroid/graphics/Canvas;FFFFI)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->K(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->H(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Lcom/google/android/material/shape/i;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->J(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->M(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->I(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->G(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->k0:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->O(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->L(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->N(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget p0, p0, Lcom/google/android/material/chip/a;->a0:I

    if-ge p0, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->u:F

    return p0
.end method

.method public e1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d1(F)V

    return-void
.end method

.method public f0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->H:F

    return p0
.end method

.method public f1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public g0()[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->f0:[I

    return-object p0
.end method

.method public g1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f1(F)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->a0:I

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->b0:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->c:F

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->r0()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->A()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p0, p0, Lcom/google/android/material/chip/a;->l0:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/shape/i;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/chip/a;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/a;->f:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h0()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->t:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public h1(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public i0(Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->z(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public i1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h1(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->a:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->B0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->B0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->B0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->g0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->h0:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->B0(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/a;->D0(Li4/d;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->E()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    invoke-static {p0}, Lcom/google/android/material/chip/a;->B0(Landroid/content/res/ColorStateList;)Z

    move-result p0

    if-eqz p0, :cond_1

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

.method public j1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/google/android/material/chip/a;->i:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/shape/i;->setStrokeWidth(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public k1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j1(F)V

    return-void
.end method

.method public l0()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->j0:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public m0()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->B:Lx3/h;

    return-object p0
.end method

.method public m1(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->A()F

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    sget-boolean p1, Lj4/b;->a:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->c2()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->A()F

    move-result p1

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_3
    return-void
.end method

.method public n0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->E:F

    return p0
.end method

.method public n1(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->v:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    invoke-static {}, Lb0/a;->c()Lb0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb0/a;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->v:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public o0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->D:F

    return p0
.end method

.method public o1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->I:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lv/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lv/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lv/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->m0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/shape/i;->onStateChange([I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g0()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->G0([I[I)Z

    move-result p0

    return p0
.end method

.method public onTextSizeChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    return-void
.end method

.method public p0()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->j:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public p1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->o1(F)V

    return-void
.end method

.method public q0()Lx3/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->A:Lx3/h;

    return-object p0
.end method

.method public q1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public r0()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public r1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->u:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->u:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public s0()Li4/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->R:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Li4/d;

    move-result-object p0

    return-object p0
.end method

.method public s1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->r1(F)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->a0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->a0:I

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->b0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->b0:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->e0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->e0:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->d0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/drawable/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->c0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public t0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->G:F

    return p0
.end method

.method public t1(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/a;->H:F

    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_0
    return-void
.end method

.method public u0()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/a;->F:F

    return p0
.end method

.method public u1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->t1(F)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v1([I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->f0:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/chip/a;->f0:[I

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->G0([I[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method w()F
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->k0()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, p0

    return v0
.end method

.method public w0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->g0:Z

    return p0
.end method

.method public w1(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->t:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->t:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public x1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->w1(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public y0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->w:Z

    return p0
.end method

.method public y1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->q:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->q:Z

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z1()Z

    move-result p1

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->u(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->a2(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/i;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F0()V

    :cond_1
    return-void
.end method

.method public z0()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/google/android/material/chip/a;->C0(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public z1(Lcom/google/android/material/chip/a$a;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->i0:Ljava/lang/ref/WeakReference;

    return-void
.end method
