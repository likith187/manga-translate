.class public Lw6/c;
.super Lcom/oplus/epona/IRemoteTransfer$Stub;
.source "SourceFile"


# static fields
.field private static volatile a:Lw6/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/epona/IRemoteTransfer$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V
    .locals 0

    invoke-static {p0, p1}, Lw6/c;->c(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V

    return-void
.end method

.method public static b()Lw6/c;
    .locals 2

    sget-object v0, Lw6/c;->a:Lw6/c;

    if-nez v0, :cond_1

    const-class v0, Lw6/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw6/c;->a:Lw6/c;

    if-nez v1, :cond_0

    new-instance v1, Lw6/c;

    invoke-direct {v1}, Lw6/c;-><init>()V

    sput-object v1, Lw6/c;->a:Lw6/c;

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
    sget-object v0, Lw6/c;->a:Lw6/c;

    return-object v0
.end method

.method private static synthetic c(Lcom/oplus/epona/ITransferCallback;Lcom/oplus/epona/Response;)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/oplus/epona/ITransferCallback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Epona->RemoteTransfer"

    const-string v0, "failed to asyncCall and exception is %s"

    invoke-static {p1, v0, p0}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/oplus/epona/d;->o(Lcom/oplus/epona/Request;)Lu6/f;

    move-result-object p0

    new-instance p1, Lw6/b;

    invoke-direct {p1, p2}, Lw6/b;-><init>(Lcom/oplus/epona/ITransferCallback;)V

    invoke-virtual {p0, p1}, Lu6/f;->c(Lcom/oplus/epona/Call$Callback;)V

    return-void
.end method

.method public call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;
    .locals 0

    invoke-static {p1}, Lcom/oplus/epona/d;->o(Lcom/oplus/epona/Request;)Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->d()Lcom/oplus/epona/Response;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/epona/IRemoteTransfer$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

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

    const-string p3, "Epona->RemoteTransfer"

    invoke-static {p3, p1, p2}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method
