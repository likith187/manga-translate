.class Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->startTransitionAnim(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

.field final synthetic val$isFromUser:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$100(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$100(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$200(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$100(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$100(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-static {v0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->access$200(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->onStartTrackingTouch(Z)V

    return-void
.end method
