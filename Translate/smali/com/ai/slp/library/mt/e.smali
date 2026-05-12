.class public final Lcom/ai/slp/library/mt/e;
.super Lcom/ai/slp/library/impl/component/d;
.source "SourceFile"


# instance fields
.field private final o:Ln8/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ai/slp/library/impl/component/d;-><init>(Lz0/b;)V

    new-instance v0, Lcom/ai/slp/library/mt/e$a;

    invoke-direct {v0, p0}, Lcom/ai/slp/library/mt/e$a;-><init>(Lcom/ai/slp/library/mt/e;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ai/slp/library/mt/e;->o:Ln8/j;

    return-void
.end method

.method public static final synthetic P(Lcom/ai/slp/library/mt/e;Lcom/ai/slp/library/impl/component/c;)Lcom/ai/slp/library/impl/component/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/d;->M(Lcom/ai/slp/library/impl/component/c;)Lcom/ai/slp/library/impl/component/c;

    move-result-object p0

    return-object p0
.end method

.method private final Q()Lcom/ai/slp/library/mt/d;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/e;->o:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ai/slp/library/mt/d;

    return-object p0
.end method


# virtual methods
.method protected J()V
    .locals 0

    invoke-direct {p0}, Lcom/ai/slp/library/mt/e;->Q()Lcom/ai/slp/library/mt/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/e;->release()V

    return-void
.end method

.method protected K()Ly0/a;
    .locals 1

    invoke-direct {p0}, Lcom/ai/slp/library/mt/e;->Q()Lcom/ai/slp/library/mt/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ai/slp/library/impl/component/e;->start()V

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/h;->K()Ly0/a;

    move-result-object p0

    const-string v0, "super.startComponent()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected L()Ly0/a;
    .locals 1

    invoke-direct {p0}, Lcom/ai/slp/library/mt/e;->Q()Lcom/ai/slp/library/mt/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ai/slp/library/impl/component/e;->stop()V

    invoke-super {p0}, Lcom/ai/slp/library/impl/component/h;->L()Ly0/a;

    move-result-object p0

    const-string v0, "super.stopComponent()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final declared-synchronized R(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v0

    sget-object v1, Ly0/a;->STATE_START:Ly0/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p1, p1, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v0, "Engine status != STATE_START"

    invoke-virtual {p1, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ai/slp/library/mt/e;->Q()Lcom/ai/slp/library/mt/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ai/slp/library/mt/d;->W(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/b;->i(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized S(Ljava/util/List;)Ljava/util/List;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v0

    sget-object v1, Ly0/a;->STATE_START:Ly0/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p1, p1, Lcom/slp/library/common/log/LogsWrap;->ERROR:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v0, "Engine status != STATE_START"

    invoke-virtual {p1, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ai/slp/library/mt/f;

    invoke-virtual {p0, v1}, Lcom/ai/slp/library/mt/e;->R(Lcom/ai/slp/library/mt/f;)Lcom/ai/slp/library/mt/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v2

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
