.class public final Lcom/oplus/aiunit/download/core/AIDownloadImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/download/core/AIDownloadImpl$Companion;,
        Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;
    }
.end annotation


# static fields
.field private static final ACTION_DOWNLOAD:Ljava/lang/String; = "com.oplus.aiunit.BIND_DOWNLOAD_SERVICE"

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTING:I = 0x2

.field public static final Companion:Lcom/oplus/aiunit/download/core/AIDownloadImpl$Companion;

.field private static final DELAY_HANDLE_CONNECT_TIMEOUT:J = 0xfa0L

.field private static final DELAY_HANDLE_DESTROY:J = 0x1f4L

.field private static final DISCONNECT:I = 0x0

.field private static final DISPATCH_THREAD_NAME:Ljava/lang/String; = "AI_Download_Client"

.field private static final MSG_CONNECT_TIMEOUT:I = 0x64

.field private static final MSG_DESTROY:I = 0x65

.field private static final SERVICE_NAME_DOWNLOAD:Ljava/lang/String; = "com.oplus.aiunit.download.service.AIUnitDownloadService"

.field private static final TAG:Ljava/lang/String; = "AIDownloadImpl"


# instance fields
.field private final clientHandler$delegate:Ln8/j;

.field private final clientMessenger$delegate:Ln8/j;

.field private final connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

.field private headers:Landroid/os/Bundle;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final looper$delegate:Ln8/j;

.field private mContext:Landroid/content/Context;

.field private remoteMessenger:Landroid/os/Messenger;

