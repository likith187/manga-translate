.class Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorHelper"
.end annotation


# instance fields
.field private volatile mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExtraY:I

.field private mStartY:I

.field private mTopMargin:I

.field private mTopOffset:I

.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopMargin:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mStartY:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mExtraY:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initAnimator()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonEnterAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->endAnimateToEditState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->endAnimateToNormalState()V

    return-void
.end method

.method static synthetic access$502(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mExtraY:I

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startAnimateToEditState()V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initSearchViewEnterAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonExitAnimator$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initSearchViewExitAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initSearchViewEnterAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private endAnimateToEditState()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mStartY:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mExtraY:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopMargin:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4002(Lcom/coui/appcompat/searchview/COUISearchBar;F)F

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3800(Lcom/coui/appcompat/searchview/COUISearchBar;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4100(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setDividerAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private endAnimateToNormalState()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4002(Lcom/coui/appcompat/searchview/COUISearchBar;F)F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4100(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setDividerAlpha(F)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static synthetic f(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonExitAnimator$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonExitAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonEnterAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonEnterAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initAnimator()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initSearchViewEnterAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initSearchViewExitAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initButtonEnterAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initButtonExitAnimator()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initSmoothEnterAnimatorSet()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initSmoothExitAnimatorSet()V

    return-void
.end method

.method private initButtonEnterAnimator()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1402(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    const-wide/16 v5, 0x190

    if-nez v0, :cond_0

    const-wide/16 v7, 0x15e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-ne v0, v4, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v2

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1700()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-ne v0, v4, :cond_3

    const-wide/16 v2, 0x32

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/searchview/n;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/n;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1802(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/searchview/o;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/o;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1902(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1700()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/searchview/p;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/p;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/q;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/q;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initButtonExitAnimator()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2802(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x15e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x64

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1700()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/searchview/j;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/searchview/j;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2902(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/coui/appcompat/searchview/k;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/k;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1700()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v6, Lcom/coui/appcompat/searchview/l;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/searchview/l;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3102(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/m;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/m;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initSearchViewEnterAnimator()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1002(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/coui/appcompat/searchview/g;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/g;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1202(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/h;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/h;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initSearchViewExitAnimator()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2602(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/coui/appcompat/searchview/f;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/searchview/f;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2702(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1100()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/i;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/i;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initSmoothEnterAnimatorSet()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2102(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v5}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object p0, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initSmoothExitAnimatorSet()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3202(Lcom/coui/appcompat/searchview/COUISearchBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v3}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2800(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v4}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2900(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v5}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3000(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object p0, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public static synthetic j(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initSearchViewExitAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonExitAnimator$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->lambda$initButtonEnterAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$initButtonEnterAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4100(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setDividerAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initButtonEnterAnimator$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initButtonEnterAnimator$4(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object p0

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initButtonEnterAnimator$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    neg-float v1, p1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    neg-float p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initButtonExitAnimator$10(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initButtonExitAnimator$11(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    neg-float v1, p1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4600(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    neg-float p1, p1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initButtonExitAnimator$8(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object p0

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4100(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;

    move-result-object v0

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchBarDrawingProxyDrawable;->setDividerAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initButtonExitAnimator$9(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSearchViewEnterAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mStartY:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mExtraY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSearchViewEnterAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4002(Lcom/coui/appcompat/searchview/COUISearchBar;F)F

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSearchViewExitAnimator$6(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mStartY:I

    iget v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mExtraY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSearchViewExitAnimator$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4002(Lcom/coui/appcompat/searchview/COUISearchBar;F)F

    :cond_0
    return-void
.end method

.method private startAnimateToEditState()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopMargin:I

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mStartY:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4200(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$4300(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$600(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->openSoftInput(Z)V

    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3900(Lcom/coui/appcompat/searchview/COUISearchBar;II)V

    return-void
.end method

.method private startAnimateToNormalState()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mTopOffset:I

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3700(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$600(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->openSoftInput(Z)V

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3800(Lcom/coui/appcompat/searchview/COUISearchBar;I)V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3900(Lcom/coui/appcompat/searchview/COUISearchBar;II)V

    return-void
.end method


# virtual methods
.method public runStateChangeAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

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

    const-string p1, "COUISearchBar"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startToEditAnimator()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startToNormalAnimator()V

    :cond_2
    :goto_0
    return-void
.end method

.method public runStateChangeImmediately(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "COUISearchBar"

    const-string p1, "animating"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startAnimateToEditState()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->endAnimateToEditState()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startAnimateToNormalState()V

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->endAnimateToNormalState()V

    :cond_2
    :goto_0
    return-void
.end method

.method startToEditAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startAnimateToEditState()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2100(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method startToNormalAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3600(Lcom/coui/appcompat/searchview/COUISearchBar;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->startAnimateToNormalState()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3200(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
