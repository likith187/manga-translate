.class Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;,
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# static fields
.field private static final FLING_CHANGE_INCREASE_STEP:F = 1.2f

.field private static final FLING_CHANGE_REDUCE_STEP:F = 0.6f

.field private static final FLING_DXDT_RATIO:F = 0.167f

.field private static final FLING_FRICTION_DIVISOR:D = 10000.0

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final INCREASE_FRICTION_COEF:D = 0.00125

.field private static final MAX_VELOCITY_ADJUST_FRICTION:D = 10000.0

.field private static final MID_FLING_BASE_FRICTION:D = 2.6

.field private static final MID_VELOCITY_ADJUST_FRICTION:D = 4000.0

.field private static final MIN_FLING_FRICTION_REDUCE:D = 2.0

.field private static final MIN_VELOCITY_ADJUST_FRICTION:D = 1000.0

.field private static final NUM_60:I = 0x3c

.field private static final ONE_MILLION:F = 1.0E-7f

.field private static final REDUCE_FRICTION_COEF:D = 0.00125

.field private static final SLOW_FLING_BASE_FRICTION:D = 4.5

.field private static final SPRING_BACK_ADJUST_TENSION_VALUE:I = 0x64

.field private static final SPRING_BACK_ADJUST_THRESHOLD:I = 0xb4

.field private static final SPRING_BACK_FRICTION:F = 12.19f

.field private static final SPRING_BACK_STOP_THRESHOLD:F = 0.25f

.field private static final SPRING_BACK_TENSION:F = 16.0f

.field private static final TIME_ADJUST_FRICTION:J = 0x1e0L

.field private static final VELOCITY_REDUCE_FRICTION:D = 2000.0

.field private static sTimeIncrease:F = 1.0f


# instance fields
.field private mCOUICount:I

.field private mCancelCallback:Z

.field private mComputeTimeFromCallbackUpdated:Z

.field private mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mCurrentComputeTime:J

.field private mCurrentComputeTimeFromCallback:J

.field private mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mFlingFriction:F

.field private mFlingPreTime:J

.field private mFlingStartTime:J

.field private mIsScrollView:Z

.field private mIsSpringBack:Z

.field private mLastComputeTime:J

.field private mLastComputeTimeFromCallback:J

.field private mPreviousState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mScrollDuration:I

.field private mScrollFinal:I

.field private mScrollStart:I

.field private mScrollStartTime:J

.field private mSpringBackConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mSpringBackTensionMultiple:F

.field private mStartValue:D

.field private mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mTensionAdjusted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const v0, 0x3ea3d70a    # 0.32f

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    const-wide v1, 0x3fa999999999999aL    # 0.05

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    const v1, 0x3f547ae1    # 0.83f

    iput v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    new-instance v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    new-instance v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v1, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->updateComputeTimeFromCallback(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)J
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    return p0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    return p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCancelCallback:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCancelCallback:Z

    return p1
.end method

