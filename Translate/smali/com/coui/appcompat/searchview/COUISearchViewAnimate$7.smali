.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->showInToolBar()V
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

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1002(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$7;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    return-void
.end method
