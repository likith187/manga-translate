.class final Lw3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lw3/i;

.field final synthetic b:Lw3/r;


# direct methods
.method constructor <init>(Lw3/r;Lw3/i;)V
    .locals 0

    iput-object p1, p0, Lw3/q;->b:Lw3/r;

    iput-object p2, p0, Lw3/q;->a:Lw3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw3/q;->b:Lw3/r;

    invoke-static {v0}, Lw3/r;->c(Lw3/r;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw3/q;->b:Lw3/r;

    invoke-static {v1}, Lw3/r;->b(Lw3/r;)Lw3/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lw3/r;->b(Lw3/r;)Lw3/e;

    move-result-object v1

    iget-object p0, p0, Lw3/q;->a:Lw3/i;

    invoke-virtual {p0}, Lw3/i;->e()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-interface {v1, p0}, Lw3/e;->a(Ljava/lang/Exception;)V

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
