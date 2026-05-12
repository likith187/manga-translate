.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorHelper"
.end annotation


# instance fields
.field private volatile mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIconTranslation:I

.field private mToEditEndRunnable:Ljava/lang/Runnable;

.field private mToEditStartRunnable:Ljava/lang/Runnable;

.field private mToNormalEndRunnable:Ljava/lang/Runnable;

.field private mToNormalStartRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private startCancelButtonEnterValueAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$11;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startCancelButtonExitValueAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSearchIconFadeInAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$6;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startSearchIconFadeOutAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$5;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public runStateChangeAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runStateChangeAnimation: same state , return. targetState = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUISearchViewAnimate"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startToEditAnimator()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startToNormalAnimator()V

    :cond_2
    :goto_0
    return-void
.end method

.method startCancelButtonEnterAnimator()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonEnterValueAnimator()V

    :cond_1
    return-void
.end method

.method startCancelButtonExitAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;->isPerformClicked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;->setPerformClicked(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V

    :cond_3
    return-void
.end method

.method startSearchIconEnterAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2900(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$8;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method startSearchIconExitAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2900(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$7;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method startToEditAnimator()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->openSoftInput(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startToNormalAnimator()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
