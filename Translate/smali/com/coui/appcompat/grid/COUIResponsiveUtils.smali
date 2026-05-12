.class public Lcom/coui/appcompat/grid/COUIResponsiveUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTO_GRID_NUMBER:I = -0x1

.field private static final CARD_LIST_FLAG:I = 0x2

.field private static DEBUG:Z = false

.field private static final DEFAULT_COLUMNS_FOR_CHILD:I = 0x8

.field private static final DEFAULT_COLUMNS_FOR_COMPAT:I = 0x4

.field private static final DEFAULT_COLUMNS_FOR_EXPANDED:I = 0x8

.field private static final DEFAULT_COLUMNS_FOR_MEDIUM:I = 0x6

.field private static final DEFAULT_FLAG:I = 0x0

.field private static final LARGE_PADDING:I = 0x0

.field private static final LIST_FLAG:I = 0x1

.field private static final MARGIN_LARGE_DP_IN_LARGE_SCREEN:I = 0x28

.field private static final MARGIN_LARGE_DP_IN_NON_LARGE_SCREEN:I = 0x18

.field private static final PADDING_COUNT:I = 0x2

.field private static final PADDING_MODE:I = 0x0

.field private static final REMEASURE_MODE:I = 0x1

.field private static final SMALL_PADDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIResponsiveUtils"

.field private static sCouiFoldType:I

.field private static final sPoint:Landroid/graphics/Point;

