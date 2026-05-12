.class public Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;,
        Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;
    }
.end annotation


# static fields
.field private static final ACCURACY:I = 0x64

.field private static final ColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ALPHA_START_FRACTION:F = 0.7f

.field private static final DEFAULT_DELAY:J = 0xc8L

.field private static final DEFAULT_ERROR_DURATION:J = 0x15eL

.field private static final DEFAULT_ICON_PAUSE_DURATION:J = 0x12cL

.field private static final DEFAULT_ICON_RESUME_DURATION:J = 0xc8L

.field private static final DEFAULT_IN_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_MIN_PROGRESS_VALUE:F = 1.0E-4f

.field private static final DEFAULT_MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_OUT_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_PROGRESS_PAUSE_DURATION:J = 0xc8L

.field private static final DEFAULT_PROGRESS_RESUME_DURATION:J = 0xc8L

.field private static final FULL_ALPHA:I = 0xff

.field private static final FULL_DEGREE:I = 0x168

.field private static final ORIGINAL_ANGLE:I = -0x5a

.field private static final TAG:Ljava/lang/String; = "COUICircularDrawable"

.field private static final VISUAL_PROGRESS:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field


# instance fields
.field private mActualProgress:I

.field private mAnimating:Z

.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentErrorIconAlpha:I

.field private mCurrentPauseIconAlpha:I

.field private mErrorAnimatorSet:Landroid/animation/AnimatorSet;

.field private mErrorIconCircleBias:F

.field private mErrorIconCircleRadius:F

.field private mErrorIconColor:I

.field private mErrorIconRectBias:F

.field private mErrorIconRectHeight:F

.field private mErrorIconRectWidth:F

.field private mGlobalAlpha:I

.field private mHostView:Landroid/view/View;

.field private mIconErrorAnimator:Landroid/animation/ValueAnimator;

.field private mIconErrorScale:F

.field private mIconPaint:Landroid/graphics/Paint;

.field private mIconPauseAnimator:Landroid/animation/ValueAnimator;

.field private mIconPauseScale:F

.field private mIconRecoverAnimator:Landroid/animation/ValueAnimator;

.field private mIconResumeAnimator:Landroid/animation/ValueAnimator;

.field private mMax:I

.field private mOnProgressChangedListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

.field private mOnProgressStateAnimatorListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

.field private mPauseAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPauseIconColor:I

.field private mPauseIconRectGap:F

.field private mPauseIconRectHeight:F

.field private mPauseIconRectRadius:F

.field private mPauseIconRectWidth:F

.field private mProgressBarAlpha:I

.field private mProgressBarOuterDiameter:F

.field private mProgressBarStrokeWidth:F

.field private mProgressEnlargeAnimator:Landroid/animation/ValueAnimator;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressPauseAnimator:Landroid/animation/ValueAnimator;

.field private mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

.field private mProgressResumeAnimator:Landroid/animation/ValueAnimator;

.field private mProgressShrinkAnimator:Landroid/animation/ValueAnimator;

.field private mRecoverAnimatorSet:Landroid/animation/AnimatorSet;

.field private mResumeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShadowXBias:F

