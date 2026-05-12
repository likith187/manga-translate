.class public Lcom/coui/appcompat/seekbar/COUISeekBar;
.super Landroid/widget/AbsSeekBar;
.source "SourceFile"

# interfaces
.implements Ld7/a;
.implements Ld7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;,
        Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE:F = 1.4f

.field private static final CLICK_SPRING_RESPONSE:F = 0.3f

.field private static final DAMPING_DISTANCE:I = 0x14

.field private static final DEFORMATION_SCALE_FACTOR:I = 0x186a0

.field private static final DEFORMATION_SPRING_RESPONSE:F = 0.1f

.field protected static final DIRECTION_180:I = 0xb4

.field protected static final DIRECTION_90:I = 0x5a

.field private static final DURATION_150:I = 0x96

.field private static final DURATION_483:I = 0x1e3

.field private static final FAST_MOVE_VELOCITY:I = 0x5f

.field private static final FLEXIBLE_FOLLOW_HAND_SCALE_FACTOR:I = 0x3e8

.field private static final FLEXIBLE_FOLLOW_HAND_SPRING_RESPONSE:F = 0.1f

.field private static final GLITTER_EFFECT_SPRING_RESPONSE:F = 0.6f

.field private static final MAX_FAST_MOVE_PERCENT:F = 0.95f

.field private static final MAX_MOVE_DAMPING:F = 1.0f

.field private static final MAX_VELOCITY:I = 0x1f40

.field private static final MIN_FAST_MOVE_PERCENT:F = 0.05f

.field public static final MOVE_BY_DEFAULT:I = 0x0

.field public static final MOVE_BY_DISTANCE:I = 0x2

.field public static final MOVE_BY_FINGER:I = 0x1

.field private static final ONE_SECOND_UNITS:I = 0x3e8

.field private static final PHYSICAL_VELOCITY_LIMIT:I = 0x64

.field protected static final PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final RELEASE_ANIM_DURATION:I = 0xb7

.field private static final SCALE_DEFORMATION_MAX:F = 2.0f

.field private static final SCALE_DEFORMATION_MIN:F = -1.0f

.field private static final SCALE_DEFORMATION_TIMES:I = 0x5

.field protected static final SCALE_MAX:F = 1.0f

.field protected static final SCALE_MIN:F = 0.0f

.field protected static final SPRING_BOUNCE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "COUISeekBar"

.field protected static final THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMB_SCALE_SPRING_RESPONSE:F = 0.2f

.field private static final TOUCH_ANIMATION_ENLARGE_DURATION:I = 0xb7

.field private static final VELOCITY_COMPUTE_TIME:I = 0x64


# instance fields
.field protected mBackgroundColor:I

.field mBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field protected mBackgroundEnlargeScale:F

.field protected mBackgroundHeight:F

.field private mBackgroundPath:Landroid/graphics/Path;

.field protected mBackgroundRadius:F

.field protected mBackgroundRect:Landroid/graphics/RectF;

.field protected mBackgroundRoundCornerWeight:F

.field protected mBackgroundSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

.field private mCachedLocale:Ljava/util/Locale;

.field protected mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field protected mClickAnimator:Landroid/animation/ValueAnimator;

.field protected mClickAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mClipProgressPath:Landroid/graphics/Path;

.field protected mClipProgressRect:Landroid/graphics/RectF;

.field protected mCurBackgroundHeight:F

.field protected mCurBackgroundRadius:F

.field protected mCurBottomDeformationValue:F

.field private mCurGlitterEffectAlpha:I

.field private mCurGlitterEffectValue:F

.field protected mCurPaddingHorizontal:F

.field protected mCurProgressHeight:F

.field protected mCurProgressRadius:F

.field protected mCurThumbRadius:F

.field protected mCurTopDeformationValue:F

.field private mDamping:F

.field private mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field protected mDrawProgressScale:F

.field protected mEnableAdaptiveVibrator:Z

.field protected mEnableVibrator:Z

.field private mFastMoveScaleOffsetX:F

.field private mFastMoveSpring:Lu2/e;

.field private mFastMoveSpringConfig:Lu2/f;

.field private mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mFlingBehavior:Ld7/i;

.field private mFlingDampingRatio:F

.field private mFlingFrequency:F

.field private mFlingLinearDamping:F

.field private mFlingValueHolder:Ld7/k;

.field private mFlingVelocity:F

.field private mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mGlitterEffectMaxColor:I

.field private mGlitterEffectMinColor:I

.field private mGlitterEffectPaint:Landroid/graphics/Paint;

.field private mGlitterEffectTransition:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field protected mHasMotorVibrator:Z

.field protected mHeightBottomDeformedDownValue:F

.field protected mHeightBottomDeformedUpValue:F

