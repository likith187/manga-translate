.class public abstract Lcom/ai/slp/library/impl/component/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/a;
.implements Lz0/c;
.implements Lz0/b;


# instance fields
.field private a:Ly0/a;

.field private b:Ly0/a;

.field private c:Z

.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/Throwable;

.field private f:Ljava/lang/Throwable;

.field protected g:Ljava/lang/Throwable;

.field h:Lz0/b;

.field protected final i:Lcom/slp/library/common/log/LogsWrap;

.field private final j:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lz0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly0/a;->STATE_STOP:Ly0/a;

    iput-object v0, p0, Lcom/ai/slp/library/impl/component/b;->a:Ly0/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ai/slp/library/impl/component/b;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lz0/b;->g(Lcom/ai/slp/library/impl/component/b;)V

    invoke-interface {p1}, Lz0/b;->f()Lcom/slp/library/common/log/LogsWrap;

    move-result-object p1

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/slp/library/common/log/LogsWrap;

    sget-object v0, Lcom/slp/library/common/log/LogsWrap;->DEFAULT:Lcom/slp/library/common/log/LogsWrap;

    invoke-direct {p1, v0}, Lcom/slp/library/common/log/LogsWrap;-><init>(Lcom/slp/library/common/log/LogsWrap;)V

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    :goto_0
    return-void
.end method

