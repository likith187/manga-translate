.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
