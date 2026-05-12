.class public Landroidx/profileinstaller/ProfileInstallerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstallerInitializer$b;,
        Landroidx/profileinstaller/ProfileInstallerInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu0/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/profileinstaller/ProfileInstallerInitializer;->h(Landroid/content/Context;J)V

    return-void
.end method

.method private synthetic h(Landroid/content/Context;J)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->g(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic i(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->k(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic j(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/profileinstaller/i;->i(Landroid/content/Context;)V

    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Landroidx/profileinstaller/l;

    invoke-direct {v0, p0}, Landroidx/profileinstaller/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallerInitializer;->f(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$b;

    move-result-object p0

    return-object p0
.end method

.method public f(Landroid/content/Context;)Landroidx/profileinstaller/ProfileInstallerInitializer$b;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroidx/profileinstaller/j;

    invoke-direct {v1, p0, p1}, Landroidx/profileinstaller/j;-><init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance p0, Landroidx/profileinstaller/ProfileInstallerInitializer$b;

    invoke-direct {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$b;-><init>()V

    return-object p0
.end method

.method g(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstallerInitializer$a;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Landroidx/profileinstaller/k;

    invoke-direct {v1, p1}, Landroidx/profileinstaller/k;-><init>(Landroid/content/Context;)V

    add-int/lit16 v0, v0, 0x1388

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
