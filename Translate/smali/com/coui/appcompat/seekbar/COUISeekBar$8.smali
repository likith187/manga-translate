.class Lcom/coui/appcompat/seekbar/COUISeekBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->startTransitionAnim(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

.field final synthetic val$isFromUser:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iput-boolean p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->val$isFromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1300(Lcom/coui/appcompat/seekbar/COUISeekBar;)Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1300(Lcom/coui/appcompat/seekbar/COUISeekBar;)Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-static {p2}, Lcom/coui/appcompat/seekbar/COUISeekBar;->access$1400(Lcom/coui/appcompat/seekbar/COUISeekBar;)I

    move-result p3

    iget-boolean p4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->val$isFromUser:Z

    invoke-interface {p1, p2, p3, p4}, Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-boolean p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$8;->val$isFromUser:Z

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method
