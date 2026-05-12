.class public Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;
    }
.end annotation


# static fields
.field public static final BORDERLESS_BUTTON_PRESS_FEEDBACK:I = 0x1

.field public static final CARD_PRESS_FEEDBACK:I = 0x0

.field private static final DEFAULT_SCALE_END_RATIO:F = 0.92f

.field private static final DEFAULT_SCALE_FACTOR:F = 10000.0f

.field private static final DEFAULT_SCALE_MAPPING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final DEFAULT_SCALE_START_RATIO:F = 1.0f

.field public static final DEFAULT_SPRING_BOUNCE:F = 0.0f

.field public static final DEFAULT_SPRING_RESPONSE:F = 0.3f

.field public static final FILL_BUTTON_PRESS_FEEDBACK:I = 0x2

.field private static final MAX_SCALE_END_RATIO:F = 0.98f

.field private static final MIN_SCALE_END_RATIO:F = 0.92f

.field private static final SCALE_TRANSITION:Landroidx/dynamicanimation/animation/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/d;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "COUIPressFeedbackHelper"

.field public static final UNJUMPABLE_CARD_PRESS_FEEDBACK:I


# instance fields
.field private mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

.field private mCurrentScaleValue:F

.field private mMaxCardViewSize:F

.field private mMinCardViewSize:F

.field private mScaleEnable:Z

.field private mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private mTarget:Landroid/view/View;

.field private mUserViewHeight:F

.field private mUserViewWidth:F

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->DEFAULT_SCALE_MAPPING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;

    const-string v1, "viewScaleTransition"

    invoke-direct {v0, v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->SCALE_TRANSITION:Landroidx/dynamicanimation/animation/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mScaleEnable:Z

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewWidth:F

    .line 15
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewHeight:F

    .line 16
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMinCardViewSize:F

    .line 17
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMaxCardViewSize:F

    .line 18
    iput p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mViewType:I

    .line 19
    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->updateConfig(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mScaleEnable:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewWidth:F

    .line 5
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewHeight:F

    .line 6
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMinCardViewSize:F

    .line 7
    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMaxCardViewSize:F

    .line 8
    iput p2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mViewType:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setTargetView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->updateConfig(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->lambda$ensureSpringAnimation$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)F
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->getProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setProgress(F)V

    return-void
.end method

.method private ensureSpringAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    sget-object v2, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->SCALE_TRANSITION:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v1, Lcom/coui/appcompat/pressfeedback/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/pressfeedback/d;-><init>(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->addUpdateListener(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationUpdateListener;)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    return-void
.end method

.method private getCardScaleRatio()F
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;->getTargetWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

    invoke-interface {v1}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;->getTargetHeight()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewWidth:F

    iget v3, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewHeight:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    mul-int/2addr v0, v1

    int-to-float v2, v0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMinCardViewSize:F

    cmpg-float v1, v2, v0

    const v3, 0x3f6b851f    # 0.92f

    if-gtz v1, :cond_2

    return v3

    :cond_2
    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMaxCardViewSize:F

    cmpl-float v1, v2, p0

    if-ltz v1, :cond_3

    const p0, 0x3f7ae148    # 0.98f

    return p0

    :cond_3
    sget-object v1, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->DEFAULT_SCALE_MAPPING_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sub-float/2addr v2, v0

    sub-float/2addr p0, v0

    div-float/2addr v2, p0

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    const v0, 0x3d75c290    # 0.060000002f

    mul-float/2addr p0, v0

    add-float/2addr p0, v3

    return p0

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private getProgress()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCurrentScaleValue:F

    return p0
.end method

.method private getScaledRatioByAnimatedValue()F
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCurrentScaleValue:F

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->getCardScaleRatio()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p0, v1, p0

    mul-float/2addr p0, v0

    sub-float/2addr v1, p0

    return v1
.end method

.method private synthetic lambda$ensureSpringAnimation$0(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->setProgress(F)V

    return-void
.end method

.method private setProgress(F)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

    if-nez v0, :cond_0

    const-string p0, "COUIPressFeedbackHelper"

    const-string p1, "press effect target is null!"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->getScaledRatioByAnimatedValue()F

    move-result v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCurrentScaleValue:F

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;->onScaleUpdate(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateConfig(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_min_end_value_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/2addr v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMinCardViewSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_max_end_value_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$dimen;->coui_max_end_value_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mMaxCardViewSize:F

    return-void
.end method


# virtual methods
.method public executeFeedbackAnimator(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mScaleEnable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->ensureSpringAnimation()V

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz p1, :cond_0

    const p1, 0x461c4000    # 10000.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    return-void
.end method

.method public getSpringAnimation()Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mSpringAnimation:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-object p0
.end method

.method public setCallback(Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mCallback:Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper$COUIPressFeedbackHelperCallback;

    return-void
.end method

.method public setScaleEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mScaleEnable:Z

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mTarget:Landroid/view/View;

    return-void
.end method

.method public setUserViewHeight(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewHeight:F

    return-void
.end method

.method public setUserViewWidth(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mUserViewWidth:F

    return-void
.end method

.method public setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/pressfeedback/COUIPressFeedbackHelper;->mViewType:I

    return-void
.end method
