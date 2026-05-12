.class public Lf5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lf5/g;


# instance fields
.field private a:Lo4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf5/g;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lf5/g;
    .locals 3

    sget-object v0, Lf5/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf5/g;->c:Lf5/g;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    sget-object v1, Lf5/g;->c:Lf5/g;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf5/g;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Landroid/content/Context;)Lf5/g;
    .locals 2

    sget-object v0, Lf5/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw3/k;->a:Ljava/util/concurrent/Executor;

    invoke-static {p0, v1}, Lf5/g;->e(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lf5/g;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lf5/g;
    .locals 6

    sget-object v0, Lf5/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf5/g;->c:Lf5/g;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "MlKitContext is already initialized"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    new-instance v1, Lf5/g;

    invoke-direct {v1}, Lf5/g;-><init>()V

    sput-object v1, Lf5/g;->c:Lf5/g;

    invoke-static {p0}, Lf5/g;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-class v4, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    invoke-static {p0, v4}, Lo4/f;->b(Landroid/content/Context;Ljava/lang/Class;)Lo4/f;

    move-result-object v4

    invoke-virtual {v4}, Lo4/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lo4/m;->e(Ljava/util/concurrent/Executor;)Lo4/m$b;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo4/m$b;->b(Ljava/util/Collection;)Lo4/m$b;

    move-result-object p1

    const-class v4, Landroid/content/Context;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-static {p0, v4, v5}, Lo4/c;->l(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo4/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lo4/m$b;->a(Lo4/c;)Lo4/m$b;

    move-result-object p0

    const-class p1, Lf5/g;

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, p1, v3}, Lo4/c;->l(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo4/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/m$b;->a(Lo4/c;)Lo4/m$b;

    move-result-object p0

    invoke-virtual {p0}, Lo4/m$b;->c()Lo4/m;

    move-result-object p0

    iput-object p0, v1, Lf5/g;->a:Lo4/m;

    invoke-virtual {p0, v2}, Lo4/m;->h(Z)V

    sget-object p0, Lf5/g;->c:Lf5/g;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static f(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lf5/g;->c:Lf5/g;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->k(ZLjava/lang/Object;)V

    iget-object v0, p0, Lf5/g;->a:Lo4/m;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lf5/g;->a:Lo4/m;

    invoke-virtual {p0, p1}, Lo4/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lf5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