.method private C(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->t()Ly0/a;

    move-result-object v1

    sget-object v2, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    invoke-direct {p0, v2}, Lcom/ai/slp/library/impl/component/b;->D(Ly0/a;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Throw_Exception::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/b;->m(Ljava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private D(Ly0/a;)V
    .locals 7

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ai/slp/library/impl/component/b;->a:Ly0/a;

    sget-object v2, Ly0/a;->STATE_ERROR:Ly0/a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    sget-object v4, Ly0/a;->STATE_STOP:Ly0/a;

    if-eq p1, v4, :cond_0

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v2, v2, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " STATE[%s] RUN_STATE[%S] UPDATE_STATE[%S] No update state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, v3, v4, p0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(IILjava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    if-eqz v4, :cond_1

    if-eq v4, p1, :cond_1

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v2, v2, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " STATE[%s] RUN_STATE[%S] UPDATE_STATE[%S]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, v3, v4, p0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(IILjava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v2, v2, Lcom/slp/library/common/log/LogsWrap;->DEBUG:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " STATE UPDATE [%s]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ai/slp/library/impl/component/b;->a:Ly0/a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v3, v4, v5}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(IILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->a:Ly0/a;

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    const-string v3, "BASE_UPDATE_STATE"

    invoke-virtual {p0, v2, v3}, Lcom/ai/slp/library/impl/component/b;->l(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eq v1, p1, :cond_3

    invoke-virtual {p0, v1, p1}, Lcom/ai/slp/library/impl/component/b;->z(Ly0/a;Ly0/a;)V

    :cond_3
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private E(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ai/slp/library/impl/component/b;

    invoke-direct {v0, p1}, Lcom/ai/slp/library/impl/component/b;->E(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/ai/slp/library/impl/component/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/b;->y(Ljava/lang/Throwable;)V

    return-void
.end method

.method private n(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private q()Z
    .locals 0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->r()Ly0/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private w()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ai/slp/library/impl/component/b;

    invoke-direct {v0}, Lcom/ai/slp/library/impl/component/b;->w()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    return-object p0
.end method

.method private synthetic y(Ljava/lang/Throwable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/b;->A(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method protected A(Ljava/lang/Throwable;)V
    .locals 7

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->t()Ly0/a;

    move-result-object v0

    sget-object v1, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    :cond_1
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " THROW EXE  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ai/slp/library/impl/component/b;

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v4, v4, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " THROW EXE  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/ai/slp/library/impl/component/b;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->r()Ly0/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->r()Ly0/a;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v4

    sget-object v5, Ly0/a;->STATE_STOP:Ly0/a;

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    const-string v4, "Notify Of Exception"

    invoke-virtual {p0, v3, v4}, Lcom/ai/slp/library/impl/component/b;->l(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Lcom/ai/slp/library/impl/component/b;->A(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/b;->C(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object p1, p1, Lcom/slp/library/common/log/LogsWrap;->WARNS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " throwError call stop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->log(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->stop()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected abstract B()V
.end method

.method protected abstract F()Ly0/a;
.end method

.method protected abstract G()Ly0/a;
.end method

.method public H()V
    .locals 3

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ai/slp/library/impl/component/b;

    invoke-virtual {v2}, Lcom/ai/slp/library/impl/component/b;->H()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Ly0/a;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->a:Ly0/a;

    return-object p0
.end method

.method public f()Lcom/slp/library/common/log/LogsWrap;
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/b;->f()Lcom/slp/library/common/log/LogsWrap;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    return-object p0
.end method

.method public g(Lcom/ai/slp/library/impl/component/b;)V
    .locals 2

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lcom/ai/slp/library/base/exception/f;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/security/cert/CertPathValidatorException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.security"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v0, Lcom/ai/slp/library/base/exception/f;

    sget-object v1, Lcom/ai/slp/library/base/exception/a;->c:Lcom/ai/slp/library/base/exception/d;

    invoke-direct {v0, v1, p1}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_4
    invoke-direct {p0}, Lcom/ai/slp/library/impl/component/b;->w()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/b;->E(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/b;->A(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    invoke-interface {p0, p1}, Lz0/b;->i(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/ai/slp/library/impl/component/a;

    invoke-direct {v0, p0, p1}, Lcom/ai/slp/library/impl/component/a;-><init>(Lcom/ai/slp/library/impl/component/b;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lg1/b;->b(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method protected k(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->INFOS:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " call Notify[%s] [%s]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(IILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/ai/slp/library/impl/component/b;->n(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Lcom/ai/slp/library/base/exception/f;

    sget-object p1, Lcom/ai/slp/library/base/exception/a;->a:Lcom/ai/slp/library/base/exception/d;

    const-string p2, "lock obj is Null!!"

    invoke-direct {p0, p1, p2}, Lcom/ai/slp/library/base/exception/f;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;)V

    throw p0
.end method

.method protected l(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ai/slp/library/impl/component/b;->k(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0, p1}, Lcom/ai/slp/library/impl/component/b;->k(Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method protected o(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected p()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p0}, Lcom/ai/slp/library/impl/component/b;->o(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final r()Ly0/a;
    .locals 0

    invoke-virtual {p0, p0}, Lcom/ai/slp/library/impl/component/b;->s(Lcom/ai/slp/library/impl/component/b;)Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v1

    sget-object v2, Ly0/a;->STATE_STOP:Ly0/a;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->stop()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ai/slp/library/impl/component/b;->q()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/ai/slp/library/impl/component/b;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ai/slp/library/impl/component/b;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v1, "%s -> Release Begin"

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->B()V

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v1, "%s -> Release Done"

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected final s(Lcom/ai/slp/library/impl/component/b;)Ly0/a;
    .locals 0

    iget-object p0, p1, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/ai/slp/library/impl/component/b;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v1

    sget-object v2, Ly0/a;->STATE_STOP:Ly0/a;

    if-eq v1, v2, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v1, Ly0/a;->STATE_START:Ly0/a;

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    iget-object v1, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v1, "%s -> Begin"

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ai/slp/library/impl/component/b;->c:Z

    :try_start_1
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->F()Ly0/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ai/slp/library/impl/component/b;->D(Ly0/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/ai/slp/library/impl/component/b;->i(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/ai/slp/library/impl/component/b;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->r()Ly0/a;

    move-result-object v1

    sget-object v2, Ly0/a;->STATE_ERROR:Ly0/a;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v1

    sget-object v2, Ly0/a;->STATE_STOP:Ly0/a;

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-object v2, p0, Lcom/ai/slp/library/impl/component/b;->b:Ly0/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->i:Lcom/slp/library/common/log/LogsWrap;

    iget-object v0, v0, Lcom/slp/library/common/log/LogsWrap;->ON:Lcom/slp/library/common/log/SlpLogs$LogImpl;

    const-string v1, "%s -> Begin"

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->p()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/slp/library/common/log/SlpLogs$LogImpl;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->G()Ly0/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ai/slp/library/impl/component/b;->D(Ly0/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    sget-object v2, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne v0, v2, :cond_2

    :goto_0
    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/ai/slp/library/impl/component/b;->i(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    sget-object v2, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception v2

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    sget-object v3, Ly0/a;->STATE_ERROR:Ly0/a;

    if-ne v0, v3, :cond_3

    iput-object v1, p0, Lcom/ai/slp/library/impl/component/b;->g:Ljava/lang/Throwable;

    :cond_3
    throw v2

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method protected t()Ly0/a;
    .locals 0

    invoke-virtual {p0, p0}, Lcom/ai/slp/library/impl/component/b;->u(Lcom/ai/slp/library/impl/component/b;)Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method protected u(Lcom/ai/slp/library/impl/component/b;)Ly0/a;
    .locals 1

    iget-object p0, p1, Lcom/ai/slp/library/impl/component/b;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ai/slp/library/impl/component/b;->r()Ly0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ai/slp/library/impl/component/b;->c()Ly0/a;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final v()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ai/slp/library/impl/component/b;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/ai/slp/library/impl/component/b;->h:Lz0/b;

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/ai/slp/library/impl/component/b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/ai/slp/library/impl/component/b;

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->v()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public x()Z
    .locals 0

    invoke-virtual {p0}, Lcom/ai/slp/library/impl/component/b;->v()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected z(Ly0/a;Ly0/a;)V
    .locals 0

    return-void
.end method
