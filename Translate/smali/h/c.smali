.class public Lh/c;
.super Lh/e;
.source "SourceFile"


# static fields
.field private static volatile c:Lh/c;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lh/e;

.field private final b:Lh/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/a;

    invoke-direct {v0}, Lh/a;-><init>()V

    sput-object v0, Lh/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    sput-object v0, Lh/c;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lh/e;-><init>()V

    new-instance v0, Lh/d;

    invoke-direct {v0}, Lh/d;-><init>()V

    iput-object v0, p0, Lh/c;->b:Lh/e;

    iput-object v0, p0, Lh/c;->a:Lh/e;

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lh/c;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lh/c;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lh/c;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static g()Lh/c;
    .locals 2

    sget-object v0, Lh/c;->c:Lh/c;

    if-eqz v0, :cond_0

    sget-object v0, Lh/c;->c:Lh/c;

    return-object v0

    :cond_0
    const-class v0, Lh/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh/c;->c:Lh/c;

    if-nez v1, :cond_1

    new-instance v1, Lh/c;

    invoke-direct {v1}, Lh/c;-><init>()V

    sput-object v1, Lh/c;->c:Lh/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lh/c;->c:Lh/c;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic h(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lh/c;->g()Lh/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic i(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lh/c;->g()Lh/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lh/c;->a:Lh/e;

    invoke-virtual {p0, p1}, Lh/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lh/c;->a:Lh/e;

    invoke-virtual {p0}, Lh/e;->b()Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lh/c;->a:Lh/e;

    invoke-virtual {p0, p1}, Lh/e;->c(Ljava/lang/Runnable;)V

    return-void
.end method
