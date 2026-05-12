.class public Lf5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lf5/f;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf5/f;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lf5/f;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lf5/f;
    .locals 4

    sget-object v0, Lf5/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf5/f;->c:Lf5/f;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lf5/f;

    invoke-direct {v2, v1}, Lf5/f;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lf5/f;->c:Lf5/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lf5/f;->c:Lf5/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lf5/q;->zza:Lf5/q;

    return-object v0
.end method

.method static bridge synthetic e(Lf5/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lf5/f;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/concurrent/Callable;)Lw3/i;
    .locals 2

    new-instance v0, Lw3/j;

    invoke-direct {v0}, Lw3/j;-><init>()V

    new-instance v1, Lf5/p;

    invoke-direct {v1, p1, v0}, Lf5/p;-><init>(Ljava/util/concurrent/Callable;Lw3/j;)V

    invoke-virtual {p0, v1}, Lf5/f;->c(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lw3/j;->a()Lw3/i;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lf5/f;->d()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
