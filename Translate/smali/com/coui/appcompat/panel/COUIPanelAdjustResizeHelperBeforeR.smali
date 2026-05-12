.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;
.super Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;
.source "SourceFile"


# static fields
.field private static final DISMISS_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 50.0f

.field private static final DISMISS_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 200.0f

.field private static final DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final IME_ADJUST:I = 0x1

.field private static final IME_HIDE:I = 0x2

.field private static final IME_SHOW:I = 0x0

.field private static final SHOW_HEIGHT_ANIM_DURATION_COEFFICIENT:F = 120.0f

.field private static final SHOW_HEIGHT_ANIM_DURATION_INITIAL_VALUE:F = 300.0f

.field private static final SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAdjustKeyboardHeight:I

.field private mAdjustKeyboardOffset:I

.field private mAdjustKeyboardStartHeight:I

.field private mAdjustResizeType:I

.field private mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

.field private mFocusVerticalScrolledView:Landroid/view/View;

.field private mFocusViewRawY:I

.field private mIsFocusViewDisplayInVerticalScrolledView:Z

.field private mIsIgnoreHideKeyboardAnim:Z

.field private mIsKeyboardShow:Z

.field private mMarginBottomValue:I

.field private mPaddingBottomAnim:Landroid/animation/ValueAnimator;

.field private mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingBottomOffset:I

.field private mTranslateOffset:F

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mWindowType:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardStartHeight:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsIgnoreHideKeyboardAnim:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsKeyboardShow:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsFocusViewDisplayInVerticalScrolledView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusVerticalScrolledView:Landroid/view/View;

    return-void
.end method

