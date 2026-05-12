.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuExpand(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

.field final synthetic val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

.field final synthetic val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

.field final synthetic val$position:I

.field final synthetic val$springAnimation:Landroidx/dynamicanimation/animation/f;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;ILandroid/animation/ObjectAnimator;Landroidx/dynamicanimation/animation/f;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$position:I

    iput-object p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$springAnimation:Landroidx/dynamicanimation/animation/f;

    iput-object p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iput p6, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$visibility:I

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

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$position:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1800(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$position:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$labelAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$springAnimation:Landroidx/dynamicanimation/animation/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/f;->s(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->val$visibility:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$9;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    return-void
.end method
