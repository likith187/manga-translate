.class public abstract Lcom/google/android/gms/internal/mlkit_language_id_common/db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/internal/mlkit_language_id_common/cb;


# direct methods
.method public static declared-synchronized a(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;)Lcom/google/android/gms/internal/mlkit_language_id_common/sa;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/db;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/db;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/cb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/bb;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/db;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/db;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/cb;

    invoke-virtual {v1, p0}, Lf5/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;
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

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/sa;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/db;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/la;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/db;->a(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;)Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
