.class public Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLOR_DDDDDD:I = -0x222223

.field private static final ZERO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDarkFilter()Landroid/graphics/ColorFilter;
    .locals 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x222223

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeDark(I)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lu/d;->k(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    aput v3, v0, v1

    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static makeDarkLimit(IF)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lu/d;->k(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aget v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    aput p1, v0, v1

    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static makeDrawableDark(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->getDarkFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public static makeImageViewDark(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->getDarkFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public static makeLight(I)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lu/d;->k(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    aput v3, v0, v1

    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static setForceDarkAllow(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method
