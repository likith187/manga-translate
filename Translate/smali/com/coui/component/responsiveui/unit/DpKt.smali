.class public final Lcom/coui/component/responsiveui/unit/DpKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getDp(I)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    return-object v0
.end method

.method public static final pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    invoke-direct {v0, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    return-object v0
.end method
