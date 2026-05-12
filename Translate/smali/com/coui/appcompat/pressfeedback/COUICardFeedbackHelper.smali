.class public Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CARD_DRAG_BASE_RATIO:F = 0.5f

.field private static final CARD_DRAG_DISTANCE_DEFAULT:F = 70.0f

.field private static final CARD_DRAG_TANGENT_MIN:F = 1.0f

.field private static final CARD_MOVE_BACK_ANIM_DURATION:J = 0x12cL

.field private static final CARD_PRESS_ANIM_DURATION:J = 0xc8L

.field private static final CARD_PRESS_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CARD_RELEASE_ANIM_DURATION:J = 0x154L

.field private static final CARD_RELEASE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CARD_SCALE_MAX:F = 1.0f

.field private static final CARD_SCALE_PRESS_DEFAULT:F = 0.98f

.field public static final DRAG_DIRECTION_ALL:I = 0xf

.field public static final DRAG_DIRECTION_DOWN:I = 0x8

.field public static final DRAG_DIRECTION_HORIZONTAL:I = 0x3

.field public static final DRAG_DIRECTION_LEFT:I = 0x1

.field public static final DRAG_DIRECTION_NONE:I = 0x0

.field public static final DRAG_DIRECTION_RIGHT:I = 0x2

.field public static final DRAG_DIRECTION_UP:I = 0x4

.field public static final DRAG_DIRECTION_VERTICAL:I = 0xc

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mAfterDragAction:Ljava/lang/Runnable;

.field private mAfterUpdateAction:Ljava/lang/Runnable;

.field private mBeforeDragAction:Ljava/lang/Runnable;

.field private mBeforeUpdateAction:Ljava/lang/Runnable;

.field private mCurDragDirection:I

.field private mCurTranslateX:F

.field private mCurTranslateY:F

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mDragMaxHorizontal:F

.field private mDragMaxVertical:F

.field private mDragRatio:F

.field private mDragTangent:F

.field private mEnableMoveBack:Z

.field private mEnableScale:Z

.field private mEnableSloping:Z

.field private mHasDrag:Z

.field private mLastScaleX:F

.field private mLastScaleY:F

.field private mLastX:F

.field private mLastY:F

.field private mMinScale:F

.field private final mMoveBackAnimator:Landroid/animation/ValueAnimator;

.field private mMoveX:F

.field private mMoveY:F

.field private final mPressAnimator:Landroid/animation/ValueAnimator;

.field private final mProxyView:Landroid/view/View;

.field private final mReleaseAnimator:Landroid/animation/ValueAnimator;

.field private mStartTranslateX:F

