.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;
.super Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;
.source "SourceFile"


# static fields
.field private static final DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 133.0f

.field private static final DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE:F = 117.0f

.field private static final DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 200.0f

.field private static final DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DISMISS_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

.field private static final PANEL_ALPHA_ANIM_DURATION:J = 0xfaL

.field private static final SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 132.0f

.field private static final SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT_IN_LARGE:F = 150.0f

.field private static final SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 300.0f

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "AdjustResizeAfterR"


# instance fields
.field private mCurrentKeyboardHeight:I

.field private mIsPanelAlphaRun:Z

.field private mMarginBottomAnim:Landroid/animation/ValueAnimator;

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->SHOW_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mWindowType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mCurrentKeyboardHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mIsPanelAlphaRun:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mIsPanelAlphaRun:Z

    return p1
.end method

.method private createPanelAlphaAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private doMarginBottomAnim(Landroid/view/View;IZILandroid/view/View;I)V
    .locals 13

    move-object v7, p0

    move v4, p2

    move-object/from16 v8, p5

    move/from16 v0, p6

    sget v1, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    add-int v1, p4, v0

    const/4 v9, 0x0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isLargeHeightScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v10, 0x43960000    # 300.0f

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/high16 v0, 0x43160000    # 150.0f

    int-to-float v1, v4

    mul-float/2addr v1, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v10

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->SHOW_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42ea0000    # 117.0f

    int-to-float v10, v4

    mul-float/2addr v10, v0

    int-to-float v0, v3

    div-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR_IN_LARGE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/high16 v0, 0x43040000    # 132.0f

    int-to-float v1, v4

    mul-float/2addr v1, v0

    int-to-float v0, v3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v10

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x43050000    # 133.0f

    int-to-float v10, v4

    mul-float/2addr v10, v0

    int-to-float v0, v3

    div-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object v1, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    float-to-long v10, v0

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->createPanelAlphaAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v10

    const-wide/16 v0, 0xfa

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;IILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-nez p3, :cond_3

    iput-boolean v9, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mIsPanelAlphaRun:Z

    :cond_3
    if-eqz p3, :cond_4

    iget-boolean v0, v7, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mIsPanelAlphaRun:Z

    if-nez v0, :cond_4

    sget v0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private setMarginBottomTo(Landroid/view/View;ILandroid/view/WindowInsets;Landroid/view/View;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    if-eqz v1, :cond_7

    sget v4, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v8, v2

    int-to-float v9, v6

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const-string v0, "AdjustResizeAfterR"

    const-string v1, "KeyboardHeight > availableHeight * 0.9f, so not elevated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    check-cast v9, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v9}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->isIsHandlePanel()Z

    move-result v9

    goto :goto_0

    :cond_1
    move v9, v11

    :goto_0
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-static {v8, v10, p3, v9}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result v8

    if-lez v6, :cond_2

    if-lez v7, :cond_2

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    if-le v7, v6, :cond_2

    sub-int/2addr v7, v6

    sub-int v6, v2, v7

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    sub-int v7, v2, v8

    iget-object v9, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mMarginBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v4, :cond_7

    invoke-virtual {v4, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v11

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v4, v7

    move-object/from16 v5, p4

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->doMarginBottomAnim(Landroid/view/View;IZILandroid/view/View;I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public adjustResize(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget p5, p5, Landroid/graphics/Insets;->bottom:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p5, v0

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mCurrentKeyboardHeight:I

    if-ne p1, p5, :cond_0

    const-string p0, "AdjustResizeAfterR"

    const-string p1, "keyboardHeight is the same size, keyboardHeight"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mCurrentKeyboardHeight:I

    :cond_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->setMarginBottomTo(Landroid/view/View;ILandroid/view/WindowInsets;Landroid/view/View;)V

    return-void
.end method

.method public getMarginBottomValue()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPaddingBottomOffset()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTranslateOffset()F
    .locals 0

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getWindowType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mWindowType:I

    return p0
.end method

.method public recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public releaseData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetInnerStatus()V
    .locals 0

    return-void
.end method

.method public setIgnoreHideKeyboardAnim(Z)V
    .locals 0

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;->mWindowType:I

    return-void
.end method
