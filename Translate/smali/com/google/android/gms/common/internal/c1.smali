.class final Lcom/google/android/gms/common/internal/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/d1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/d1;Lcom/google/android/gms/common/internal/b1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d1;->j(Lcom/google/android/gms/common/internal/d1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/z0;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/d1;->j(Lcom/google/android/gms/common/internal/d1;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/a1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a1;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string v2, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a1;->b()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/z0;->a()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/z0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "unknown"

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/internal/a1;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_3
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d1;->j(Lcom/google/android/gms/common/internal/d1;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/z0;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/d1;->j(Lcom/google/android/gms/common/internal/d1;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/a1;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/a1;->i()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/a1;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GmsClientSupervisor"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/a1;->g(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/common/internal/c1;->a:Lcom/google/android/gms/common/internal/d1;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/d1;->j(Lcom/google/android/gms/common/internal/d1;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0

    return v1

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
