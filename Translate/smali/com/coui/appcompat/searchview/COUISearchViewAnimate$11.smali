.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSearchViewEnterAnimator()V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3202(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3302(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    return-void
.end method
