.class public abstract Landroidx/room/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/h$c;,
        Landroidx/room/h$a;,
        Landroidx/room/h$b;
    }
.end annotation


# instance fields
.field protected volatile a:Ls0/b;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ls0/c;

.field private final e:Landroidx/room/e;

.field private f:Z

.field g:Z

.field protected h:Ljava/util/List;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final j:Ljava/lang/ThreadLocal;

.field private final k:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->k:Ljava/util/Map;

    invoke-virtual {p0}, Landroidx/room/h;->e()Landroidx/room/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    return-void
.end method

.method private static n()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean p0, p0, Landroidx/room/h;->f:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/room/h;->n()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/room/h;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/h;->a()V

    iget-object v0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {v0}, Ls0/c;->c()Ls0/b;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    invoke-virtual {p0, v0}, Landroidx/room/e;->m(Ls0/b;)V

    invoke-interface {v0}, Ls0/b;->m()V

    return-void
.end method

.method public d(Ljava/lang/String;)Ls0/f;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/h;->a()V

    invoke-virtual {p0}, Landroidx/room/h;->b()V

    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {p0}, Ls0/c;->c()Ls0/b;

    move-result-object p0

    invoke-interface {p0, p1}, Ls0/b;->J(Ljava/lang/String;)Ls0/f;

    move-result-object p0

    return-object p0
.end method

.method protected abstract e()Landroidx/room/e;
.end method

.method protected abstract f(Landroidx/room/a;)Ls0/c;
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {v0}, Ls0/c;->c()Ls0/b;

    move-result-object v0

    invoke-interface {v0}, Ls0/b;->l()V

    invoke-virtual {p0}, Landroidx/room/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    invoke-virtual {p0}, Landroidx/room/e;->f()V

    :cond_0
    return-void
.end method

.method h()Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    return-object p0
.end method

.method public i()Ls0/c;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    return-object p0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {p0}, Ls0/c;->c()Ls0/b;

    move-result-object p0

    invoke-interface {p0}, Ls0/b;->W()Z

    move-result p0

    return p0
.end method

.method public l(Landroidx/room/a;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/room/h;->f(Landroidx/room/a;)Ls0/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h;->d:Ls0/c;

    instance-of v1, v0, Landroidx/room/l;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/room/l;

    invoke-virtual {v0, p1}, Landroidx/room/l;->f(Landroidx/room/a;)V

    :cond_0
    iget-object v0, p1, Landroidx/room/a;->g:Landroidx/room/h$b;

    sget-object v1, Landroidx/room/h$b;->WRITE_AHEAD_LOGGING:Landroidx/room/h$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {v1, v0}, Ls0/c;->a(Z)V

    iget-object v1, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v1, p0, Landroidx/room/h;->h:Ljava/util/List;

    iget-object v1, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/o;

    iget-object v2, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Landroidx/room/o;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroidx/room/h;->c:Ljava/util/concurrent/Executor;

    iget-boolean v1, p1, Landroidx/room/a;->f:Z

    iput-boolean v1, p0, Landroidx/room/h;->f:Z

    iput-boolean v0, p0, Landroidx/room/h;->g:Z

    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    iget-object v0, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroidx/room/e;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected m(Ls0/b;)V
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    invoke-virtual {p0, p1}, Landroidx/room/e;->d(Ls0/b;)V

    return-void
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->a:Ls0/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ls0/b;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p(Ls0/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/room/h;->q(Ls0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public q(Ls0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/h;->a()V

    invoke-virtual {p0}, Landroidx/room/h;->b()V

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {p0}, Ls0/c;->c()Ls0/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ls0/b;->t0(Ls0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {p0}, Ls0/c;->c()Ls0/b;

    move-result-object p0

    invoke-interface {p0, p1}, Ls0/b;->p0(Ls0/e;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public r()V
    .locals 0

    iget-object p0, p0, Landroidx/room/h;->d:Ls0/c;

    invoke-interface {p0}, Ls0/c;->c()Ls0/b;

    move-result-object p0

    invoke-interface {p0}, Ls0/b;->g0()V

    return-void
.end method
