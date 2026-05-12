.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;
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

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->val$animatorSet:Landroid/animation/AnimatorSet;

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

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$100(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;->onAnimationExitEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
