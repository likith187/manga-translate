.class Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->startTransitionAnim(IZ)V
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

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISectionSeekBar$2;->this$0:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->onStopTrackingTouch(Z)V

    return-void
.end method
