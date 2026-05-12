.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startMoveAnimation(FFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$700(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$702(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$700(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$702(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$800(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-static {p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$802(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$4;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iget p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->mLastX:F

    invoke-static {p0, p1, v1}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->access$900(Lcom/coui/appcompat/seekbar/COUISectionSeekBar;FZ)V

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
