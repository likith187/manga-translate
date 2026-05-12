.class public final Lcom/coloros/translate/utils/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private volatile c:Landroid/os/HandlerThread;

.field private volatile d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "threadName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/utils/s0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/coloros/translate/utils/s0;->b:Z

    invoke-direct {p0}, Lcom/coloros/translate/utils/s0;->a()V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/utils/s0;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/coloros/translate/utils/s0;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lcom/coloros/translate/utils/s0;->c:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/translate/utils/s0;->c:Landroid/os/HandlerThread;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/translate/utils/s0;->d:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/utils/s0;->b:Z

    return p0
.end method

.method public final c()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/utils/s0;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public final d()Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/utils/s0;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/utils/s0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/translate/utils/s0;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/utils/s0;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/utils/s0;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iput-object v1, p0, Lcom/coloros/translate/utils/s0;->c:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/coloros/translate/utils/s0;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
