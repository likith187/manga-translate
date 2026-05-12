.class public final synthetic Lf5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lw3/a;

.field public final synthetic c:Lw3/b;

.field public final synthetic f:Lw3/j;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lw3/a;Lw3/b;Lw3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/v;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lf5/v;->b:Lw3/a;

    iput-object p3, p0, Lf5/v;->c:Lw3/b;

    iput-object p4, p0, Lf5/v;->f:Lw3/j;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lf5/v;->a:Ljava/util/concurrent/Executor;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lf5/v;->b:Lw3/a;

    invoke-virtual {v0}, Lw3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf5/v;->c:Lw3/b;

    invoke-virtual {p0}, Lw3/b;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf5/v;->f:Lw3/j;

    invoke-virtual {p0, p1}, Lw3/j;->b(Ljava/lang/Exception;)V

    :goto_0
    throw p1
.end method
