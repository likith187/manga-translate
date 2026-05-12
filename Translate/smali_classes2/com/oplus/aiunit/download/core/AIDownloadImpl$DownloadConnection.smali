.class public final Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/download/core/AIDownloadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DownloadConnection"
.end annotation


# instance fields
.field private volatile connectState:I

.field private volatile mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->onServiceConnected$lambda$1(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->onServiceDisconnected$lambda$5(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    return-void
.end method

.method private static final onServiceConnected$lambda$1(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIDownloadImpl"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "onServiceConnected service = null"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x76

    invoke-static {p1, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$callAllFail(Lcom/oplus/aiunit/download/core/AIDownloadImpl;I)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroy()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getWorkerHandler$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p0, p2, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p2, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$setRemoteMessenger$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Messenger;)V

    const/4 p0, 0x1

    iput p0, p2, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$executeAll(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final onServiceDisconnected$lambda$5(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AIDownloadImpl"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object v2, p1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getMContext$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getConnection$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_1
    move-object v2, v1

    :goto_3
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_3
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    invoke-static {v2}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    iput-object v1, p1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    invoke-static {p0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$setRemoteMessenger$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Messenger;)V

    iput v0, p1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 p1, 0x7f

    invoke-static {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$callAllFail(Lcom/oplus/aiunit/download/core/AIDownloadImpl;I)V

    return-void

    :goto_7
    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const-string v0, "AIDownloadImpl"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object v2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v2, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$setRemoteMessenger$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Messenger;)V

    iput v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    const/16 v0, 0x7f

    invoke-static {p0, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$callAllFail(Lcom/oplus/aiunit/download/core/AIDownloadImpl;I)V

    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final destroy()V
    .locals 4

    const-string v0, "AIDownloadImpl"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    iget-object v2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v2, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$setRemoteMessenger$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Messenger;)V

    iput v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    const/16 v0, 0x7f

    invoke-static {p0, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$callAllFail(Lcom/oplus/aiunit/download/core/AIDownloadImpl;I)V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :goto_3
    return-void
.end method

.method public final isBinderAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :goto_1
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isDisconnect()Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getWorkerHandler$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    new-instance v1, Lcom/oplus/aiunit/download/core/c;

    invoke-direct {v1, p2, v0, p0}, Lcom/oplus/aiunit/download/core/c;-><init>(Landroid/os/IBinder;Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getWorkerHandler$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    new-instance v1, Lcom/oplus/aiunit/download/core/b;

    invoke-direct {v1, v0, p0}, Lcom/oplus/aiunit/download/core/b;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setState(I)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->connectState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->this$0:Lcom/oplus/aiunit/download/core/AIDownloadImpl;

    invoke-static {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
