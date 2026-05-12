.class public abstract Lcom/ai/slp/library/impl/component/d;
.super Lcom/ai/slp/library/impl/component/h;
.source "SourceFile"


# instance fields
.field private l:Lc1/a;

.field private m:Lc1/b;

.field protected final n:Lcom/ai/slp/library/impl/component/g;


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/h;-><init>(Lz0/b;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/d;->l:Lc1/a;

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/d;->m:Lc1/b;

    new-instance p1, Lcom/ai/slp/library/impl/component/g;

    invoke-direct {p1, p0}, Lcom/ai/slp/library/impl/component/g;-><init>(Lz0/b;)V

    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/d;->M(Lcom/ai/slp/library/impl/component/c;)Lcom/ai/slp/library/impl/component/c;

    move-result-object p1

    check-cast p1, Lcom/ai/slp/library/impl/component/g;

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/d;->n:Lcom/ai/slp/library/impl/component/g;

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Throwable;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ai/slp/library/impl/component/b;->A(Ljava/lang/Throwable;)V

    :try_start_0
    instance-of v0, p1, Lcom/ai/slp/library/base/exception/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/d;->stop()V

    return-void

    :cond_0
    :try_start_1
    instance-of v0, p1, Lcom/ai/slp/library/base/exception/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/ai/slp/library/base/exception/f;

    invoke-virtual {v0}, Lcom/ai/slp/library/base/exception/f;->getErrorInfo()Lcom/ai/slp/library/base/exception/b;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/ai/slp/library/base/exception/b;

    sget-object v1, Lcom/ai/slp/library/base/exception/a;->a:Lcom/ai/slp/library/base/exception/d;

    invoke-direct {v0, v1, p1}, Lcom/ai/slp/library/base/exception/b;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v1, v1, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    invoke-virtual {v1, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logException(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ai/slp/library/impl/component/d;->l:Lc1/a;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lc1/a;->a(Lcom/ai/slp/library/base/exception/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/d;->stop()V

    return-void

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    invoke-virtual {v0, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logException(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/d;->stop()V

    throw p1
.end method

.method protected M(Lcom/ai/slp/library/impl/component/c;)Lcom/ai/slp/library/impl/component/c;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/ai/slp/library/impl/component/c;->a(Lb1/b;)Lb1/b;

    return-object p1
.end method

.method public N(Lc1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/d;->l:Lc1/a;

    return-void
.end method

.method public O(Lc1/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/d;->m:Lc1/b;

    return-void
.end method

.method public d(Lb1/d;Ljava/lang/Object;)Lb1/b;
    .locals 1

    instance-of v0, p2, Lcom/ai/slp/library/impl/component/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/ai/slp/library/impl/component/c;

    invoke-virtual {v0, v0, p0}, Lcom/ai/slp/library/impl/component/c;->I(Lcom/ai/slp/library/impl/component/c;Lz0/b;)Lcom/ai/slp/library/impl/component/c;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ai/slp/library/impl/component/h;->d(Lb1/d;Ljava/lang/Object;)Lb1/b;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/ai/slp/library/impl/component/b;->release()V
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

.method public final declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/ai/slp/library/impl/component/b;->start()V
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

.method public final declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/ai/slp/library/impl/component/b;->stop()V
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

.method protected z(Ly0/a;Ly0/a;)V
    .locals 1

    if-eq p1, p2, :cond_2

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/ai/slp/library/base/exception/e;

    if-eqz v0, :cond_1

    sget-object v0, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne p1, v0, :cond_0

    sget-object v0, Ly0/a;->STATE_STOP:Ly0/a;

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p0, p0, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string p1, "cancel not change State"

    invoke-virtual {p0, p1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/d;->m:Lc1/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lc1/b;->a(Ly0/a;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/ai/slp/library/impl/component/b;->z(Ly0/a;Ly0/a;)V

    return-void
.end method
