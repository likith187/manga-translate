.class public Lcom/coui/appcompat/button/DescButtonTextSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescPaint:Landroid/text/TextPaint;

.field private mDescText:Ljava/lang/String;

.field private mDescTextWidth:I

.field private mHeight:I

.field private mIsRtl:Z

.field private mMaxWidth:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:I

.field private mTopMargin:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Paint;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    iput-object p3, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    iput p4, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mMaxWidth:I

    if-gez p5, :cond_0

    const/4 p5, 0x0

    :cond_0
    iput p5, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mWidth:I

    iput-object p1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mContext:Landroid/content/Context;

    iput p6, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mHeight:I

    iput p7, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextColor:I

    iput-boolean p9, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mIsRtl:Z

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p8}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/coui/appcompat/button/DescButtonTextSpan;->initPaint()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/DescButtonTextSpan;->handleSubString()V

    return-void
.end method

.method private getEmptyWidth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getStartText()I
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    iget p0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getSubStringByWidth(Ljava/lang/String;ILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, p3, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    iget p0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handleSubString()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    iget v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mMaxWidth:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/button/DescButtonTextSpan;->getSubStringByWidth(Ljava/lang/String;ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    iget v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mMaxWidth:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/button/DescButtonTextSpan;->getSubStringByWidth(Ljava/lang/String;ILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    :cond_1
    return-void
.end method

.method private initPaint()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_btn_desc_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_btn_desc_sub_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v1

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v2

    invoke-static {v2, v0, v3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    iget-object v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_btn_desc_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTopMargin:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    iget-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p6, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p6

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    add-int/2addr p4, p2

    iget p8, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTopMargin:I

    add-int/2addr p4, p8

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p7, p4

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p3, p7

    add-int/2addr p3, p2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p3, p2

    iget p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTopMargin:I

    add-int/2addr p3, p2

    invoke-direct {p0}, Lcom/coui/appcompat/button/DescButtonTextSpan;->getEmptyWidth()I

    move-result p2

    invoke-direct {p0}, Lcom/coui/appcompat/button/DescButtonTextSpan;->getStartText()I

    move-result p4

    iget-boolean p6, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mIsRtl:Z

    if-eqz p6, :cond_0

    neg-int p2, p2

    :cond_0
    int-to-float p2, p2

    sub-float/2addr p5, p2

    iget p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextWidth:I

    iget p6, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescTextWidth:I

    if-le p2, p6, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    int-to-float p6, p7

    iget-object p7, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p5, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    int-to-float p4, p4

    add-float/2addr p5, p4

    int-to-float p3, p3

    iget-object p0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p5, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mText:Ljava/lang/String;

    int-to-float p4, p4

    add-float/2addr p4, p5

    int-to-float p6, p7

    iget-object p7, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p4, p6, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescText:Ljava/lang/String;

    int-to-float p3, p3

    iget-object p0, p0, Lcom/coui/appcompat/button/DescButtonTextSpan;->mDescPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p5, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/button/DescButtonTextSpan;->getWidth()I

    move-result p0

    return p0
.end method
