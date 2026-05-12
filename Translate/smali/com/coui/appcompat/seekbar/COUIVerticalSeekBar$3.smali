.class Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->createClickAnimator(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

.field final synthetic val$isFromUser:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$400(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->access$500(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;)I

    move-result v1

    iget-boolean v2, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->this$0:Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar$3;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUIVerticalSeekBar;->onStartTrackingTouch(Z)V

    return-void
.end method
