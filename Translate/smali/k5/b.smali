.class public Lk5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/heytap/epona/d$a;)V
    .locals 5

    const-string v0, "CallIPCComponentInterceptor"

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->a()Lcom/heytap/epona/Request;

    move-result-object v1

    invoke-static {}, Ln5/c;->f()Ln5/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln5/c;->e(Ljava/lang/String;)Lcom/heytap/epona/IRemoteTransfer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/heytap/epona/d$a;->callback()Lcom/heytap/epona/a;

    move-result-object v3

    :try_start_0
    invoke-interface {p1}, Lcom/heytap/epona/d$a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lk5/b$a;

    invoke-direct {p1, p0, v1, v3}, Lk5/b$a;-><init>(Lk5/b;Lcom/heytap/epona/Request;Lcom/heytap/epona/a;)V

    invoke-interface {v2, v1, p1}, Lcom/heytap/epona/IRemoteTransfer;->asyncCall(Lcom/heytap/epona/Request;Lcom/heytap/epona/ITransferCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Lcom/heytap/epona/IRemoteTransfer;->call(Lcom/heytap/epona/Request;)Lcom/heytap/epona/Response;

    move-result-object p0

    const-string p1, "Component(%s).Action(%s) response : %s"

    invoke-virtual {v1}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/heytap/epona/Request;->a()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lq5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3, p0}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Lcom/heytap/epona/Request;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/heytap/epona/Request;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "fail to call %s#%s and exception is %s"

    invoke-static {v0, p1, p0}, Lq5/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/heytap/epona/Response;->b()Lcom/heytap/epona/Response;

    move-result-object p0

    invoke-interface {v3, p0}, Lcom/heytap/epona/a;->onReceive(Lcom/heytap/epona/Response;)V

    :goto_1
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/heytap/epona/d$a;->b()V

    return-void
.end method
