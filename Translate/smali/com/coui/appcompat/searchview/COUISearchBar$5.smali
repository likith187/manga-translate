.class Lcom/coui/appcompat/searchview/COUISearchBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchBar;->hideInToolBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$5;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$5;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$702(Lcom/coui/appcompat/searchview/COUISearchBar;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$5;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$800(Lcom/coui/appcompat/searchview/COUISearchBar;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$5;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->access$600(Lcom/coui/appcompat/searchview/COUISearchBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$5;->this$0:Lcom/coui/appcompat/searchview/COUISearchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->openSoftInput(Z)V

    :cond_0
    return-void
.end method
