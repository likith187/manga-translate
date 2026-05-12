.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonSlideOut()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$8;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1400(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
