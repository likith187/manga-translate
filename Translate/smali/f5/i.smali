.class public abstract Lf5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lf5/k;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lf5/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf5/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lf5/k;

    invoke-direct {v0}, Lf5/k;-><init>()V

    iput-object v0, p0, Lf5/i;->a:Lf5/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lw3/a;)Lw3/i;
    .locals 9

    iget-object v0, p0, Lf5/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->j(Z)V

    invoke-virtual {p3}, Lw3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lw3/l;->a()Lw3/i;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v3, Lw3/b;

    invoke-direct {v3}, Lw3/b;-><init>()V

    new-instance v6, Lw3/j;

    invoke-virtual {v3}, Lw3/b;->b()Lw3/a;

    move-result-object v0

    invoke-direct {v6, v0}, Lw3/j;-><init>(Lw3/a;)V

    new-instance v7, Lf5/v;

    invoke-direct {v7, p1, p3, v3, v6}, Lf5/v;-><init>(Ljava/util/concurrent/Executor;Lw3/a;Lw3/b;Lw3/j;)V

    iget-object p1, p0, Lf5/i;->a:Lf5/k;

    new-instance v8, Lf5/w;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lf5/w;-><init>(Lf5/i;Lw3/a;Lw3/b;Ljava/util/concurrent/Callable;Lw3/j;)V

    invoke-virtual {p1, v7, v8}, Lf5/k;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Lw3/j;->a()Lw3/i;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lf5/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lf5/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected abstract e()V
.end method

.method public f(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf5/i;->g(Ljava/util/concurrent/Executor;)Lw3/i;

    return-void
.end method

.method public g(Ljava/util/concurrent/Executor;)Lw3/i;
    .locals 2

    iget-object v0, p0, Lf5/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->j(Z)V

    new-instance v0, Lw3/j;

    invoke-direct {v0}, Lw3/j;-><init>()V

    new-instance v1, Lf5/u;

    invoke-direct {v1, p0, v0}, Lf5/u;-><init>(Lf5/i;Lw3/j;)V

    iget-object p0, p0, Lf5/i;->a:Lf5/k;

    invoke-virtual {p0, p1, v1}, Lf5/k;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lw3/j;->a()Lw3/i;

    move-result-object p0

    return-object p0
.end method

.method final synthetic h(Lw3/a;Lw3/b;Ljava/util/concurrent/Callable;Lw3/j;)V
    .locals 2

    invoke-virtual {p1}, Lw3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lw3/b;->a()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lf5/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf5/i;->c()V

    iget-object p0, p0, Lf5/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lw3/a;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lw3/b;->a()V

    return-void

    :cond_2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lw3/a;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lw3/b;->a()V

    return-void

    :cond_3
    invoke-virtual {p4, p0}, Lw3/j;->c(Ljava/lang/Object;)V

    return-void

    :goto_1
    new-instance p3, Lb5/a;

    const-string v0, "Internal error has occurred when executing ML Kit tasks"

    const/16 v1, 0xd

    invoke-direct {p3, v0, v1, p0}, Lb5/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p1}, Lw3/a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lw3/b;->a()V

    return-void

    :cond_4
    invoke-virtual {p4, p0}, Lw3/j;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic i(Lw3/j;)V
    .locals 3

    iget-object v0, p0, Lf5/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/k;->j(Z)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf5/i;->e()V

    iget-object p0, p0, Lf5/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/w;->a()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lw3/j;->c(Ljava/lang/Object;)V

    return-void
.end method
