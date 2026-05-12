.class public Lcom/coui/appcompat/seekbar/COUISectionSeekBar;
.super Lcom/coui/appcompat/seekbar/COUISeekBar;
.source "SourceFile"


# static fields
.field private static final DEFORMATION_RELEASE_SPRING_RESPONSE:F = 0.35f

.field private static final DEFORMATION_SCALE_FACTOR:I = 0x3e8

.field private static final INTERPOLATOR_CONTROL_X1:F = 0.0f

.field private static final INTERPOLATOR_CONTROL_X2:F = 0.25f

.field private static final INTERPOLATOR_CONTROL_Y1:F = 0.0f

.field private static final INTERPOLATOR_CONTROL_Y2:F = 1.0f

.field private static final MOVE_ANIMATOR_DURATION:J = 0x64L

.field private static final MOVE_RATIO:F = 0.4f


# instance fields
.field private mActionMoveDirection:I

.field private mActiveMarkColor:I

.field private mActiveMarkColorStateList:Landroid/content/res/ColorStateList;

.field private mCurrentOffset:F

.field private mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mDeformedReleaseTransition:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mInactiveMarkColor:I

.field private mInactiveMarkColorStateList:Landroid/content/res/ColorStateList;

.field private mIsFastMoving:Z

.field private mMarkRadius:F

.field private mMoveAnimationEndThumbX:F

.field private mMoveAnimationStartThumbX:F

.field private mMoveAnimationValue:F

.field private mMoveAnimator:Landroid/animation/ValueAnimator;

.field private mOnStopTrackingMask:Z

.field private final mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mThumbX:F

.field private mTouchDownPos:I