.method private adjustResizeBeforeR(Landroid/view/ViewGroup;ZI)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->updateAdjustKeyboardType(Z)V

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->updateAdjustKeyboardData(Landroid/view/ViewGroup;I)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->updateAdjustKeyboardOffset(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doAdjustKeyboardAnim(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsIgnoreHideKeyboardAnim:Z

    return-void
.end method

.method private doAdjustKeyboardAnim(Landroid/view/ViewGroup;Z)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x42f00000    # 120.0f

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v3

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v1

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomOffset:I

    float-to-long v2, p2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doPaddingBottomAnim(Landroid/view/View;IJ)V

    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doBottomButtonTranslateAnim(Lcom/coui/appcompat/panel/COUIPanelContentLayout;FJ)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v0

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    int-to-float p2, p2

    mul-float/2addr p2, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v3

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p2, v1

    :goto_1
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mMarginBottomValue:I

    float-to-long v1, p2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doMarginBottomAnim(Landroid/view/View;IJ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private doBottomButtonTranslateAnim(Lcom/coui/appcompat/panel/COUIPanelContentLayout;FJ)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput p2, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    cmpg-float p3, v1, p2

    if-gez p3, :cond_1

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;

    invoke-direct {p4, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;F)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private doMarginBottomAnim(Landroid/view/View;IJ)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    filled-new-array {v0, p2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v0, p2, :cond_1

    sget-object p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    new-instance p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;

    invoke-direct {p3, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$5;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;I)V

    invoke-virtual {v1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$6;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$6;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private doPaddingBottomAnim(Landroid/view/View;IJ)V
    .locals 10

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    filled-new-array {v0, v6}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-ge v0, v6, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->SHOW_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->DISMISS_HEIGHT_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;IIII)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;III)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method private findFocusView(Landroid/view/ViewGroup;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsFocusViewDisplayInVerticalScrolledView:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusVerticalScrolledView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->isScrollable(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsFocusViewDisplayInVerticalScrolledView:Z

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusVerticalScrolledView:Landroid/view/View;

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->getMeasureHeight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->getMargin(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->isScrollable(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsFocusViewDisplayInVerticalScrolledView:Z

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusVerticalScrolledView:Landroid/view/View;

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getKeyboardHeightBeforeR(II)I
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mWindowType:I

    const/16 v0, 0x7f6

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method private getMeasureHeight(Landroid/view/View;)I
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    return p0
.end method

.method private isScrollable(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Landroid/widget/ScrollView;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/widget/AbsListView;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroidx/core/view/f0;

    if-eqz p0, :cond_0

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

.method private updateAdjustKeyboardData(Landroid/view/ViewGroup;I)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->releaseData()Z

    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getLayoutAtMaxHeight()Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->findFocusView(Landroid/view/ViewGroup;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardStartHeight:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsIgnoreHideKeyboardAnim:Z

    if-nez p1, :cond_6

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    goto :goto_1

    :cond_4
    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardStartHeight:I

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    sub-int p1, p2, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    :cond_6
    :goto_1
    return v1
.end method

.method private updateAdjustKeyboardOffset(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomOffset:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mMarginBottomValue:I

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->updateOffsetInConstraintLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->updateOffsetInNormalLayout(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateAdjustKeyboardType(Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsKeyboardShow:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsKeyboardShow:Z

    return-void
.end method

.method private updateOffsetInConstraintLayout(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Ljava/lang/Boolean;)V
    .locals 10

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getMaxHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    mul-int/2addr v4, v0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    iget-boolean v7, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsFocusViewDisplayInVerticalScrolledView:Z

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    cmpl-float v3, v5, v6

    if-nez v3, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusVerticalScrolledView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    :cond_4
    neg-int p1, v4

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    :cond_5
    iput v4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomOffset:I

    goto/16 :goto_6

    :cond_6
    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardStartHeight:I

    iget v6, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mFocusViewRawY:I

    sub-int/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    goto :goto_2

    :cond_7
    move v7, v8

    :goto_2
    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_3

    :cond_8
    move p1, v8

    :goto_3
    iget v9, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    if-ne v9, v1, :cond_9

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    add-int/2addr v3, v2

    goto :goto_4

    :cond_9
    if-ne v9, v2, :cond_a

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    sub-int/2addr v3, v2

    :cond_a
    :goto_4
    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    add-int v9, v2, v7

    add-int/2addr v9, p1

    if-lt v3, v9, :cond_b

    if-nez v6, :cond_b

    neg-int p1, v4

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    goto :goto_6

    :cond_b
    add-int/2addr v2, v7

    add-int/2addr v2, p1

    sub-int/2addr v2, v3

    neg-int p1, v6

    mul-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomOffset:I

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    if-ne p1, v1, :cond_c

    add-int/2addr v6, v0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    neg-int v0, p2

    sub-int p1, p2, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    sub-float/2addr p1, v5

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    goto :goto_6

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    sub-int/2addr v4, v2

    neg-int p1, v4

    int-to-float p1, p1

    goto :goto_5

    :cond_d
    neg-float p1, v5

    :goto_5
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    :goto_6
    return-void
.end method

.method private updateOffsetInNormalLayout(Landroid/view/ViewGroup;Ljava/lang/Boolean;)V
    .locals 1

    iget p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardOffset:I

    mul-int/2addr p2, v0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnimView:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mMarginBottomValue:I

    return-void
.end method


# virtual methods
.method public adjustResize(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/support/panel/R$bool;->is_ignore_nav_height_in_panel_ime_adjust:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p5

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p5

    invoke-direct {p0, p5, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->getKeyboardHeightBeforeR(II)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->adjustResizeBeforeR(Landroid/view/ViewGroup;ZI)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustResizeType:I

    const/4 p5, 0x2

    if-eq p1, p5, :cond_3

    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    invoke-direct {p0, p2, v1, p1}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->adjustResizeBeforeR(Landroid/view/ViewGroup;ZI)V

    :cond_3
    sget p0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->isIsHandlePanel()Z

    move-result v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p0, p1, p3, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->getPanelMarginBottom(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/view/WindowInsets;Z)I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_5

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getMarginBottomValue()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mMarginBottomValue:I

    return p0
.end method

.method public getPaddingBottomOffset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomOffset:I

    return p0
.end method

.method public getTranslateOffset()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mTranslateOffset:F

    return p0
.end method

.method public getWindowType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mWindowType:I

    return p0
.end method

.method public recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public releaseData()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x1

    :cond_0
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mPaddingBottomAnim:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mBottomButtonBarAnim:Landroid/animation/ValueAnimator;

    :cond_3
    return v2
.end method

.method public resetInnerStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mAdjustKeyboardHeight:I

    return-void
.end method

.method public setIgnoreHideKeyboardAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mIsIgnoreHideKeyboardAnim:Z

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->mWindowType:I

    return-void
.end method
