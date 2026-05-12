.class public Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSTANT_VALUE_0:I = 0x0

.field public static final CONSTANT_VALUE_10:I = 0xa

.field public static final CONSTANT_VALUE_100:I = 0x64

.field public static final CONSTANT_VALUE_1000:I = 0x3e8

.field private static final MAX_ALPHA_VALUE:I = 0xff

.field private static final RATIO:I = 0x2


# instance fields
.field private mBgColor:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCornerRadius:I

.field private mDotCornerRadius:I

.field private mDotDiameter:I

.field private mEllipsisDiameter:I

.field private mEllipsisSpacing:I

.field private mLargeWidth:I

.field private mMediumWidth:I

.field private mNaviSmallWidth:I

.field private mSmallWidth:I

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintRedDotColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgColor:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintRedDotTextColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextColor:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintTextSize:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextSize:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiSmallWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiMediumWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiLargeWidth:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mLargeWidth:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHeight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiCornerRadius:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiDotDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotDiameter:I

    sget p3, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiEllipsisDiameter:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisDiameter:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_rect_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotCornerRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_navi_small_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mNaviSmallWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_hint_red_dot_ellipsis_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$dimen;->coui_dot_stroke_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeWidth:I

    sget p2, Lcom/support/appcompat/R$color;->coui_color_white:I

    invoke-static {p1, p2}, Lr/a;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeColor:I

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p1, "sans-serif-medium"

    invoke-static {p1, p4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V
    .locals 4

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 p3, 0x3e8

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, p3, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p4, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v1, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p4

    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    sub-float/2addr v1, p4

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p3, p3

    sub-float/2addr v1, p3

    div-float/2addr v1, v0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget p2, p4, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p3, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p4

    div-float/2addr p3, v0

    const/4 p4, -0x1

    :goto_0
    const/4 v1, 0x1

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisSpacing:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisDiameter:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p4

    int-to-float v1, v1

    add-float/2addr v1, p2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget-object v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, p3, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    add-float/2addr v1, v0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    add-float/2addr v1, v0

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeWidth:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPointWithNumber(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/RectF;)V
    .locals 4

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p3, Landroid/graphics/RectF;->right:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, p3, v1}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    int-to-float v2, v2

    invoke-virtual {v1, p3, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/16 v1, 0xff

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params \'number\' must be String or Integer!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private drawPointWithStroke(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/RectF;)V
    .locals 6

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeWidth:I

    mul-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iput v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    sub-float/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    int-to-float v4, v4

    invoke-virtual {v3, p3, v4}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mStrokeWidth:I

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v3

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/16 v1, 0xff

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params \'number\' must be String or Integer!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;ILandroid/graphics/RectF;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p3, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v2, p4, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    sub-float/2addr v3, p3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget p3, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p4

    iget p4, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iget p4, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget p2, p4, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v1

    iget p3, p4, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p4

    div-float/2addr p3, v1

    const/4 p4, -0x1

    :goto_0
    const/4 v0, 0x1

    if-gt p4, v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisSpacing:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisDiameter:I

    add-int/2addr v0, v2

    mul-int/2addr v0, p4

    int-to-float v0, v0

    add-float/2addr v0, p2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, p3, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getBgHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    return p0
.end method

.method private getBgWidth(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 2
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 3
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mLargeWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 4
    :cond_2
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getBgWidth(Ljava/lang/String;)I
    .locals 2

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    return p0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getBgWidth(I)I

    move-result p0

    return p0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 10
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 11
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 13
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 15
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mLargeWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 16
    :cond_4
    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getNaviBgWidth(I)I
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mNaviSmallWidth:I

    return p0

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 2
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    return p0

    .line 3
    :cond_1
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    return p0
.end method

.method private getNaviBgWidth(Ljava/lang/String;)I
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 6
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mNaviSmallWidth:I

    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 8
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    return p0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 10
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mLargeWidth:I

    return p0

    .line 11
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    return p0
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public drawPointWithFadeNumber(Landroid/graphics/Canvas;IIIILandroid/graphics/RectF;)V
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, p6, v1}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-le p3, p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawNumber(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public drawRedPoint(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawPointWithStroke(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawPointStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawPointWithNumber(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawPointOnly(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public getViewHeight(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getBgHeight()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotDiameter:I

    return p0
.end method

.method public getViewWidth(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getNaviBgWidth(I)I

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getBgWidth(I)I

    move-result p0

    return p0

    .line 3
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotDiameter:I

    return p0
.end method

.method public getViewWidth(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getNaviBgWidth(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getBgWidth(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6
    :cond_2
    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotDiameter:I

    return p0
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgColor:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mCornerRadius:I

    return-void
.end method

.method public setDotDiameter(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mDotDiameter:I

    return-void
.end method

.method public setEllipsisDiameter(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mEllipsisDiameter:I

    return-void
.end method

.method public setLargeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mLargeWidth:I

    return-void
.end method

.method public setMediumWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mMediumWidth:I

    return-void
.end method

.method public setSmallWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mSmallWidth:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextColor:I

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mTextSize:I

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->mViewHeight:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setCornerRadius(I)V

    return-void
.end method
