.class public Lu6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lu6/d;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu6/d;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lu6/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lu6/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lu6/d;
    .locals 2

    sget-object v0, Lu6/d;->b:Lu6/d;

    if-nez v0, :cond_1

    const-class v0, Lu6/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lu6/d;->b:Lu6/d;

    if-nez v1, :cond_0

    new-instance v1, Lu6/d;

    invoke-direct {v1}, Lu6/d;-><init>()V

    sput-object v1, Lu6/d;->b:Lu6/d;

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
    sget-object v0, Lu6/d;->b:Lu6/d;

    return-object v0
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lu6/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregister cached binder\uff1a "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Epona->BinderCache"

    invoke-static {v0, p0, p1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lu6/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public e(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lu6/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lu6/c;

    invoke-direct {v1, p0, p1}, Lu6/c;-><init>(Lu6/d;Ljava/lang/String;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Epona->BinderCache"

    invoke-static {p2, p0, p1}, Lc8/a;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
