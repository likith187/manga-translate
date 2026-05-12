.class public Lcom/coui/appcompat/grid/COUIPercentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CARD_LIST_FLAG:I = 0x2

.field private static final LARGE_SCRREN_GRID_SIZE:I = 0xc

.field private static final LARGE_SCRREN_WIDTH_LIMIT:I = 0x348

.field private static final MEDIUM_SCRREN_GRID_SIZE:I = 0x8

.field private static final MEDIUM_SCRREN_WIDTH_LIMIT:I = 0x258

.field private static final PADDING_COUNT:I = 0x2

.field private static final PREFERENCE_FLAG:I = 0x1

.field private static final SMALL_SCRREN_GRID_SIZE:I = 0x4

.field private static final SMALL_SCRREN_WIDTH_LIMIT:I = 0x1e0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateWidth(FIIILandroid/content/Context;)F
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-lez p1, :cond_5

    if-le p1, p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    if-ne p3, v1, :cond_3

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/support/grid/R$dimen;->grid_guide_column_card_margin_start:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Lcom/support/grid/R$dimen;->grid_guide_column_default_margin_start:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    :goto_2
    mul-int/2addr p3, v1

    int-to-float v1, p3

    sub-float/2addr p0, v1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/grid/R$dimen;->grid_guide_column_gap:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr p0, v1

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p2, p1

    mul-float/2addr p0, p2

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/grid/R$dimen;->grid_guide_column_gap:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr p2, p1

    int-to-float p1, p2

    add-float/2addr p0, p1

    if-eqz v3, :cond_4

    move v0, p3

    :cond_4
    int-to-float p1, v0

    add-float/2addr p0, p1

    :cond_5
    :goto_3
    return p0
.end method

.method public static getTotalGridSize(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x258

    const/4 v1, 0x4

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x348

    if-ge p0, v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    if-le p0, v0, :cond_2

    const/16 p0, 0xc

    return p0

    :cond_2
    return v1
.end method
