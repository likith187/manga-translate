.class public abstract Lcom/google/android/gms/internal/mlkit_common/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/internal/mlkit_common/o0;


# direct methods
.method public static declared-synchronized a(Lcom/google/android/gms/internal/mlkit_common/d0;)Lcom/google/android/gms/internal/mlkit_common/h0;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/p0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p0;->a:Lcom/google/android/gms/internal/mlkit_common/o0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/o0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/o0;-><init>(Lcom/google/android/gms/internal/mlkit_common/n0;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/p0;->a:Lcom/google/android/gms/internal/mlkit_common/o0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p0;->a:Lcom/google/android/gms/internal/mlkit_common/o0;

    invoke-virtual {v1, p0}, Lf5/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/h0;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_common/p0;

    monitor-enter p0

    :try_start_0
    const-string v0, "common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/d0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/c0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/c0;->c()Lcom/google/android/gms/internal/mlkit_common/d0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/p0;->a(Lcom/google/android/gms/internal/mlkit_common/d0;)Lcom/google/android/gms/internal/mlkit_common/h0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