.field private mTouchDownThumbX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/seekbar/R$attr;->couiSectionSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/seekbar/R$style;->COUISectionSeekBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    const/high16 p2, -0x40800000    # -1.0f

    .line 7
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    .line 8
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    .line 11
    new-instance p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;

    const-string p2, "deformedReleaseTransition"

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseTransition:Landroidx/dynamicanimation/animation/d;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/seekbar/R$dimen;->coui_section_seekbar_tick_mark_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMarkRadius:F

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/support/seekbar/R$color;->coui_seekbar_inactive_mark_selector:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/seekbar/R$color;->coui_seekbar_inactive_mark_disable_color:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 15
    invoke-static {p1, p2}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColorStateList:Landroid/content/res/ColorStateList;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/support/seekbar/R$color;->coui_seekbar_active_mark_selector:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/seekbar/R$color;->coui_seekbar_active_mark_disable_color:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 18
    invoke-static {p1, p2}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColorStateList:Landroid/content/res/ColorStateList;

    .line 19
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColorStateList:Landroid/content/res/ColorStateList;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/seekbar/R$color;->coui_seekbar_inactive_mark_selector:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 21
    invoke-virtual {p0, p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColor:I

    .line 22
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColorStateList:Landroid/content/res/ColorStateList;

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/seekbar/R$color;->coui_seekbar_active_mark_selector:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 24
    invoke-virtual {p0, p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColor:I

    .line 25
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->initDeformedReleaseAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getScale()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->setScale(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    return p0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    return p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationStartThumbX:F

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateCurIndex()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    return p0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    return-void
.end method

.method private calculateCurIndex()V
    .locals 6

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationStartThumbX:F

    sub-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveSectionWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v1

    :goto_0
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_1
    sub-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveSectionWidth()F

    move-result v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v1

    :goto_1
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    sub-int v0, v1, v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->checkThumbPosChange(I)V

    return-void
.end method

.method private calculateThumbPositionByIndex()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    :cond_0
    return-void
.end method

.method private clearDeformationValue(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetDeformationValue()V

    :cond_0
    return-void
.end method

.method private drawMark(Landroid/graphics/Canvas;IF)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    sub-float v3, v1, v2

    add-float/2addr v1, v2

    const/16 v2, 0x1f

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-boolean v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowProgress:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColor:I

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColor:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColor:I

    :goto_0
    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v5, v6

    sub-float/2addr v0, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    if-gt v6, v8, :cond_7

    iget-boolean v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowProgress:Z

    if-eqz v9, :cond_3

    if-nez v7, :cond_3

    int-to-float v9, v6

    mul-float/2addr v9, v0

    int-to-float v8, v8

    div-float/2addr v9, v8

    add-float/2addr v9, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v8

    int-to-float v8, v8

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v8, v10

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v8, v10

    cmpl-float v8, v9, v8

    if-lez v8, :cond_3

    iget-object v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColor:I

    goto :goto_2

    :cond_2
    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColor:I

    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x1

    :cond_3
    int-to-float v8, v6

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v8, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_4

    neg-float v9, p3

    goto :goto_3

    :cond_4
    move v9, p3

    :goto_3
    add-float/2addr v8, v9

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMarkRadius:F

    sub-float v10, v8, v9

    add-float v11, v8, v9

    cmpl-float v10, v3, v10

    if-gtz v10, :cond_5

    cmpg-float v10, v1, v11

    if-gez v10, :cond_6

    :cond_5
    int-to-float v10, p2

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10, v9, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->getSmoothStyleType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->getPathAdapter()Lcom/oplus/graphics/OplusPathAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v4, v3, v1

    div-float/2addr v3, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRoundCornerWeight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v2, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v2, p1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v4, p1, v1

    div-float v5, p1, v1

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRoundCornerWeight:F

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowOffsetY:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowColor:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    int-to-float p2, p2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_1
    return-void
.end method

.method private getMoveSectionWidth()F
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarMoveWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getMoveThumbXByIndex(I)F
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarMoveWidth()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-float p1, v0, p1

    :cond_0
    return p1
.end method

.method private getScale()F
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private getSectionWidth()F
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarNormalWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getSeekBarMoveWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getSeekBarNormalWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getThumbPosByX(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    sub-float p1, v1, p1

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getThumbXByIndex(I)F
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSeekBarNormalWidth()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    sub-float p1, v0, p1

    :cond_0
    return p1
.end method

.method private getTouchXOfDrawArea(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private initDeformedReleaseAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseTransition:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-void
.end method

.method private invalidateProgress(FZ)V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getThumbXByIndex(I)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->subtract(FF)F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getSectionWidth()F

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v2, :cond_0

    div-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    int-to-float v3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    int-to-float p1, p1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    sub-float/2addr v1, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    add-float/2addr p1, v0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFZ)V

    :cond_2
    return-void
.end method

.method private setScale(F)V
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->calculateTouchDeformationValue()V

    return-void
.end method

.method private startMoveAnimation(FFFZ)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationStartThumbX:F

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-nez p4, :cond_1

    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v3}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {p4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    invoke-virtual {p4, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {p4, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    sub-float/2addr p2, p1

    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p3, p1, v2

    aput p2, p1, v0

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    add-float/2addr p2, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateCurIndex()V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mOnStopTrackingMask:Z

    :cond_4
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setTouchScale(FZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeTouchGlitterEffectAnim()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->subtract(FF)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const v1, 0x3dcccccd    # 0.1f

    if-gez v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_1
    add-float/2addr p1, v1

    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveSectionWidth()F

    move-result v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    neg-int v1, v1

    :cond_2
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    add-int/2addr p1, v1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_3

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr v2, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFZ)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    add-float/2addr p1, v2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mCurrentOffset:F

    sub-float/2addr v0, v2

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawActiveTrack(Landroid/graphics/Canvas;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLabelX:F

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawGlitterEffect(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->drawMark(Landroid/graphics/Canvas;IF)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->drawThumb(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected handleMotionEventDown(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeThumbScaleAnim(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected handleMotionEventMove(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetBumpingEdges()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->clearDeformationValue(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    sub-float v5, v0, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    sub-float v1, v0, v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    neg-int v1, v1

    if-ne v2, v1, :cond_3

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-eq v1, v2, :cond_2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveThumbXByIndex(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isToucheInSeekBar(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startDrag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->touchAnim()V

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getThumbPosByX(F)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->checkThumbPosChange(I)V

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownPos:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getMoveThumbXByIndex(I)F

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mTouchDownThumbX:F

    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationValue:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;F)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    sub-float p1, v0, p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_6

    move v2, v3

    :cond_6
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActionMoveDirection:I

    :cond_7
    :goto_1
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    return-void
.end method

.method protected handleMotionEventUp(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->releaseThumbScaleAnim()V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->getTouchXOfDrawArea(Landroid/view/MotionEvent;)F

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mDeformedReleaseAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p1, v5}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mIsFastMoving:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->releaseAnim()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->invalidateProgress(FZ)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->animForClick(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->releaseAnim()V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic onAnimationStart(Ld7/d;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/a;->onAnimationStart(Ld7/d;)V

    return-void
.end method

.method protected onClickAnimationUpdate(F)V
    .locals 0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    return-void
.end method

.method protected performAdaptiveFeedback()Z
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHasMotorVibrator:Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v1

    :cond_2
    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    const/16 v7, 0xc8

    const/16 v8, 0x7d0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    return v2
.end method

.method protected performFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHasMotorVibrator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_inactive_mark_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mInactiveMarkColor:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_active_mark_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mActiveMarkColor:I

    return-void
.end method

.method public setMax(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(IZZ)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->checkThumbPosChange(IZZ)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startTransitionAnim(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->checkThumbPosChange(IZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->calculateThumbPositionByIndex()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mMoveAnimationEndThumbX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setProgressRect()V
    .locals 10

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v2, v4

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v0, v5

    int-to-float v1, v1

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v7, v6, v3

    sub-float v7, v1, v7

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    add-float/2addr v7, v8

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v2, v9

    add-float/2addr v2, v5

    div-float/2addr v6, v3

    add-float/2addr v1, v6

    sub-float/2addr v1, v8

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    add-float/2addr v2, v0

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v0, v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    add-float/2addr v0, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v7, v6, v3

    sub-float v7, v1, v7

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    add-float/2addr v7, v8

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    add-float/2addr v2, v9

    sub-float/2addr v2, v5

    div-float/2addr v6, v3

    add-float/2addr v1, v6

    sub-float/2addr v1, v8

    invoke-virtual {v4, v0, v7, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v2, p0, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr p0, v3

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method protected startTransitionAnim(IZ)V
    .locals 3

    new-instance p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLabelX:F

    float-to-int p2, p2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->mThumbX:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastEndClickListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStartTrackingTouch(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastEndClickListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-void
.end method
