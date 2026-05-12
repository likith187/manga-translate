.class Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;
.super Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16$1;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;)V

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
