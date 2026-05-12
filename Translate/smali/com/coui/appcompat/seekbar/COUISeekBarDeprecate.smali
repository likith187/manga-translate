.class public Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;
.super Landroid/widget/AbsSeekBar;
.source "SourceFile"

# interfaces
.implements Ld7/a;
.implements Ld7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;,
        Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE:F = 6.0f

.field private static final DAMPING_DISTANCE:I = 0x14

.field private static final DEFORMATION_FORMULA_CONSTANT:D = -11.5

.field protected static final DIRECTION_180:I = 0xb4

.field private static final DIRECTION_360:I = 0x168

.field protected static final DIRECTION_90:I = 0x5a

.field private static final DURATION_150:I = 0x96

.field private static final DURATION_483:I = 0x1e3

.field private static final FAST_MOVE_VELOCITY:I = 0x5f

.field private static final MAX_FAST_MOVE_PERCENT:F = 0.95f

.field private static final MAX_MOVE_DAMPING:F = 0.4f

.field private static final MAX_VELOCITY:I = 0x1f40

.field private static final MIN_FAST_MOVE_PERCENT:F = 0.05f

.field public static final MOVE_BY_DEFAULT:I = 0x0

.field public static final MOVE_BY_DISTANCE:I = 0x2

.field public static final MOVE_BY_FINGER:I = 0x1

.field private static final ONE_SECOND_UNITS:I = 0x3e8

.field private static final PHYSICAL_VELOCITY_LIMIT:I = 0x64

.field private static final PROGRESS_RADIUS_SCALE:F = 4.0f

.field protected static final PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final RELEASE_ANIM_DURATION:I = 0xb7

.field private static final SCALE_DEFORMATION_MAX:F = 2.0f

.field private static final SCALE_DEFORMATION_MIN:F = -1.0f

.field private static final SCALE_DEFORMATION_TIMES:I = 0x5

.field private static final SCALE_MAX:F = 1.0f

.field private static final SCALE_MIN:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "COUISeekBarDeprecate"

.field private static final TEXT_SHADOW_DX:F = 0.0f

.field private static final TEXT_SHADOW_DY:F = 8.0f

.field private static final TEXT_SHADOW_RADIUS:F = 25.0f

.field protected static final THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMB_SHADOW_OFFSET:I = 0x8

.field private static final TOUCH_ANIMATION_ENLARGE_DURATION:I = 0xb7

.field private static final VELOCITY_COMPUTE_TIME:I = 0x64


# instance fields
.field protected mBackgroundColor:I

.field mBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field protected mBackgroundEnlargeScale:F

.field protected mBackgroundHeight:F

.field protected mBackgroundRadius:F

.field private mBackgroundRect:Landroid/graphics/RectF;

.field protected mBackgroundRoundCornerWeight:F

.field protected mClickAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mClipProgressPath:Landroid/graphics/Path;

.field protected mClipProgressRect:Landroid/graphics/RectF;

.field protected mCurBackgroundHeight:F

.field protected mCurBackgroundRadius:F

.field private mCurBottomDeformationValue:F

.field protected mCurPaddingHorizontal:F

.field protected mCurProgressHeight:F

.field protected mCurProgressRadius:F

.field private mCurTopDeformationValue:F

.field private mCustomProgressAnimDuration:F

.field private mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

.field private mDamping:F

.field protected mEnableAdaptiveVibrator:Z

.field protected mEnableVibrator:Z

.field private mExploreByTouchHelper:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;

.field private mFastMoveScaleOffsetX:F

.field private mFastMoveSpring:Lu2/e;

.field private mFastMoveSpringConfig:Lu2/f;

.field private mFlingBehavior:Ld7/i;

.field private mFlingDampingRatio:F

.field private mFlingFrequency:F

.field private mFlingLinearDamping:F

.field private mFlingValueHolder:Ld7/k;

.field private mFlingVelocity:F

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field protected mHasMotorVibrator:Z

.field private mHeightBottomDeformedDownValue:F

.field private mHeightBottomDeformedUpValue:F

.field private mHeightTopDeformedDownValue:F

.field private mHeightTopDeformedUpValue:F

.field protected mHorizontalPaddingScale:F

.field private mIncrement:I

.field private mInnerShadowRadiusSize:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mIsDragging:Z

.field private mIsPhysicsEnable:Z

.field private mIsProgressFull:Z

.field private mIsStartFromMiddle:Z

.field private mIsSupportDeformation:Z

.field private mIsSupportSmoothRoundCorner:Z

.field protected mLabelX:F

.field protected mLastX:F

