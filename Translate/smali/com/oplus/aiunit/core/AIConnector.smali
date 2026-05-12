.class public abstract Lcom/oplus/aiunit/core/AIConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/AIConnector$Action;,
        Lcom/oplus/aiunit/core/AIConnector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
        "O:",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AWAIT_TIME_MAX:J = 0x3L

.field public static final Companion:Lcom/oplus/aiunit/core/AIConnector$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

.field private final callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/aiunit/core/callback/AICallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final detector:Lcom/oplus/aiunit/core/base/FrameDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isSupported:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/AIConnector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/AIConnector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/AIConnector;->Companion:Lcom/oplus/aiunit/core/AIConnector$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TAG"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    iput-object p3, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    invoke-direct {p1, p0}, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;-><init>(Lcom/oplus/aiunit/core/AIConnector;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/oplus/aiunit/core/b;

    invoke-direct {p2, p0}, Lcom/oplus/aiunit/core/b;-><init>(Lcom/oplus/aiunit/core/AIConnector;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->initState(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->_init_$lambda$0(Lcom/oplus/aiunit/core/AIConnector;)V

    return-void
.end method

.method public static final synthetic access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$isConnected$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->stopAsync$lambda$5(Lcom/oplus/aiunit/core/AIConnector;)V

    return-void
.end method

.method private final declared-synchronized initState(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    sget-object v3, Lcom/oplus/aiunit/core/utils/AILog;->INSTANCE:Lcom/oplus/aiunit/core/utils/AILog;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/utils/AILog;->getDebugMode()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :try_start_3
    iget-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->initLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initState connect wait exception. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState: isConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit v0

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final resetState()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final stopAsync$lambda$5(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->stop()V

    return-void
.end method


# virtual methods
.method public final add(Lcom/oplus/aiunit/core/callback/AICallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkSupported()Z
    .locals 4

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isSupported:Z

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->isSupported()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeUnit()Ljava/lang/Boolean;

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/AIUnit$Companion;->remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear removeInner "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/AIConnector;->resetState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->stopAndClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getApi()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getApiLevel()I

    move-result p0

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getDetectData()Lcom/oplus/aiunit/core/data/DetectData;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getDetectData()Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    const-string v0, "getDetectData(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDetectName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDetector()Lcom/oplus/aiunit/core/base/FrameDetector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/aiunit/core/base/FrameDetector<",
            "TI;TO;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "getExtras(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getProtocol()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-interface {p0}, Lcom/oplus/aiunit/core/base/AIDetector;->getProtocol()I

    move-result p0

    return p0
.end method

.method public final getRunningInfo()Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getUnstableRunningInfo()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "getUnstableRunningInfo(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRunningType()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getUnstableRunningType()I

    move-result p0

    return p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnitName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final declared-synchronized initSync()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->initState(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->start()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isSupported()Z
    .locals 4

    iget-boolean v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isSupported:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isSupported:Z

    :cond_0
    iget-boolean p0, p0, Lcom/oplus/aiunit/core/AIConnector;->isSupported:Z

    return p0
.end method

.method public final query()Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->query()Lcom/oplus/aiunit/core/data/DetectInfo;

    move-result-object p0

    const-string v0, "query(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final remove(Lcom/oplus/aiunit/core/callback/AICallback;)Z
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUnitCache()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeUnit()Ljava/lang/Boolean;

    return-void
.end method

.method public final runAction(Lcom/oplus/aiunit/core/AIConnector$Action;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/aiunit/core/AIConnector$Action<",
            "TR;>;)TR;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runAction for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oplus/aiunit/core/AIConnector;->initState(Z)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    const-string v0, "runAction no connected!"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    const-string v0, "service no connected"

    invoke-interface {p1, p0, v0}, Lcom/oplus/aiunit/core/AIConnector$Action;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->start()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    const-string v0, "runAction no started!"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    const-string v0, "find(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit start failed"

    invoke-interface {p1, p0, v0}, Lcom/oplus/aiunit/core/AIConnector$Action;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {p1}, Lcom/oplus/aiunit/core/AIConnector$Action;->run()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runAction failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lcom/oplus/aiunit/core/AIConnector$Action;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    invoke-static {v2}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runAction: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->getDetectName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cost time "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setSharedMemoryPool([I)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/AIContext;->setConfigMemoryPool([I)V

    return-void
.end method

.method public final setSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/aiunit/core/AIConnector;->isSupported:Z

    return-void
.end method

.method public final declared-synchronized start()I
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/AIConnector;->initState(Z)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->checkActive()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->aiCallback:Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/core/base/FrameDetector;->addCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/base/FrameDetector;->start()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "start code = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cost time = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v3

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->stop()I

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopAndClear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->stop()V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/AIConnector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final stopAsync()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector;->detector:Lcom/oplus/aiunit/core/base/FrameDetector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/core/a;

    invoke-direct {v1, p0}, Lcom/oplus/aiunit/core/a;-><init>(Lcom/oplus/aiunit/core/AIConnector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
