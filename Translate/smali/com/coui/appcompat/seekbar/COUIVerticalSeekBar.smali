.class public Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "SourceFile"

# interfaces
.implements Ld7/a;
.implements Ld7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;,
        Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE:F = 6.0f

.field private static final BUTTON_DEFORMATION_ANIM_DURATION:J = 0x15eL

.field private static final DAMPING_DISTANCE:I = 0x14

.field private static final DEFORMATION_FORMULA_CONSTANT:D = -11.5

.field private static final DURATION_150:I = 0x96

.field private static final DURATION_483:I = 0x1e3

.field private static final FAST_MOVE_VELOCITY:I = 0x5f

.field private static final HOLDER_SCALE:Ljava/lang/String; = "HOLDER_SCALE"

.field public static final LOG_QUEUE_MAX_SIZE:I = 0x14

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

.field private static final PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final RELEASE_ANIM_DURATION:I = 0xb7

.field private static final SCALE_DEFORMATION_MAX:F = 2.0f

.field private static final SCALE_DEFORMATION_MIN:F = -1.0f

.field private static final SCALE_DEFORMATION_TIMES:I = 0x5

.field private static final SCALE_MAX:F = 1.0f

.field private static final SCALE_MIN:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "COUIVerticalSeekBar"

.field private static final TEXT_SHADOW_DX:F = 0.0f

.field private static final TEXT_SHADOW_DY:F = 8.0f

.field private static final TEXT_SHADOW_RADIUS:F = 25.0f

.field private static final TEXT_SIZE:F = 12.0f

.field private static final THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TOUCH_ANIMATION_ENLARGE_DURATION:I = 0xb7

.field public static final TYPE_ENLARGE:I = 0x1

.field public static final TYPE_NORMAL:I = 0x0

.field private static final VELOCITY_COMPUTE_TIME:I = 0x64


# instance fields
.field protected mBackgroundColor:I

.field protected mBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field protected mBackgroundEnlargeScale:F

.field protected mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundPath:Landroid/graphics/Path;

.field protected mBackgroundRadius:F

.field protected mBackgroundRadiusEnlargeScale:F

.field protected mBackgroundRect:Landroid/graphics/Rect;

.field protected mBackgroundRoundCornerWeight:F

.field protected mBackgroundWidth:F

.field private mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

.field private mCachedLocale:Ljava/util/Locale;

.field protected mClickAnimator:Landroid/animation/ValueAnimator;

.field protected mClipProgressPath:Landroid/graphics/Path;

.field protected mClipProgressRect:Landroid/graphics/Rect;

.field protected mCurBackgroundRadius:F

.field protected mCurBackgroundWidth:F

.field protected mCurBottomDeformationValue:F

.field protected mCurPaddingVertical:F

.field protected mCurProgressRadius:F

.field protected mCurProgressWidth:F

.field protected mCurTopDeformationValue:F

.field protected mCustomProgressAnimDuration:F

.field private mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

.field private mDamping:F

.field private mDefaultPaddingVertical:F

.field protected mEnableAdaptiveVibrator:Z

.field private mEnableCustomEnlarge:Z

.field protected mEnableVibrator:Z

.field private mEnlargeAnimator:Landroid/animation/ValueAnimator;

.field private mFastMoveScaleOffsetY:F

.field private mFastMoveSpring:Lu2/e;

.field private mFastMoveSpringConfig:Lu2/f;

.field private mFlingBehavior:Ld7/i;

.field private mFlingDampingRatio:F

.field private mFlingFrequency:F

.field private mFlingLinearDamping:F

.field private mFlingValueHolder:Ld7/k;

.field private mFlingVelocity:F

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHasEnlarge:Z

.field protected mHasMotorVibrator:Z

.field protected mHeightBottomDeformedDownValue:F

.field protected mHeightBottomDeformedUpValue:F

.field protected mHeightTopDeformedDownValue:F

.field protected mHeightTopDeformedUpValue:F

.field private mHistoryLogEnable:Z

.field private final mHistoryLogQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistorySeekBarHeight:F

.field private mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mIncrement:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field protected mIsDragging:Z

.field private mIsPhysicsEnable:Z

.field private mIsProgressFull:Z

.field private mIsSupportDeformation:Z

.field protected mIsSupportSmoothRoundCorner:Z

.field protected mLastY:F

.field protected mLinearMotorVibrator:Ljava/lang/Object;

.field protected mMax:I