.field protected mLinearMotorVibrator:Ljava/lang/Object;

.field protected mMax:I

.field private mMaxHeightDeformedValue:F

.field private mMaxMovingDistance:I

.field private mMaxWidth:I

.field private mMaxWidthDeformedValue:F

.field protected mMin:I

.field private mMoveType:I

.field protected mOldProgress:I

.field private mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

.field private mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

.field protected mPaddingHorizontal:F

.field protected mPaint:Landroid/graphics/Paint;

.field private mPhysicalAnimator:Ld7/l;

.field protected mProgress:I

.field protected mProgressColor:I

.field mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private mProgressContentDescription:Ljava/lang/String;

.field protected mProgressEnlargeScale:F

.field protected mProgressHeight:F

.field protected mProgressRadius:F

.field protected mProgressRect:Landroid/graphics/RectF;

.field protected mProgressRoundCornerWeight:F

.field protected mProgressScaleInterpolator:Landroid/view/animation/Interpolator;

.field protected mProgressScaleRadius:F

.field private mRealProgress:I

.field private mRefreshStyle:I

.field protected mScale:F

.field private mSeekbarMinHeight:I

.field private mShadowColor:I

.field private mShadowRadiusSize:I

.field protected mShowProgress:Z

.field private mShowText:Z

.field protected mShowThumb:Z

.field private mStartDragging:Z

.field protected mTempRect:Landroid/graphics/RectF;

.field private mTextColor:I

.field private mTextContent:Ljava/lang/String;

.field private mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

.field private mTextMarginTop:F

.field private mTextPaint:Landroid/text/TextPaint;

.field protected mThumbAnimateInterpolator:Landroid/view/animation/Interpolator;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field protected mThumbColor:I

.field mThumbColorStateList:Landroid/content/res/ColorStateList;

.field protected mThumbOutHeight:F

.field protected mThumbOutRadius:F

.field protected mThumbOutRoundCornerWeight:F

.field protected mThumbShadowColor:I

.field private mThumbShadowRadiusSize:I

.field protected mTouchAnimator:Landroid/animation/AnimatorSet;

.field protected mTouchDownX:F

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

