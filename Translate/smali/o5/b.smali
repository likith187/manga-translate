.class public Lo5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lo5/b;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo5/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo5/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lo5/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo5/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lo5/b;
    .locals 2

    sget-object v0, Lo5/b;->c:Lo5/b;

    if-nez v0, :cond_1

    const-class v0, Lo5/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo5/b;->c:Lo5/b;

    if-nez v1, :cond_0

    new-instance v1, Lo5/b;

    invoke-direct {v1}, Lo5/b;-><init>()V

    sput-object v1, Lo5/b;->c:Lo5/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lo5/b;->c:Lo5/b;

    return-object v0
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo5/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lo5/b;->b:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public e(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Dispatcher"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lo5/a;

    invoke-direct {v3, p0, p1}, Lo5/a;-><init>(Lo5/b;Ljava/lang/String;)V

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lo5/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lq5/a;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerRemoteTransfer: registerSuccess:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :goto_2
    iget-object v1, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo5/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lo5/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo5/b;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
