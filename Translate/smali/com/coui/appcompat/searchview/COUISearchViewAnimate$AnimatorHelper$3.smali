.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->openSoftInput(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;->onAnimationStart(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V

    return-void
.end method
