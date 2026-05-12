.class public final Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COUICollapseTextHelper"
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field public static final DEFAULT_HINT_LINES:I = 0x1

.field public static final MAX_HINT_LINES:I = 0x3

.field private static final POINT_001:F = 0.001f

.field private static final SCALE_MY:F = 1.3f

.field private static final TAG:Ljava/lang/String; = "COUICollapseTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mHintLines:I

.field private mHintPaddingStart:F

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextToDrawList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private final mTmpPaint:Landroid/text/TextPaint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 12

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    iget-boolean v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    invoke-static {v4, v5}, Landroidx/core/view/j;->b(II)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    const/16 v6, 0x50

    const/16 v7, 0x30

    const v8, 0x3fa66666    # 1.3f

    const-string v9, "my"

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-le v5, v11, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    mul-float/2addr v9, v8

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    :cond_2
    and-int/lit8 v5, v4, 0x70

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v5, v8

    div-float/2addr v5, v10

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    sub-float/2addr v5, v8

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    iput v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    mul-float/2addr v9, v8

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v8, 0x5

    if-eq v4, v11, :cond_7

    if-eq v4, v8, :cond_6

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v10

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    :goto_2
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :cond_8
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    invoke-static {v1, v3}, Landroidx/core/view/j;->b(II)I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    if-le v3, v11, :cond_9

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    :cond_9
    and-int/lit8 v3, v1, 0x70

    if-eq v3, v7, :cond_b

    if-eq v3, v6, :cond_a

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    :goto_3
    and-int/2addr v1, v5

    if-eq v1, v11, :cond_d

    if-eq v1, v8, :cond_c

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v10

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    :goto_4
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->clearTexture()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateOffsets(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result p0

    return p0
.end method

.method private calculateOffsets(F)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->interpolateBounds(F)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawX:F

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawY:F

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setInterpolatedTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->blendColors(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    goto :goto_2

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isClose(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v4

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    :goto_0
    iget p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    div-float/2addr p1, v4

    mul-float v4, v1, p1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_3

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_5

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    if-eqz v1, :cond_a

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v4

    :goto_5
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    sub-float v3, v0, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    :cond_8
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    if-le v1, v2, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    sub-float v6, v0, v6

    invoke-static {v2, v3, v6, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    add-int/lit8 v1, v1, -0x1

    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setTextToDrawList(Ljava/lang/CharSequence;F)V

    :cond_a
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mIsRtl:Z

    return-void
.end method

.method private clearTexture()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private constrain(FFF)F
    .locals 0

    .line 1
    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p3

    if-lez p0, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method private constrain(III)I
    .locals 0

    .line 2
    if-ge p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    move p1, p3

    :cond_1
    :goto_0
    return p1
.end method

.method private ensureExpandedTexture()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextureDescent:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextureDescent:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCurrentExpandedTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private interpolateBounds(F)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRtlMode()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lerp(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private onBoundsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mDrawTitle:Z

    return-void
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateUsingTextSize(F)V

    sget-boolean p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->ensureExpandedTexture()V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private setTextToDrawList(Ljava/lang/CharSequence;F)V
    .locals 8

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v2, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    sub-int/2addr v4, v0

    if-eq v1, v4, :cond_2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v6, v7, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_9

    iget v11, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawX:F

    iget v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCurrentDrawY:F

    iget-boolean v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mUseTexture:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget v5, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextureAscent:F

    iget v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v5, v6

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    iget v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v5

    :cond_2
    move v12, v1

    iget v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v1, v11, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_4
    iget v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    if-eq v1, v4, :cond_7

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_7

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    move v13, v1

    goto :goto_2

    :cond_5
    move v13, v3

    :goto_2
    move v14, v3

    :goto_3
    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_a

    mul-int v1, v13, v14

    iget-object v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    sub-float v3, v11, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    int-to-float v1, v1

    add-float v6, v12, v1

    iget-object v7, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v3, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    add-float v5, v11, v3

    int-to-float v1, v1

    add-float v6, v12, v1

    iget-object v7, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    sub-float/2addr v11, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v5, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v2, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    add-float v4, v11, v2

    iget-object v6, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v5, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    const-string v1, " "

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1, v10, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_5
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCollapsedBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateCollapsedTextWidth()F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCollapsedTextGravity()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    return p0
.end method

.method public getCollapsedTextHeight()F
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    neg-float p0, p0

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr p0, v0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method getCollapsedTextSize()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    return p0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getExpandedBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getExpandedFraction()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    return p0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedTextGravity()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    return p0
.end method

.method getExpandedTextSize()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    return p0
.end method

.method public getExpansionFraction()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    return p0
.end method

.method public getHintHeight()F
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3fa66666    # 1.3f

    mul-float/2addr v0, p0

    :cond_0
    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recalculate()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateBaseOffsets()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->onBoundsChanged()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCollapsedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapseTextHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextGravity:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mCollapsedTextSize:F

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mBoundsChanged:Z

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->onBoundsChanged()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExpandedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapseTextHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextGravity:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedTextSize:F

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->constrain(FFF)F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mExpandedFraction:F

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setHintLines(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintLines:I

    return-void
.end method

.method public setHintPaddingStart(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mHintPaddingStart:F

    :cond_0
    return-void
.end method

.method public setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mState:[I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mText:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextToDrawList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->clearTexture()V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->mTmpPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    return-void
.end method
