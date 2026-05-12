.class public Lt6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f;


# instance fields
.field private final a:Lr6/a;

.field private final b:Lr6/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr6/c;

    invoke-direct {v0}, Lr6/c;-><init>()V

    iput-object v0, p0, Lt6/a;->a:Lr6/a;

    new-instance v0, Lr6/b;

    invoke-direct {v0}, Lr6/b;-><init>()V

    iput-object v0, p0, Lt6/a;->b:Lr6/a;

    return-void
.end method

.method static synthetic b(Lt6/a;)Lr6/a;
    .locals 0

    iget-object p0, p0, Lt6/a;->b:Lr6/a;

    return-object p0
.end method

.method private c(Lcom/oplus/epona/f$a;Lcom/heytap/epona/IRemoteTransfer;)V
    .locals 3

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v0

    iget-object v1, p0, Lt6/a;->a:Lr6/a;

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Lr6/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/epona/Request;

    :try_start_0
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lt6/a$a;

    invoke-direct {p1, p0, v0}, Lt6/a$a;-><init>(Lt6/a;Lcom/oplus/epona/Call$Callback;)V

    invoke-interface {p2, v1, p1}, Lcom/heytap/epona/IRemoteTransfer;->asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Lcom/heytap/epona/IRemoteTransfer;->call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object p1

    iget-object p0, p0, Lt6/a;->b:Lr6/a;

    invoke-interface {p0, p1}, Lr6/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/Response;

    invoke-interface {v0, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to proceed to heytap, message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Epona->CompatIPCInterceptor"

    invoke-static {v2, p1, v1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_1
    return-void
.end method

.method private d(Lcom/oplus/epona/f$a;Lcom/oplus/epona/IRemoteTransfer;)V
    .locals 3

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object p1

    new-instance v1, Lt6/a$b;

    invoke-direct {v1, p0, v0}, Lt6/a$b;-><init>(Lt6/a;Lcom/oplus/epona/Call$Callback;)V

    invoke-interface {p2, p1, v1}, Lcom/oplus/epona/IRemoteTransfer;->asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/oplus/epona/IRemoteTransfer;->call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to proceed to oplus, message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Epona->CompatIPCInterceptor"

    invoke-static {v2, p1, v1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/epona/f$a;)V
    .locals 5

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/oplus/epona/d;->m()Lw6/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lw6/d;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ln5/c;->f()Ln5/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lw6/c;->b()Lw6/c;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/heytap/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lt6/a;->c(Lcom/oplus/epona/f$a;Lcom/heytap/epona/IRemoteTransfer;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/oplus/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/epona/IRemoteTransfer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lt6/a;->d(Lcom/oplus/epona/f$a;Lcom/oplus/epona/IRemoteTransfer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to process binder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Epona->CompatIPCInterceptor"

    invoke-static {v2, p0, v1}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object p0

    invoke-static {v0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :cond_1
    :goto_1
    return-void
.end method
