.class public Lcom/coui/appcompat/state/StateEffectAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATE_FACTOR:F = 10000.0f

.field private static final EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mCurrentAnimatedValue:F

.field private mCurrentMaskColor:I

.field private mEndMaskColor:I

.field private mHostDrawable:Landroid/graphics/drawable/Drawable;

.field private mHostView:Landroid/view/View;

.field private mListener:Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;

.field private final mMaskTransition:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private mPendingThresholdValue:F

.field private final mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

.field private mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mStartMaskColor:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/state/StateEffectAnimator;->EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/coui/appcompat/state/StateEffectAnimator$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/state/StateEffectAnimator$1;-><init>(Lcom/coui/appcompat/state/StateEffectAnimator;)V

    iput-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    iput v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mListener:Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;

    .line 8
    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    iput-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostView:Landroid/view/View;

    .line 10
    iput-object p3, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mTag:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/coui/appcompat/state/StateEffectAnimator$2;

    invoke-direct {p1, p0, p3}, Lcom/coui/appcompat/state/StateEffectAnimator$2;-><init>(Lcom/coui/appcompat/state/StateEffectAnimator;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mMaskTransition:Landroidx/dynamicanimation/animation/d;

    .line 12
    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->ensureSpringAnimation()V

    .line 13
    iput p4, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mStartMaskColor:I

    .line 14
    iput p5, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mEndMaskColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;II)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;II)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/state/StateEffectAnimator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/state/StateEffectAnimator;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/state/StateEffectAnimator;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->getProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/state/StateEffectAnimator;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setProgress(F)V

    return-void
.end method

.method private ensureSpringAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mMaskTransition:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance p0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-void
.end method

.method private getProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    return p0
.end method

.method private setProgress(F)V
    .locals 5

    iput p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    const v0, 0x461c4000    # 10000.0f

    div-float v1, p1, v0

    sget-object v2, Lcom/coui/appcompat/state/StateEffectAnimator;->EVALUATOR:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mStartMaskColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mEndMaskColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentMaskColor:I

    iget-object v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mListener:Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;->onValueUpdateListener(F)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    iget v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/state/StateEffectAnimator;->animateToProgress(FZ)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public animateToProgress(FZ)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->ensureSpringAnimation()V

    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->reset()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/state/StateEffectAnimator;->setProgress(F)V

    :goto_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    return-void
.end method

.method public animateToProgressUntil(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->ensureSpringAnimation()V

    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mResetEndListener:Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->removeEndListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    iget-object p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentAnimatedValue:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    iput p2, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mPendingThresholdValue:F

    :goto_0
    return-void
.end method

.method public getCurrentMaskColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mCurrentMaskColor:I

    return p0
.end method

.method public setEndMaskColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mEndMaskColor:I

    return-void
.end method

.method public setHostDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHostView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mHostView:Landroid/view/View;

    return-void
.end method

.method public setSpringBounce(F)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->ensureSpringAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->getSpring()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-void
.end method

.method public setSpringResponse(F)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/state/StateEffectAnimator;->ensureSpringAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->getSpring()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    return-void
.end method

.method public setStartMaskColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mStartMaskColor:I

    return-void
.end method

.method public setStateEffectAnimatorListener(Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/StateEffectAnimator;->mListener:Lcom/coui/appcompat/state/StateEffectAnimator$StateEffectAnimatorListener;

    return-void
.end method
