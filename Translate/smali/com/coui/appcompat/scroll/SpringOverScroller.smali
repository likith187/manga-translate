.class public Lcom/coui/appcompat/scroll/SpringOverScroller;
.super Landroid/widget/OverScroller;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/scroll/COUIIOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;,
        Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field public static final COUI_FLING_FRICTION_FAST:F = 0.76f

.field public static final COUI_FLING_FRICTION_NORMAL:F = 0.32f

.field public static final COUI_FLING_MODE_FAST:I = 0x0

.field public static final COUI_FLING_MODE_NORMAL:I = 0x1

.field public static DEBUG:Z = false

.field private static final ERROR_THRESHOLD:F = 0.025f

.field private static final FLING_MODE:I = 0x1

.field private static final FLING_SPEED_INCREASE_COUNT_THRESHOLD:I = 0x4

.field private static final FLING_SPEED_INCREASE_EDGE_REACHED_VELOCITY:I = 0x3e8

.field private static final FLING_SPEED_INCREASE_EDGE_REACHED_VELOCITY_THRESHOLD:I = 0x4e20

.field private static final FLING_SPEED_INCREASE_MAX_VELOCITY:I = 0x11170

.field private static final FLING_SPEED_INCREASE_RATE:F = 1.4f

.field private static final FLING_SPEED_INCREASE_TIME_INTERVAL_THRESHOLD:I = 0x1f4

.field private static final FLING_SPEED_INCREASE_VELOCITY_THRESHOLD:I = 0x1f40

.field private static final MIN_FRAME_INTERVAL:F = 0.008f

.field private static final MIN_UPDATE_ONE_STEP:D = 0.20000000298023224

.field private static final NANO_ONE_SECOND:F = 1.0E9f

.field private static final NANO_TO_MILLIS:F = 1000000.0f

.field private static final ONE_SECOND:F = 1000.0f

.field private static final REST_MODE:I = 0x2

.field private static final SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final SCROLL_MODE:I = 0x0

.field private static final SOLVER_TIMESTEP_SEC:F = 0.016f

.field public static final TAG:Ljava/lang/String; = "SpringOverScroller"

.field private static final VSYNC_DURATION:I = 0x1388

.field private static mRefreshTime:F

.field private static mSpringBackFriction:F


# instance fields
.field private final mCallback:Landroid/view/Choreographer$FrameCallback;

.field private mCancelCallback:Z

.field private mContext:Landroid/content/Context;

.field private mContinuousFlingCount:I

.field private mCurrentComputeTimeFromCallback:J

.field private mEnableFlingSpeedIncrease:Z

.field private mFrameRateHelper:Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsUpdateTimeFromCallback:Z

.field private mLastComputeTimeFromCallback:J

.field private mLastFlingSpeedIncreaseRate:F

.field private mLastFlingTime:J

.field private mMode:I

.field private mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

.field private mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "SpringOverScroller"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    const v0, 0x41430a3d    # 12.19f

    sput v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mSpringBackFriction:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingSpeedIncreaseRate:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mIsUpdateTimeFromCallback:Z

    .line 6
    new-instance v1, Lcom/coui/appcompat/scroll/SpringOverScroller$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$1;-><init>(Lcom/coui/appcompat/scroll/SpringOverScroller;)V

    iput-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCallback:Landroid/view/Choreographer$FrameCallback;

    .line 7
    new-instance v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    .line 8
    new-instance v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    const p2, 0x3c83126f    # 0.016f

    .line 11
    invoke-direct {p0, p2}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setRefreshRateUnConvert(F)V

    .line 12
    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContext:Landroid/content/Context;

    .line 13
    new-instance p1, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    invoke-direct {p1, v0}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;-><init>(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mFrameRateHelper:Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    return-object p0
.end method

.method static synthetic access$1600()F
    .locals 1

    sget v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mSpringBackFriction:F

    return v0
.end method

.method static synthetic access$1700()F
    .locals 1

    sget v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mRefreshTime:F

    return v0
.end method

.method static synthetic access$1702(F)F
    .locals 0

    sput p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mRefreshTime:F

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/scroll/SpringOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/scroll/SpringOverScroller;J)J
    .locals 0

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastComputeTimeFromCallback:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/scroll/SpringOverScroller;)J
    .locals 2

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCurrentComputeTimeFromCallback:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/scroll/SpringOverScroller;J)J
    .locals 0

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCurrentComputeTimeFromCallback:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/coui/appcompat/scroll/SpringOverScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mIsUpdateTimeFromCallback:Z

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/scroll/SpringOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCancelCallback:Z

    return p0
.end method

.method private increaseVelocityIfNeed(I)I
    .locals 7

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContinuousFlingCount:I

    if-lez v2, :cond_1

    iget-wide v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/16 v3, 0x1f40

    if-lt p1, v3, :cond_0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingTime:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContinuousFlingCount:I

    const/4 v0, 0x4

    if-le v2, v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingSpeedIncreaseRate:F

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingSpeedIncreaseRate:F

    int-to-float p0, p1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const p1, 0x11170

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const p1, -0x11170

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->resetFlingSpeedValue()V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContinuousFlingCount:I

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingTime:J

    :cond_2
    :goto_0
    return p1
