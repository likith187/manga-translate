.class Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCurrentFrameTime:J

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    iget-wide v1, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCurrentFrameTime:J

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->doAnimationFrame(J)V

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    iget-object v0, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;->this$0:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->getProvider()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    return-void
.end method
