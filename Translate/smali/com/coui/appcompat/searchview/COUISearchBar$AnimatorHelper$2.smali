.class Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;
.super Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->initSmoothExitAnimatorSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->access$3500(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->access$2500(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2300(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2300(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;->onAnimationEnd(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2300(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$2300(Lcom/coui/appcompat/searchview/COUISearchBar;)Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar$OnAnimationListener;->onAnimationStart(I)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1500(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$1600(Lcom/coui/appcompat/searchview/COUISearchBar;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3300(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->this$1:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$3400(Lcom/coui/appcompat/searchview/COUISearchBar;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    :cond_1
    return-void
.end method