.end method

.method private limitEdgeReachedVelocityIfNeed(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContinuousFlingCount:I

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1400(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object p0

    iget-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    const-wide v2, 0x40d3880000000000L    # 20000.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    goto :goto_0

    :cond_0
    const-wide v2, -0x3f2c780000000000L    # -20000.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const-wide v0, -0x3f70c00000000000L    # -1000.0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    :cond_1
    :goto_0
    return-void
.end method

.method private resetFlingSpeedValue()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mContinuousFlingCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mLastFlingSpeedIncreaseRate:F

    return-void
.end method

.method private setRefreshRateUnConvert(F)V
    .locals 0

    sput p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->mRefreshTime:F

    return-void
.end method

.method private static declared-synchronized setStaticSpringBackFriction(F)V
    .locals 1

    const-class v0, Lcom/coui/appcompat/scroll/SpringOverScroller;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mSpringBackFriction:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 3

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "SpringOverScroller"

    const-string v2, "abortAnimation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCancelCallback:Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mFrameRateHelper:Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->setFrameRate(Z)V

    return-void
.end method

.method public cancelCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCancelCallback:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->isCOUIFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$700(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$700(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCancelCallback:Z

    return v2

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1000(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1100(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->abortAnimation()V

    :cond_5
    :goto_1
    return v1
.end method

.method public enableFrameRate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mFrameRateHelper:Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->enableFrameRate(Z)V

    return-void
.end method

.method public fling(IIII)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling startX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " velocityX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " velocityY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "SpringOverScroller"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    .line 6
    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {p0, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller;->increaseVelocityIfNeed(I)I

    move-result p3

    invoke-virtual {v1, p1, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->fling(II)V

    .line 7
    iget-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-direct {p0, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller;->increaseVelocityIfNeed(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->fling(II)V

    .line 8
    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mFrameRateHelper:Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/scroll/COUlFrameRateScrollSceneHelper;->setFrameRate(Z)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller;->fling(IIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lcom/coui/appcompat/scroll/SpringOverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public final getCOUICurrX()I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCOUICurrY()I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final getCOUIFinalX()I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final getCOUIFinalY()I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getCurrVelocity()F
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public getCurrVelocityX()F
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getCurrVelocityY()F
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final isCOUIFinished()Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    sget-boolean v2, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollX is rest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  scrollY is rest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpringOverScroller"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableFlingSpeedIncrease()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    return p0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1200(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1300(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1200(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1300(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/coui/appcompat/scroll/SpringOverScroller;->springBack(IIIIII)Z

    return-void
.end method

.method postChoreographerCallback()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpringOverScroller"

    const-string v1, "postChoreographerCallback: post Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method removeChoreographerCallback()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpringOverScroller"

    const-string v1, "removeChoreographerCallback: remove Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public setCOUIFriction(F)V
    .locals 0

    return-void
.end method

.method public setCurrVelocityX(F)V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1400(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object p0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method public setCurrVelocityY(F)V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1400(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;)Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;

    move-result-object p0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    sput-boolean p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    return-void
.end method

.method public setDurationRatio(F)V
    .locals 0

    return-void
.end method

.method public setEnableFlingSpeedIncrease(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mEnableFlingSpeedIncrease:Z

    invoke-direct {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->resetFlingSpeedValue()V

    return-void
.end method

.method public setFinalX(I)V
    .locals 0

    return-void
.end method

.method public setFinalY(I)V
    .locals 0

    return-void
.end method

.method public setFlingFriction(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$902(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$902(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$COUIViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public setIsScrollView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$802(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$802(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z

    return-void
.end method

.method public setRefreshRate(F)V
    .locals 0

    const p0, 0x461c4000    # 10000.0f

    div-float p1, p0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    sput p1, Lcom/coui/appcompat/scroll/SpringOverScroller;->mRefreshTime:F

    return-void
.end method

.method public setSpringBackFriction(F)V
    .locals 0

    invoke-static {p1}, Lcom/coui/appcompat/scroll/SpringOverScroller;->setStaticSpringBackFriction(F)V

    return-void
.end method

.method public setSpringBackTensionMultiple(F)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1502(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$1502(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;F)F

    return-void
.end method

.method public setVelocityXRatio(F)V
    .locals 0

    return-void
.end method

.method public setVelocityYRatio(F)V
    .locals 0

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 3

    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "springBack startX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "SpringOverScroller"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {v0, p1, p3, p4}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p1

    iget-object p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iput p3, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :cond_4
    :goto_0
    return p3
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/scroll/SpringOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 9

    .line 2
    sget-boolean v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScroll startX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "SpringOverScroller"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mMode:I

    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 6
    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move v2, p1

    move v3, p3

    move v4, p5

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->startScroll(IIIJ)V

    .line 7
    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    move v2, p2

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->startScroll(IIIJ)V

    return-void
.end method

.method public triggerCallback()V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->removeChoreographerCallback()V

    invoke-virtual {p0}, Lcom/coui/appcompat/scroll/SpringOverScroller;->postChoreographerCallback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mCancelCallback:Z

    iget-object v1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerX:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {v1, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$702(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller;->mScrollerY:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    invoke-static {p0, v0}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->access$702(Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;Z)Z

    return-void
.end method
