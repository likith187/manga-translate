.class public Lcom/coui/appcompat/edittext/COUICodeInputHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final INBOX_APPEAR_ANIMATOR_DURATION:J = 0x64L

.field public static final INBOX_DELAY_ANIMATOR_DURATION:J = 0x21L

.field public static final NUMBER_APPEAR_ANIMATOR_DURATION:J = 0x64L

.field public static final NUMBER_DELAY_ANIMATOR_DURATION:J = 0x21L

.field public static final NUMBER_SCALE_START:F = 0.6f


# instance fields
.field private codeItemView:Landroid/view/View;

.field private endNumberAlpha:F

.field private endNumberScale:F

.field private isInboxAnimatorRuning:Z

.field private isNumberAnimatorRuning:Z

.field private mAnimatorNumber:Ljava/lang/String;

.field private mCurrentInboxAlpha:F

.field private mCurrentInboxAppear:Z

.field private mCurrentNumberAlpha:F

.field private mCurrentNumberAppear:Z

.field private mCurrentNumberScale:F

.field private mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mNumberScaleAnimator:Landroid/animation/ValueAnimator;

.field private startNumberAlpha:F

.field private startNumberScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberScale:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberScale:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->codeItemView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/edittext/COUICodeInputHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/edittext/COUICodeInputHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberScale:F

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->codeItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/edittext/COUICodeInputHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning:Z

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/edittext/COUICodeInputHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    return p1
.end method

.method static synthetic access$502(Lcom/coui/appcompat/edittext/COUICodeInputHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning:Z

    return p1
.end method

.method private cancelInboxAlphaAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelNumberScaleAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private executeInboxAnimator(Z)V
    .locals 5

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    :goto_0
    iput v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    :goto_1
    iput v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    :goto_2
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x21

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICodeInputHelper$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$3;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUICodeInputHelper$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$4;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning:Z

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    return-void
.end method

.method private executeNumberAnimator(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    cmpg-float v6, v5, v4

    if-gez v6, :cond_0

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    :goto_0
    iput v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberScale:F

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    cmpl-float v6, v5, v3

    if-lez v6, :cond_2

    cmpg-float v6, v5, v4

    if-gez v6, :cond_2

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    goto :goto_1

    :cond_2
    iput v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    :goto_1
    iput v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberScale:F

    :goto_2
    iput v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberScale:F

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberScale:F

    new-array v5, v1, [F

    aput v3, v5, v0

    aput v4, v5, v2

    const-string v3, "scaleHolder"

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    iget v5, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->endNumberAlpha:F

    new-array v1, v1, [F

    aput v4, v1, v0

    aput v5, v1, v2

    const-string v0, "alphaHolder"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v3, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x21

    :goto_3
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$1;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper$2;-><init>(Lcom/coui/appcompat/edittext/COUICodeInputHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning:Z

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberAlpha:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->startNumberScale:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberScale:F

    return-void
.end method

.method private setCurrentInboxAppear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAppear:Z

    return-void
.end method

.method private setCurrentNumberAppear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAppear:Z

    return-void
.end method


# virtual methods
.method public getAnimatorNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mAnimatorNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentInboxAlpha()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentInboxAlpha:F

    return p0
.end method

.method public getCurrentNumberAlpha()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAlpha:F

    return p0
.end method

.method public getCurrentNumberScale()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberScale:F

    return p0
.end method

.method public getInboxAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mInboxAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getNumberAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mNumberScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public isCurrentNumberAppear()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mCurrentNumberAppear:Z

    return p0
.end method

.method public isInboxAnimatorRuning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning:Z

    return p0
.end method

.method public isNumberAnimatorRuning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning:Z

    return p0
.end method

.method public startInboxAnimator(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->setCurrentInboxAppear(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isInboxAnimatorRuning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->cancelInboxAlphaAnimator()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->executeInboxAnimator(Z)V

    return-void
.end method

.method public startNumberAnimator(ZLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->mAnimatorNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->setCurrentNumberAppear(Z)V

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->isNumberAnimatorRuning:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->cancelNumberScaleAnimator()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUICodeInputHelper;->executeNumberAnimator(Z)V

    return-void
.end method
