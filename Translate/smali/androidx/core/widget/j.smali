.class public abstract Landroidx/core/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/j$d;,
        Landroidx/core/widget/j$b;,
        Landroidx/core/widget/j$c;,
        Landroidx/core/widget/j$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static c(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(Landroid/widget/TextView;)I
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    return p0
.end method

.method private static e(Landroid/text/TextDirectionHeuristic;)I
    .locals 4

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    sget-object v3, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v3, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v3, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    sget-object v3, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v3, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v3, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    if-ne p0, v2, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    if-ne p0, v0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    return v1
.end method

.method public static f(Landroid/widget/TextView;)Lb0/b$a;
    .locals 1

    new-instance v0, Lb0/b$a;

    invoke-static {p0}, Landroidx/core/widget/j$b;->a(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Lb0/b$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0
.end method

.method public static g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/core/widget/j$a;->b(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0}, Lc0/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/core/widget/j$a;->c(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static i(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static j(Landroid/widget/TextView;I)V
    .locals 0

    invoke-static {p1}, Lc0/h;->c(I)I

    invoke-static {p0, p1}, Landroidx/core/widget/j$b;->b(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static k(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, Lc0/h;->c(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static l(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, Lc0/h;->c(I)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static m(Landroid/widget/TextView;IF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/core/widget/j$c;->a(Landroid/widget/TextView;IF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/widget/j;->l(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public static n(Landroid/widget/TextView;Lb0/b;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static o(Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public static p(Landroid/widget/TextView;Lb0/b$a;)V
    .locals 2

    invoke-virtual {p1}, Lb0/b$a;->d()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/j;->e(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Lb0/b$a;->e()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p1}, Lb0/b$a;->b()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/widget/j$a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p1}, Lb0/b$a;->c()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/widget/j$a;->d(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static q(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1

    instance-of v0, p0, Landroidx/core/widget/j$d;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/widget/j$d;

    invoke-virtual {p0}, Landroidx/core/widget/j$d;->a()Landroid/view/ActionMode$Callback;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static r(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 0

    return-object p1
.end method