.field private mMaxBottomHeightDeformedValue:F

.field private mMaxBottomMovingDistance:I

.field private mMaxHeight:I

.field private mMaxTopHeightDeformedValue:F

.field private mMaxTopMovingDistance:I

.field private mMaxWidthDeformedValue:F

.field protected mMin:I

.field private mMoveType:I

.field protected mOldProgress:I

.field private mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

.field private mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

.field protected mPaddingVertical:F

.field private mPercentFormat:Ljava/text/NumberFormat;

.field private mPhysicalAnimator:Ld7/l;

.field private mPixPerProgress:F

.field protected mProgress:I

.field protected mProgressColor:I

.field protected mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private mProgressContentDescription:Ljava/lang/String;

.field protected mProgressEnlargeScale:F

.field protected mProgressPaint:Landroid/graphics/Paint;

.field protected mProgressRadius:F

.field protected mProgressRadiusEnlargeScale:F

.field protected mProgressRect:Landroid/graphics/Rect;

.field protected mProgressRoundCornerWeight:F

.field protected mProgressWidth:F

.field private mRealProgress:I

.field private mRefreshStyle:I

.field private mReleaseAnimator:Landroid/animation/ValueAnimator;

.field protected mScale:F

.field private final mSeekBarRoleDescription:Ljava/lang/String;

.field private mSeekbarMinWidth:I

.field protected mShowProgress:Z

.field private mShowText:Z

.field protected mShowThumb:Z

.field private mStartDragging:Z

.field protected mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTextContent:Ljava/lang/String;

.field private mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

.field protected mTextMarginTop:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field protected mThumbColor:I

.field protected mThumbColorStateList:Landroid/content/res/ColorStateList;

.field protected mThumbOutRadius:F

.field protected mThumbOutRoundCornerWeight:F

.field protected mThumbOutWidth:F

.field protected mThumbPaint:Landroid/graphics/Paint;

.field private mThumbPosition:F

.field protected mTouchDownY:F

.field protected mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

.field protected mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPaddingScale:F

.field private mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

