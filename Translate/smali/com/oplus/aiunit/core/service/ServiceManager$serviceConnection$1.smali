.class public final Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "onServiceConnected serverOcsAuthEnable = "

    const-string v0, "authorizeAfterConnect failed, code = "

    const-string v1, "onServiceConnected exception: "

    const-string v2, "onServiceConnected"

    const-string v3, "ServiceManager"

    invoke-static {v3, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    sget-object v4, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTED:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-static {v2, v4}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$setState(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {v2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getMainHandler$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p2}, Lcom/oplus/aiunit/core/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/aiunit/core/IService;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$setMService$p(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IService;)V

    iget-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getMService$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/IService;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "current app can\'t get service, please check permission"

    invoke-static {v3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    sget-object p2, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorAuthorizeFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyConnectFailed(Lcom/oplus/aiunit/core/service/ServiceManager;I)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getMService$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/IService;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    const/4 v4, 0x0

    invoke-interface {p2, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_1
    iget-object p2, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->authorizeAfterConnect()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p2

    const-string v2, "package::error_code"

    invoke-virtual {p2, v2}, Lcom/oplus/aiunit/core/ParamPackage;->getParamInt(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v4

    if-eq v2, v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1, v2}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyConnectFailed(Lcom/oplus/aiunit/core/service/ServiceManager;I)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_2
    :try_start_2
    const-string v0, "package::aiunit_ocs_switch"

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamBoolean(Ljava/lang/String;)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getAuthClient$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/auth/AuthClient;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x0

    const-string v0, "authClient"

    if-nez p1, :cond_3

    :try_start_3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/aiunit/auth/AuthClient;->isOcsAuthMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getAuthClient$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/auth/AuthClient;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p2, p1

    :goto_0
    new-instance p1, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/auth/AuthClient;->authorize(Lcom/oplus/aiunit/auth/AuthCallback;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyConnectSuccess(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    :goto_2
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ServiceManager"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyDisconnect(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$setState(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$unbind(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    return-void
.end method
