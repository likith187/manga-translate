.class public Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_IS_FROM_TOUCH_LISTVIEW:I = -0x1

.field public static final APPEAR_DURATION:I = 0x96

.field public static final DISAPPEAR_DURATION:I = 0x16f

.field public static final STATE_BACKGROUND_APPEAR:I = 0x1

.field public static final STATE_BACKGROUND_DISAPPEAR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIAnimationHelper"


# instance fields
.field private mActionIsFromTouchListView:Z

.field private mAppearDuration:I

.field public mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

.field private mDefaultColor:I

.field private mDisappearDuration:I

.field public mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIfDisappearWhenGetCancelEvent:Z

.field private mIsNeedVibrate:Z

.field private mIsSelected:Z

.field private mNeedAutoStartDisAppear:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressColor:I

.field public mState:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16f

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDisappearDuration:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mAppearDuration:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mState:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mNeedAutoStartDisAppear:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIfDisappearWhenGetCancelEvent:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsNeedVibrate:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mActionIsFromTouchListView:Z

    new-instance v0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$1;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mActionIsFromTouchListView:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIfDisappearWhenGetCancelEvent:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mNeedAutoStartDisAppear:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mNeedAutoStartDisAppear:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsSelected:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private performHapticFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsNeedVibrate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mActionIsFromTouchListView:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x12e

    invoke-virtual {v0, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->init(Landroid/view/View;IIZ)V

    return-void
.end method

.method public init(Landroid/view/View;IIZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    .line 2
    iput-boolean p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsNeedVibrate:Z

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mTargetView:Landroid/view/View;

    .line 4
    iput p3, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mPressColor:I

    .line 5
    iput p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDefaultColor:I

    .line 6
    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 7
    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->end()V

    .line 8
    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    .line 9
    :cond_0
    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 10
    iget-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->end()V

    .line 11
    iput-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    .line 12
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object p4

    const-string v0, "backgroundColor"

    invoke-static {p1, v0, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    .line 13
    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mAppearDuration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 17
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$2;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDisappearDuration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 21
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$3;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    iget-object p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil$4;-><init>(Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public operateTouchListener(Z)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be called after the init method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public refreshCardBg(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mTargetView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setAppearDuration(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mAppearDuration:I

    return-void
.end method

.method public setDisappearDuration(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDisappearDuration:I

    return-void
.end method

.method public setIfDisappearWhenGetCancelEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIfDisappearWhenGetCancelEvent:Z

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->setIsSelected(ZZ)V

    return-void
.end method

.method public setIsSelected(ZZ)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsSelected:Z

    if-eq v0, p1, :cond_3

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsSelected:Z

    .line 4
    invoke-direct {p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->cancelAnimation()V

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    .line 5
    iget p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mDefaultColor:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->refreshCardBg(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 8
    iget p1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mPressColor:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->refreshCardBg(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsSelected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->performHapticFeedback()V

    :cond_2
    return-void
.end method

.method public startDisAppearAnimationOrNot()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mNeedAutoStartDisAppear:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mState:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mIsSelected:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->mBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
