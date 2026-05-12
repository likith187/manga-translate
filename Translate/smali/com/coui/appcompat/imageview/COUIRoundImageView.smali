.class public Lcom/coui/appcompat/imageview/COUIRoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field private static final BORDER_CIRCLE_WIDTH:I = 0x5

.field private static final CIRCLE:I = 0x0

.field private static final DEFAULT_BORDER_RADIUS:I = 0x1

.field private static final DEFAULT_STROKE_RADIUS:I = 0x1

.field private static final DEFAULT_STROKE_WIDTH:I = 0x2

.field public static final ICON_LARGE:I = 0x3

.field public static final ICON_LARGE_RADIUS:I = 0x10

.field public static final ICON_MEDIUM:I = 0x2

.field private static final ICON_SIZE_TYPE_DEFAULT:I = 0x0

.field public static final ICON_SMALL:I = 0x1

.field public static final ICON_SMALL_RADIUS:I = 0xe

.field private static final ONE:F = 1.0f

.field private static final POINT_FIVE:F = 0.5f

.field private static final ROUND:I = 0x1

.field private static final SHADOW:I = 0x2

.field private static final TWO:F = 2.0f

.field private static final ZERO:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapSize:I

.field private mBitmapWidth:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:I

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mHasDefaultPic:Z

.field private mIsImageView:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOutBorderRect:Landroid/graphics/RectF;

.field private mOutCircle:Landroid/graphics/Paint;

.field private mOutCircleColor:I

.field private mRadius:F

.field private mRefreshStyle:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mScale:F

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private mShadowBitmapShader:Landroid/graphics/BitmapShader;

.field private mShadowBorderWidth:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableHeight:I

.field private mShadowDrawableWidth:I

.field private final mShadowInsideRect:Landroid/graphics/RectF;

.field private mSourceDrawableHeight:I

.field private mSourceDrawableWidth:I

.field private mSourceRect:Landroid/graphics/RectF;

.field private mType:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mContext:Landroid/content/Context;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-direct {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->initBorderPaint()V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_roundimageview_outcircle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->coui_roundimageview_default_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRefreshStyle:I

    .line 23
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    invoke-direct {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->initBorderPaint()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$drawable;->coui_round_image_view_shadow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    .line 35
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableHeight:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_roundimageView_src_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableWidth:I

    .line 37
    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableHeight:I

    .line 38
    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiBorderRadius:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    .line 42
    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    .line 43
    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiHasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasBorder:Z

    .line 44
    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiHasDefaultPic:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasDefaultPic:Z

    .line 45
    sget p2, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_roundimageview_outcircle_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircleColor:I

    .line 48
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->initShadow()V

    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    .line 54
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    const/4 p1, 0x2

    .line 55
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    .line 56
    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->initShadow()V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private initBorderPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$color;->coui_border:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setupShader(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->createBitmapWithShadow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    :cond_3
    :goto_0
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_0

    move v0, v1

    :cond_0
    cmpg-float v3, v2, v1

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBorderWidth:I

    int-to-float v4, p0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    int-to-float p0, p0

    div-float/2addr p0, v5

    add-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public createBitmapWithShadow()Landroid/graphics/Bitmap;
    .locals 6

    invoke-direct {p0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->updateShaderMatrix()V

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public initShadow()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mSourceDrawableWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBorderWidth:I

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowInsideRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBorderWidth:I

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowDrawableHeight:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mShadowBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapSize:I

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    int-to-float v0, v1

    div-float/2addr v5, v0

    iput v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    mul-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    mul-float/2addr v5, v6

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mScale:F

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRadius:F

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRadius:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRadius:F

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_7
    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    if-nez v0, :cond_9

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v2, v1

    div-float/2addr v2, v4

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    invoke-direct {v0, v2, v1, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    :cond_9
    iget-boolean v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasBorder:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    int-to-float p2, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRadius:F

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRoundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float p3, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    int-to-float p2, p2

    div-float/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p4

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderWidth:I

    int-to-float v2, v2

    div-float/2addr v2, p4

    sub-float/2addr v1, v2

    invoke-direct {p1, p3, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutBorderRect:Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRefreshStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIRoundImageView:[I

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "attr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIRoundImageView:[I

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "style"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIRoundImageView:[I

    iget v4, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRefreshStyle:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/support/appcompat/R$styleable;->COUIRoundImageView_couiRoundImageViewOutCircleColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/appcompat/R$color;->coui_roundimageview_outcircle_color_dark:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircleColor:I

    iget-object v1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderRectRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mBorderRadius:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasBorder:Z

    return-void
.end method

.method public setHasDefaultPic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mHasDefaultPic:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setupShader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOutCircleColor(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircleColor:I

    iget-object v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mOutCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mType:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/imageview/COUIRoundImageView;->mRadius:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
