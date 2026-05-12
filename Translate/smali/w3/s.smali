.class final Lw3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lw3/i;

.field final synthetic b:Lw3/t;


# direct methods
.method constructor <init>(Lw3/t;Lw3/i;)V
    .locals 0

    iput-object p1, p0, Lw3/s;->b:Lw3/t;

    iput-object p2, p0, Lw3/s;->a:Lw3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw3/s;->b:Lw3/t;

    invoke-static {v0}, Lw3/t;->c(Lw3/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw3/s;->b:Lw3/t;

    invoke-static {v1}, Lw3/t;->b(Lw3/t;)Lw3/f;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lw3/t;->b(Lw3/t;)Lw3/f;

    move-result-object v1

    iget-object p0, p0, Lw3/s;->a:Lw3/i;

    invoke-virtual {p0}, Lw3/i;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lw3/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
