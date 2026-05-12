.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->animationFloatingButtonMenuClose(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

.field final synthetic val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

.field final synthetic val$duration:I

.field final synthetic val$needDrop:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;IZLcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    iput-boolean p3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$needDrop:Z

    iput-object p4, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iput p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$2000(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1500(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1700(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-static {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1300(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;)Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->access$202(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;Z)Z

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->setOnActionSelectedListener(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$OnActionSelectedListener;)V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$needDrop:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    iget v3, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$duration:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1900(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$couiFloatingButtonLabel:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$position:I

    iget v2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->val$duration:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1900(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;IIZ)V

    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$10;->this$0:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->access$1600(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)Z

    return-void
.end method