.field protected mHeightTopDeformedDownValue:F

.field protected mHeightTopDeformedUpValue:F

.field protected mHorizontalPaddingScale:F

.field private mIncrement:I

.field protected mIsBumpingEdges:Z

.field protected mIsDragging:Z

.field private mIsPhysicsEnable:Z

.field private mIsStartFromMiddle:Z

.field private mIsSupportDeformation:Z

.field protected mLabelX:F

.field protected mLastEndClickListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field protected mLastX:F

.field protected mLinearMotorVibrator:Ljava/lang/Object;

.field protected mMax:I

.field private mMaxBackgroundHeight:F

.field private mMaxHeightDeformedValue:F

.field private mMaxMovingDistance:I

.field private mMaxToMinLinearGradient:Landroid/graphics/LinearGradient;

.field private mMaxWidth:I

.field private mMaxWidthDeformedValue:F

.field protected mMin:I

.field private mMinToMaxLinearGradient:Landroid/graphics/LinearGradient;

.field private mMoveType:I

.field protected mOldProgress:I

.field private mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

.field private mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

.field protected mPaddingHorizontal:F

.field protected mPaint:Landroid/graphics/Paint;

.field private mPercentFormat:Ljava/text/NumberFormat;

.field private mPhysicalAnimator:Ld7/l;

.field private mPixPerProgress:F

.field protected mProgress:I

.field protected mProgressColor:I

.field mProgressColorStateList:Landroid/content/res/ColorStateList;

.field protected mProgressEnlargeScale:F

.field protected mProgressHeight:F

.field protected mProgressPath:Landroid/graphics/Path;

.field protected mProgressRadius:F

.field protected mProgressRect:Landroid/graphics/RectF;

.field protected mProgressRoundCornerWeight:F

.field protected mProgressScaleInterpolator:Landroid/view/animation/Interpolator;

.field protected mProgressScaleRadius:F

.field protected mProgressSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

.field private mRealProgress:I

.field private mRefreshStyle:I

.field protected mScale:F

.field private final mSeekBarRoleDescription:Ljava/lang/String;

.field private mSeekbarMinHeight:I

.field protected mShadowColor:I

.field private mShowGlitterEffect:Z

.field protected mShowProgress:Z

.field protected mShowThumb:Z

.field private mStartDragging:Z

.field protected mTempRect:Landroid/graphics/RectF;

.field private mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

.field protected mThumbAnimateInterpolator:Landroid/view/animation/Interpolator;

.field protected mThumbColor:I

.field mThumbColorStateList:Landroid/content/res/ColorStateList;

.field protected mThumbMaxRadius:F

.field protected mThumbOutHeight:F

.field protected mThumbOutRadius:F

.field protected mThumbOutRoundCornerWeight:F

.field protected mThumbPosition:F

.field protected mThumbRadius:F

.field private mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mThumbScaleTransition:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field protected mThumbShadowColor:I

.field protected mThumbShadowOffsetY:F

.field protected mThumbShadowRadiusSize:I

.field protected mTouchAnimator:Landroid/animation/AnimatorSet;

.field protected mTouchDownX:F

.field protected mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

