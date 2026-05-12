.class final Lw3/z;
.super Lw3/i;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lw3/v;

.field private c:Z

.field private volatile d:Z

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/i;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    new-instance v0, Lw3/v;

    invoke-direct {v0}, Lw3/v;-><init>()V

    iput-object v0, p0, Lw3/z;->b:Lw3/v;

    return-void
.end method

.method private final q()V
    .locals 1

    iget-boolean p0, p0, Lw3/z;->c:Z

    const-string v0, "Task is not yet complete"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    return-void
.end method

.method private final r()V
    .locals 1

    iget-boolean p0, p0, Lw3/z;->d:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final s()V
    .locals 1

    iget-boolean v0, p0, Lw3/z;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lw3/c;->of(Lw3/i;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private final t()V
    .locals 2

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lw3/z;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {v0, p0}, Lw3/v;->b(Lw3/i;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lw3/d;)Lw3/i;
    .locals 1

    new-instance v0, Lw3/p;

    invoke-direct {v0, p1, p2}, Lw3/p;-><init>(Ljava/util/concurrent/Executor;Lw3/d;)V

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, v0}, Lw3/v;->a(Lw3/u;)V

    invoke-direct {p0}, Lw3/z;->t()V

    return-object p0
.end method

.method public final b(Lw3/d;)Lw3/i;
    .locals 2

    sget-object v0, Lw3/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lw3/p;

    invoke-direct {v1, v0, p1}, Lw3/p;-><init>(Ljava/util/concurrent/Executor;Lw3/d;)V

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, v1}, Lw3/v;->a(Lw3/u;)V

    invoke-direct {p0}, Lw3/z;->t()V

    return-object p0
.end method

.method public final c(Lw3/e;)Lw3/i;
    .locals 1

    sget-object v0, Lw3/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lw3/z;->j(Ljava/util/concurrent/Executor;Lw3/e;)Lw3/i;

    return-object p0
.end method

.method public final d(Lw3/f;)Lw3/i;
    .locals 1

    sget-object v0, Lw3/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lw3/z;->k(Ljava/util/concurrent/Executor;Lw3/f;)Lw3/i;

    return-object p0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lw3/z;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lw3/z;->q()V

    invoke-direct {p0}, Lw3/z;->r()V

    iget-object v1, p0, Lw3/z;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lw3/z;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Lw3/h;

    invoke-direct {p0, v1}, Lw3/h;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lw3/z;->d:Z

    return p0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lw3/z;->c:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lw3/z;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lw3/z;->d:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lw3/z;->f:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Ljava/util/concurrent/Executor;Lw3/e;)Lw3/i;
    .locals 1

    new-instance v0, Lw3/r;

    invoke-direct {v0, p1, p2}, Lw3/r;-><init>(Ljava/util/concurrent/Executor;Lw3/e;)V

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, v0}, Lw3/v;->a(Lw3/u;)V

    invoke-direct {p0}, Lw3/z;->t()V

    return-object p0
.end method

.method public final k(Ljava/util/concurrent/Executor;Lw3/f;)Lw3/i;
    .locals 1

    new-instance v0, Lw3/t;

    invoke-direct {v0, p1, p2}, Lw3/t;-><init>(Ljava/util/concurrent/Executor;Lw3/f;)V

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, v0}, Lw3/v;->a(Lw3/u;)V

    invoke-direct {p0}, Lw3/z;->t()V

    return-object p0
.end method

.method public final l(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lw3/z;->s()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/z;->c:Z

    iput-object p1, p0, Lw3/z;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, p0}, Lw3/v;->b(Lw3/i;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lw3/z;->s()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/z;->c:Z

    iput-object p1, p0, Lw3/z;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, p0}, Lw3/v;->b(Lw3/i;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lw3/z;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/z;->c:Z

    iput-boolean v1, p0, Lw3/z;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {v0, p0}, Lw3/v;->b(Lw3/i;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final o(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lw3/z;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/z;->c:Z

    iput-object p1, p0, Lw3/z;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, p0}, Lw3/v;->b(Lw3/i;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final p(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lw3/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lw3/z;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/z;->c:Z

    iput-object p1, p0, Lw3/z;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw3/z;->b:Lw3/v;

    invoke-virtual {p1, p0}, Lw3/v;->b(Lw3/i;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
