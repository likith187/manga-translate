.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonEnterValueAnimator()V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->access$1500(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
