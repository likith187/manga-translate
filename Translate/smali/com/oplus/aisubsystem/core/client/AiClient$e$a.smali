.class public final Lcom/oplus/aisubsystem/core/client/AiClient$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient$e;->invoke()Lcom/oplus/aisubsystem/core/client/AiClient$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnect()V
    .locals 2

    const-string v0, "AiClient"

    const-string v1, "onServiceConnect"

    invoke-static {v0, v1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onServiceConnectFailed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnectFailed: err = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiClient"

    invoke-static {v0, p1}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    monitor-enter p1

    :try_start_0
    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$clearFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public onServiceDisconnect()V
    .locals 2

    const-string v0, "AiClient"

    const-string v1, "onServiceDisconnect"

    invoke-static {v0, v1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$e$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$clearFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