.field private final requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/aiunit/download/core/ListenerInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final requestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/aiunit/download/api/DownloadRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workerHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->Companion:Lcom/oplus/aiunit/download/core/AIDownloadImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;->INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$looper$2;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->looper$delegate:Ln8/j;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oplus/aiunit/download/core/a;

    invoke-direct {v2, p0}, Lcom/oplus/aiunit/download/core/a;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientHandler$2;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->clientHandler$delegate:Ln8/j;

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$clientMessenger$2;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->clientMessenger$delegate:Ln8/j;

    new-instance v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;-><init>(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler$lambda$0(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$callAllFail(Lcom/oplus/aiunit/download/core/AIDownloadImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callAllFail(I)V

    return-void
.end method

.method public static final synthetic access$executeAll(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->executeAll()V

    return-void
.end method

.method public static final synthetic access$getClientHandler(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getClientHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnection$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method public static final synthetic access$getLooper(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Looper;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getWorkerHandler$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$handleData(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->handleData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$setRemoteMessenger$p(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->remoteMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private final addRequest(Lcom/oplus/aiunit/download/api/DownloadRequest;)V
    .locals 3

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getOrBuildRequestId$aiunit_sdk_download_release()Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getDownloadListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getCommand()Lcom/oplus/aiunit/download/core/Command;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequestListener(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;Lcom/oplus/aiunit/download/core/Command;)V

    :cond_2
    return-void
.end method

.method private final addRequestListener(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;Lcom/oplus/aiunit/download/core/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    invoke-direct {v1, p1, p3, p2}, Lcom/oplus/aiunit/download/core/ListenerInfo;-><init>(Ljava/lang/String;Lcom/oplus/aiunit/download/core/Command;Lcom/oplus/aiunit/download/core/DownloadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/aiunit/download/core/ListenerInfo;

    invoke-virtual {v2}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    new-instance p0, Lcom/oplus/aiunit/download/core/ListenerInfo;

    invoke-direct {p0, p1, p3, p2}, Lcom/oplus/aiunit/download/core/ListenerInfo;-><init>(Ljava/lang/String;Lcom/oplus/aiunit/download/core/Command;Lcom/oplus/aiunit/download/core/DownloadListener;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private final bindRemoteService(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi,NewApi"
        }
    .end annotation

    const-string v0, "AIDownloadImpl"

    const-string v1, "bindRemoteService"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->setState(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.aiunit.BIND_DOWNLOAD_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/data/ServiceType;->getPkgName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.oplus.aiunit.download.service.AIUnitDownloadService"

    invoke-direct {v1, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->isQ()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    const/16 p3, 0x201

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler:Landroid/os/Handler;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final callAllFail(I)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callFail(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private final callCancel(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/oplus/aiunit/download/core/DownloadListener;->onCancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroyWhenCompleteIfNeed()V

    return-void
.end method

.method private final callFail(Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/oplus/aiunit/download/core/DownloadListener;->onFail(I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/collections/o;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/aiunit/download/api/DownloadRequest;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getSilence()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroyWhenCompleteIfNeed()V

    return-void
.end method

.method private final callQueryInfo(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/oplus/aiunit/download/core/DownloadListener;->onQuery(Lcom/oplus/aiunit/download/core/DownloadInfo;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;->INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$2$1;

    invoke-static {p2, v0}, Lkotlin/collections/o;->A(Ljava/util/List;Lw8/l;)Z

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$3$1;->INSTANCE:Lcom/oplus/aiunit/download/core/AIDownloadImpl$callQueryInfo$3$1;

    invoke-static {p0, p1}, Lkotlin/collections/o;->A(Ljava/util/List;Lw8/l;)Z

    :cond_3
    return-void
.end method

.method private final callSuccess(Ljava/lang/String;JJZ)V
    .locals 8

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v2

    if-eqz v2, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/oplus/aiunit/download/core/DownloadListener;->onSuccess(JJZ)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroyWhenCompleteIfNeed()V

    return-void
.end method

.method private final destroyWhenCompleteIfNeed()V
    .locals 0

    return-void
.end method

.method private final executeAll()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/o;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/api/DownloadRequest;

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestSingle(Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getClientHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->clientHandler$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getClientMessenger()Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->clientMessenger$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Messenger;

    return-object p0
.end method

.method private final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->looper$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method

.method private final getRemoteMessengerSafely(Lcom/oplus/aiunit/download/api/DownloadRequest;)Landroid/os/Messenger;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->remoteMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->remoteMessenger:Landroid/os/Messenger;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getOrBuildRequestId$aiunit_sdk_download_release()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->bindRemoteService(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final handleConnectTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIDownloadImpl"

    const-string v1, "handleConnectTimeout"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->setState(I)V

    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callAllFail(I)V

    :cond_0
    return-void
.end method

.method private final handleData(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "ai::key::download::group_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "AIDownloadImpl"

    if-nez v0, :cond_0

    const-string p0, "sceneName isEmpty"

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "ai::key::download::response_command"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "receive command "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    const-string v5, "ai::key::download::offset_size"

    const-string v6, "ai::key::download::full_size"

    const-wide/16 v7, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {p1, v5, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "ai::key::download::state"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lcom/oplus/aiunit/download/core/DownloadInfo;

    invoke-direct {v0}, Lcom/oplus/aiunit/download/core/DownloadInfo;-><init>()V

    invoke-virtual {v0, v3}, Lcom/oplus/aiunit/download/core/DownloadInfo;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Lcom/oplus/aiunit/download/core/DownloadInfo;->setFullSize(J)V

    invoke-virtual {v0, v4, v5}, Lcom/oplus/aiunit/download/core/DownloadInfo;->setOffsetSize(J)V

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/download/core/DownloadInfo;->setState(I)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-direct {p0, v3, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callQueryInfo(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadInfo;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callCancel(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_2
    const-string v0, "ai::key::download::error_code"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callFail(Ljava/lang/String;IZ)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "ai::key::download::actual_size"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "ai::key::download::breakpoint"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->callSuccess(Ljava/lang/String;JJZ)V

    goto/16 :goto_8

    :pswitch_4
    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oplus/aiunit/download/core/DownloadListener;->onInstall()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {p1, v5, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v0, "ai::key::download::speed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/download/api/DownloadRequest;

    invoke-virtual {v0, v4}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    move-wide v1, v9

    move-wide v3, v7

    move-wide v5, v11

    invoke-interface/range {v0 .. v6}, Lcom/oplus/aiunit/download/core/DownloadListener;->onProgress(JJJ)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v5, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v0, v1, v4, v5}, Lcom/oplus/aiunit/download/core/DownloadListener;->onStart(JJ)V

    goto :goto_5

    :pswitch_7
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v5, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_6

    :cond_8
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v0, v1, v4, v5}, Lcom/oplus/aiunit/download/core/DownloadListener;->onPrepare(JJ)V

    goto :goto_7

    :cond_a
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final hasTaskDownloading(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/download/api/DownloadRequest;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getCommand()Lcom/oplus/aiunit/download/core/Command;

    move-result-object v1

    sget-object v2, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/api/DownloadRequest;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method

.method private final requestSingle(Lcom/oplus/aiunit/download/api/DownloadRequest;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->buildBody()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->headers:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getRemoteMessengerSafely(Lcom/oplus/aiunit/download/api/DownloadRequest;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getClientMessenger()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestSingle exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIDownloadImpl"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getCommand()Lcom/oplus/aiunit/download/core/Command;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static final workerHandler$lambda$0(Lcom/oplus/aiunit/download/core/AIDownloadImpl;Landroid/os/Message;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage no usable msg for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AIDownloadImpl"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->destroy()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->handleConnectTimeout()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->headers:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "ai::download::key::request_command"

    const-string v2, "CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ai::key::download::group_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->remoteMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-direct {p0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->getClientMessenger()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIDownloadImpl"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/api/DownloadRequest;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setState(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/download/core/ListenerInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oplus/aiunit/download/core/ListenerInfo;->getListener()Lcom/oplus/aiunit/download/core/DownloadListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/oplus/aiunit/download/core/DownloadListener;->onCancel()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cancelAll()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->cancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final isDownloading(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->hasTaskDownloading(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final query(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;ILcom/oplus/aiunit/core/data/ServiceType;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->remoteMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    if-nez p6, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/oplus/aiunit/download/core/DownloadListener;->onQuery(Lcom/oplus/aiunit/download/core/DownloadInfo;)V

    :cond_0
    return-void

    :cond_1
    new-instance p6, Lcom/oplus/aiunit/download/api/DownloadRequest;

    invoke-direct {p6}, Lcom/oplus/aiunit/download/api/DownloadRequest;-><init>()V

    if-nez p4, :cond_2

    invoke-virtual {p6, p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setSceneName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p6, p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setDetectName(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p6, p3}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setDownloadListener(Lcom/oplus/aiunit/download/core/DownloadListener;)V

    sget-object p2, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    invoke-virtual {p6, p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->setCommand(Lcom/oplus/aiunit/download/core/Command;)V

    invoke-virtual {p0, p1, p6, p5}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;Lcom/oplus/aiunit/core/data/ServiceType;)V

    return-void
.end method

.method public final register(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;)V
    .locals 1

    const-string v0, "groupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/download/core/Command;->DOWNLOAD:Lcom/oplus/aiunit/download/core/Command;

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequestListener(Ljava/lang/String;Lcom/oplus/aiunit/download/core/DownloadListener;Lcom/oplus/aiunit/download/core/Command;)V

    return-void
.end method

.method public final removeRequest(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized start(Landroid/content/Context;Lcom/oplus/aiunit/download/api/DownloadRequest;Lcom/oplus/aiunit/core/data/ServiceType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->mContext:Landroid/content/Context;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->headers:Landroid/os/Bundle;

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->headers:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->workerHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {v0}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isDisconnect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequest(Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getOrBuildRequestId$aiunit_sdk_download_release()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->bindRemoteService(Landroid/content/Context;Lcom/oplus/aiunit/core/data/ServiceType;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->connection:Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;

    invoke-virtual {p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl$DownloadConnection;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequest(Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    const-string p1, "AIDownloadImpl"

    const-string p2, "start service is connecting or connected"

    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->hasTaskDownloading(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getCommand()Lcom/oplus/aiunit/download/core/Command;

    move-result-object p1

    sget-object p3, Lcom/oplus/aiunit/download/core/Command;->QUERY:Lcom/oplus/aiunit/download/core/Command;

    if-ne p1, p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/oplus/aiunit/download/api/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->hasTaskDownloading(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "start connected request exist "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AIDownloadImpl"

    invoke-static {p3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequest(Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    goto :goto_3

    :cond_6
    const-string p1, "AIDownloadImpl"

    const-string p2, "start service other."

    invoke-static {p1, p2}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "start connected requestSingle "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AIDownloadImpl"

    invoke-static {p3, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->addRequest(Lcom/oplus/aiunit/download/api/DownloadRequest;)V

    invoke-direct {p0, p2}, Lcom/oplus/aiunit/download/core/AIDownloadImpl;->requestSingle(Lcom/oplus/aiunit/download/api/DownloadRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
