.class public final Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private final a:Ln8/j;

.field private final b:Ln8/j;

.field private c:Z

.field private final f:Ln8/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$c;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->a:Ln8/j;

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$b;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$b;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->b:Ln8/j;

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView$a;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->f:Ln8/j;

    return-void
.end method

.method private final c()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->f:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getMBackgroundPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->c:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v8, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-ne v9, v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v2, v1, v4

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v2, v1, v4

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v5, v1, v7

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    if-ne v9, v1, :cond_2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v5, v1, v7

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setTextBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->c:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/TextBackgroundTextView;->getMBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