.field private static final sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sPoint:Landroid/graphics/Point;

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIResponsiveUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    const/4 v0, -0x1

    sput v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sCouiFoldType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePadding(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ[F)V
    .locals 5

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object p0

    sub-int p1, v2, p1

    div-int/lit8 p1, p1, 0x2

    if-eqz p3, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    int-to-float p2, v0

    const/4 p3, 0x1

    aput p2, p4, p3

    const/4 v0, 0x0

    aput p2, p4, v0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v3, p4, v0

    aget v4, p0, p2

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p4, v0

    aget v3, p4, p3

    sub-int v4, v2, p2

    sub-int/2addr v4, p3

    aget v4, p0, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    aget p0, p4, v0

    mul-int/2addr p1, v1

    int-to-float p1, p1

    add-float/2addr p0, p1

    aput p0, p4, v0

    aget p0, p4, p3

    add-float/2addr p0, p1

    aput p0, p4, p3

    return-void
.end method

.method public static calculateWidth(FFIIILandroid/content/Context;)F
    .locals 9

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 9
    sget-object p4, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p3, v0, :cond_2

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v0

    .line 10
    :goto_2
    new-instance v4, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    float-to-int v5, p0

    float-to-int p1, p1

    invoke-direct {v4, p5, v5, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v4, p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p4

    .line 12
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v4

    .line 13
    sget-boolean v5, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    const-string v6, " gridNumber = "

    const-string v7, "COUIResponsiveUtils"

    if-eqz v5, :cond_3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateWidth: responsiveUIProxy.columnCount() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " screenSize = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->calculateGridWidth(I)I

    move-result v4

    int-to-float v4, v4

    .line 17
    sget-boolean v5, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateWidth = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " getColumnsCount = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " width = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " margin = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " screenWidth = "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " columnWidth = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnWidth()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " typeFlag = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "isAddPadding = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v3, :cond_6

    if-ne p3, v0, :cond_5

    .line 22
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/responsiveui/R$dimen;->grid_list_special_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/responsiveui/R$dimen;->grid_card_special_padding:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_3

    :cond_6
    move p0, v2

    :goto_3
    if-eqz v3, :cond_7

    move v2, p0

    :cond_7
    mul-int/2addr v2, v1

    int-to-float p0, v2

    add-float/2addr v4, p0

    return v4
.end method

.method public static calculateWidth(FIIILandroid/content/Context;)F
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    instance-of v0, p4, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->getScreenPhysicalHeight(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v2, v0

    move v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FFIIILandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public static calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v0

    sub-int/2addr v0, p1

    .line 2
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result p0

    int-to-float p0, p0

    .line 4
    sget-boolean p1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateWidth: width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIResponsiveUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static getChildLayerDefaultTypeMargin(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    :goto_0
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getChildLayerDefaultTypeMargin(Landroid/content/Context;II)I
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x42200000    # 40.0f

    :goto_0
    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x41c00000    # 24.0f

    goto :goto_0
.end method

.method public static getDefaultGridNumbers(Lcom/coui/component/responsiveui/ResponsiveUIModel;)I
    .locals 2

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedLandPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x6

    return p0
.end method

.method public static getScreenPhysicalHeight(Landroid/app/Activity;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public static getScreenPhysicalWidth(Landroid/app/Activity;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static isActivityEmbedded(Landroid/content/Context;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static isLargePadWindow(Landroid/content/Context;II)Z
    .locals 2

    sget v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sCouiFoldType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/coui/appcompat/dialog/AppFeatureUtil;->isFoldDisplayFeature(Landroid/content/Context;)Z

    move-result p0

    sput p0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sCouiFoldType:I

    :cond_0
    invoke-static {p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreenDp(II)Z

    move-result p0

    invoke-static {p2, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreenDp(II)Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    sget p0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sCouiFoldType:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isLargeScreen(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreen(Landroid/content/Context;II)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Landroid/content/Context;II)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreenDp(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreenDp(II)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance p0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1, p0}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreenDp(Landroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediumScreen(Landroid/content/Context;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediumScreen(Landroid/content/Context;II)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Landroid/content/Context;II)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    .line 3
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedLandPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMediumScreenDp(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediumScreenDp(II)Z
    .locals 2

    .line 4
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance p0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1, p0}, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass$Companion;->fromWidthAndHeight(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumLandScape:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->MediumSquare:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;->ExpandedPortrait:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMediumScreenDp(Landroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmallScreen(Landroid/content/Context;I)Z
    .locals 1

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Landroid/content/Context;I)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmallScreenDp(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p0, p0

    invoke-direct {v1, p0}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass$Companion;->fromWidth(Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSmallScreenDp(Landroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    new-instance v0, Lcom/coui/component/responsiveui/unit/Dp;

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    new-instance v1, Lcom/coui/component/responsiveui/unit/Dp;

    invoke-direct {v1, p1}, Lcom/coui/component/responsiveui/unit/Dp;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p0

    sget-object p1, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static measureChildWithPercent(Landroid/content/Context;Landroid/view/View;IIIII)V
    .locals 0

    if-eqz p5, :cond_2

    if-nez p6, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p5, p3, p4, p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p6, p0

    div-int/lit8 p6, p6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    if-ne p0, p6, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    if-eq p0, p6, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, p6, p0, p6, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p5, p3, p4, p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(FIIILandroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    iput p0, p6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static measureLayout(Landroid/view/View;IIIIIIIIIZZ)I
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 56
    invoke-static/range {v0 .. v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->measureLayout(Landroid/view/View;IIIIIIIIZZ)I

    move-result v0

    return v0
.end method

.method public static measureLayout(Landroid/view/View;IIIIIIIIZZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p9

    move/from16 v5, p10

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 1
    sget-object v7, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    .line 2
    :goto_0
    sget-object v8, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v1, v6, :cond_2

    if-ne v1, v9, :cond_1

    goto :goto_1

    :cond_1
    move v11, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v6

    .line 3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v12

    move/from16 v13, p8

    .line 4
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 7
    const-string v10, "COUIResponsiveUtils"

    if-lez v15, :cond_23

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v14, v9, :cond_3

    const/high16 v9, -0x80000000

    if-ne v14, v9, :cond_23

    .line 8
    :cond_3
    sget-boolean v9, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\npaddingFlag = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    const-string v2, "large margin"

    goto :goto_3

    :cond_4
    const-string v2, "small margin"

    :goto_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n isAddPadding = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n typeFlag = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n screen width = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n parent width = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n widthMode = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n widthSize = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n getScreenHeightMetrics = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n sRect.height() = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n windowHeight = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n requestGridNumber = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move/from16 v2, p2

    :goto_4
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-eqz v6, :cond_8

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13, v12}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 14
    new-instance v2, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, v13, v12}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2, v7}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v2

    const/16 v7, 0x8

    goto :goto_7

    .line 15
    :cond_8
    new-instance v8, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v15, v12}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v8, v7}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v7

    move-object/from16 v17, v7

    move v7, v2

    move-object/from16 v2, v17

    .line 16
    :goto_7
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v8

    if-eqz v6, :cond_9

    if-nez v1, :cond_9

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v15, v12}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->getChildLayerDefaultTypeMargin(Landroid/content/Context;II)I

    move-result v9

    goto :goto_8

    .line 18
    :cond_9
    invoke-virtual {v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v9

    :goto_8
    const/4 v14, -0x1

    if-ne v7, v14, :cond_a

    .line 19
    invoke-static {v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->getDefaultGridNumbers(Lcom/coui/component/responsiveui/ResponsiveUIModel;)I

    move-result v7

    goto :goto_9

    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_9
    if-eqz v11, :cond_c

    const/4 v14, 0x1

    if-ne v1, v14, :cond_b

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v0, Lcom/support/responsiveui/R$dimen;->grid_list_special_padding:I

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_a

    .line 21
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v14, Lcom/support/responsiveui/R$dimen;->grid_card_special_padding:I

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    .line 22
    :goto_a
    sget-boolean v14, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v14, :cond_d

    .line 23
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nisParentChildHierarchy = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n isActivityEmbedded = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n isInPCMode = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n isLargeScreen = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13, v12}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n columnCount = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n margin = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n grid number = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n special padding = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_d
    invoke-static {v2, v7, v0, v11}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculateWidth(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ)F

    move-result v3

    const/4 v4, 0x2

    .line 27
    new-array v5, v4, [F

    .line 28
    invoke-static {v2, v7, v0, v11, v5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->calculatePadding(Lcom/coui/component/responsiveui/ResponsiveUIModel;IIZ[F)V

    .line 29
    sget-boolean v4, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    const-string v14, " padding right = "

    move/from16 p2, v0

    const-string v0, "\n padding left = "

    if-eqz v4, :cond_e

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    const-string v11, "\nBefore verify, contentWidth = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p4, v0

    const/4 v11, 0x0

    aget v0, v5, v11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v11, v5, v0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    move-object/from16 p4, v0

    move/from16 v16, v11

    :goto_b
    mul-int/lit8 v0, v9, 0x2

    sub-int v4, v15, v0

    int-to-float v4, v4

    cmpl-float v11, v3, v4

    if-gtz v11, :cond_f

    if-eqz v6, :cond_11

    if-nez v1, :cond_11

    .line 31
    :cond_f
    sget-boolean v3, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "measureLayoutWithPercent: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v3, v4

    :cond_11
    sub-int/2addr v8, v7

    const/4 v0, 0x2

    .line 33
    div-int/2addr v8, v0

    if-eqz v6, :cond_14

    if-ne v1, v0, :cond_14

    add-int v1, v8, v7

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 34
    invoke-virtual {v2, v8, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13, v12}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_12

    move/from16 v9, p2

    :cond_12
    mul-int/2addr v9, v0

    add-int/2addr v1, v9

    if-le v1, v15, :cond_13

    const/4 v0, 0x0

    .line 36
    aput v0, v5, v4

    const/4 v11, 0x0

    aput v0, v5, v11

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    sub-int/2addr v15, v1

    int-to-float v0, v15

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 37
    aput v0, v5, v4

    aput v0, v5, v11

    :goto_c
    move v1, v11

    goto :goto_d

    :cond_14
    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_15

    if-nez v1, :cond_15

    int-to-float v0, v9

    .line 38
    aput v0, v5, v4

    aput v0, v5, v11

    goto :goto_c

    .line 39
    :cond_15
    aget v0, v5, v11

    aget v1, v5, v4

    add-float/2addr v0, v1

    add-int v1, v8, v7

    sub-int/2addr v1, v4

    invoke-virtual {v2, v8, v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, v15

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    if-eqz v16, :cond_16

    sub-int v9, v9, p2

    :cond_16
    int-to-float v0, v9

    const/4 v1, 0x1

    .line 40
    aput v0, v5, v1

    const/4 v1, 0x0

    aput v0, v5, v1

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    .line 41
    :goto_d
    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAfter verify, contentWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v5, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v2, v5, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n grid position from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v8, v7

    sub-int/2addr v8, v1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-lez v7, :cond_1d

    move/from16 v0, p5

    if-nez v0, :cond_1c

    .line 43
    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 44
    const-string v1, "Padding mode"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v4, v5, v2

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    const/4 v4, 0x1

    aget v6, v5, v4

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v2, v4

    goto :goto_10

    :cond_1b
    const/4 v4, 0x1

    .line 46
    :goto_e
    aget v1, v5, v2

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    aget v5, v5, v4

    float-to-int v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1c
    const/4 v2, 0x1

    goto :goto_10

    :cond_1d
    move-object/from16 v6, p0

    move/from16 v0, p5

    if-nez v0, :cond_1c

    .line 47
    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 48
    const-string v1, "Exception Padding mode"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v2, v5, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v4, v5, v2

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_20

    goto :goto_f

    :cond_1f
    const/4 v2, 0x1

    .line 50
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    move/from16 v5, p6

    move/from16 v7, p7

    invoke-virtual {v6, v5, v1, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_20
    :goto_10
    if-ne v0, v2, :cond_22

    .line 51
    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 52
    const-string v0, "Remeasure mode"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    float-to-int v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_22
    return p1

    .line 54
    :cond_23
    sget-boolean v0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip measure because of parent measure unspecific: widthSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "widthMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return p1
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->DEBUG:Z

    return-void
.end method
