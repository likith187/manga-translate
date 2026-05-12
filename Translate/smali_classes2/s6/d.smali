.class public Ls6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/epona/f$a;)V
    .locals 3

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-static {}, Lcom/oplus/epona/d;->m()Lw6/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lw6/d;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/epona/IRemoteTransfer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/epona/IRemoteTransfer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v2

    :try_start_0
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ls6/d$a;

    invoke-direct {p1, p0, v2}, Ls6/d$a;-><init>(Ls6/d;Lcom/oplus/epona/Call$Callback;)V

    invoke-interface {v1, v0, p1}, Lcom/oplus/epona/IRemoteTransfer;->asyncCall(Lcom/oplus/epona/Request;Lcom/oplus/epona/ITransferCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/oplus/epona/IRemoteTransfer;->call(Lcom/oplus/epona/Request;)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Epona->IPCInterceptor"

    const-string v0, "fail to call %s#%s and exception is %s"

    invoke-static {p1, v0, p0}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/epona/Response;->a()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->b()V

    return-void
.end method
