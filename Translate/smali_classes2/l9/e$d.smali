.class public final Ll9/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll9/e;-><init>(Ll9/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll9/e;


# direct methods
.method constructor <init>(Ll9/e;)V
    .locals 0

    iput-object p1, p0, Ll9/e$d;->a:Ll9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Ll9/e$d;->a:Ll9/e;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ll9/e;->d()Ll9/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ll9/a;->d()Ll9/d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Ll9/e$d;->a:Ll9/e;

    sget-object v3, Ll9/e;->h:Ll9/e$b;

    invoke-virtual {v3}, Ll9/e$b;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ll9/d;->h()Ll9/e;

    move-result-object v4

    invoke-virtual {v4}, Ll9/e;->g()Ll9/e$a;

    move-result-object v4

    invoke-interface {v4}, Ll9/e$a;->a()J

    move-result-wide v4

    const-string v6, "starting"

    invoke-static {v1, v0, v6}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    :goto_1
    :try_start_1
    invoke-static {v2, v1}, Ll9/e;->b(Ll9/e;Ll9/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ll9/d;->h()Ll9/e;

    move-result-object v2

    invoke-virtual {v2}, Ll9/e;->g()Ll9/e$a;

    move-result-object v2

    invoke-interface {v2}, Ll9/e$a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finished run in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ll9/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Ll9/e;->g()Ll9/e$a;

    move-result-object v2

    invoke-interface {v2, p0}, Ll9/e$a;->execute(Ljava/lang/Runnable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ll9/d;->h()Ll9/e;

    move-result-object v2

    invoke-virtual {v2}, Ll9/e;->g()Ll9/e$a;

    move-result-object v2

    invoke-interface {v2}, Ll9/e$a;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed a run in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ll9/b;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ll9/b;->a(Ll9/a;Ll9/d;Ljava/lang/String;)V

    :cond_3
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
