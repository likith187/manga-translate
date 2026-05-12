.class public final Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->runTransition(Landroid/view/WindowInsetsAnimationController;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $controller:Landroid/view/WindowInsetsAnimationController;

.field final synthetic $show:Z


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->$controller:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p2, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->$controller:Landroid/view/WindowInsetsAnimationController;

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->$controller:Landroid/view/WindowInsetsAnimationController;

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;->$show:Z

    invoke-interface {p1, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_0
    return-void
.end method