.method static synthetic access$802(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    return p1
.end method

.method static synthetic access$902(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    return p1
.end method

.method private updateComputeTimeFromCallback(J)V
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTimeFromCallback:J

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTimeFromCallback:J

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTimeFromCallback:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mComputeTimeFromCallbackUpdated:Z

    return-void
.end method


# virtual methods
.method fling(II)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingStartTime:J

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingPreTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setVelocity(D)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    return-void
.end method

.method getCurrentValue()D
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-wide v0
.end method

.method getDisplacementDistanceForState(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;)D
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-wide p0, p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method getEndValue()D
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method getVelocity()D
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-wide v0
.end method

.method isAtRest()Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v0, p1

    iput-wide v0, p3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v0, p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double p1, p2

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-wide p1, p3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method setAtRest()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-object v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCancelCallback:Z

    return-void
.end method

.method setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setCurrentValue(DZ)V
    .locals 3

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    :cond_1
    return-void
.end method

.method setEndValue(D)V
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-void
.end method

.method setVelocity(D)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method springBack(III)Z
    .locals 3

    int-to-double v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    if-gt p1, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return v2

    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    int-to-double p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    int-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1600()F

    move-result p3

    float-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    iget-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return p1
.end method

.method startScroll(IIIJ)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iput p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    iput-wide p4, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    return-void
.end method

.method update()Z
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    iget-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mComputeTimeFromCallbackUpdated:Z

    const v3, 0x3c03126f    # 0.008f

    const-string v4, "SpringOverScroller"

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mComputeTimeFromCallbackUpdated:Z

    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    const v5, 0x4e6e6b28    # 1.0E9f

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update if: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTimeFromCallback:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTimeFromCallback:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTimeFromCallback:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTimeFromCallback:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    div-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1702(F)F

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update else: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v6, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    iget-wide v8, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    sub-long/2addr v6, v8

    long-to-float v1, v6

    div-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1702(F)F

    :goto_0
    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v1

    const v5, 0x3ccccccd    # 0.025f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: error mRefreshTime = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1702(F)F

    :cond_5
    sget-boolean v1, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: mRefreshTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mLastComputeTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentComputeTime:J

    iput-wide v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mLastComputeTime:J

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v5, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-wide v7, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-wide v11, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iget-boolean v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    const/4 v15, 0x1

    if-nez v3, :cond_e

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v13, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingStartTime:J

    sub-long v13, v1, v13

    iget v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    if-ne v3, v15, :cond_a

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-wide/from16 v18, v7

    iget-wide v7, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v20, 0x40af400000000000L    # 4000.0

    cmpl-double v3, v7, v20

    const-wide v7, 0x40c3880000000000L    # 10000.0

    if-lez v3, :cond_7

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-wide/from16 v22, v9

    iget-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v3, v9, v7

    if-gez v3, :cond_8

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v9, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v9, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    const-wide v7, 0x4004cccccccccccdL    # 2.6

    add-double/2addr v9, v7

    iput-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_1

    :cond_7
    move-wide/from16 v22, v9

    :cond_8
    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v3, v9, v20

    if-gtz v3, :cond_9

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-object v9, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v9, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    div-double/2addr v9, v7

    const-wide/high16 v7, 0x4012000000000000L    # 4.5

    add-double/2addr v9, v7

    iput-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    :cond_9
    :goto_1
    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingPreTime:J

    goto :goto_2

    :cond_a
    move-wide/from16 v18, v7

    move-wide/from16 v22, v9

    :goto_2
    iget v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    if-le v3, v15, :cond_d

    const-wide/16 v7, 0x1e0

    cmp-long v3, v13, v7

    if-lez v3, :cond_c

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x409f400000000000L    # 2000.0

    cmpl-double v3, v7, v9

    const-wide v7, 0x3f547ae147ae147bL    # 0.00125

    if-lez v3, :cond_b

    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v7

    add-double/2addr v9, v13

    iput-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_3

    :cond_b
    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    cmpl-double v20, v9, v13

    if-lez v20, :cond_c

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v7

    sub-double/2addr v9, v13

    iput-wide v9, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    :cond_c
    :goto_3
    iput-wide v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mFlingPreTime:J

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v15, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCancelCallback:Z

    goto :goto_4

    :cond_e
    move-wide/from16 v18, v7

    move-wide/from16 v22, v9

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v7

    iget-boolean v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    if-nez v1, :cond_f

    const-wide v9, 0x4066800000000000L    # 180.0

    cmpg-double v1, v7, v9

    if-gez v1, :cond_f

    iput-boolean v15, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    goto :goto_4

    :cond_f
    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    cmpg-double v1, v7, v9

    if-gez v1, :cond_10

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iput-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    iput-boolean v2, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    iput-boolean v15, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCancelCallback:Z

    return v2

    :cond_10
    :goto_4
    move-wide v1, v5

    move-wide/from16 v7, v18

    move-wide/from16 v9, v22

    :goto_5
    iget-object v3, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v4, v9

    mul-double/2addr v13, v4

    iget-wide v3, v3, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v3, v11

    sub-double/2addr v13, v3

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v7

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v9, v13

    div-double/2addr v9, v5

    add-double/2addr v9, v7

    iget-object v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v11, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v13, v3

    mul-double/2addr v11, v13

    iget-wide v3, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v3, v9

    sub-double/2addr v11, v3

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v9

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v11

    div-double/2addr v13, v5

    add-double/2addr v13, v7

    iget-object v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v23, v11

    iget-wide v11, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v25, v9

    iget-wide v9, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v9, v3

    mul-double/2addr v11, v9

    iget-wide v3, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v3, v13

    sub-double/2addr v11, v3

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v13

    add-double v9, v1, v3

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v11

    add-double/2addr v3, v7

    iget-object v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v27, v1

    iget-wide v1, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v29, v11

    iget-wide v11, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v11, v9

    mul-double/2addr v1, v11

    iget-wide v5, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    add-double v5, v25, v13

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v11

    add-double/2addr v5, v7

    add-double/2addr v5, v3

    const-wide v13, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double/2addr v5, v13

    add-double v16, v23, v29

    mul-double v16, v16, v11

    add-double v16, v21, v16

    add-double v16, v16, v1

    mul-double v16, v16, v13

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v1

    float-to-double v1, v1

    mul-double/2addr v5, v1

    add-double v1, v27, v5

    invoke-static {}, Lcom/coui/appcompat/scroll/SpringOverScroller;->access$1700()F

    move-result v5

    float-to-double v5, v5

    mul-double v16, v16, v5

    add-double v7, v7, v16

    iget-object v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v3, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide v9, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iget-object v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v7, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide v1, v5, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double v5, v19, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v13, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpg-double v5, v5, v13

    if-gtz v5, :cond_12

    iget-boolean v5, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    if-eqz v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    :cond_11
    move-wide v11, v3

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    goto/16 :goto_5

    :cond_12
    :goto_6
    sget-boolean v3, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v3, :cond_13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: tension = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v4, v4, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " friction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v4, v4, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\nupdate: velocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCOUICount:I

    return v15
.end method

.method updateScroll(F)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v1, p0

    int-to-double p0, v1

    iput-wide p0, v0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-void
.end method
