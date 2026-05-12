.class public Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;
    }
.end annotation


# static fields
.field private static final DURATION_TIME:I = 0x258

.field private static final EASEINTERPOLATOR:Lcom/coui/appcompat/animation/COUIEaseInterpolator;

.field private static final INTERVAL_TIME:I = 0xbb8

.field private static final IN_DELAY_TIME:I = 0x96

.field private static final TAG:Ljava/lang/String; = "COUIHintAnimationLayout"

.field private static final TRANSLATEINTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field mAnimationIsWorking:Z

.field private mAnimatorSetIn:Landroid/animation/AnimatorSet;

.field private mAnimatorSetOut:Landroid/animation/AnimatorSet;

.field private mCOUIHintAnimationChangeListener:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;

.field private mChangeHintRunnable:Ljava/lang/Runnable;

.field private mCouiSearchBarAnimationTranslateExtra:I

.field private mCurrentHintIndex:I

.field private mCurrentHintTextView:Landroid/widget/TextView;

.field private mCurrentPlayTime:I

.field private mFadeIn:Landroid/animation/ObjectAnimator;

.field private mFadeOut:Landroid/animation/ObjectAnimator;

.field private mHintStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTextViewFirst:Landroid/widget/TextView;

.field private mHintTextViewThen:Landroid/widget/TextView;

.field private mMoveIn:Landroid/animation/ObjectAnimator;

.field private mMoveOut:Landroid/animation/ObjectAnimator;

.field mNeedRePlay:Z

.field private mNeedStopAnimation:Z

.field private mRepeatCount:I

.field private mSearchEditText:Landroid/widget/EditText;

.field private mTempQueryHint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Le0/a;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->TRANSLATEINTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->EASEINTERPOLATOR:Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintIndex:I

    .line 4
    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    .line 5
    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedRePlay:Z

    .line 6
    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedStopAnimation:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mRepeatCount:I

    .line 8
    iput p2, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentPlayTime:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_search_bar_animation_translate_extra:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCouiSearchBarAnimationTranslateExtra:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedStopAnimation:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedStopAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->applyHintChangeAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method private animationIsRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private applyHintChangeAnimation(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentPlayTime:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentPlayTime:I

    iget v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mRepeatCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-le v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->pauseHintsAnimation()V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    iget v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCouiSearchBarAnimationTranslateExtra:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveOut:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeOut:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveIn:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    neg-int v5, v3

    int-to-float v5, v5

    const/4 v6, 0x0

    new-array v7, v2, [F

    aput v6, v7, v0

    aput v5, v7, v1

    const-string v5, "translationY"

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveOut:Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->TRANSLATEINTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    const-string v9, "alpha"

    invoke-static {v4, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeOut:Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->EASEINTERPOLATOR:Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    iget-object v10, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveOut:Landroid/animation/ObjectAnimator;

    iget-object v11, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeOut:Landroid/animation/ObjectAnimator;

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v10, v12, v0

    aput-object v11, v12, v1

    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x258

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object v4

    int-to-float v3, v3

    new-array v12, v2, [F

    aput v3, v12, v0

    aput v6, v12, v1

    invoke-static {v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mMoveIn:Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mFadeIn:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v0

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$3;-><init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    new-instance v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$4;-><init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCOUIHintAnimationChangeListener:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintIndex:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-interface {v0, v1, p1, p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;->hintAnimationChange(ILjava/lang/String;Landroid/widget/TextView;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private getNextHintTextView()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    :cond_0
    return-object v1
.end method

.method private initHintAnimationTextView()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/toolbar/R$style;->Widget_COUI_EditText_SearchViewStyle_HintText:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/toolbar/R$style;->Widget_COUI_EditText_SearchViewStyle_HintText:I

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$style;->couiTextAppearanceBodyL:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$style;->couiTextAppearanceBodyL:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorLabelSecondary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorLabelSecondary:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    sget v1, Lcom/support/toolbar/R$id;->coui_hint_text_view_first:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    sget v1, Lcom/support/toolbar/R$id;->coui_hint_text_view_then:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initTextHintAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    new-instance v0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$1;-><init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$2;-><init>(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private resetHintTextView()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method getCurrentHintTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getHintStrings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->resumeHintsAnimation()V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->pauseHintsAnimation()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedRePlay:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->resumeHintsAnimation()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedRePlay:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->pauseHintsAnimation()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedRePlay:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public pauseHintsAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mNeedStopAnimation:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->resetHintTextView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->getNextHintTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewThen:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "COUIHintAnimationLayout"

    const-string v0, "pauseHintsAnimation return"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resumeHintsAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->setHintsAnimation(Ljava/util/List;)V

    return-void
.end method

.method public setCOUIHintAnimationChangeListener(Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCOUIHintAnimationChangeListener:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout$COUIHintAnimationChangeListener;

    return-void
.end method

.method public setHintsAnimation(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    const-string v1, "COUIHintAnimationLayout"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    const-string p0, "Before calling this method, you must ensure that there is an edittext object in the container:1, you can call setSearchEditText or add an edittext yourself, refer to COUISearchBar2, you can put an edittext object in xml ( Refer to coui_search_view_animated_support_layout)to use the related functions of this animation container"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->initHintAnimationTextView()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->initTextHintAnimation()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintTextViewFirst:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mHintStrings:Ljava/util/List;

    iget v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mTempQueryHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mCurrentHintTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mChangeHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mAnimationIsWorking:Z

    goto :goto_1

    :cond_6
    const-string p0, "Setting hints animation content is invalid when the searchEdittext has a value"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    if-gtz p1, :cond_0

    const-string p0, "COUIHintAnimationLayout"

    const-string p1, "RepeatCount must be greater than zero"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mRepeatCount:I

    return-void
.end method

.method public setSearchEditText(Landroid/widget/EditText;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;->mSearchEditText:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const-string p0, "COUIHintAnimationLayout"

    const-string p1, "setSearchEditText() can only be executed once"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
