.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initButtonEnterAnimator()V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3502(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
