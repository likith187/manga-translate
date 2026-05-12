.class public Lcom/coui/appcompat/textutil/COUIChangeTextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DRAGONFLY_TINY_SCREEN_DENSITY:I = 0x128

.field private static final FLAMINGO_TINY_SCREEN_DENSITY:I = 0x12c

.field public static final G1:I = 0x1

.field public static final G2:I = 0x2

.field public static final G3:I = 0x3

.field public static final G4:I = 0x4

.field public static final G5:I = 0x5

.field public static final H1:F = 0.9f

.field public static final H2:F = 1.0f

.field public static final H3:F = 1.15f

.field public static final H4:F = 1.35f

.field public static final H5:F = 1.6f

.field public static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field public static final SCALE_LEVEL:[F

.field private static final TAG:Ljava/lang/String; = "COUIChangeTextUtil"

.field private static final TINY_SCREEN_FONT_SCALE:F = 1.0f

.field private static final TINY_SCREEN_SMALLEST_SCREEN_WIDTH_DP:I = 0xd2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->SCALE_LEVEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3faccccd    # 1.35f
        0x3fcccccd    # 1.6f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V
    .locals 2

    if-eqz p0, :cond_2

    .line 4
    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    const-string p1, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    :goto_1
    return-void
.end method

.method public static adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    const-string p1, "sans-serif-medium"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static adaptFontSize(Landroid/widget/TextView;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v4, 0x12c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x128

    if-eq v3, v4, :cond_0

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0xd2

    if-gt v1, v3, :cond_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {v0, v2, p1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static binarySearchForOptimalTextViewWidth(Landroid/widget/TextView;IIII)I
    .locals 5

    const-string v0, "COUIChangeTextUtil"

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    const-string p0, "Line count should be greater than 0!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-ltz p2, :cond_8

    if-gez p3, :cond_1

    goto :goto_2

    :cond_1
    if-le p2, p3, :cond_2

    const-string p0, "Max width should be greater than min width!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-gez p4, :cond_3

    const-string p0, "Padding should be greater than 0!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    sub-int/2addr p2, p4

    sub-int/2addr p3, p4

    if-gez p2, :cond_4

    const-string p0, "Min width should be greater than horizontal padding!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    if-gt p2, p3, :cond_7

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->measureTextLineCount(Landroid/widget/TextView;II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->measureTextLineCount(Landroid/widget/TextView;II)I

    move-result v4

    if-gt v2, p1, :cond_5

    if-le v4, p1, :cond_5

    goto :goto_1

    :cond_5
    if-gt v4, p1, :cond_6

    move p3, v3

    goto :goto_0

    :cond_6
    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    add-int/2addr v0, p4

    return v0

    :cond_8
    :goto_2
    const-string p0, "Width should be greater than 0!"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getDpG2Size(FF)F
    .locals 1

    const v0, 0x3f933333    # 1.15f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    return p0

    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method

.method public static getG3FontSize(FF)F
    .locals 2

    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    return p0

    :cond_0
    const p0, 0x3fcccccd    # 1.6f

    cmpg-float p0, p1, p0

    const p1, 0x3f933333    # 1.15f

    if-gez p0, :cond_1

    mul-float/2addr v0, p1

    return v0

    :cond_1
    mul-float/2addr v0, p1

    return v0
.end method

.method private static getSuitableFontScale(FI)F
    .locals 4

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    return p0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length v2, v1

    if-le p1, v2, :cond_1

    array-length p1, v1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f933333    # 1.15f

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_2

    return p1

    :cond_2
    return p0

    :cond_3
    cmpg-float p1, p0, v3

    if-gez p1, :cond_4

    return v2

    :cond_4
    const p1, 0x3fcccccd    # 1.6f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5

    return v3

    :cond_5
    const p0, 0x3faccccd    # 1.35f

    return p0

    :cond_6
    cmpg-float p0, p0, v3

    if-gez p0, :cond_7

    return v2

    :cond_7
    return v3
.end method

.method public static getSuitableFontSize(FFI)F
    .locals 4

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    return p0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length v2, v1

    if-le p2, v2, :cond_1

    array-length p2, v1

    :cond_1
    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f933333    # 1.15f

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    add-int/lit8 p2, p2, -0x1

    aget p2, v1, p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    mul-float/2addr p0, p2

    return p0

    :cond_2
    mul-float/2addr p0, p1

    return p0

    :cond_3
    cmpg-float p2, p1, v3

    if-gez p2, :cond_4

    mul-float/2addr p0, v2

    return p0

    :cond_4
    const p2, 0x3fcccccd    # 1.6f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    mul-float/2addr p0, v3

    return p0

    :cond_5
    const p1, 0x3faccccd    # 1.35f

    mul-float/2addr p0, p1

    return p0

    :cond_6
    cmpg-float p1, p1, v3

    if-gez p1, :cond_7

    mul-float/2addr p0, v2

    return p0

    :cond_7
    mul-float/2addr p0, v3

    return p0
.end method

.method public static measureTextLineCount(Landroid/widget/TextView;II)I
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "COUIChangeTextUtil"

    const-string p1, "Illegal width or padding!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