.field private mWidthDeformedValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/seekbar/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/seekbar/R$style;->COUISeekBar_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/seekbar/R$style;->COUISeekBar:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableVibrator:Z

    .line 7
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableAdaptiveVibrator:Z

    .line 8
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHasMotorVibrator:Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 10
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchSlop:I

    .line 11
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    .line 12
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    const/16 v4, 0x64

    .line 13
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    .line 14
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    .line 15
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    .line 16
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 17
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 18
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 19
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsProgressFull:Z

    .line 20
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportSmoothRoundCorner:Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 21
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimDuration:F

    .line 22
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressPath:Landroid/graphics/Path;

    .line 24
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    .line 25
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    .line 26
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTempRect:Landroid/graphics/RectF;

    .line 27
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    const v2, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v2, v0, v4, v5}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressScaleInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    .line 29
    invoke-static {v2, v0, v4, v5}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbAnimateInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowProgress:Z

    .line 31
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowThumb:Z

    .line 32
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIncrement:I

    .line 33
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    .line 34
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    .line 35
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMoveType:I

    const-wide v6, 0x407f400000000000L    # 500.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 36
    invoke-static {v6, v7, v8, v9}, Lu2/f;->b(DD)Lu2/f;

    move-result-object v6

    iput-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpringConfig:Lu2/f;

    .line 37
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    .line 38
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mDamping:F

    .line 39
    invoke-static {v2, v0, v4, v5}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 40
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    .line 41
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    const v2, 0x40333333    # 2.8f

    .line 42
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingFrequency:F

    .line 43
    iput v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingDampingRatio:F

    const/high16 v2, 0x41700000    # 15.0f

    .line 44
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingLinearDamping:F

    const/16 v2, 0x1e

    .line 45
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    const/high16 v2, 0x41e40000    # 28.5f

    .line 46
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    const v2, 0x40966666    # 4.7f

    .line 47
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    .line 49
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    if-nez v2, :cond_1

    .line 50
    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    .line 51
    :cond_1
    invoke-static {p0, v3}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 52
    sget-object v2, Lcom/support/seekbar/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 53
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarEnableVibrator:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableVibrator:Z

    .line 54
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarAdaptiveVibrator:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableAdaptiveVibrator:Z

    .line 55
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarPhysicsEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    .line 56
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowProgress:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowProgress:Z

    .line 57
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowThumb:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowThumb:Z

    .line 58
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarStartMiddle:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    .line 59
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressFull:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsProgressFull:Z

    .line 60
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 61
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 62
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 63
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColor:I

    .line 64
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    .line 65
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColor:I

    .line 66
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_shadow_color:I

    invoke-static {p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowColor:I

    .line 67
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-static {p4, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowColor:I

    .line 68
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundRadius:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$dimen;->coui_seekbar_background_radius:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 70
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    .line 71
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressRadius:I

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$dimen;->coui_seekbar_progress_radius:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 73
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    .line 74
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundRoundCornerWeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    .line 75
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressRoundCornerWeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    .line 76
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowRadiusSize:I

    .line 77
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowRadiusSize:I

    .line 78
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarInnerShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInnerShadowRadiusSize:I

    .line 79
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressPaddingHorizontal:I

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_progress_padding_horizontal:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 81
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    .line 82
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundHeight:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    .line 83
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressHeight:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    .line 84
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarMinHeight:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_view_min_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 86
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mSeekbarMinHeight:I

    .line 87
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarMaxWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidth:I

    .line 88
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackGroundEnlargeScale:I

    const/high16 p4, 0x40c00000    # 6.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    .line 89
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressEnlargeScale:I

    const/high16 p4, 0x40800000    # 4.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    .line 90
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowText:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowText:Z

    .line 91
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextContent:Ljava/lang/String;

    .line 92
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$color;->coui_seekbar_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextColor:I

    .line 93
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarTextMarginTop:I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_text_margin_top:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 95
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextMarginTop:F

    .line 96
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarDeformation:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    .line 97
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    new-instance p2, Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/coui/appcompat/seekbar/TextDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    .line 99
    invoke-static {p1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHasMotorVibrator:Z

    .line 100
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportSmoothRoundCorner:Z

    .line 101
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initView()V

    .line 102
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    .line 103
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveScaleOffsetX:F

    return p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIncrement:I

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method private attemptClaimDrag()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private bottomDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getHeightBottomDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBottomDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBottomDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private calculateDamping(F)F
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mDamping:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v3, p1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    const v1, 0x3ecccccd    # 0.4f

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_1

    cmpg-float p0, v2, v1

    if-gez p0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2
.end method

.method private calculateFlingDeformationValue(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    add-float/2addr p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->heightDeformedChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    add-float/2addr p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->heightDeformedChanged()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->resetDeformationValue()V

    :goto_0
    return-void
.end method

.method private calculateTouchDeformationValue()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40a00000    # 5.0f

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->heightDeformedChanged()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v3

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->computeValue(DF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->heightDeformedChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDeformationValue()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->resetDeformationValue()V

    :cond_0
    return-void
.end method

.method private computeValue(DF)F
    .locals 4

    float-to-double v0, p3

    const-wide/high16 v2, -0x3fd9000000000000L    # -11.5

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    mul-double/2addr v0, p2

    double-to-float p0, v0

    return p0
.end method

.method private drawProgress(Landroid/graphics/Canvas;IFF)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportSmoothRoundCorner:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInnerShadowRadiusSize:I

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v8, :cond_2

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInnerShadowRadiusSize:I

    int-to-float v8, v8

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowColor:I

    invoke-virtual {v6, v8, v7, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInnerShadowRadiusSize:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    sub-float v8, v3, v8

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sub-float/2addr v8, v10

    int-to-float v11, v2

    iget v12, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    div-float v13, v12, v9

    sub-float v13, v11, v13

    div-int/lit8 v14, v7, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    div-int/lit8 v14, v7, 0x2

    int-to-float v14, v14

    add-float/2addr v14, v4

    add-float/2addr v14, v10

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v11, v7

    invoke-virtual {v6, v8, v13, v14, v11}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v5, :cond_1

    new-instance v15, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v15, v1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v10

    invoke-virtual/range {v15 .. v20}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    if-eqz v6, :cond_3

    cmpl-float v6, v3, v4

    if-lez v6, :cond_3

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    div-float v8, v7, v9

    sub-float v8, v2, v8

    div-float/2addr v7, v9

    add-float/2addr v2, v7

    invoke-virtual {v6, v4, v8, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    sub-float/2addr v3, v7

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    add-float/2addr v3, v7

    int-to-float v2, v2

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    div-float v10, v8, v9

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    sub-float/2addr v10, v11

    sub-float v10, v2, v10

    iget v12, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v4, v12

    add-float/2addr v4, v7

    div-float/2addr v8, v9

    sub-float/2addr v8, v11

    add-float/2addr v2, v8

    invoke-virtual {v6, v3, v10, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v3, v7

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    add-float/2addr v3, v8

    int-to-float v2, v2

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    div-float v10, v8, v9

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    sub-float/2addr v10, v11

    sub-float v10, v2, v10

    iget v12, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    add-float/2addr v4, v12

    sub-float/2addr v4, v7

    div-float/2addr v8, v9

    sub-float/2addr v8, v11

    add-float/2addr v2, v8

    invoke-virtual {v6, v3, v10, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-eqz v5, :cond_5

    new-instance v10, Lcom/oplus/graphics/OplusPath;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressPath:Landroid/graphics/Path;

    invoke-direct {v10, v2}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    iget-object v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    iget v13, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v14, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    sget-object v15, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v12, v13

    invoke-virtual/range {v10 .. v15}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(Landroid/graphics/RectF;FFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowThumb:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float v6, v4, v9

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    if-eqz v5, :cond_6

    new-instance v6, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v6, v1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget v9, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    move v8, v9

    invoke-virtual/range {v6 .. v11}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_4

    :cond_6
    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRect:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;I)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, p2, 0x2

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextMarginTop:F

    add-float/2addr v3, v5

    div-float v5, v0, v4

    div-float/2addr v2, v4

    sub-float/2addr v5, v2

    sub-float/2addr v3, v5

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    add-float/2addr v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextMarginTop:F

    sub-float/2addr v3, v5

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float v2, v0, v4

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    add-float/2addr v3, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    sub-float/2addr v3, v2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v0, v4

    int-to-float p2, p2

    invoke-virtual {p1, v3, v0, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextContent:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;IFF)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowRadiusSize:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowRadiusSize:I

    int-to-float v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    int-to-float v2, v2

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    move/from16 v6, p3

    invoke-virtual {p1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move/from16 v6, p3

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportSmoothRoundCorner:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRoundCornerWeight:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    new-instance v3, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v3, p1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float v4, v2, v5

    sub-float v7, v1, v4

    div-float/2addr v2, v5

    add-float v9, v1, v2

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    iget-object v12, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRoundCornerWeight:F

    move-object v5, v3

    move/from16 v6, p3

    move/from16 v8, p4

    move v10, v11

    invoke-virtual/range {v5 .. v13}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(FFFFFFLandroid/graphics/Paint;F)V

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float v4, v3, v5

    sub-float v4, v2, v4

    div-float/2addr v3, v5

    add-float v5, v2, v3

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move/from16 v2, p3

    move v3, v4

    move/from16 v4, p4

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private ensureSize()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->resetProgressSize()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$dimen;->coui_seekbar_progress_pressed_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    div-float v1, v0, v1

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHorizontalPaddingScale:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRoundCornerWeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUISeekBarDeprecate ensureSize : mIsProgressFull:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsProgressFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mPaddingHorizontal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBarDeprecate"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateBehavior()V

    return-void
.end method

.method private flingBehaviorAfterDeformationDrag()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getNormalSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    int-to-float v0, v0

    int-to-float v2, v1

    div-float v2, v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getDeformationFlingScale()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ld7/j;->c(F)Ld7/j;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getDeformationFlingScale()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-virtual {v3, v0}, Ld7/j;->c(F)Ld7/j;

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    invoke-virtual {p0}, Ld7/i;->n0()V

    :cond_3
    return-void
.end method

.method private flingBehaviorAfterEndDrag(F)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getNormalSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getDeformationFlingScale()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v2, v1

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getDeformationFlingScale()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    int-to-float v1, v1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {v3, v2}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ld7/j;->c(F)Ld7/j;

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    invoke-virtual {p0, p1}, Ld7/i;->o0(F)V

    return-void
.end method

.method private getDeformationFlingScale()F
    .locals 3

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    const/high16 v2, 0x40a00000    # 5.0f

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    div-float/2addr p0, v2

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    div-float/2addr p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method private getFastMoveSpring()Lu2/e;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpring:Lu2/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initFastMoveAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpring:Lu2/e;

    return-object p0
.end method

.method private getHeightBottomDeformedValue()F
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    :goto_0
    sub-float/2addr v0, p0

    return v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    goto :goto_0
.end method

.method private getHeightTopDeformedValue()F
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    :goto_0
    sub-float/2addr v0, p0

    return v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    goto :goto_0
.end method

.method private getNormalSeekBarWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getProgressLimit(I)I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int v1, v0, p0

    sub-int/2addr p0, v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getRealProgress(I)I
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getRealScale(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private heightDeformedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->topDeformedChange()Z

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->bottomDeformedChange()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurTopDeformationValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBottomDeformationValue:F

    invoke-interface {v0, v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;->onHeightDeformedChanged(FF)V

    :cond_1
    return-void
.end method

.method private initAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$1;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initFastMoveAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpring:Lu2/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object v0

    invoke-virtual {v0}, Lu2/b;->c()Lu2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpring:Lu2/e;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpringConfig:Lu2/f;

    invoke-virtual {v0, v1}, Lu2/e;->o(Lu2/f;)Lu2/e;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFastMoveSpring:Lu2/e;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$2;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    invoke-virtual {v0, v1}, Lu2/e;->a(Lu2/h;)Lu2/e;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initPhysicsAnimator(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Ld7/l;->j(Landroid/content/Context;)Ld7/l;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    new-instance p1, Ld7/k;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ld7/k;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getNormalSeekBarWidth()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUISeekBarDeprecate initPhysicsAnimator : setActiveFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISeekBarDeprecate"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ld7/i;

    const/4 v2, 0x4

    int-to-float p1, p1

    invoke-direct {v1, v2, v0, p1}, Ld7/i;-><init>(IFF)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingValueHolder:Ld7/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ld7/j;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ld7/d;->K([Ld7/j;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingFrequency:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingDampingRatio:F

    invoke-virtual {p1, v0, v1}, Ld7/g;->B(FF)Ld7/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingLinearDamping:F

    invoke-virtual {p1, v0}, Ld7/i;->m0(F)Ld7/i;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0}, Ld7/l;->d(Ld7/d;)Ld7/d;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->a(Ld7/d;Ld7/a;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->c(Ld7/d;Ld7/b;)V

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchSlop:I

    new-instance v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mExploreByTouchHelper:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mExploreByTouchHelper:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$PatternExploreByTouchHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/a;->invalidateRoot()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$dimen;->coui_seekbar_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextColor:I

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setThumbBitmap()V

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    div-float v1, p1, v0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgressLimit(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    const/4 v2, 0x1

    invoke-interface {p1, p0, v0, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    if-eq v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performFeedback()V

    :cond_2
    return-void
.end method

.method private isDeformationFling()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ld7/l;->v()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMoveFollowHand()Z
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMoveType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isToucheInSeekBar(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->touchInSeekBarWhenDeformation(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetDeformationValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->heightDeformedChanged()V

    :cond_0
    return-void
.end method

.method private resetProgressSize()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsProgressFull:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    :cond_0
    return-void
.end method

.method private setDeformationScale(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x40a00000    # 5.0f

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    mul-float/2addr p1, v2

    :cond_1
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    return-void
.end method

.method private setFlingScale(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->calculateFlingDeformationValue(F)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setDeformationScale(F)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private setThumbBitmap()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setTouchScale(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->calculateTouchDeformationValue()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private setValueForLabel(Lcom/coui/appcompat/seekbar/TextDrawable;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/seekbar/TextDrawable;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/coui/appcompat/view/ViewUtil;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/coui/appcompat/view/DescendantOffsetUtil;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/coui/appcompat/view/ViewUtil;->getContentViewOverlay(Landroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    invoke-virtual {v0}, Lu2/e;->c()D

    move-result-wide v1

    invoke-virtual {v0}, Lu2/e;->e()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v2, p1, v2

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f733333    # 0.95f

    if-ltz v2, :cond_0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float p1, p0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_2

    int-to-float p0, p0

    mul-float/2addr v1, v3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, p0, p1}, Lu2/e;->n(D)Lu2/e;

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float p1, p0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_2

    int-to-float p0, p0

    mul-float/2addr v1, v3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, p0, p1}, Lu2/e;->n(D)Lu2/e;

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lu2/e;->n(D)Lu2/e;

    :cond_2
    :goto_0
    return-void
.end method

.method private stopDeformationFling()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isDeformationFling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopPhysicsMove()V

    :cond_0
    return-void
.end method

.method private topDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getHeightTopDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurTopDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurTopDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private touchInSeekBarWhenDeformation(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->calculateDamping(F)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setTouchScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-eq v1, v0, :cond_2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    if-eq v2, p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performFeedback()V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->startFastMoveAnimation(F)V

    :cond_3
    return-void
.end method

.method private trackTouchEventByFinger(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->calculateDamping(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    sub-int v2, v0, v2

    if-le p1, v2, :cond_0

    :goto_0
    move v0, v4

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v2

    if-ge p1, v2, :cond_1

    :goto_1
    move v0, v3

    goto :goto_3

    :cond_1
    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_2
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_2

    :goto_3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-eq v1, v0, :cond_6

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_5
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    if-eq v2, p1, :cond_6

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performFeedback()V

    :cond_6
    return-void
.end method

.method private updateBehavior()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getNormalSeekBarWidth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUISeekBarDeprecate updateBehavior : setActiveFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISeekBarDeprecate"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Ld7/i;->k0(FF)V

    :cond_0
    return-void
.end method

.method private updateScale()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    return-void
.end method


# virtual methods
.method protected animForClick(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    div-float v1, p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgressLimit(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->startTransitionAnim(IZ)V

    return-void
.end method

.method protected checkThumbPosChange(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->checkThumbPosChange(IZZ)V

    return-void
.end method

.method protected checkThumbPosChange(IZZ)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-eq v0, p1, :cond_1

    .line 3
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    .line 5
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 6
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-interface {p1, p0, v1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    if-eq v0, p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performFeedback()V

    :cond_1
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawActiveTrack(Landroid/graphics/Canvas;F)V
    .locals 11

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarCenterY()I

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowThumb:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sub-float/2addr v1, v3

    mul-float/2addr v3, v2

    add-float/2addr p2, v3

    move v3, v1

    move v4, v3

    move v1, p2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float v4, v3, v2

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutRadius:F

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    sub-float v3, p2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    sub-float/2addr v1, v5

    mul-float/2addr v5, v2

    add-float/2addr p2, v5

    move v10, v1

    move v1, p2

    move p2, v3

    move v3, v10

    :goto_0
    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    int-to-float v6, v0

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    div-float v8, v7, v2

    sub-float v8, v6, v8

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v7, v2

    add-float/2addr v6, v7

    sub-float/2addr v6, v9

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    iget-boolean v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealScale(F)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, p2

    sub-float p2, v3, v5

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    div-float/2addr v1, v2

    sub-float v5, v3, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/RectF;->right:F

    move v1, p2

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealScale(F)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, p2

    add-float p2, v3, v5

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    div-float/2addr v1, v2

    sub-float v5, v3, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/RectF;->right:F

    move v1, p2

    move p2, v3

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    add-float v4, v5, p2

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealScale(F)F

    move-result v5

    mul-float/2addr v5, p2

    sub-float p2, v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    add-float/2addr v6, v1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v6, v3

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    sub-float/2addr v1, v3

    sub-float/2addr v6, v1

    iput v6, v5, Landroid/graphics/RectF;->left:F

    move v1, p2

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealScale(F)F

    move-result v5

    mul-float/2addr v5, p2

    add-float p2, v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v6, v3

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClipProgressRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    add-float/2addr v6, v1

    sub-float/2addr v6, v7

    add-float/2addr v6, v3

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    sub-float/2addr v6, v1

    iput v6, v5, Landroid/graphics/RectF;->right:F

    move v1, p2

    move v3, v1

    move p2, v4

    :goto_1
    iget-boolean v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowProgress:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawProgress(Landroid/graphics/Canvas;IFF)V

    :cond_4
    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbOutHeight:F

    div-float v3, p2, v2

    sub-float v3, v1, v3

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    sub-float p2, v1, v3

    div-float/2addr p2, v2

    add-float/2addr p2, v3

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLabelX:F

    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowThumb:Z

    if-eqz p2, :cond_5

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawThumb(Landroid/graphics/Canvas;IFF)V

    :cond_5
    iget-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowText:Z

    if-eqz p2, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawText(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method protected drawInactiveTrack(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarCenterY()I

    move-result v4

    iget-boolean v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportSmoothRoundCorner:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowRadiusSize:I

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v8, :cond_2

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowRadiusSize:I

    int-to-float v8, v8

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowColor:I

    invoke-virtual {v6, v8, v7, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShadowRadiusSize:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    sub-float v8, v2, v8

    int-to-float v10, v4

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    div-float v12, v11, v9

    sub-float v12, v10, v12

    div-int/lit8 v13, v7, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    div-int/lit8 v13, v7, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v3

    div-float/2addr v11, v9

    add-float/2addr v10, v11

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v10, v7

    invoke-virtual {v6, v8, v12, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v5, :cond_1

    new-instance v14, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v14, v1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v15, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget-object v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    move/from16 v16, v6

    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget-object v8, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_2
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    sub-float/2addr v2, v7

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    add-float/2addr v2, v7

    int-to-float v4, v4

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    div-float v8, v7, v9

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    sub-float/2addr v8, v10

    sub-float v8, v4, v8

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v3, v11

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    add-float/2addr v3, v11

    div-float/2addr v7, v9

    sub-float/2addr v7, v10

    add-float/2addr v4, v7

    invoke-virtual {v6, v2, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v2, v7

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    add-float/2addr v2, v7

    int-to-float v4, v4

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    div-float v8, v7, v9

    iget v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    sub-float/2addr v8, v10

    sub-float v8, v4, v8

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    add-float/2addr v3, v11

    iget v11, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    sub-float/2addr v3, v11

    div-float/2addr v7, v9

    sub-float/2addr v7, v10

    add-float/2addr v4, v7

    invoke-virtual {v6, v2, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    if-eqz v5, :cond_4

    new-instance v9, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v9, v1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v10, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v12, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget-object v13, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    iget v14, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    move v11, v12

    invoke-virtual/range {v9 .. v14}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public ensureLabelsAdded()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setValueForLabel(Lcom/coui/appcompat/seekbar/TextDrawable;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLabelsAdded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setValueForLabel(Lcom/coui/appcompat/seekbar/TextDrawable;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLabelsRemoved()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-static {p0}, Lcom/coui/appcompat/view/ViewUtil;->getContentViewOverlay(Landroid/view/View;)Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected final getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
    .locals 0

    if-nez p2, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p2, p0, p3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method protected getEnd()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method public getLabelHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    return p0
.end method

.method public getMoveDamping()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mDamping:F

    return p0
.end method

.method public getMoveType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMoveType:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    return p0
.end method

.method protected getSeekBarCenterY()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    sub-int/2addr v1, p0

    shr-int/lit8 p0, v1, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method protected getSeekBarWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected getStart()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method protected handleMotionEventDown(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    return-void
.end method

.method protected handleMotionEventMove(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-float v1, v2

    add-float/2addr v3, v1

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMoveType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->trackTouchEventByFinger(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isToucheInSeekBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopDeformationFling()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->startDrag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->touchAnim()V

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->invalidateProgress(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected handleMotionEventUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lu2/e;->n(D)Lu2/e;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMotionEventUp mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBarDeprecate"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->flingBehaviorAfterEndDrag(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->flingBehaviorAfterDeformationDrag()V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->releaseAnim()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->animForClick(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isLayoutRtl()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationCancel(Ld7/d;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationEnd(Ld7/d;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAnimationStart(Ld7/d;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/a;->onAnimationStart(Ld7/d;)V

    return-void
.end method

.method public onAnimationUpdate(Ld7/d;)V
    .locals 3

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getNormalSeekBarWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v0, v0

    sub-float v1, v0, p1

    div-float/2addr v1, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float v1, p1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setFlingScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getProgressLimit(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getStart()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->registerHapticObserver(Landroid/content/Context;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopPhysicsMove()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->unRegisterHapticObserver()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawInactiveTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->drawActiveTrack(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected onEnlargeAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    mul-float v2, v0, v1

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    mul-float v3, v0, v2

    sub-float/2addr v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    mul-float/2addr v2, v0

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHorizontalPaddingScale:F

    mul-float/2addr v1, v0

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mSeekbarMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    :goto_0
    move p2, v1

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidth:I

    if-lez v0, :cond_2

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;->mSaveProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iput p0, v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$SavedState;->mSaveProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopPhysicsMove()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateBehavior()V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStartTrackingTouch(Z)V

    return-void
.end method

.method onStartTrackingTouch(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStopTrackingTouch(Z)V

    return-void
.end method

.method protected onStopTrackingTouch(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->handleMotionEventUp(Landroid/view/MotionEvent;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->clearDeformationValue()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->handleMotionEventMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent ACTION_UP mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBarDeprecate"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->recycleVelocityTracker()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->handleMotionEventUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->isDeformationFling()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopPhysicsMove()V

    :cond_8
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initPhysicsAnimator(Landroid/content/Context;)V

    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mStartDragging:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->handleMotionEventDown(Landroid/view/MotionEvent;)V

    :goto_1
    return v3
.end method

.method protected performAdaptiveFeedback()Z
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHasMotorVibrator:Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$7;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int v5, v0, v1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    sub-int v6, p0, v1

    const/16 v7, 0x320

    const/16 v8, 0x4b0

    const/16 v4, 0x9a

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->setLinearMotorVibratorStrength(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :goto_2
    return v2
.end method

.method protected performFeedback()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHasMotorVibrator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$6;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/seekbar/R$styleable;->COUISeekBar:[I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/seekbar/R$styleable;->COUISeekBar:[I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRefreshStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method protected releaseAnim()V
    .locals 10

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const-string v2, "progressRadius"

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    new-array v7, v3, [F

    aput v4, v7, v5

    aput v6, v7, v1

    const-string v4, "backgroundRadius"

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    new-array v8, v3, [F

    aput v6, v8, v5

    aput v7, v8, v1

    const-string v6, "progressHeight"

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    new-array v9, v3, [F

    aput v7, v9, v5

    aput v8, v9, v1

    const-string v7, "backgroundHeight"

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    new-array v3, v3, [F

    aput v8, v3, v5

    aput v9, v3, v1

    const-string v1, "animatePadding"

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    filled-new-array {v2, v4, v6, v7, v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    const-wide/16 v1, 0xb7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setBackgroundEnlargeScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundEnlargeScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundHeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundHeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundRoundCornerWeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomProgressAnimDuration(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimDuration:F

    return-void
.end method

.method public setCustomProgressAnimInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setDeformedListener(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnDeformedListener;

    return-void
.end method

.method public setDeformedParams(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getScale()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mScale:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getWidthDeformedValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mWidthDeformedValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedDownValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightBottomDeformedDownValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedDownValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mHeightTopDeformedDownValue:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mEnableVibrator:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColor:I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColor:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_thumb_shadow_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowRadiusSize:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbShadowRadiusSize:I

    :goto_0
    return-void
.end method

.method public setFlingLinearDamping(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingLinearDamping:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld7/i;->m0(F)Ld7/i;

    :cond_0
    return-void
.end method

.method public setFlingProperty(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingFrequency:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingDampingRatio:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld7/g;->B(FF)Ld7/d;

    :cond_0
    return-void
.end method

.method public setIncrement(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIncrement:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected setLocalMax(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method

.method protected setLocalMin(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMin(I)V

    return-void
.end method

.method protected setLocalProgress(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealProgress(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mRealProgress:I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMin()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMax : the input params is lower than min. (inputMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUISeekBarDeprecate"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxHeightDeformed(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxHeightDeformedValue:F

    return-void
.end method

.method public setMaxMovingDistance(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxMovingDistance:I

    return-void
.end method

.method public setMaxWidthDeformed(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMaxWidthDeformedValue:F

    return-void
.end method

.method public setMin(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getMax()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMin : the input params is greater than max. (inputMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMax:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUISeekBarDeprecate"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalMin(I)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMoveDamping(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mDamping:F

    return-void
.end method

.method public setMoveType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMoveType:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    return-void
.end method

.method public setPaddingHorizontal(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPaddingHorizontal:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPhysicalEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateBehavior()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->stopPhysicsMove()V

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setProgress(IZZ)V

    return-void
.end method

.method public setProgress(IZZ)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    .line 4
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->startTransitionAnim(IZ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setLocalProgress(I)V

    .line 8
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOldProgress:I

    .line 9
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->updateScale()V

    .line 10
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    if-eqz p2, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getRealProgress(I)I

    move-result p1

    invoke-interface {p2, p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->resetDeformationValue()V

    :cond_2
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setProgressEnlargeScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressEnlargeScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressFull()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsProgressFull:Z

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    return-void
.end method

.method public setProgressHeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressHeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgressRoundCornerWeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsStartFromMiddle:Z

    return-void
.end method

.method public setSupportDeformation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsSupportDeformation:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTextContent:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->setThumbBitmap()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mThumbColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mShowText:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected startDrag()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStartTrackingTouch(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->attemptClaimDrag()V

    return-void
.end method

.method protected startTransitionAnim(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;

    invoke-direct {v1, p0, p2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->getSeekBarWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mMin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    cmpl-float v5, v4, v3

    if-lez v5, :cond_6

    int-to-float v5, v0

    mul-float/2addr v5, v4

    int-to-float v6, p1

    mul-float/2addr v6, v4

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x1

    aput v6, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-nez p2, :cond_2

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_2
    new-instance v6, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$4;

    invoke-direct {v6, p0, v4, v1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$4;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;FI)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p2, :cond_3

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCustomProgressAnimDuration:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3

    :cond_3
    if-lez v2, :cond_4

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v2

    div-float v3, p1, p2

    :cond_4
    const p1, 0x43f18000    # 483.0f

    mul-float/2addr v3, p1

    float-to-long p1, v3

    const-wide/16 v0, 0x96

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    move-wide p1, v0

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_3
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mClickAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method public stopPhysicsMove()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld7/i;->q0()V

    :cond_0
    return-void
.end method

.method protected subtract(FF)F
    .locals 0

    new-instance p0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method protected touchAnim()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mTouchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
