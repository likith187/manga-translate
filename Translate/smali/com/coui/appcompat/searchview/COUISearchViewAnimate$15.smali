.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSmoothEnterAnimatorSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3202(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3502(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$2200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;->onAnimationEnd(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3202(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->openSoftInput(Z)V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3302(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;->onAnimationStart(I)V

    :cond_3
    return-void
.end method
