.class public final Ll9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ll9/e;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ll9/a;

.field private final e:Ljava/util/List;

.field private f:Z


# direct methods
.method public constructor <init>(Ll9/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9/d;->a:Ll9/e;

    iput-object p2, p0, Ll9/d;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll9/d;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic j(Ll9/d;Ll9/a;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ll9/d;->i(Ll9/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ll9/d;->a:Ll9/e;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ll9/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll9/d;->a:Ll9/e;

    invoke-virtual {v1, p0}, Ll9/e;->h(Ll9/d;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Ll9/d;->d:Ll9/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll9/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ll9/d;->f:Z

    :cond_0
    iget-object v0, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v0, :cond_3

    iget-object v3, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll9/a;

    invoke-virtual {v3}, Ll9/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll9/a;

    sget-object v3, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {v3}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "canceled"

    invoke-static {v2, p0, v3}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final c()Ll9/a;
    .locals 0

    iget-object p0, p0, Ll9/d;->d:Ll9/a;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Ll9/d;->f:Z

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ll9/d;->e:Ljava/util/List;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll9/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Ll9/d;->c:Z

    return p0
.end method

.method public final h()Ll9/e;
    .locals 0

    iget-object p0, p0, Ll9/d;->a:Ll9/e;

    return-object p0
.end method

.method public final i(Ll9/a;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll9/d;->a:Ll9/e;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ll9/d;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ll9/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {p2}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    invoke-static {p1, p0, p2}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {p2}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    invoke-static {p1, p0, p2}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    :cond_2
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Ll9/d;->k(Ll9/a;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ll9/d;->a:Ll9/e;

    invoke-virtual {p1, p0}, Ll9/e;->h(Ll9/d;)V

    :cond_4
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final k(Ll9/a;JZ)Z
    .locals 9

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ll9/a;->e(Ll9/d;)V

    iget-object v0, p0, Ll9/d;->a:Ll9/e;

    invoke-virtual {v0}, Ll9/e;->g()Ll9/e$a;

    move-result-object v0

    invoke-interface {v0}, Ll9/e$a;->a()J

    move-result-wide v0

    add-long v2, v0, p2

    iget-object v4, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    invoke-virtual {p1}, Ll9/a;->c()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-gtz v7, :cond_1

    sget-object p2, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {p2}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "already scheduled"

    invoke-static {p1, p0, p2}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    :cond_0
    return v5

    :cond_1
    iget-object v7, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v2, v3}, Ll9/a;->g(J)V

    sget-object v4, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {v4}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run again after "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ll9/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduled after "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ll9/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-static {p1, p0, p4}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    :cond_4
    iget-object p4, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move v2, v5

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll9/a;

    invoke-virtual {v3}, Ll9/a;->c()J

    move-result-wide v3

    sub-long/2addr v3, v0

    cmp-long v3, v3, p2

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_2
    if-ne v2, v6, :cond_7

    iget-object p2, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :cond_7
    iget-object p0, p0, Ll9/d;->e:Ljava/util/List;

    invoke-interface {p0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v2, :cond_8

    const/4 v5, 0x1

    :cond_8
    return v5
.end method

.method public final l(Ll9/a;)V
    .locals 0

    iput-object p1, p0, Ll9/d;->d:Ll9/a;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Ll9/d;->f:Z

    return-void
.end method

.method public final n()V
    .locals 3

    sget-boolean v0, Li9/d;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Ll9/d;->a:Ll9/e;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Ll9/d;->c:Z

    invoke-virtual {p0}, Ll9/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll9/d;->a:Ll9/e;

    invoke-virtual {v1, p0}, Ll9/e;->h(Ll9/d;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll9/d;->b:Ljava/lang/String;

    return-object p0
.end method
