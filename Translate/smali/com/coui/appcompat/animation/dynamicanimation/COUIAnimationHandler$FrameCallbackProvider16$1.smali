.class Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16$1;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    return-void
.end method
