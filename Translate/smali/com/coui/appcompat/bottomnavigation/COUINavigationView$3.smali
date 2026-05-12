.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

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

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;->onAnimationEnterEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->inflateMenu(I)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$402(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;I)I

    :cond_0
    return-void
.end method