.field private mShadowYBias:F

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/f;

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_IN_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_OUT_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->ColorEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;

    const-string v1, "visualProgress"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->VISUAL_PROGRESS:Landroidx/dynamicanimation/animation/d;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mGlobalAlpha:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarAlpha:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mMax:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentPauseIconAlpha:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentErrorIconAlpha:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowColor:I

    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mAnimating:Z

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initAttr(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initPaint()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initAnimator()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initPauseAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->setVisualProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->notifyVisualProgressChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mOnProgressStateAnimatorListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    return-object p0
.end method

.method private actual2VisualProgress(F)F
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mMax:I

    int-to-float v1, p0

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static synthetic b(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initErrorAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initRecoverAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initErrorAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawErrorIcon(Landroid/graphics/Canvas;)V
    .locals 13

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentErrorIconAlpha:I

    if-eqz v5, :cond_0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v3, v0, v6

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    mul-float v4, v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorScale:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectWidth:F

    div-float v2, v1, v6

    sub-float v8, v0, v2

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectBias:F

    sub-float v9, v2, v3

    div-float/2addr v1, v6

    add-float v10, v0, v1

    sub-float/2addr v2, v3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectHeight:F

    add-float v11, v2, v0

    iget-object v12, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconCircleBias:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconCircleRadius:F

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawPauseIcon(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentPauseIconAlpha:I

    if-eqz v6, :cond_0

    iget v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v4, v1, v7

    iget v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    mul-float v5, v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseScale:F

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectWidth:F

    sub-float v2, v1, v2

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectGap:F

    div-float v5, v3, v7

    sub-float v9, v2, v5

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iget v5, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectHeight:F

    div-float v6, v5, v7

    sub-float v10, v2, v6

    div-float/2addr v3, v7

    sub-float v11, v1, v3

    div-float/2addr v5, v7

    add-float v12, v2, v5

    iget v14, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectRadius:F

    iget-object v15, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v2, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectGap:F

    div-float v3, v2, v7

    add-float v9, v1, v3

    iget v3, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iget v5, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectHeight:F

    div-float v6, v5, v7

    sub-float v10, v3, v6

    iget v6, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectWidth:F

    add-float/2addr v1, v6

    div-float/2addr v2, v7

    add-float v11, v1, v2

    div-float/2addr v5, v7

    add-float v12, v3, v5

    iget v14, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectRadius:F

    iget-object v15, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentOuterDiameter()F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentOuterDiameter()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentStrokeWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v8, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarAlpha:I

    const/16 v3, 0xff

    if-eq v8, v3, :cond_0

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    mul-float v6, v3, v1

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    mul-float v7, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCenterX()F

    move-result v0

    sub-float v4, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCenterY()F

    move-result v0

    sub-float v5, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCenterX()F

    move-result v0

    add-float v6, v0, v2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCenterY()F

    move-result v0

    add-float v7, v0, v2

    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mMax:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic e(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroidx/dynamicanimation/animation/c;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initSpring$0(Landroidx/dynamicanimation/animation/c;FF)V

    return-void
.end method

.method public static synthetic f(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initRecoverAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initResumeAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initPauseAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->lambda$initResumeAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initAnimator()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initSpring()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initPauseAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initResumeAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initErrorAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->initRecoverAnimator()V

    return-void
.end method

.method private initAttr(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_pause_icon_rect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_pause_icon_rect_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_pause_icon_rect_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_pause_icon_rect_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconRectGap:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_icon_rect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_icon_rect_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_icon_rect_bias:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconRectBias:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_icon_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconCircleRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_error_icon_circle_bias:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconCircleBias:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_shadow_x_bias:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowXBias:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$dimen;->coui_circular_progress_shadow_y_bias:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowYBias:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/progressbar/R$color;->coui_circular_progress_shadow_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lt/h;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowColor:I

    return-void
.end method

.method private initErrorAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressShrinkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressShrinkAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressShrinkAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/progressbar/f;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/progressbar/f;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/g;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/g;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressShrinkAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

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
.end method

.method private initPaint()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-direct {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-direct {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initPauseAnimator()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPauseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPauseAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPauseAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/progressbar/a;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/progressbar/a;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_IN_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/b;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/b;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPauseAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$2;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

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
.end method

.method private initRecoverAnimator()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressEnlargeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressEnlargeAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressEnlargeAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/progressbar/d;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/progressbar/d;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconRecoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/e;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/e;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mRecoverAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconRecoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressEnlargeAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mRecoverAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$5;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

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
.end method

.method private initResumeAnimator()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressResumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressResumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressResumeAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_OUT_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressResumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/progressbar/h;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/progressbar/h;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconResumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconResumeAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->DEFAULT_LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconResumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/i;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/i;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mResumeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressResumeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconResumeAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mResumeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$3;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

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
.end method

.method private initSpring()V
    .locals 3

    new-instance v0, Landroidx/dynamicanimation/animation/g;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/g;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->d(F)Landroidx/dynamicanimation/animation/g;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/g;->f(F)Landroidx/dynamicanimation/animation/g;

    new-instance v1, Landroidx/dynamicanimation/animation/f;

    sget-object v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->VISUAL_PROGRESS:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/f;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/f;->x(Landroidx/dynamicanimation/animation/g;)Landroidx/dynamicanimation/animation/f;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    new-instance v1, Lcom/coui/appcompat/progressbar/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/c;-><init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/c;->b(Landroidx/dynamicanimation/animation/c$r;)Landroidx/dynamicanimation/animation/c;

    return-void
.end method

.method private synthetic lambda$initErrorAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarOuterDiameter()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarOuterDiameter()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    sget-object v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->ColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, p1, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v7}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, p1, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setCurrentBarColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setCurrentBarColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initErrorAnimator$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorScale:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentErrorIconAlpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initPauseAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarAlpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initPauseAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentPauseIconAlpha:I

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    const v0, 0x3f333333    # 0.7f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initRecoverAnimator$7(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarOuterDiameter()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarOuterDiameter()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorOuterDiameter()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorStrokeWidth()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    sget-object v4, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->ColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v5, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarErrorColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v7}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v4, v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setCurrentBarColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setCurrentBarColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initRecoverAnimator$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    const v1, 0x3f333333    # 0.7f

    add-float/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconErrorScale:F

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentErrorIconAlpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initResumeAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarAlpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initResumeAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCurrentPauseIconAlpha:I

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPauseScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initSpring$0(Landroidx/dynamicanimation/animation/c;FF)V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private notifyActualProgressChanged()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mOnProgressChangedListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mActualProgress:I

    invoke-interface {v0, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;->onProgressChanged(I)V

    :cond_0
    return-void
.end method

.method private notifyVisualProgressChanged()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mOnProgressChangedListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    invoke-interface {v0, p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;->onVisualProgressChanged(F)V

    :cond_0
    return-void
.end method

.method private setVisualProgress(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getCurrentBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getCurrentBarColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarCurrentStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v5, v0, v1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    mul-float v6, v0, v1

    iget v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mGlobalAlpha:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->drawProgress(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->drawPauseIcon(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->drawErrorIcon(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public error()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mGlobalAlpha:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getVisualProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    return p0
.end method

.method public invalidateSelf()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mHostView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mAnimating:Z

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public recover()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mRecoverAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mHostView:Landroid/view/View;

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mResumeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mGlobalAlpha:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setErrorIconColor(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mErrorIconColor:I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorColor(I)V

    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mHostView:Landroid/view/View;

    return-void
.end method

.method public setIsDrawShadow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowRadius:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowXBias:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowYBias:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowRadius:F

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowXBias:F

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowYBias:F

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mShadowColor:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-gez p1, :cond_0

    const-string p1, "COUICircularDrawable"

    const-string v0, "Max value should not lesser than 0!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mMax:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mActualProgress:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mActualProgress:I

    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    :cond_1
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mMax:I

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mOnProgressChangedListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    return-void
.end method

.method public setOnProgressStateAnimatorListener(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mOnProgressStateAnimatorListener:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    return-void
.end method

.method public setPauseIconColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mPauseIconColor:I

    return-void
.end method

.method public setProgress(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmActualProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mActualProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmVisualProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nanimate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUICircularDrawable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mActualProgress:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->actual2VisualProgress(F)F

    move-result p1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    cmpl-float v0, p2, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/c;->m(F)Landroidx/dynamicanimation/animation/c;

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mSpringAnimation:Landroidx/dynamicanimation/animation/f;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/f;->s(F)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mVisualProgress:F

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->notifyVisualProgressChanged()V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->notifyActualProgressChanged()V

    return-void
.end method

.method public setProgressBarErrorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorColor(I)V

    return-void
.end method

.method public setProgressBarErrorSize(FF)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorOuterDiameter(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorStrokeWidth(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorOuterDiameter(F)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarErrorStrokeWidth(F)V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setProperties(FFFF)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    iput p3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarOuterDiameter:F

    iput p4, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarStrokeWidth:F

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCenterX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCenterY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarOuterDiameter:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarStrokeWidth:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarOuterDiameter:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarStrokeWidth:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterX:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCenterX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mCenterY:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCenterY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarOuterDiameter:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarStrokeWidth:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarOuterDiameter:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentOuterDiameter(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressBarStrokeWidth:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarCurrentStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mProgressProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->getProgressBarStrokeWidth()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->mTrackProperty:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->setProgressBarColor(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
