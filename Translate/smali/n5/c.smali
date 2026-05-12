.class public Ln5/c;
.super Lcom/heytap/epona/IRemoteTransfer$Stub;
.source "SourceFile"


# static fields
.field private static volatile b:Ln5/c;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heytap/epona/IRemoteTransfer$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln5/c;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Ln5/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ln5/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V
    .locals 0

    invoke-static {p0, p1}, Ln5/c;->g(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V

    return-void
.end method

.method private c(Lcom/heytap/epona/Request;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/heytap/epona/c;->e()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/heytap/epona/c;->e()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lr5/b;->a()Lr5/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p0}, Lr5/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "RemoteTransfer"

    const-string v0, "Request is null."

    invoke-static {p1, v0, p0}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private d()Z
    .locals 3

    invoke-static {}, Lcom/heytap/epona/c;->f()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.heytap.appplatform.dispatcher"

    const/high16 v2, 0x20000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static f()Ln5/c;
    .locals 2

    sget-object v0, Ln5/c;->b:Ln5/c;

    if-nez v0, :cond_1

    const-class v0, Ln5/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln5/c;->b:Ln5/c;

    if-nez v1, :cond_0

    new-instance v1, Ln5/c;

    invoke-direct {v1}, Ln5/c;-><init>()V

    sput-object v1, Ln5/c;->b:Ln5/c;

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
    sget-object v0, Ln5/c;->b:Ln5/c;

    return-object v0
.end method

.method private static synthetic g(Lcom/heytap/epona/ITransferCallback;Lcom/heytap/epona/Response;)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/heytap/epona/ITransferCallback;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "RemoteTransfer"

    const-string v0, "failed to asyncCall and exception is %s"

    invoke-static {p1, v0, p0}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic h(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ln5/c;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heytap/epona/IRemoteTransfer;

    return-void
.end method


# virtual methods
.method public asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V
    .locals 3

    invoke-static {}, Lr5/b;->a()Lr5/b;

    move-result-object v0

    invoke-virtual {v0}, Lr5/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ln5/c;->c(Lcom/heytap/epona/Request;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Epona Authentication failed, request : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteTransfer"

    invoke-static {v2, p0, v1}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/epona/Response;->c(Ljava/lang/String;)Lcom/heytap/epona/Response;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/heytap/epona/ITransferCallback;->onReceive(Lcom/heytap/epona/Response;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/heytap/epona/c;->j(Lcom/heytap/epona/Request;)Ll5/e;

    move-result-object p0

    new-instance p1, Ln5/a;

    invoke-direct {p1, p2}, Ln5/a;-><init>(Lcom/heytap/epona/ITransferCallback;)V

    invoke-virtual {p0, p1}, Ll5/e;->c(Lcom/heytap/epona/a;)V

    return-void
.end method

.method public call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;
    .locals 3

    invoke-static {}, Lr5/b;->a()Lr5/b;

    move-result-object v0

    invoke-virtual {v0}, Lr5/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ln5/c;->c(Lcom/heytap/epona/Request;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Epona Authentication failed, request : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteTransfer"

    invoke-static {v2, p0, v1}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/heytap/epona/Request;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/heytap/epona/Response;->c(Ljava/lang/String;)Lcom/heytap/epona/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/heytap/epona/c;->j(Lcom/heytap/epona/Request;)Ll5/e;

    move-result-object p0

    invoke-virtual {p0}, Ll5/e;->d()Lcom/heytap/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;
    .locals 7

    invoke-direct {p0}, Ln5/c;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "RemoteTransfer"

    if-nez v0, :cond_0

    const-string p0, "DispatcherProvider is not exist"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Ln5/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/IRemoteTransfer;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/heytap/epona/c;->f()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.heytap.appplatform"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lo5/b;->c()Lo5/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo5/b;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "com.heytap.epona.Dispatcher.TRANSFER_KEY"

    invoke-virtual {v5, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lq5/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v1, "com.heytap.epona.Dispatcher.TRANSFER_VALUE"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v4, "Find remote transfer bundle null."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/heytap/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v0

    iget-object v4, p0, Ln5/c;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v4, Ln5/b;

    invoke-direct {v4, p0, p1}, Ln5/b;-><init>(Ln5/c;Ljava/lang/String;)V

    invoke-interface {v1, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lq5/a;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p0, "Get remote binder null. ComponentName : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/heytap/epona/IRemoteTransfer$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTransact Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "RemoteTransfer"

    invoke-static {p3, p1, p2}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
