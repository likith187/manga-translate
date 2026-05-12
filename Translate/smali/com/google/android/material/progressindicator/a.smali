.class public abstract Lcom/google/android/material/progressindicator/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    invoke-static {p1, p2, p3, v1}, Li4/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/a;->a:I

    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    invoke-static {p1, p2, p3, v0}, Li4/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result p3

    iget p4, p0, Lcom/google/android/material/progressindicator/a;->a:I

    div-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/a;->b:I

    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/a;->e:I

    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/a;->f:I

    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorTrackGapSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/progressindicator/a;->g:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/a;->c(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/a;->d(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    sget p2, Lcom/google/android/material/R$attr;->colorPrimary:I

    invoke-static {p1, p2, v1}, Lb4/a;->b(Landroid/content/Context;II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    return-void

    :cond_0
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget p1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    array-length p0, p1

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "indicatorColors cannot be empty when indicatorColor is not used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->d:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/progressindicator/a;->c:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    iput p2, p0, Lcom/google/android/material/progressindicator/a;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p2, 0x1010033

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget p2, p0, Lcom/google/android/material/progressindicator/a;->d:I

    invoke-static {p2, p1}, Lb4/a;->a(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->d:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/a;->f:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/a;->e:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method e()V
    .locals 1

    iget p0, p0, Lcom/google/android/material/progressindicator/a;->g:I

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "indicatorTrackGapSize must be >= 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
