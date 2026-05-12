.class public Lcom/heytap/epona/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/ArrayDeque;

.field private d:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/heytap/epona/h;->a:I

    invoke-direct {p0}, Lcom/heytap/epona/h;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/heytap/epona/h;->h(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    new-instance p0, Lcom/heytap/epona/g;

    invoke-direct {p0, p1, p2}, Lcom/heytap/epona/g;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method private declared-synchronized e()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "Epona Route"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/heytap/epona/h;->c(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic h(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll5/e$b;

    iget-object v3, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v2, v1, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b(Ll5/e$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/heytap/epona/h;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ll5/e;)V
    .locals 0

    return-void
.end method

.method public f(Ll5/e$b;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/heytap/epona/h;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/heytap/epona/h;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/heytap/epona/h;->j()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g(Ll5/e;)V
    .locals 0

    return-void
.end method

.method i(Lcom/heytap/epona/Request;)Ll5/e;
    .locals 0

    invoke-static {p0, p1}, Ll5/e;->e(Lcom/heytap/epona/h;Lcom/heytap/epona/Request;)Ll5/e;

    move-result-object p0

    return-object p0
.end method