.field private mStartTranslateY:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->CARD_PRESS_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->CARD_RELEASE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x154

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    iput v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    const/16 v5, 0xf

    iput v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    const v5, 0x3f7ae148    # 0.98f

    iput v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMinScale:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    iput v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    iput v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragRatio:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragTangent:F

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableScale:Z

    iput-boolean v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableMoveBack:Z

    iput-boolean v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableSloping:Z

    iput-boolean v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mHasDrag:Z

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    sget-object v4, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->CARD_PRESS_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->CARD_RELEASE_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->initPressAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->initReleaseAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->initMoveBackAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->resetTouchParams()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {p1, v1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxVertical:F

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxHorizontal:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->lambda$initReleaseAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    return p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    return p1
.end method

.method public static synthetic b(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->lambda$initMoveBackAnim$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->lambda$initPressAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getRealDragDistance(FFFF)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragRatio:F

    mul-float/2addr p1, p0

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p4

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1
.end method

.method private initMoveBackAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/pressfeedback/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/pressfeedback/a;-><init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper$1;-><init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initPressAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/pressfeedback/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/pressfeedback/c;-><init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private initReleaseAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/pressfeedback/b;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/pressfeedback/b;-><init>(Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private synthetic lambda$initMoveBackAnim$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeUpdateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurTranslateX:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    sub-float v2, v1, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurTranslateY:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    sub-float v2, v1, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterUpdateAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initPressAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeUpdateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMinScale:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMinScale:F

    sub-float v2, v1, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterUpdateAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initReleaseAnim$1(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeUpdateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterUpdateAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private onDrag(FF)V
    .locals 9

    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mHasDrag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mHasDrag:Z

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeDragAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxHorizontal:F

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    iget v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxHorizontal:F

    add-float/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    iget v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxVertical:F

    sub-float/2addr v4, v5

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    iget v6, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxVertical:F

    add-float/2addr v5, v6

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    :goto_3
    const/4 v6, 0x3

    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    iget-object v7, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxHorizontal:F

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->getRealDragDistance(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    const/16 v2, 0xc

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastY:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    iget-object v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v7, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxVertical:F

    invoke-direct {p0, p2, v0, v3, v7}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->getRealDragDistance(FFFF)F

    move-result p2

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_5

    :cond_8
    move p2, v1

    :goto_5
    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableSloping:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_c

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_a

    cmpl-float v3, p2, v1

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v2

    :goto_6
    iput v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    :cond_a
    if-eqz v0, :cond_b

    cmpl-float v3, p2, v1

    if-nez v3, :cond_b

    iput v6, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    :cond_b
    if-nez v0, :cond_c

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_c

    iput v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    :cond_c
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeUpdateAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_d
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_e
    cmpl-float p1, p2, v1

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurDragDirection:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_f
    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterUpdateAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void
.end method

.method private resetTouchParams()V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownY:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastX:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastY:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveX:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveY:F

    return-void
.end method

.method private startMoveBack()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mHasDrag:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mHasDrag:Z

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterDragAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableMoveBack:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurTranslateX:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurTranslateY:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mCurTranslateX:F

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    cmpl-float v2, v3, v1

    if-nez v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mStartTranslateY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    cmpl-float v0, v2, v1

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_0
    return-void
.end method

.method private startPressAnim()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableScale:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMinScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startReleaseAnim()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableScale:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleY:F

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addMoveBackAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addMoveBackAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addPressAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addPressAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addReleaseAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addReleaseAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public doAfterDrag(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterDragAction:Ljava/lang/Runnable;

    return-void
.end method

.method public doAfterUpdate(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mAfterUpdateAction:Ljava/lang/Runnable;

    return-void
.end method

.method public doBeforeDrag(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeDragAction:Ljava/lang/Runnable;

    return-void
.end method

.method public doBeforeUpdate(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mBeforeUpdateAction:Ljava/lang/Runnable;

    return-void
.end method

.method public getDragDirection()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    return p0
.end method

.method public handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->resetTouchParams()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownY:F

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastX:F

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastY:F

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->startPressAnim()V

    return-void
.end method

.method public handleTouchMove(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDownY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    and-int/lit8 v4, v3, 0xf

    if-nez v4, :cond_3

    return v2

    :cond_3
    and-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_4

    and-int/lit8 v4, v3, 0xc

    if-nez v4, :cond_4

    iget v4, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragTangent:F

    mul-float/2addr v4, v1

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->resetTouchParams()V

    return v2

    :cond_4
    and-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_5

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragTangent:F

    mul-float/2addr v0, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->resetTouchParams()V

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveY:F

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveX:F

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->onDrag(FF)V

    iget p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveX:F

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastX:F

    iget p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveY:F

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mLastY:F

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v2
.end method

.method public handleTouchUpOrCancel()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->startReleaseAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->startMoveBack()V

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->resetTouchParams()V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_2
    return-void
.end method

.method public setDragDirection(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragDirection:I

    return-void
.end method

.method public setDragMaxDistance(FF)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxHorizontal:F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mProxyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragMaxVertical:F

    return-void
.end method

.method public setDragRatio(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragRatio:F

    return-void
.end method

.method public setDragTangent(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mDragTangent:F

    return-void
.end method

.method public setEnableDragOnSloping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableSloping:Z

    return-void
.end method

.method public setEnableMoveBack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableMoveBack:Z

    return-void
.end method

.method public setEnableScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mEnableScale:Z

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMinScale:F

    return-void
.end method

.method public setMoveBackDuration(J)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setMoveBackInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mMoveBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setPressDuration(J)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setPressInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mPressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setReleaseDuration(J)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setReleaseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUICardFeedbackHelper;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
