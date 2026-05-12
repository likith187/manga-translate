.class public final Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

.field private static final h:Z


# instance fields
.field private final a:[I

.field private b:I

.field private c:I

.field private d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

.field private e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

.field private f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->Companion:Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem$Companion;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LayoutGridSystem"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    new-instance v0, Lcom/coui/component/responsiveui/layoutgrid/AccumulationCalculator;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/layoutgrid/AccumulationCalculator;-><init>()V

    iput-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V

    return-void
.end method

.method private final a(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
    .locals 11

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_4

    :cond_0
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedLandPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    const/16 v0, 0x8

    goto :goto_4

    :cond_5
    const/16 v0, 0xc

    :goto_4
    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    move v5, v4

    :goto_5
    if-ge v5, v2, :cond_6

    new-array v6, v0, [I

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-boolean v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->g:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-static {v2, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    array-length v5, v1

    new-array v6, v5, [Lcom/coui/component/responsiveui/unit/Dp;

    move v7, v4

    :goto_6
    if-ge v7, v5, :cond_7

    iget-object v8, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    aget v8, v8, v7

    invoke-static {v8, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    iget v7, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    invoke-static {v7, p1}, Lcom/coui/component/responsiveui/unit/DpKt;->pixel2Dp(ILandroid/content/Context;)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v7

    new-array v8, v5, [[Lcom/coui/component/responsiveui/unit/Dp;

    move v9, v4

    :goto_7
    if-ge v9, v5, :cond_8

    aget-object v10, v6, v9

    invoke-interface {p3, v2, v10, v7, v0}, Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;->calculate(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;I)[Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    array-length p3, v1

    move v2, v4

    :goto_8
    if-ge v2, p3, :cond_b

    aget-object v5, v1, v2

    move v6, v4

    :goto_9
    if-ge v6, v0, :cond_9

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v8, v9

    aget-object v9, v9, v6

    invoke-virtual {v9, p1}, Lcom/coui/component/responsiveui/unit/Dp;->toPixel(Landroid/content/Context;)F

    move-result v9

    float-to-int v9, v9

    aput v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    array-length p1, v1

    :goto_a
    if-ge v4, p1, :cond_b

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget v6, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    iget-object v7, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v7, v2

    iget v7, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    invoke-interface {p3, v6, v2, v7, v0}, Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;->calculate(IIII)[I

    move-result-object v2

    aput-object v2, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    new-instance p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    iget p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-direct {p1, v0, v3, p3, v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;-><init>(I[[II[I)V

    sget-boolean p3, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->h:Z

    if-eqz p3, :cond_c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[calculateLayoutGrid] widthSizeClass: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", layoutGridWindowWidth: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LayoutGridSystem"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object p1
.end method


# virtual methods
.method public allColumnWidth()[[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_0

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object p0

    return-object p0
.end method

.method public allMargin()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_0

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getMargin()[I

    move-result-object p0

    return-object p0
.end method

.method public chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;
    .locals 1

    const-string v0, "marginType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    return-object p0
.end method

.method public columnCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_0

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public columnWidth()[I
    .locals 1

    iget-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v0, :cond_0

    const-string v0, "layoutGrid"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object v0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public gutter()I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_0

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getGutter()I

    move-result p0

    return p0
.end method

.method public layoutGridWindowWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    return p0
.end method

.method public margin()I
    .locals 1

    iget-object v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v0, :cond_0

    const-string v0, "layoutGrid"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getMargin()[I

    move-result-object v0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public final rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowSizeClass;I)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowSizeClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->values()[Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object v7

    sget-object v8, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v4

    const/4 v8, 0x2

    aget v4, v4, v8

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->resId()[I

    move-result-object v4

    const/4 v8, 0x1

    aget v4, v4, v8

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_1
    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object v0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/responsiveui/R$dimen;->layout_grid_gutter_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/responsiveui/R$dimen;->layout_grid_gutter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->b:I

    iput p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {p2}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p2

    iget-object p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->f:Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->a(Landroid/content/Context;Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;Lcom/coui/component/responsiveui/layoutgrid/IColumnsWidthCalculator;)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout-grid width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current margin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->margin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", all margin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->allMargin()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_0

    const-string p0, "layoutGrid"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public width(II)I
    .locals 5

    invoke-static {p1, p2}, Lb9/d;->e(II)I

    move-result v0

    invoke-static {p1, p2}, Lb9/d;->c(II)I

    move-result p1

    if-ltz v0, :cond_6

    iget-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    const/4 v1, 0x0

    const-string v2, "layoutGrid"

    if-nez p2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p2}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    sub-int p2, p1, v0

    iget-object v3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getGutter()I

    move-result v3

    mul-int/2addr p2, v3

    if-gt v0, p1, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v3}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnsWidth()[[I

    move-result-object v3

    iget-object v4, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->e:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, v0

    add-int/2addr p2, v3

    if-eq v0, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "column index must be less than "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGridSystem;->d:Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->getColumnCount()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column index must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
