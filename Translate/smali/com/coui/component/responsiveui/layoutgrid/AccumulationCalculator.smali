.class public final Lcom/coui/component/responsiveui/layoutgrid/AccumulationCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(IIII)[I
    .locals 6

    .line 7
    new-array p0, p4, [I

    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p3

    int-to-double v0, v0

    int-to-double p2, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v2

    add-double v2, v0, p2

    int-to-double v4, p1

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    sub-double/2addr v4, p2

    sub-double/2addr v4, v0

    int-to-double p1, p4

    div-double/2addr v4, p1

    .line 8
    invoke-static {p0}, Lkotlin/collections/i;->E([I)I

    move-result p1

    if-ltz p1, :cond_1

    const-wide/16 p2, 0x0

    const/4 p4, 0x0

    :goto_0
    add-int/lit8 v0, p4, 0x1

    int-to-double v1, v0

    mul-double/2addr v1, v4

    sub-double/2addr v1, p2

    .line 9
    invoke-static {v1, v2}, Ly8/a;->a(D)I

    move-result v1

    .line 10
    aput v1, p0, p4

    int-to-double v1, v1

    add-double/2addr p2, v1

    if-eq p4, p1, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public calculate(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;I)[Lcom/coui/component/responsiveui/unit/Dp;
    .locals 8

    const-string p0, "layoutGridWidth"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "margin"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "gutter"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p0, p4, [Lcom/coui/component/responsiveui/unit/Dp;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    new-instance v2, Lcom/coui/component/responsiveui/unit/Dp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p4, -0x1

    int-to-float v1, v1

    .line 2
    invoke-virtual {p3}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr p1, v6

    sub-double/2addr v2, p1

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-double p1, v1

    sub-double/2addr v2, p1

    int-to-double p1, p4

    div-double/2addr v2, p1

    .line 4
    invoke-static {p0}, Lkotlin/collections/i;->G([Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    const-wide/16 p2, 0x0

    :goto_1
    add-int/lit8 p4, v0, 0x1

    int-to-double v4, p4

    mul-double/2addr v4, v2

    sub-double/2addr v4, p2

    .line 5
    invoke-static {v4, v5}, Ly8/a;->a(D)I

    move-result v1

    .line 6
    new-instance v4, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float v5, v1

    invoke-direct {v4, v5}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    aput-object v4, p0, v0

    int-to-double v4, v1

    add-double/2addr p2, v4

    if-eq v0, p1, :cond_2

    move v0, p4

    goto :goto_1

    :cond_2
    return-object p0
.end method
