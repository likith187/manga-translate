.class public abstract Lcom/coloros/translate/utils/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/utils/z0;->e(Lw8/a;)V

    return-void
.end method

.method public static synthetic b(Lw8/a;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/utils/z0;->f(Lw8/a;)V

    return-void
.end method

.method public static final c(JLw8/a;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/utils/x0;

    invoke-direct {v1, p2}, Lcom/coloros/translate/utils/x0;-><init>(Lw8/a;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/w0;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance p1, Lcom/coloros/translate/utils/y0;

    invoke-direct {p1, p2}, Lcom/coloros/translate/utils/y0;-><init>(Lw8/a;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(JLw8/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coloros/translate/utils/z0;->c(JLw8/a;)V

    return-void
.end method

.method private static final e(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final f(Lw8/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final g(JLjava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static synthetic h(JLjava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p0, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static final i(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final j(JLjava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/coloros/translate/utils/w0;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
