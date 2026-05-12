.class public final Lcom/oplus/aisubsystem/core/client/AiClient$d$a;
.super Lcom/oplus/aisubsystem/core/client/AiClientCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aisubsystem/core/client/AiClient$d;->invoke()Lcom/oplus/aisubsystem/core/client/AiClient$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/aisubsystem/core/client/AiClient;


# direct methods
.method public constructor <init>(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-direct {p0, p2}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/AIContext;->destroyConfigPackage()Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$clearFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getClientCallbackList$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/AIContext;->destroyConfigPackage()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getFramePackageMap$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    monitor-enter v1

    :try_start_0
    invoke-static {v2}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getFramePackageMap$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure: allFramePackageMap size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiClient"

    invoke-static {v2, v1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/FramePackage;

    invoke-virtual {v2, p1}, Lcom/oplus/aiunit/core/FramePackage;->setIntErrorCode(I)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Lcom/oplus/aiunit/core/FramePackage;->setErrorMessage(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1, v2}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$onInferenceCallback(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getClientCallbackList$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getClientCallbackList$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/base/AIContext;->destroyConfigPackage()Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$clearFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-virtual {v1}, Lcom/oplus/aisubsystem/core/client/AiClient;->getOapApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient$d$a;->a:Lcom/oplus/aisubsystem/core/client/AiClient;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$getClientCallbackList$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