.field protected mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mWidthDeformedValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->THUMB_ANIMATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/seekbar/R$attr;->couiSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/seekbar/R$style;->COUISeekBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$string;->coui_seek_bar_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mSeekBarRoleDescription:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    .line 7
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableVibrator:Z

    .line 9
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableAdaptiveVibrator:Z

    .line 10
    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHasMotorVibrator:Z

    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 12
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchSlop:I

    .line 13
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    .line 14
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOldProgress:I

    const/16 v4, 0x64

    .line 15
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    .line 16
    iput v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    .line 17
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    .line 18
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 19
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 20
    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 21
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 22
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 23
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowProgress:Z

    .line 24
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    .line 25
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundPath:Landroid/graphics/Path;

    .line 26
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressPath:Landroid/graphics/Path;

    .line 27
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIncrement:I

    .line 28
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    .line 29
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMoveType:I

    const-wide v4, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 30
    invoke-static {v4, v5, v6, v7}, Lu2/f;->b(DD)Lu2/f;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpringConfig:Lu2/f;

    .line 31
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    .line 32
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDamping:F

    .line 33
    iput-boolean v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    .line 34
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    const v2, 0x40333333    # 2.8f

    .line 35
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingFrequency:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingDampingRatio:F

    const/high16 v4, 0x41700000    # 15.0f

    .line 37
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingLinearDamping:F

    const/16 v4, 0x1e

    .line 38
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxMovingDistance:I

    const/high16 v4, 0x41e40000    # 28.5f

    .line 39
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxHeightDeformedValue:F

    const v4, 0x40966666    # 4.7f

    .line 40
    iput v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxWidthDeformedValue:F

    .line 41
    new-instance v4, Lcom/coui/appcompat/seekbar/COUISeekBar$1;

    const-string v5, "thumbScaleTransition"

    invoke-direct {v4, p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar$1;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleTransition:Landroidx/dynamicanimation/animation/d;

    .line 42
    new-instance v4, Lcom/coui/appcompat/seekbar/COUISeekBar$2;

    const-string v5, "glitterEffectTransition"

    invoke-direct {v4, p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar$2;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectTransition:Landroidx/dynamicanimation/animation/d;

    .line 43
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClipProgressPath:Landroid/graphics/Path;

    .line 44
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClipProgressRect:Landroid/graphics/RectF;

    .line 45
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchAnimator:Landroid/animation/AnimatorSet;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f2b851f    # 0.67f

    .line 46
    invoke-static {v4, v0, v5, v2}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressScaleInterpolator:Landroid/view/animation/Interpolator;

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    .line 47
    invoke-static {v4, v0, v5, v2}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbAnimateInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTempRect:Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    .line 49
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

    .line 50
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

    if-nez v2, :cond_1

    .line 51
    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

    .line 52
    :cond_1
    invoke-static {p0, v3}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 53
    sget-object v2, Lcom/support/seekbar/R$styleable;->COUISeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 54
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarEnableVibrator:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableVibrator:Z

    .line 55
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarAdaptiveVibrator:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableAdaptiveVibrator:Z

    .line 56
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarPhysicsEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    .line 57
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowProgress:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowProgress:Z

    .line 58
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowThumb:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    .line 59
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarShowGlitterEffect:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowGlitterEffect:Z

    .line 60
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarStartMiddle:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    .line 61
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 62
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    .line 63
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    .line 64
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_background_selector:I

    invoke-static {p4, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    .line 65
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_selector:I

    invoke-static {p4, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    .line 66
    iget-object p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_selector:I

    invoke-static {p4, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p0, p0, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    .line 67
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-static {p4, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowColor:I

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$dimen;->coui_seekbar_shadow_offset_y:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowOffsetY:F

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$dimen;->coui_seekbar_thumb_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbRadius:F

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$dimen;->coui_seekbar_thumb_max_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbMaxRadius:F

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$color;->coui_seekbar_glitter_effect_min_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMinColor:I

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/seekbar/R$color;->coui_seekbar_glitter_effect_max_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMaxColor:I

    .line 73
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundRoundCornerWeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRoundCornerWeight:F

    .line 74
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressRoundCornerWeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRoundCornerWeight:F

    .line 75
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowSize:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    .line 76
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundHeight:I

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_background_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 78
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    .line 79
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarProgressHeight:I

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_progress_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 81
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    .line 82
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarMinHeight:I

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/support/seekbar/R$dimen;->coui_seekbar_view_min_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 84
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mSeekbarMinHeight:I

    .line 85
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarMaxWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxWidth:I

    .line 86
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackGroundEnlargeScale:I

    const p4, 0x3fb33333    # 1.4f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundEnlargeScale:F

    .line 87
    sget p3, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarDeformation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    new-instance p2, Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/coui/appcompat/seekbar/TextDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    .line 90
    invoke-static {p1}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHasMotorVibrator:Z

    .line 91
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundEnlargeScale:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxBackgroundHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 92
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    .line 93
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->ensureSize()V

    .line 95
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initAnim()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->lambda$getEnlargeAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/seekbar/COUISeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getCurThumbRadius()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/seekbar/COUISeekBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setCurThumbRadius(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/seekbar/COUISeekBar;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->formatStateDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/seekbar/COUISeekBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIncrement:I

    return p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/seekbar/COUISeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    return p0
.end method

.method static synthetic access$1202(Lcom/coui/appcompat/seekbar/COUISeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveScaleOffsetX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/seekbar/COUISeekBar;)Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/seekbar/COUISeekBar;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getCurGlitterEffectValue()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/seekbar/COUISeekBar;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setCurGlitterEffectValue(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxMovingDistance:I

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/seekbar/COUISeekBar;DF)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->computeValue(DF)F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/seekbar/COUISeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxHeightDeformedValue:F

    return p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/seekbar/COUISeekBar;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxWidthDeformedValue:F

    return p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->heightDeformedChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/seekbar/COUISeekBar;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mSeekBarRoleDescription:Ljava/lang/String;

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

.method public static synthetic b(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->lambda$getReleaseAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private bottomDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getHeightBottomDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBottomDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBottomDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private calculateDamping()F
    .locals 1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDamping:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private calculateFlingDeformationValue(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const v2, 0x47c35000    # 100000.0f

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetDeformationValue()V

    :goto_0
    return-void
.end method

.method private clearDeformationValue()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetDeformationValue()V

    :cond_0
    return-void
.end method

.method private computeGlitterEffectAlpha(F)I
    .locals 4

    const-wide v0, 0x4055400000000000L    # 85.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    neg-double v0, v0

    float-to-double p0, p1

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
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

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    sub-float v4, v1, v2

    add-float v6, v1, v2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowRadiusSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowOffsetY:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowColor:I

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    sub-float v5, v0, v9

    add-float v7, v0, v9

    iget-object v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

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

.method private ensureSize()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbRadius:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurProgressRadius:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbOutRadius:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurPaddingHorizontal:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COUISeekBar ensureSize : mPaddingHorizontal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mBackgroundEnlargeScale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundEnlargeScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mProgressHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mThumbRadius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateBehavior()V

    return-void
.end method

.method private executeFlingGlitterEffectAnim(Ld7/d;F)V
    .locals 3

    invoke-virtual {p1}, Ld7/d;->p()La7/e;

    move-result-object p1

    iget p1, p1, La7/e;->a:F

    invoke-static {p1}, La7/a;->c(F)F

    move-result p1

    const/high16 v0, 0x45fa0000    # 8000.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v2, :cond_0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v0, :cond_2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v0, :cond_2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private flingBehaviorAfterDeformationDrag()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    int-to-float v0, v0

    int-to-float v2, v1

    div-float v2, v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getDeformationFlingScale()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ld7/j;->c(F)Ld7/j;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getDeformationFlingScale()F

    move-result v0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-virtual {v3, v0}, Ld7/j;->c(F)Ld7/j;

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p0}, Ld7/i;->n0()V

    :cond_3
    return-void
.end method

.method private flingBehaviorAfterEndDrag(F)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getDeformationFlingScale()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float/2addr v2, v1

    sub-float/2addr v4, v2

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getDeformationFlingScale()F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    int-to-float v1, v1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {v3, v2}, Ld7/j;->c(F)Ld7/j;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ld7/j;->c(F)Ld7/j;

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p0, p1}, Ld7/i;->o0(F)V

    :cond_4
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

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCachedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCachedLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPercentFormat:Ljava/text/NumberFormat;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPercentFormat:Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getPercent(I)F

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

.method private getCurGlitterEffectValue()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurGlitterEffectValue:F

    return p0
.end method

.method private getCurThumbRadius()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    return p0
.end method

.method private getDeformationFlingScale()F
    .locals 3

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

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

    new-instance p1, Lcom/coui/appcompat/seekbar/a;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/a;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getFastMoveSpring()Lu2/e;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpring:Lu2/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initFastMoveAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpring:Lu2/e;

    return-object p0
.end method

.method private getHeightBottomDeformedValue()F
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    :goto_0
    sub-float/2addr v0, p0

    return v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    goto :goto_0
.end method

.method private getHeightTopDeformedValue()F
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    :goto_0
    sub-float/2addr v0, p0

    return v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    goto :goto_0
.end method

.method private getPercent(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

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

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

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

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

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

    new-instance p1, Lcom/coui/appcompat/seekbar/b;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/seekbar/b;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private heightDeformedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->topDeformedChange()Z

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->bottomDeformedChange()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurTopDeformationValue:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBottomDeformationValue:F

    invoke-interface {v0, v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;->onHeightDeformedChanged(FF)V

    :cond_1
    return-void
.end method

.method private initAnim()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initEnlargeAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initThumbScaleAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initGlitterEffectAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initFlexibleFollowHandAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initClickAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initDeformationAnim()V

    return-void
.end method

.method private initClickAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/e;-><init>(F)V

    new-instance v2, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$4;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private initDeformationAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/e;-><init>(F)V

    new-instance v2, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$5;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private initEnlargeAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const-wide/16 v0, 0xb7

    sget-object v2, Lcom/coui/appcompat/seekbar/COUISeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnlargeAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setEnlargeAnimatorValues(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initFastMoveAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpring:Lu2/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lu2/j;->g()Lu2/j;

    move-result-object v0

    invoke-virtual {v0}, Lu2/b;->c()Lu2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpring:Lu2/e;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpringConfig:Lu2/f;

    invoke-virtual {v0, v1}, Lu2/e;->o(Lu2/f;)Lu2/e;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFastMoveSpring:Lu2/e;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$7;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lu2/e;->a(Lu2/h;)Lu2/e;

    return-void
.end method

.method private initFlexibleFollowHandAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/e;-><init>(F)V

    new-instance v2, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$3;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private initGlitterEffectAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectTransition:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    new-instance p1, Ld7/k;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ld7/k;-><init>(F)V

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUISeekBar initPhysicsAnimator : setActiveFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISeekBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ld7/i;

    const/4 v2, 0x4

    int-to-float p1, p1

    invoke-direct {v1, v2, v0, p1}, Ld7/i;-><init>(IFF)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingValueHolder:Ld7/k;

    const/4 v0, 0x1

    new-array v0, v0, [Ld7/j;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ld7/d;->K([Ld7/j;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingFrequency:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingDampingRatio:F

    invoke-virtual {p1, v0, v1}, Ld7/g;->B(FF)Ld7/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld7/d;->c(Ljava/lang/Object;)Ld7/d;

    move-result-object p1

    check-cast p1, Ld7/i;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingLinearDamping:F

    invoke-virtual {p1, v0}, Ld7/i;->m0(F)Ld7/i;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0}, Ld7/l;->d(Ld7/d;)Ld7/d;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->a(Ld7/d;Ld7/a;)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    invoke-virtual {p1, v0, p0}, Ld7/l;->c(Ld7/d;Ld7/b;)V

    return-void
.end method

.method private initThumbScaleAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleTransition:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchSlop:I

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$6;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-static {p0, v1}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    new-instance v0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressPath:Landroid/graphics/Path;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    return-void
.end method

.method private invalidateProgress(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

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
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setTouchScale(FZ)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-interface {v0, p0, v1, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    if-eq v2, p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->performFeedback()V

    :cond_2
    return-void
.end method

.method private isDeformationFling()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

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

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMoveType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWithinThumbBounds(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float v2, v1, p0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v1, p0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    int-to-float p1, v0

    sub-float v0, p1, p0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getEnlargeAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getCurAnimatorValues(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$getReleaseAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getCurAnimatorValues(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setCurGlitterEffectValue(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurGlitterEffectValue:F

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->computeGlitterEffectAlpha(F)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurGlitterEffectAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurThumbRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    return-void
.end method

.method private setFlingScale(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->calculateFlingDeformationValue(F)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setDeformationScale(F)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setDrawProgressScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private setMaxToMinLinearGradient()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxToMinLinearGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMaxColor:I

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMinColor:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxToMinLinearGradient:Landroid/graphics/LinearGradient;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxToMinLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private setMinToMaxLinearGradient()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMinToMaxLinearGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMinColor:I

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectMaxColor:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMinToMaxLinearGradient:Landroid/graphics/LinearGradient;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMinToMaxLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

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

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

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

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

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

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    invoke-virtual {v0}, Lu2/e;->c()D

    move-result-wide v1

    invoke-virtual {v0}, Lu2/e;->e()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v2, p1, v2

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f733333    # 0.95f

    if-ltz v2, :cond_0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

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

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

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

.method private startGlitterEffectAnim(F)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurGlitterEffectValue:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartVelocity(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private stopDeformationFling()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isDeformationFling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopPhysicsMove()V

    :cond_0
    return-void
.end method

.method private topDeformedChange()Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getHeightTopDeformedValue()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurTopDeformationValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurTopDeformationValue:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->calculateDamping()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setTouchScale(FZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeTouchGlitterEffectAnim()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-eq v1, v0, :cond_2

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    if-eq v2, p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->performFeedback()V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startFastMoveAnimation(F)V

    :cond_3
    return-void
.end method

.method private trackTouchEventByFinger(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->calculateDamping()F

    move-result v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setTouchScale(FZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeTouchGlitterEffectAnim()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-eq v1, v0, :cond_2

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    if-eq v2, p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->performFeedback()V

    :cond_2
    return-void
.end method

.method private updateBehavior()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUISeekBar updateBehavior : setActiveFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISeekBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Ld7/i;->k0(FF)V

    :cond_0
    return-void
.end method

.method private updatePixPerProgress()V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPixPerProgress:F

    return-void
.end method

.method private updateScale()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    return-void
.end method


# virtual methods
.method protected animForClick(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    div-float/2addr v1, v2

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    sub-float/2addr v1, v3

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    sub-float/2addr p1, v3

    div-float v1, p1, v0

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->clearDeformationValue()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startTransitionAnim(IZ)V

    return-void
.end method

.method protected calculateTouchDeformationValue()V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const v3, 0x47c35000    # 100000.0f

    const/high16 v4, 0x40a00000    # 5.0f

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v4

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDeformationAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    mul-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected cancelAnim(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected checkThumbPosChange(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->checkThumbPosChange(IZZ)V

    return-void
.end method

.method protected checkThumbPosChange(IZZ)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-eq v0, p1, :cond_1

    .line 3
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    .line 5
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 6
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-interface {p1, p0, v1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    if-eq v0, p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->performFeedback()V

    :cond_1
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setBackgroundRect()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgressRect()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawActiveTrack(Landroid/graphics/Canvas;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawGlitterEffect(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawGlitterEffect(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowGlitterEffect:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMaxToMinLinearGradient()V

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMinToMaxLinearGradient()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMinToMaxLinearGradient()V

    goto :goto_0

    :cond_2
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMaxToMinLinearGradient()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMaxToMinLinearGradient()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setMinToMaxLinearGradient()V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurGlitterEffectAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mGlitterEffectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected drawInactiveTrack(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->getSmoothStyleType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundSmoothRoundCornerHelper:Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->getPathAdapter()Lcom/oplus/graphics/OplusPathAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v4, v3, v1

    div-float/2addr v3, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRoundCornerWeight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v2, Lcom/oplus/graphics/OplusCanvas;

    invoke-direct {v2, p1}, Lcom/oplus/graphics/OplusCanvas;-><init>(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v4, p1, v1

    div-float v5, p1, v1

    iget-object v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRoundCornerWeight:F

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/graphics/OplusCanvas;->drawSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public ensureLabelsAdded()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setValueForLabel(Lcom/coui/appcompat/seekbar/TextDrawable;Ljava/lang/String;)V

    return-void
.end method

.method public ensureLabelsAdded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setValueForLabel(Lcom/coui/appcompat/seekbar/TextDrawable;Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected executeThumbScaleAnim(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isWithinThumbBounds(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbMaxRadius:F

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method

.method protected executeTouchGlitterEffectAnim()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v4, :cond_0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_0
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v1, :cond_5

    cmpg-float v1, v0, v3

    if-gez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_2

    iget-boolean v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v4, :cond_2

    cmpg-float v4, v0, v3

    if-gez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_2
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v1, :cond_5

    cmpl-float v1, v0, v3

    if-lez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v1, :cond_5

    cmpg-float v1, v0, v3

    if-gez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    if-nez v1, :cond_5

    cmpl-float v1, v0, v3

    if-lez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startGlitterEffectAnim(F)V

    :cond_5
    :goto_0
    return-void
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

.method protected getCurAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "backgroundHeight"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    return-void
.end method

.method protected getEnd()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method public getLabelHeight()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTextDrawable:Lcom/coui/appcompat/seekbar/TextDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/TextDrawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    return p0
.end method

.method public getMoveDamping()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDamping:F

    return p0
.end method

.method public getMoveType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMoveType:I

    return p0
.end method

.method protected getNormalSeekBarWidth()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result p0

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

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

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeThumbScaleAnim(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected handleMotionEventMove(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

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

    iget-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMoveType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->trackTouchEventByFinger(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isToucheInSeekBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start drag mScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUISeekBar"

    invoke-static {v2, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopDeformationFling()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startDrag()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->touchAnim()V

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->invalidateProgress(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected handleMotionEventUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->releaseThumbScaleAnim()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getFastMoveSpring()Lu2/e;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lu2/e;->n(D)Lu2/e;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMotionEventUp mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->flingBehaviorAfterEndDrag(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->flingBehaviorAfterDeformationDrag()V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->releaseAnim()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isMoveFollowHand()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopDeformationFling()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->animForClick(F)V

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

.method protected isToucheInSeekBar(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onAnimationCancel(Ld7/d;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationEnd(Ld7/d;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

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

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {p1}, Ld7/d;->o()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v2, v2

    sub-float v3, v2, v1

    div-float/2addr v3, v2

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    div-float v3, v1, v2

    :goto_0
    invoke-direct {p0, v3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setFlingScale(F)V

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->executeFlingGlitterEffectAnim(Ld7/d;F)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgressLimit(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

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

.method protected onClickAnimationUpdate(F)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPixPerProgress:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPixPerProgress:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    :cond_0
    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopPhysicsMove()V

    invoke-static {}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->unRegisterHapticObserver()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawInactiveTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->drawActiveTrack(Landroid/graphics/Canvas;F)V

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

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mSeekbarMinHeight:I

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
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxWidth:I

    if-lez v0, :cond_2

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;->mSaveProgress:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iput p0, v1, Lcom/coui/appcompat/seekbar/COUISeekBar$SavedState;->mSaveProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxToMinLinearGradient:Landroid/graphics/LinearGradient;

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMinToMaxLinearGradient:Landroid/graphics/LinearGradient;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopPhysicsMove()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateBehavior()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updatePixPerProgress()V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStartTrackingTouch(Z)V

    return-void
.end method

.method onStartTrackingTouch(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method protected onStopTrackingTouch(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

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
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->handleMotionEventUp(Landroid/view/MotionEvent;)V

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
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetBumpingEdges()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->clearDeformationValue()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initVelocityTrackerIfNotExists()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->handleMotionEventMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    const/16 v1, 0x3e8

    const/high16 v2, 0x45fa0000    # 8000.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent ACTION_UP mFlingVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUISeekBar"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->recycleVelocityTracker()V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->handleMotionEventUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isDeformationFling()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopPhysicsMove()V

    :cond_7
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initPhysicsAnimator(Landroid/content/Context;)V

    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->initOrResetVelocityTracker()V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mStartDragging:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->handleMotionEventDown(Landroid/view/MotionEvent;)V

    :goto_1
    return v3
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
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$10;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLinearMotorVibrator:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/os/LinearmotorVibrator;

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    sub-int v5, v0, v1

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

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

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHasMotorVibrator:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableAdaptiveVibrator:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->performAdaptiveFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mVibratorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coui/appcompat/seekbar/COUISeekBar$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar$9;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V

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

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

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

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

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

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRefreshStyle:I

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

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_progress_selector:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarBackgroundColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_background_selector:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_selector:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    sget v0, Lcom/support/seekbar/R$styleable;->COUISeekBar_couiSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_shadow_color:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbShadowColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method protected releaseAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const-wide/16 v0, 0xb7

    sget-object v2, Lcom/coui/appcompat/seekbar/COUISeekBar;->PROGRESS_SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getReleaseAnimator(JLandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setReleaseAnimatorValues(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchReleaseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected releaseThumbScaleAnim()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mShowThumb:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurThumbRadius:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbRadius:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbScaleAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbRadius:F

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method

.method protected resetBumpingEdges()V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iput-boolean v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsBumpingEdges:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected resetDeformationValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->heightDeformedChanged()V

    :cond_0
    return-void
.end method

.method public setBackgroundEnlargeScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBackgroundHeight(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected setBackgroundRect()V
    .locals 9

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v6, v5, v3

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v6, v7

    sub-float v6, v0, v6

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v2, v8

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v2, p0

    div-float/2addr v5, v3

    sub-float/2addr v5, v7

    add-float/2addr v0, v5

    invoke-virtual {v4, v1, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    div-float v6, v5, v3

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v6, v7

    sub-float v6, v0, v6

    iget v8, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    add-float/2addr v2, v8

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    sub-float/2addr v2, p0

    div-float/2addr v5, v3

    sub-float/2addr v5, v7

    add-float/2addr v0, v5

    invoke-virtual {v4, v1, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method

.method public setBackgroundRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundRoundCornerWeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCustomProgressAnimDuration(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCustomProgressAnimInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDeformedListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    return-void
.end method

.method public setDeformedParams(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getScale()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getDrawProgressScale()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedUpValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getWidthDeformedValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightBottomDeformedDownValue()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->getHeightTopDeformedDownValue()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEnableAdaptiveVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableAdaptiveVibrator:Z

    return-void
.end method

.method public setEnableVibrator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mEnableVibrator:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    return-void
.end method

.method protected setEnlargeAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxBackgroundHeight:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    const-string p0, "backgroundHeight"

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public setFlingLinearDamping(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingLinearDamping:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ld7/i;->m0(F)Ld7/i;

    :cond_0
    return-void
.end method

.method public setFlingProperty(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingFrequency:F

    iput p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingDampingRatio:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld7/g;->B(FF)Ld7/d;

    :cond_0
    return-void
.end method

.method public setIncrement(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIncrement:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected setLocalMax(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updatePixPerProgress()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    return-void
.end method

.method protected setLocalMin(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updatePixPerProgress()V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateScale()V

    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMin(I)V

    return-void
.end method

.method protected setLocalProgress(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealProgress(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mRealProgress:I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMax : the input params is lower than min. (inputMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMin:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUISeekBar"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMax(I)V

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxHeightDeformed(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxHeightDeformedValue:F

    return-void
.end method

.method public setMaxMovingDistance(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxMovingDistance:I

    return-void
.end method

.method public setMaxWidthDeformed(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMaxWidthDeformedValue:F

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
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMin : the input params is greater than max. (inputMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mMax:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "COUISeekBar"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalMin(I)V

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMoveDamping(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDamping:F

    return-void
.end method

.method public setMoveType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMoveType:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setPaddingHorizontal(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPhysicalEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateBehavior()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->stopPhysicsMove()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(IZZ)V

    return-void
.end method

.method public setProgress(IZZ)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlexibleFollowHandAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    iput v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOldProgress:I

    .line 6
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMin:I

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mMax:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOldProgress:I

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar;->startTransitionAnim(IZ)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setLocalProgress(I)V

    .line 10
    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOldProgress:I

    .line 11
    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->updateScale()V

    .line 12
    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnSeekBarChangeListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    if-eqz p2, :cond_2

    .line 13
    invoke-direct {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealProgress(I)I

    move-result p1

    invoke-interface {p2, p0, p1, p3}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->resetDeformationValue()V

    :cond_3
    return-void
.end method

.method public setProgressColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_progress_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressContentDescription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProgressEnlargeScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProgressFull()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProgressHeight(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected setProgressRect()V
    .locals 11

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getSeekBarCenterY()I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealScale(F)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    sub-float v0, v2, v5

    :goto_0
    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-direct {p0, v5}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealScale(F)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float v0, v2, v5

    :goto_1
    move v4, v0

    move v0, v2

    move v2, v4

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v2, v4

    add-float/2addr v2, v0

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-direct {p0, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealScale(F)F

    move-result v4

    mul-float/2addr v4, v0

    sub-float v0, v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getStart()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPaddingHorizontal:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-direct {p0, v4}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getRealScale(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float v0, v2, v4

    goto :goto_1

    :goto_2
    iget-boolean v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    if-eqz v5, :cond_4

    cmpl-float v5, v0, v4

    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v4, v6

    int-to-float v1, v1

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v8, v7, v3

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v8, v9

    sub-float v8, v1, v8

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v0, v10

    add-float/2addr v0, v6

    div-float/2addr v7, v3

    sub-float/2addr v7, v9

    add-float/2addr v1, v7

    invoke-virtual {v5, v4, v8, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v4, v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    add-float/2addr v4, v7

    int-to-float v1, v1

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v8, v7, v3

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v8, v9

    sub-float v8, v1, v8

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    add-float/2addr v0, v10

    sub-float/2addr v0, v6

    div-float/2addr v7, v3

    sub-float/2addr v7, v9

    add-float/2addr v1, v7

    invoke-virtual {v5, v4, v8, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    sub-float/2addr v0, v6

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    add-float/2addr v0, v6

    int-to-float v1, v1

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v8, v7, v3

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v8, v9

    sub-float v8, v1, v8

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    sub-float/2addr v4, v10

    add-float/2addr v4, v6

    div-float/2addr v7, v3

    sub-float/2addr v7, v9

    add-float/2addr v1, v7

    invoke-virtual {v5, v0, v8, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v0, v6

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    add-float/2addr v0, v7

    int-to-float v1, v1

    iget v7, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v8, v7, v3

    iget v9, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    sub-float/2addr v8, v9

    sub-float v8, v1, v8

    iget v10, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    add-float/2addr v4, v10

    sub-float/2addr v4, v6

    div-float/2addr v7, v3

    sub-float/2addr v7, v9

    add-float/2addr v1, v7

    invoke-virtual {v5, v0, v8, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressHeight:F

    div-float v5, v4, v3

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_6

    neg-float v0, v0

    :cond_6
    add-float/2addr v2, v0

    iput v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbPosition:F

    return-void
.end method

.method public setProgressRoundCornerWeight(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgressRoundCornerWeight:F

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->ensureSize()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected setReleaseAnimatorValues(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mCurBackgroundHeight:F

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundHeight:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    const-string p0, "backgroundHeight"

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public setSeekBarBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_background_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStartFromMiddle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsStartFromMiddle:Z

    return-void
.end method

.method public setSupportDeformation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/seekbar/R$color;->coui_seekbar_thumb_selector:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getColor(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mThumbColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setTouchScale(FZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsSupportDeformation:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->calculateTouchDeformationValue()V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/coui/appcompat/seekbar/DeformedValueBean;

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedUpValue:F

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedUpValue:F

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mWidthDeformedValue:F

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightBottomDeformedDownValue:F

    iget v5, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mHeightTopDeformedDownValue:F

    iget v6, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mProgress:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/seekbar/DeformedValueBean;-><init>(FFFFFI)V

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setScale(F)V

    iget p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/seekbar/DeformedValueBean;->setDrawProgressScale(F)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mOnDeformedListener:Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;

    invoke-interface {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnDeformedListener;->onScaleChanged(Lcom/coui/appcompat/seekbar/DeformedValueBean;)V

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mDrawProgressScale:F

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    :cond_3
    :goto_1
    return-void
.end method

.method public showText(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected startDrag()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStartTrackingTouch(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->attemptClaimDrag()V

    return-void
.end method

.method protected startTransitionAnim(IZ)V
    .locals 4

    new-instance v0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;

    invoke-direct {v0, p0, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar$8;-><init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mScale:F

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getMin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->cancel()V

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastEndClickListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPixPerProgress:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStartTrackingTouch(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mClickAnim:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    int-to-float p1, p1

    iget v1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPixPerProgress:F

    mul-float/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastEndClickListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-void
.end method

.method public stopPhysicsMove()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mIsPhysicsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mPhysicalAnimator:Ld7/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mFlingBehavior:Ld7/i;

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

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchEnlargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected touchInSeekBar(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mTouchDownX:F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

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
