.class final Lw3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lw3/i;

.field final synthetic b:Lw3/p;


# direct methods
.method constructor <init>(Lw3/p;Lw3/i;)V
    .locals 0

    iput-object p1, p0, Lw3/o;->b:Lw3/p;

    iput-object p2, p0, Lw3/o;->a:Lw3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw3/o;->b:Lw3/p;

    invoke-static {v0}, Lw3/p;->c(Lw3/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lw3/o;->b:Lw3/p;

    invoke-static {v1}, Lw3/p;->b(Lw3/p;)Lw3/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lw3/p;->b(Lw3/p;)Lw3/d;

    move-result-object v1

    iget-object p0, p0, Lw3/o;->a:Lw3/i;

    invoke-interface {v1, p0}, Lw3/d;->a(Lw3/i;)V

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
