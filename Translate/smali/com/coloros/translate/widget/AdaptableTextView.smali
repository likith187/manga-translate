.class public final Lcom/coloros/translate/widget/AdaptableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private final c:Ln8/j;

.field private f:Landroid/text/TextPaint;

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/widget/AdaptableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/widget/AdaptableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p1, Lcom/coloros/translate/widget/AdaptableTextView$a;->INSTANCE:Lcom/coloros/translate/widget/AdaptableTextView$a;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->c:Ln8/j;

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const-string p2, "getPaint(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    iput-object p0, p1, Landroid/text/TextPaint;->drawableState:[I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/widget/AdaptableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Ljava/lang/String;FLandroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->i:F

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/r;->i(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlin/text/a;->c(C)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlin/text/a;->c(C)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    :cond_2
    iget v2, p0, Lcom/coloros/translate/widget/AdaptableTextView;->h:I

    if-lez v2, :cond_3

    iget v3, p0, Lcom/coloros/translate/widget/AdaptableTextView;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    int-to-float p2, v2

    div-float/2addr v3, p2

    iput v3, p0, Lcom/coloros/translate/widget/AdaptableTextView;->i:F

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v2, v1

    :goto_1
    if-ge v0, p2, :cond_7

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lkotlin/text/a;->c(C)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    iget-object v5, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_4

    iget v3, p0, Lcom/coloros/translate/widget/AdaptableTextView;->i:F

    cmpl-float v4, v3, v1

    if-lez v4, :cond_4

    add-float/2addr v2, v3

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/r;->i(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/widget/AdaptableTextView;->getNewContent()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    iget-object v5, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private final b(Ljava/lang/String;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private final getNewContent()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/widget/AdaptableTextView;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->b:I

    iget v1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/coloros/translate/widget/AdaptableTextView;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v2, -0x1

    if-ne v3, v7, :cond_0

    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    iget-object v5, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v0, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-static {v7, v4, v5, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v4

    invoke-direct {p0, v6, v4, p1}, Lcom/coloros/translate/widget/AdaptableTextView;->a(Ljava/lang/String;FLandroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    iget-object v5, p0, Lcom/coloros/translate/widget/AdaptableTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v0, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    iget v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/coloros/translate/widget/AdaptableTextView;->a:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
