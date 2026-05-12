.class Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider14;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;,
        Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroidx/collection/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/i;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/i;

    invoke-direct {v0}, Landroidx/collection/i;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCallbackDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCurrentFrameTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mListDirty:Z

    return-void
.end method

.method private cleanUpList()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mListDirty:Z

    :cond_2
    return-void
.end method

.method public static getFrameTime()J
    .locals 2

    sget-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    iget-wide v0, v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;
    .locals 2

    sget-object v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/i;

    invoke-virtual {v0, p1}, Landroidx/collection/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/i;

    invoke-virtual {p0, p1}, Landroidx/collection/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addAnimationFrameCallback(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;J)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->getProvider()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/i;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/collection/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method doAnimationFrame(J)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->isCallbackDue(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1, p2}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->cleanUpList()V

    return-void
.end method

.method getProvider()Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mProvider:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mCallbackDispatcher:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$FrameCallbackProvider16;-><init>(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mProvider:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mProvider:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    return-object p0
.end method

.method public removeCallback(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/i;

    invoke-virtual {v0, p1}, Landroidx/collection/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mListDirty:Z

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler;->mProvider:Lcom/coui/appcompat/animation/dynamicanimation/COUIAnimationHandler$AnimationFrameCallbackProvider;

    return-void
.end method
