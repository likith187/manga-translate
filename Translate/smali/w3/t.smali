.class final Lw3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/u;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lw3/f;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lw3/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw3/t;->b:Ljava/lang/Object;

    iput-object p1, p0, Lw3/t;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lw3/t;->c:Lw3/f;

    return-void
.end method

.method static bridge synthetic b(Lw3/t;)Lw3/f;
    .locals 0

    iget-object p0, p0, Lw3/t;->c:Lw3/f;

    return-object p0
.end method

.method static bridge synthetic c(Lw3/t;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw3/t;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Lw3/i;)V
    .locals 2

    invoke-virtual {p1}, Lw3/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw3/t;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw3/t;->c:Lw3/f;

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

    iget-object v0, p0, Lw3/t;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lw3/s;

    invoke-direct {v1, p0, p1}, Lw3/s;-><init>(Lw3/t;Lw3/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
