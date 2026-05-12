.class public abstract Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x5

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lg1/b;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Lz0/b;)V
    .locals 0

    invoke-static {p0, p1}, Lg1/b;->d(Ljava/lang/Runnable;Lz0/b;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lg1/b;->c(Lz0/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lz0/b;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lg1/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lg1/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lg1/a;

    invoke-direct {v1, p1, p0}, Lg1/a;-><init>(Ljava/lang/Runnable;Lz0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Runnable;Lz0/b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1, p0}, Lz0/b;->i(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
