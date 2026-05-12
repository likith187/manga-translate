.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/ua;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/internal/n;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/google/android/gms/common/internal/o;->a()Lcom/google/android/gms/common/internal/o$a;

    move-result-object p2

    const-string v0, "mlkit:natural_language"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/internal/o$a;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/o$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/o$a;->a()Lcom/google/android/gms/common/internal/o;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/m;->b(Landroid/content/Context;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->a:Lcom/google/android/gms/common/internal/n;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_language_id_common/ua;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    const-string v1, "mlkit:natural_language"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final synthetic b(JLjava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final declared-synchronized c(IIJJ)V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->a:Lcom/google/android/gms/common/internal/n;

    new-instance v4, Lcom/google/android/gms/common/internal/TelemetryData;

    new-instance v16, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, v16

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    filled-new-array/range {v16 .. v16}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/internal/TelemetryData;)Lw3/i;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ua;J)V

    invoke-virtual {v0, v4}, Lw3/i;->c(Lw3/e;)Lw3/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
