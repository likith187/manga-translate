.class abstract Lj8/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a(Landroid/content/Context;Lj8/m0;Lj8/n0$a;)Landroid/widget/FrameLayout;
    .locals 8

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lj8/m0;->g:Lorg/opencv/core/Mat;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p1, Lj8/m0;->i:[I

    aget v5, v1, v4

    aget v6, v1, v2

    aget v1, v1, v3

    invoke-static {v5, v6, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p1, Lj8/m0;->h:[I

    if-eqz v5, :cond_1

    aget v6, v5, v4

    aget v7, v5, v2

    aget v5, v5, v3

    invoke-static {v6, v7, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v5, p1, Lj8/m0;->n:Z

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p1, Lj8/m0;->k:Ljava/lang/Float;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, p0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    iget-object p0, p2, Lj8/n0$a;->i:Lj8/c1;

    iget v5, p0, Lj8/c1;->g:I

    iget p0, p0, Lj8/c1;->h:I

    invoke-virtual {v1, v5, p0, v3, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :goto_0
    iget-object p0, p1, Lj8/m0;->l:Landroid/graphics/Typeface;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setTextAlignment(I)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p0, p1, Lj8/m0;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "textview"

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p2, Lj8/n0$a;->i:Lj8/c1;

    iget v2, p2, Lj8/c1;->b:I

    iget p2, p2, Lj8/c1;->f:I

    add-int/2addr p2, v2

    div-int/2addr v2, v3

    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p1, Lj8/m0;->f:Lj8/m0$a;

    iget-object p0, p0, Lj8/m0$a;->c:Ljava/util/List;

    invoke-static {p0}, Lk8/e;->t(Ljava/util/List;)Laa/h;

    move-result-object p0

    iget-wide p1, p0, Laa/h;->a:D

    double-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-wide v1, p0, Laa/h;->b:D

    double-to-int v1, v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-wide p1, p0, Laa/h;->a:D

    double-to-int p1, p1

    iget-wide v1, p0, Laa/h;->b:D

    double-to-int p0, v1

    invoke-virtual {v0, v4, v4, p1, p0}, Landroid/view/View;->layout(IIII)V

    return-object v0
.end method
