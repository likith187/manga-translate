.class public Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MARGIN_TOP:I = 0x28

.field private static final LARGEST_SCREEN_HEIGHT_DP_THRESHOLD:F = 809.0f

.field private static final NAV_STATE_SWIPE_SIDE_GESTURE:I = 0x3

.field private static final SETTING_CLOSE_FLAG:I = 0x0

.field private static final SETTING_OPEN_FLAG:I = 0x1

.field private static final SMALLEST_SCREEN_WIDTH_DP_THRESHOLD:F = 600.0f

.field private static final TWO_THIRDS:F = 0.66f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contextToActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    return p0
.end method

.method public static getCurrentPanelWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getCurrentPanelWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I
    .locals 3

    .line 5
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 9
    invoke-static {p2, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 11
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 13
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public static getCurrentWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I
    .locals 2

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getCurrentWindowVisibleRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_2
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_3
    return v0
.end method

.method public static getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 3
    :goto_0
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    int-to-float v1, v1

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_3

    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_bottom_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_5
    :goto_2
    return v0
.end method

.method public static getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_1

    return v0

    .line 7
    :cond_1
    iget p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 8
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 9
    :goto_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    int-to-float p3, p3

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float p3, p3, v3

    if-gez p3, :cond_4

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 10
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p3, p3, 0x30

    const/16 v1, 0x20

    if-ne p3, v1, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_bottom_smallland_default:I

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sub-int/2addr p0, p2

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_bottom_default:I

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 17
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->ifWidthDpIsFullScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 18
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/coui/appcompat/orientationutil/COUIOrientationUtil;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 19
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isVirtualNavigation(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 20
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isTaskBarShowInApp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3

    :cond_7
    :goto_2
    sub-int p0, p1, p2

    .line 22
    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_8
    :goto_4
    return v0
.end method

.method public static getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getCurrentPanelWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result p1

    goto :goto_0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/panel/R$dimen;->coui_panel_max_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 6
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelPercentFrameLayoutMaxHeight(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I
    .locals 1

    .line 7
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 9
    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getCurrentPanelWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result p1

    goto :goto_0

    .line 11
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/panel/R$dimen;->coui_panel_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 12
    invoke-static {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelPercentFrameLayoutMaxHeight(Landroid/content/Context;I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 4
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v3

    .line 7
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v0

    .line 8
    :goto_0
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    if-eqz v3, :cond_6

    .line 9
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_3
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isVirtualNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v6, :cond_6

    .line 11
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_6
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_7
    return v0
.end method

.method public static getPanelNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/panel/R$dimen;->coui_panel_min_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 15
    invoke-static {p2, p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/view/WindowInsets;Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/support/panel/R$dimen;->coui_bottom_sheet_margin_vertical_without_status_bar:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result p2

    .line 18
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v0

    .line 19
    :goto_0
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v5, v0

    :goto_2
    if-eqz p2, :cond_6

    .line 20
    iget p2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p2, p2

    const/high16 v3, 0x44160000    # 600.0f

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_3
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isVirtualNavigation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v5, :cond_6

    .line 22
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_6
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :cond_7
    return v0
.end method

.method public static getPanelPercentFrameLayoutMaxHeight(Landroid/content/Context;I)I
    .locals 0

    return p1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getStatusBarHeight(Landroid/view/WindowInsets;Landroid/content/Context;)I
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeightAfterR(Landroid/view/WindowInsets;)I

    move-result p0

    return p0
.end method

.method public static getStatusBarHeightAfterR(Landroid/view/WindowInsets;)I
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static isDisplayInHorizontal(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v2, 0x3f28f5c3    # 0.66f

    mul-float/2addr p0, v2

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDisplayInPrimaryScreen(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget v3, v2, p0

    if-gt v3, v1, :cond_0

    aget v2, v2, v0

    if-gt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDisplayInUpperWindow(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    if-gt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLand(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeHeightScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    iget p0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p0, p0

    const p1, 0x444a4000    # 809.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNormalLandScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static isNormalScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isPortrait(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 2
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_0
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p0, p0

    const/high16 p1, 0x44160000    # 600.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTaskBarShowInApp(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_launcher_taskbar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isVirtualNavigation(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_navigationbar_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
