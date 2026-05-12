.class public final Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/AICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/AIConnector;-><init>(Landroid/content/Context;Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/AIConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/aiunit/core/AIConnector<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/AIConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/core/AIConnector<",
            "TI;TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDestroy(Ljava/lang/String;)V
    .locals 3

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAllDestroy: detectName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAllFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAllFail: detectName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/callback/AICallback$DefaultImpls;->onDestroy(Lcom/oplus/aiunit/core/callback/AICallback;)V

    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/callback/AICallback$DefaultImpls;->onFail(Lcom/oplus/aiunit/core/callback/AICallback;ILjava/lang/String;)V

    return-void
.end method

.method public onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOneDestroy: config = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOneFail: config = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceConnect()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnect"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isConnected$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0}, Lcom/oplus/aiunit/core/callback/AICallback;->onServiceConnect()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onServiceConnectFailed(I)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnectFailed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isConnected$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/AICallback;->onServiceConnectFailed(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onServiceDisconnect()V
    .locals 2

    invoke-super {p0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceDisconnect()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnect"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isConnected$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/oplus/aiunit/core/AIConnector;->access$getInitLatch$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    invoke-interface {v0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceDisconnect()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    .line 5
    invoke-interface {v0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/AIConnector;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart: config = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {v0}, Lcom/oplus/aiunit/core/AIConnector;->access$isStarted$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object p0, p0, Lcom/oplus/aiunit/core/AIConnector$aiCallback$1;->this$0:Lcom/oplus/aiunit/core/AIConnector;

    invoke-static {p0}, Lcom/oplus/aiunit/core/AIConnector;->access$getCallbackList$p(Lcom/oplus/aiunit/core/AIConnector;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/AICallback;

    .line 10
    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method
