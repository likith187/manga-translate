.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->hide()V
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

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$5;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    return-void
.end method