.field private mWidthDeformedValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/seekbar/R$attr;->couiVerticalSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/support/seekbar/R$style;->COUIVerticalSeekBar_Dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/seekbar/R$style;->COUIVerticalSeekBar:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$string;->coui_seek_bar_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mSeekBarRoleDescription:Ljava/lang/String;

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    .line 8
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOldProgress:I

    .line 9
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    .line 10
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchSlop:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimDuration:F

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    .line 13
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowProgress:Z

    .line 14
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowThumb:Z

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableAdaptiveVibrator:Z

    .line 16
    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableVibrator:Z

    .line 17
    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasMotorVibrator:Z

    .line 18
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    .line 19
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportSmoothRoundCorner:Z

    const/4 v3, 0x0

    .line 20
    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 21
    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 22
    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 23
    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    .line 24
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressPath:Landroid/graphics/Path;

    .line 25
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    .line 26
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    .line 27
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 28
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    .line 29
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasEnlarge:Z

    .line 30
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsProgressFull:Z

    .line 31
    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIncrement:I

    .line 33
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    .line 34
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMoveType:I

    const-wide v3, 0x407f400000000000L    # 500.0

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 35
    invoke-static {v3, v4, v5, v6}, Lu2/f;->b(DD)Lu2/f;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpringConfig:Lu2/f;

    .line 36
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDamping:F

    .line 37
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPosition:F

    .line 38
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    .line 39
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    const v3, 0x40333333    # 2.8f

    .line 40
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingFrequency:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingDampingRatio:F

    const/high16 v3, 0x41700000    # 15.0f

    .line 42
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingLinearDamping:F

    const/16 v3, 0x1e

    .line 43
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    .line 44
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    const/high16 v3, 0x41e40000    # 28.5f

    .line 45
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopHeightDeformedValue:F

    .line 46
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomHeightDeformedValue:F

    const v3, 0x40966666    # 4.7f

    .line 47
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

    .line 48
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPath:Landroid/graphics/Path;

    .line 49
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    .line 50
    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogEnable:Z

    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

    .line 52
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

    if-nez v3, :cond_1

    .line 53
    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

    .line 54
    :cond_1
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 55
    sget-object v3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 56
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarEnableVibrator:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableVibrator:Z

    .line 57
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarAdaptiveVibrator:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableAdaptiveVibrator:Z

    .line 58
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarPhysicsEnable:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    .line 59
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarShowProgress:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowProgress:Z

    .line 60
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarShowThumb:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowThumb:Z

    .line 61
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressFull:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsProgressFull:Z

    .line 62
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarShowText:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowText:Z

    .line 63
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarDeformation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    .line 64
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 65
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 66
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 67
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarTextColor:I

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_text_color:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 69
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextColor:I

    .line 70
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackgroundRadius:I

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$dimen;->coui_seekbar_background_radius:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 72
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    .line 73
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressRadius:I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$dimen;->coui_seekbar_progress_radius:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 75
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    .line 76
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackgroundRoundCornerWeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRoundCornerWeight:F

    .line 77
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressRoundCornerWeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$dimen;->coui_vertical_seekbar_progress_padding_vertical:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDefaultPaddingVertical:F

    .line 79
    sget p4, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressPaddingVertical:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    cmpl-float p3, p3, v1

    if-nez p3, :cond_2

    .line 80
    iget p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDefaultPaddingVertical:F

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    .line 81
    :cond_2
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackgroundWidth:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    .line 82
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressWidth:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    .line 83
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarMinWidth:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/support/seekbar/R$dimen;->coui_vertical_seekbar_view_min_width:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 85
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mSeekbarMinWidth:I

    .line 86
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarMaxHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxHeight:I

    .line 87
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackGroundEnlargeScale:I

    const/high16 p4, 0x40c00000    # 6.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    .line 88
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressEnlargeScale:I

    const/high16 p4, 0x40800000    # 4.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    .line 89
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackGroundRadiusEnlargeScale:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadiusEnlargeScale:F

    .line 90
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressRadiusEnlargeScale:I

    iget p4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadiusEnlargeScale:F

    .line 91
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextContent:Ljava/lang/String;

    .line 92
    sget p3, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarTextMarginTop:I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_vertical_seekbar_text_padding_top:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 94
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextMarginTop:F

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    new-instance p2, Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/coui/appcompat/seekbar/TextDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    .line 97
    invoke-static {p1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasMotorVibrator:Z

    .line 98
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportSmoothRoundCorner:Z

    .line 99
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setThumbBitmap()V

    .line 101
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->lambda$getButtonDeformationAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mSeekBarRoleDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->formatStateDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIncrement:I

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveScaleOffsetY:F

    return p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveScaleOffsetY:F

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    return p0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasEnlarge:Z

    return p1
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

.method public static synthetic b(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->lambda$createClickAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private bottomDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getHeightBottomDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBottomDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBottomDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->lambda$getEnlargeAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateDamping()F
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDamping:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method private calculateFlingDeformationValue(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopHeightDeformedValue:F

    add-float/2addr p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->heightDeformedChanged()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    int-to-float p1, p1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomHeightDeformedValue:F

    add-float/2addr p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->heightDeformedChanged()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->resetDeformationValue()V

    :goto_0
    return-void
.end method

.method private calculateTouchDeformationValue()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40a00000    # 5.0f

    if-ltz v2, :cond_0

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopHeightDeformedValue:F

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->heightDeformedChanged()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v3

    float-to-double v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomHeightDeformedValue:F

    add-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->computeValue(DF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->heightDeformedChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelAnim(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private clearDeformationValue()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->resetDeformationValue()V

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

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method private createClickAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    new-instance v1, Lcom/coui/appcompat/seekbar/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/d;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 1

    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    return-object p0
.end method

.method public static synthetic d(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->lambda$getReleaseAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawBackgroundByClip(Landroid/graphics/Canvas;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-eqz p2, :cond_0

    new-instance v2, Lcom/oplus/graphics/OplusPath;

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-direct {v2, v3}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    iget v8, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget v9, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(FFFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v2

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v16, v2

    move/from16 v17, v2

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawBackgroundByPaint(Landroid/graphics/Canvas;Z)V
    .locals 11

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_0

    new-instance v2, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v2, p1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, p2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, p2

    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, p1

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget-object v9, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRoundCornerWeight:F

    move v7, v8

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(FFFFFFLandroid/graphics/Paint;F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget-object v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportSmoothRoundCorner:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-eqz v1, :cond_1

    new-instance v9, Lcom/oplus/graphics/OplusPath;

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressPath:Landroid/graphics/Path;

    invoke-direct {v9, v2}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v12, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v2

    iget v15, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    sget-object v17, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v14, v15

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v17}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(FFFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v7, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    sget-object v25, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v3

    move/from16 v23, v7

    move/from16 v24, v7

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowThumb:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v4, v5

    add-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_2

    new-instance v9, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v9, v8}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v12, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v1

    iget v15, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    move v14, v15

    move-object/from16 v16, v1

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(FFFFFFLandroid/graphics/Paint;F)V

    goto :goto_2

    :cond_2
    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    int-to-float v4, v4

    iget v6, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget-object v7, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v3

    move v3, v5

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextMarginTop:F

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextContent:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPosition:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    sub-float v6, v0, v3

    div-float/2addr v1, v2

    add-float v8, v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarCenterX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v6, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportSmoothRoundCorner:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRoundCornerWeight:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    new-instance v4, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v4, p1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    int-to-float p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    div-float v1, v0, v2

    sub-float v5, p1, v1

    div-float/2addr v0, v2

    add-float v7, p1, v0

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRadius:F

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRoundCornerWeight:F

    move v9, v10

    invoke-virtual/range {v4 .. v12}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(FFFFFFLandroid/graphics/Paint;F)V

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    div-float v3, v1, v2

    sub-float v5, v0, v3

    div-float/2addr v1, v2

    add-float v7, v0, v1

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRadius:F

    iget-object v11, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
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

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->resetProgressSize()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$dimen;->coui_vertical_seekbar_progress_pressed_padding_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadiusEnlargeScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    div-float v1, v0, v1

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVerticalPaddingScale:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadiusEnlargeScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRoundCornerWeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUIVerticalSeekBar ensureSize : mIsProgressFull:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsProgressFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mPaddingVertical"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateBehavior()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updatePixPerProgress()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initAnimation()V

    return-void
.end method

.method private executeEnlargeAnim(JLandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getEnlargeAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$4;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setEnlargeAnimatorValues(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private executeReleaseAnim(JLandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getReleaseAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setReleaseAnimatorValues(Landroid/animation/ValueAnimator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasEnlarge:Z

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private flingBehaviorAfterDeformationDrag()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    int-to-float v2, v1

    div-float v2, v0, v2

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getDeformationFlingScale()F

    move-result v3

    int-to-float v4, v1

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    invoke-virtual {v5, v4}, Ld7/j;->c(F)Ld7/j;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p0}, Ld7/i;->n0()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flingBehaviorAfterDeformationDrag ** range = "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " pixPerProgress = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " scale = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " startValue = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUIVerticalSeekBar"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private flingBehaviorAfterEndDrag(F)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    int-to-float v3, v1

    div-float v3, v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getDeformationFlingScale()F

    move-result v2

    int-to-float v4, v1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    invoke-virtual {v5, v4}, Ld7/j;->c(F)Ld7/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flingBehaviorAfterEndDrag ** range = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " pixPerProgress = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " scale = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " startValue = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " velocity = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ld7/j;->c(F)Ld7/j;

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    neg-float p1, p1

    invoke-virtual {p0, p1}, Ld7/i;->o0(F)V

    :cond_2
    return-void
.end method

.method private formatStateDescription(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPercentFormat:Ljava/text/NumberFormat;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPercentFormat:Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getPercent(I)F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getButtonDeformationAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v1, Lcom/coui/appcompat/seekbar/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/c;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getCurAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "progressRadius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    const-string v0, "backgroundRadius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    const-string v0, "progressWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    const-string v0, "backgroundWidth"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    const-string v0, "animatePadding"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    return-void
.end method

.method private getDeformationFlingScale()F
    .locals 3

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

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

.method private getEnlargeAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/coui/appcompat/seekbar/e;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/e;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getFastMoveSpring()Lu2/e;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpring:Lu2/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initFastMoveAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpring:Lu2/e;

    return-object p0
.end method

.method private getHeightBottomDeformedValue()F
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getHeightTopDeformedValue()F
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getNormalSeekBarHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getNormalSeekBarHeightFloat()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method private getPercent(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    sub-float/2addr v0, p0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    sub-float/2addr p1, p0

    div-float/2addr p1, v0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getProgressLimit(I)I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

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

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

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

.method private getReleaseAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/coui/appcompat/seekbar/f;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/f;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private heightDeformedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->topDeformedChange()Z

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->bottomDeformedChange()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurTopDeformationValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBottomDeformationValue:F

    invoke-interface {v0, v1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;->onHeightDeformedChanged(FF)V

    :cond_1
    return-void
.end method

.method private initAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const-wide/16 v0, 0xb7

    sget-object v2, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getEnlargeAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setEnlargeAnimatorValues(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initFastMoveAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpring:Lu2/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object v0

    invoke-virtual {v0}, Lu2/b;->c()Lu2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpring:Lu2/e;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpringConfig:Lu2/f;

    invoke-virtual {v0, v1}, Lu2/e;->o(Lu2/f;)Lu2/e;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFastMoveSpring:Lu2/e;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-virtual {v0, v1}, Lu2/e;->a(Lu2/h;)Lu2/e;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initPhysicsAnimator(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Ld7/l;->j(Landroid/content/Context;)Ld7/l;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    new-instance p1, Ld7/k;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ld7/k;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistorySeekBarHeight:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUIVerticalSeekBar initPhysicsAnimator : setActiveFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mPaddingVertical = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",Thread_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",hashCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIVerticalSeekBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateParameter(Ljava/lang/String;)V

    new-instance v1, Ld7/i;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0, p1}, Ld7/i;-><init>(IFF)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingValueHolder:Ld7/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ld7/j;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ld7/d;->K([Ld7/j;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingFrequency:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingDampingRatio:F

    invoke-virtual {p1, v0, v1}, Ld7/g;->B(FF)Ld7/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingLinearDamping:F

    invoke-virtual {p1, v0}, Ld7/i;->m0(F)Ld7/i;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0}, Ld7/l;->d(Ld7/d;)Ld7/d;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->a(Ld7/d;Ld7/a;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->c(Ld7/d;Ld7/b;)V

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColor:I

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColor:I

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, p0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchSlop:I

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-static {p0, v1}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->createPaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/seekbar/R$dimen;->coui_seekbar_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextColor:I

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v2

    sub-float/2addr v3, p1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->performFeedback()V

    :cond_2
    return-void
.end method

.method private isDeformationFling()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

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

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMoveType:I

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

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->touchInSeekBarWhenDeformation(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createClickAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPixPerProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPixPerProgress:F

    div-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPixPerProgress:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v0

    div-float v1, p1, v0

    :cond_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$getButtonDeformationAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "HOLDER_SCALE"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setTouchScale(F)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getEnlargeAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getCurAnimatorValues(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getReleaseAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getCurAnimatorValues(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private logOnAnimationEnd(Ld7/d;)V
    .locals 4

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v1, p1, v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logOnAnimationEnd ** flingValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " height = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " scale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mScale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mClipProgressRect = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundRect = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mProgressRect = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIVerticalSeekBar"

    invoke-static {v0, p1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->printLogHistory()V

    return-void
.end method

.method private printLogHistory()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "COUIVerticalSeekBar"

    if-eqz v0, :cond_0

    const-string p0, "No parameter history available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Parameter Log History:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "-> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetDeformationValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->heightDeformedChanged()V

    :cond_0
    return-void
.end method

.method private resetProgressSize()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsProgressFull:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRoundCornerWeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadiusEnlargeScale:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadiusEnlargeScale:F

    :cond_0
    return-void
.end method

.method private setBackgroundRect(I)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    int-to-float p1, p1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    sub-float/2addr v5, v6

    sub-float v5, p1, v5

    float-to-int v5, v5

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    add-float/2addr v0, v7

    float-to-int v0, v0

    div-float/2addr v3, v4

    sub-float/2addr v3, v6

    add-float/2addr p1, v3

    float-to-int p1, p1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v1, v3

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v1, p0

    float-to-int p0, v1

    invoke-virtual {v2, v5, v0, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

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

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopHeightDeformedValue:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomHeightDeformedValue:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEnlargeAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadiusEnlargeScale:F

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const-string v1, "progressRadius"

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadiusEnlargeScale:F

    mul-float/2addr v5, v6

    new-array v6, v2, [F

    aput v3, v6, v4

    aput v5, v6, v0

    const-string v3, "backgroundRadius"

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    mul-float/2addr v6, v7

    new-array v7, v2, [F

    aput v5, v7, v4

    aput v6, v7, v0

    const-string v5, "progressWidth"

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    mul-float/2addr v7, v8

    new-array v8, v2, [F

    aput v6, v8, v4

    aput v7, v8, v0

    const-string v6, "backgroundWidth"

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVerticalPaddingScale:F

    mul-float/2addr v8, p0

    new-array p0, v2, [F

    aput v7, p0, v4

    aput v8, p0, v0

    const-string v0, "animatePadding"

    invoke-static {v0, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {v1, v3, v5, v6, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method private setFlingScale(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->calculateFlingDeformationValue(F)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setDeformationScale(F)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private setProgressRect(IFF)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRect:Landroid/graphics/Rect;

    int-to-float p1, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    sub-float/2addr v3, v4

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr p2, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr p2, v5

    float-to-int p2, p2

    div-float/2addr v1, v2

    sub-float/2addr v1, v4

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr p3, p0

    add-float/2addr p3, v5

    float-to-int p0, p3

    invoke-virtual {v0, v3, p2, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private setReleaseAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const-string v1, "progressRadius"

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    new-array v6, v2, [F

    aput v3, v6, v4

    aput v5, v6, v0

    const-string v3, "backgroundRadius"

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    new-array v7, v2, [F

    aput v5, v7, v4

    aput v6, v7, v0

    const-string v5, "progressWidth"

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    new-array v8, v2, [F

    aput v6, v8, v4

    aput v7, v8, v0

    const-string v6, "backgroundWidth"

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    new-array v2, v2, [F

    aput v7, v2, v4

    aput p0, v2, v0

    const-string p0, "animatePadding"

    invoke-static {p0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {v1, v3, v5, v6, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method private setThumbBitmap()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private setTouchScale(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->calculateTouchDeformationValue()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private startFastMoveAnimation(F)V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    invoke-virtual {v0}, Lu2/e;->c()D

    move-result-wide v1

    invoke-virtual {v0}, Lu2/e;->e()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v1, v2

    const/high16 v2, -0x3d420000    # -95.0f

    cmpg-float v2, p1, v2

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f733333    # 0.95f

    if-gtz v2, :cond_0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

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
    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

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

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isDeformationFling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopPhysicsMove()V

    :cond_0
    return-void
.end method

.method private topDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getHeightTopDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurTopDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurTopDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private touchInSeekBarWhenDeformation(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

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
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->calculateDamping()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    :cond_0
    invoke-direct {p0, v3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setTouchScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    if-eq v1, v0, :cond_2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    if-eq v2, p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->performFeedback()V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->startFastMoveAnimation(F)V

    :cond_3
    return-void
.end method

.method private trackTouchEventByFinger(Landroid/view/MotionEvent;)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float p1, v0, p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->calculateDamping()F

    move-result v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-le p1, v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-ge p1, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    if-eq v1, v0, :cond_4

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    if-eq v2, p1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->performFeedback()V

    :cond_4
    return-void
.end method

.method private updateBehavior()V
    .locals 5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v0

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v1

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/oplus/wrapper/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "below OS_15_0_0"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBehavior * normalSeekBarHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mPaddingVertical = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mIsPhysicsEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mPhysicalAnimator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mFlingBehavior = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",Thread_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",hashCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",stackChain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUIVerticalSeekBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateParameter(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistorySeekBarHeight:F

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0}, Ld7/i;->k0(FF)V

    :cond_1
    return-void
.end method

.method private updateParameter(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePixPerProgress()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPixPerProgress:F

    return-void
.end method

.method private updateScale()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    return-void
.end method


# virtual methods
.method protected animForClick(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, p1

    div-float/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->startTransitionAnim(IZ)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarCenterX()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowThumb:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    move v4, v2

    move v5, v4

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutWidth:F

    div-float v5, v4, v3

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbOutRadius:F

    sub-float/2addr v5, v6

    add-float/2addr v5, v2

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    sub-float v4, v1, v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressRadius:F

    sub-float/2addr v2, v6

    mul-float/2addr v6, v3

    add-float/2addr v1, v6

    move v11, v2

    move v2, v1

    move v1, v4

    move v4, v11

    :goto_0
    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    int-to-float v7, v0

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurProgressWidth:F

    div-float v9, v8, v3

    sub-float v9, v7, v9

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    sub-float/2addr v7, v10

    float-to-int v3, v7

    iput v3, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    add-float/2addr v3, v1

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getRealScale(F)F

    move-result v5

    mul-float/2addr v5, v1

    sub-float v1, v3, v5

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPosition:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    add-float/2addr v5, v4

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v5, v6

    iget-object v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClipProgressRect:Landroid/graphics/Rect;

    float-to-int v8, v5

    iput v8, v7, Landroid/graphics/Rect;->top:I

    add-float/2addr v5, v2

    add-float/2addr v5, v6

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v5, v2

    sub-float/2addr v5, v4

    float-to-int v2, v5

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setBackgroundRect(I)V

    invoke-direct {p0, v0, v1, v3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgressRect(IFF)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawActiveTrack(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowProgress:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowThumb:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowText:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawText(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected drawInactiveTrack(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRoundCornerWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawBackgroundByClip(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawBackgroundByPaint(Landroid/graphics/Canvas;Z)V

    :goto_1
    return-void
.end method

.method public endCustomDeformation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setTouchScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public endEnlargeAnim()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
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

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method protected getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I
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

.method public getHasEnlarge()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasEnlarge:Z

    return p0
.end method

.method public getLabelHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    return p0
.end method

.method public getMoveDamping()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDamping:F

    return p0
.end method

.method public getMoveType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMoveType:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    return p0
.end method

.method public getProgressPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method protected getSeekBarCenterX()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v1, p0

    shr-int/lit8 p0, v1, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method protected getSeekBarHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarHeightFloat()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method protected getSeekBarHeightFloat()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public getThumbPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method protected handleMotionEventDown(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    return-void
.end method

.method protected handleMotionEventMove(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMoveType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->trackTouchEventByFinger(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isToucheInSeekBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchDownY:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isMoveFollowHand()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopDeformationFling()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->startDrag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->touchAnim()V

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleMotionEventUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lu2/e;->n(D)Lu2/e;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMotionEventUp mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->flingBehaviorAfterEndDrag(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->flingBehaviorAfterDeformationDrag()V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->releaseAnim()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->animForClick(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationEnd(Ld7/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->logOnAnimationEnd(Ld7/d;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onAnimationStart(Ld7/d;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/a;->onAnimationStart(Ld7/d;)V

    return-void
.end method

.method public onAnimationUpdate(Ld7/d;)V
    .locals 4

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v1, p1, v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setFlingScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getProgressLimit(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLastY:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

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

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopPhysicsMove()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->unRegisterHapticObserver()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawInactiveTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->drawActiveTrack(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mSeekbarMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    :goto_0
    move p1, v1

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxHeight:I

    if-lez v0, :cond_2

    if-le p2, v0, :cond_2

    move p2, v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;->mSaveProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iput p0, v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$SavedState;->mSaveProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopPhysicsMove()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateBehavior()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updatePixPerProgress()V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStartTrackingTouch(Z)V

    return-void
.end method

.method onStartTrackingTouch(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method protected onStopTrackingTouch(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

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
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->handleMotionEventUp(Landroid/view/MotionEvent;)V

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
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->clearDeformationValue()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->handleMotionEventMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent ACTION_UP mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->recycleVelocityTracker()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->handleMotionEventUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :cond_7
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->isDeformationFling()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopPhysicsMove()V

    :cond_8
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initPhysicsAnimator(Landroid/content/Context;)V

    :cond_9
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mStartDragging:Z

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistorySeekBarHeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getNormalSeekBarHeightFloat()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHistoryLogEnable:Z

    :cond_a
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->handleMotionEventDown(Landroid/view/MotionEvent;)V

    :goto_1
    return v3
.end method

.method protected performAdaptiveFeedback()Z
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->getLinearMotorVibrator(Landroid/content/Context;)Lcom/oplus/os/LinearmotorVibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasMotorVibrator:Z

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$6;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int v5, v0, v1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

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

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHasMotorVibrator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$5;-><init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)V

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

.method protected preCalcClipPath()V
    .locals 9

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getSeekBarCenterX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurPaddingVertical:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundRadius:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRect:Landroid/graphics/Rect;

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCurBackgroundWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    sub-float/2addr v6, v7

    sub-float v6, v0, v6

    float-to-int v6, v6

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v1, v8

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    add-float/2addr v1, v8

    float-to-int v1, v1

    div-float/2addr v4, v5

    sub-float/2addr v4, v7

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v2, v4

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v2, p0

    float-to-int p0, v2

    invoke-virtual {v3, v6, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

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

    sget-object v1, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar:[I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

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

    sget-object v1, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar:[I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRefreshStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarProgressColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarBackgroundColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUIVerticalSeekBar_couiVerticalSeekBarTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method protected releaseAnim()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableCustomEnlarge:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const-wide/16 v0, 0xb7

    sget-object v2, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getReleaseAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setReleaseAnimatorValues(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setBackgroundEnlargeScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundEnlargeScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundRoundCornerWeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundWidth:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

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
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimDuration:F

    return-void
.end method

.method public setCustomProgressAnimInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setDeformedListener(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnDeformedListener;

    return-void
.end method

.method public setDeformedParams(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getScale()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getWidthDeformedValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mWidthDeformedValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedDownValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightBottomDeformedDownValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedDownValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mHeightTopDeformedDownValue:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setEnableCustomEnlarge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableCustomEnlarge:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableVibrator:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColor:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColor:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColor:I

    return-void
.end method

.method public setFlingLinearDamping(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingLinearDamping:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld7/i;->m0(F)Ld7/i;

    :cond_0
    return-void
.end method

.method public setFlingProperty(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingFrequency:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingDampingRatio:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld7/g;->B(FF)Ld7/d;

    :cond_0
    return-void
.end method

.method public setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInactiveTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIncrement(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIncrement:I

    return-void
.end method

.method protected setLocalMax(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updatePixPerProgress()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method

.method protected setLocalMin(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updatePixPerProgress()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMin(I)V

    return-void
.end method

.method protected setLocalProgress(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getRealProgress(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMin()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMax : the input params is lower than min. (inputMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgress(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxHeightDeformed(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setMaxHeightDeformed(FF)V

    return-void
.end method

.method public setMaxHeightDeformed(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopHeightDeformedValue:F

    .line 3
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomHeightDeformedValue:F

    return-void
.end method

.method public setMaxMovingDistance(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setMaxMovingDistance(II)V

    return-void
.end method

.method public setMaxMovingDistance(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxTopMovingDistance:I

    .line 3
    iput p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxBottomMovingDistance:I

    return-void
.end method

.method public setMaxWidthDeformed(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMaxWidthDeformedValue:F

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
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getMax()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMin : the input params is greater than max. (inputMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMax:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalMin(I)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgress(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMoveDamping(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDamping:F

    return-void
.end method

.method public setMoveType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMoveType:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setPaddingVertical(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPaddingVertical * paddingVertical = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",hashCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateParameter(Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mDefaultPaddingVertical:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPaddingVertical:F

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPhysicalEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhysicalEnabled * isEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hashCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIVerticalSeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateBehavior()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->stopPhysicsMove()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setProgress(IZZ)V

    return-void
.end method

.method public setProgress(IZZ)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOldProgress:I

    .line 4
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOldProgress:I

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->startTransitionAnim(IZ)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setLocalProgress(I)V

    .line 8
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOldProgress:I

    .line 9
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->updateScale()V

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    .line 11
    iget p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mRealProgress:I

    invoke-interface {p1, p0, p2, p3}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->resetDeformationValue()V

    :cond_2
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setProgressEnlargeScale(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressEnlargeScale:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressFull()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsProgressFull:Z

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressRoundCornerWeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgressWidth:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSupportDeformation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTextContent:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->setThumbBitmap()V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_color_normal:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mThumbColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mShowText:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startCustomDeformation(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->startCustomDeformation(FLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public startCustomDeformation(FLandroid/view/animation/Interpolator;J)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsSupportDeformation:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_4

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->getButtonDeformationAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    .line 10
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mScale:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "HOLDER_SCALE"

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 12
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mButtonDeformationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method protected startDrag()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStartTrackingTouch(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method public startEnlargeAnim(IJLandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->executeEnlargeAnim(JLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->executeReleaseAnim(JLandroid/view/animation/Interpolator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected startTransitionAnim(IZ)V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mProgress:I

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->createClickAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :goto_0
    if-nez p2, :cond_1

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mCustomProgressAnimDuration:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    float-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMax:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mMin:I

    sub-int/2addr p2, v1

    if-lez p2, :cond_2

    sub-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const p2, 0x43f18000    # 483.0f

    mul-float/2addr v1, p2

    float-to-long v1, v1

    const-wide/16 v3, 0x96

    cmp-long p2, v1, v3

    if-gez p2, :cond_3

    move-wide v1, v3

    :cond_3
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_2
    int-to-float p2, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPixPerProgress:F

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    const-string p1, "progressLength"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopPhysicsMove()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mFlingBehavior:Ld7/i;

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

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mEnableCustomEnlarge:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p0, p2

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
