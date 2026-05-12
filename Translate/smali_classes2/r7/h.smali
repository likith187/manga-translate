.class public Lr7/h;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/h$b;,
        Lr7/h$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/util/SparseArray;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "OplusTrack-thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr7/h;->a:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lr7/h;->b:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lr7/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr7/h;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lr7/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lr7/h;->c()Lr7/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lr7/h;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()Lr7/h;
    .locals 1

    invoke-static {}, Lr7/h$c;->a()Lr7/h;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e()Ljava/lang/String;
    .locals 1

    const-string v0, "onLooperPrepared, but looper is null"

    return-object v0
.end method


# virtual methods
.method public declared-synchronized d(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr7/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr7/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method public declared-synchronized g(ILjava/lang/Runnable;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr7/h;->b:Landroid/util/SparseArray;

    new-instance v1, Lr7/h$b;

    invoke-direct {v1, p2, p3, p4}, Lr7/h$b;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized h(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr7/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
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

.method protected onLooperPrepared()V
    .locals 6

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WorkThread"

    new-instance v0, Lr7/g;

    invoke-direct {v0}, Lr7/g;-><init>()V

    invoke-static {p0, v0}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lr7/h;->c:Landroid/os/Handler;

    iget-object v0, p0, Lr7/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lr7/h;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lr7/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lr7/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lr7/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/h$b;

    iget-object v2, p0, Lr7/h;->c:Landroid/os/Handler;

    invoke-static {v1}, Lr7/h$b;->a(Lr7/h$b;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v1}, Lr7/h$b;->b(Lr7/h$b;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr7/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
