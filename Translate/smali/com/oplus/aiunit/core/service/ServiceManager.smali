.class public final Lcom/oplus/aiunit/core/service/ServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/service/IServiceManager;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/service/ServiceManager$Companion;,
        Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;,
        Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/service/ServiceManager$Companion;

.field private static final DELAY_HANDLE_CONNECT_TIMEOUT:J = 0xfa0L

.field private static final MSG_CONNECT_TIMEOUT:I = 0x64


# instance fields
.field private authClient:Lcom/oplus/aiunit/auth/AuthClient;

.field private volatile connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

.field private final connectionCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/aiunit/core/callback/ConnectionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final detectStateCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/aiunit/core/callback/DetectStateCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final detectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/IUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final lockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mService:Lcom/oplus/aiunit/core/IService;

.field private final mainHandler:Landroid/os/Handler;

.field private final serviceConnection:Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;

.field private volatile serviceLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile serviceProtocol:I

.field private volatile serviceType:Lcom/oplus/aiunit/core/data/ServiceType;

.field private final timeMonitor:Lcom/oplus/aiunit/core/utils/TimeMonitor;

.field private final unitStatusProxy:Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/service/ServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aiunit/core/service/ServiceManager;->Companion:Lcom/oplus/aiunit/core/service/ServiceManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v0, Lcom/oplus/aiunit/core/data/ServiceType;->AIUNIT:Lcom/oplus/aiunit/core/data/ServiceType;

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceType:Lcom/oplus/aiunit/core/data/ServiceType;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->lockMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->unitStatusProxy:Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;

    new-instance v0, Lcom/oplus/aiunit/core/utils/TimeMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/utils/TimeMonitor;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->timeMonitor:Lcom/oplus/aiunit/core/utils/TimeMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oplus/aiunit/core/service/e;

    invoke-direct {v2, p0}, Lcom/oplus/aiunit/core/service/e;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceConnection:Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;

    return-void
.end method

.method public static synthetic a(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeConnectionCallback$lambda$4(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$acquireExistUnit(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit(Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$addUnit(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->addUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V

    return-void
.end method

.method public static final synthetic access$getAuthClient$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/auth/AuthClient;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->authClient:Lcom/oplus/aiunit/auth/AuthClient;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDetectStateCallback$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getDetectorMap$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getMService$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/IService;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getService(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/IService;
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getServiceLatch$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getServiceProtocol$p(Lcom/oplus/aiunit/core/service/ServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    return p0
.end method

.method public static final synthetic access$getUnitActiveCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->getUnitActiveCompat(Lcom/oplus/aiunit/core/IUnit;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getUnitNameCompat(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->getUnitNameCompat(Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUnitStatusProxy$p(Lcom/oplus/aiunit/core/service/ServiceManager;)Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->unitStatusProxy:Lcom/oplus/aiunit/core/service/ServiceManager$UnitStatusProxy;

    return-object p0
.end method

.method public static final synthetic access$notifyConnectFailed(Lcom/oplus/aiunit/core/service/ServiceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyConnectFailed(I)V

    return-void
.end method

.method public static final synthetic access$notifyConnectSuccess(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyConnectSuccess()V

    return-void
.end method

.method public static final synthetic access$notifyDisconnect(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyDisconnect()V

    return-void
.end method

.method public static final synthetic access$setMService$p(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/IService;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    return-void
.end method

.method public static final synthetic access$setState(Lcom/oplus/aiunit/core/service/ServiceManager;Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    return-void
.end method

.method public static final synthetic access$unbind(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->unbind()V

    return-void
.end method

.method private final acquireExistUnit(Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeDestroyUnit(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/IUnit;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static synthetic acquireExistUnit$default(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/aiunit/core/IUnit;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit(Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    return-object p0
.end method

.method private final addUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager$addUnit$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/IUnit;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->runLockAction(Ljava/lang/String;Lw8/a;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyDisconnect$lambda$13(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->init$lambda$2(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method private final connectService(Lcom/oplus/aiunit/core/data/ServiceType;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/oplus/aiunit/core/data/ServiceType;->OCRSERVICE:Lcom/oplus/aiunit/core/data/ServiceType;

    if-ne p1, v1, :cond_0

    const-string v1, "com.coloros.ocrservice"

    goto :goto_0

    :cond_0
    const-string v1, "com.oplus.aiunit"

    :goto_0
    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceType:Lcom/oplus/aiunit/core/data/ServiceType;

    iget v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    const/4 v3, 0x0

    const-string v4, "context"

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getServiceProtocol(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.oplus.aiunit.core.AIUnitService"

    invoke-direct {v2, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "oplus.intent.action.AIUNIT_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/oplus/aiunit/core/utils/ApiVersionUtils;->isQ()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v5, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v3

    :cond_5
    invoke-static {v5}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v5, Lcom/oplus/aiunit/core/utils/AILog;->INSTANCE:Lcom/oplus/aiunit/core/utils/AILog;

    invoke-virtual {v5}, Lcom/oplus/aiunit/core/utils/AILog;->getDebugMode()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/oplus/aiunit/core/utils/AILog;->isDebugging()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    new-instance v5, Ln8/v;

    iget-object v6, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v6, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v3

    :cond_7
    invoke-static {v6, v1}, Lcom/oplus/aiunit/core/utils/AIUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p1, v1, v6}, Ln8/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "start connect "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ServiceManager"

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->printD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->timeMonitor:Lcom/oplus/aiunit/core/utils/TimeMonitor;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/utils/TimeMonitor;->start()J

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez p1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v3, p1

    :goto_1
    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceConnection:Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;

    const/16 v2, 0x201

    invoke-virtual {v3, v0, v2, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    sget-object p1, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTING:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final containConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)Z
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static synthetic d(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->init$lambda$3(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method

.method private final driveUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;
    .locals 1

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager$driveUnit$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->runLockAction(Ljava/lang/String;Lw8/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/IUnit;

    return-object p0
.end method

.method public static synthetic driveUnit$default(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/IUnit;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->driveUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyConnectFailed$lambda$11(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic f(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyConnectSuccess$lambda$9(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/aiunit/core/service/ServiceManager;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler$lambda$0(Lcom/oplus/aiunit/core/service/ServiceManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private final getAllCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/callback/ConnectionCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final declared-synchronized getService()Lcom/oplus/aiunit/core/IService;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v0, "ServiceManager"

    const-string v1, "getService: service is invalid, need to rebind"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceType:Lcom/oplus/aiunit/core/data/ServiceType;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->connectService(Lcom/oplus/aiunit/core/data/ServiceType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getService connect wait exception. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private final getUnitActiveCompat(Lcom/oplus/aiunit/core/IUnit;)Z
    .locals 4

    const-string v0, "ServiceManager"

    const/4 v1, 0x1

    :try_start_0
    iget p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/oplus/aiunit/core/IUnit;->isActive()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUnitActiveCompat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " call isActive err. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getUnitActiveCompat DeadObjectException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_2
    return v1
.end method

.method private final getUnitNameCompat(Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/oplus/aiunit/core/IUnit;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getUnitNameCompat "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceManager"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method public static synthetic h(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeStateCallback$lambda$5(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final handleConnectTimeout()V
    .locals 2

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceManager"

    const-string v1, "handleConnectTimeout"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorTimeOut:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyConnectFailed(I)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lw8/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeDestroyUnit$lambda$21(Lw8/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final init$lambda$2(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceConnect()V

    :cond_0
    return-void
.end method

.method private static final init$lambda$3(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceConnecting()V

    :cond_0
    return-void
.end method

.method private final declared-synchronized isConnecting()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v1, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTING:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized isDisconnect()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v1, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static final mainHandler$lambda$0(Lcom/oplus/aiunit/core/service/ServiceManager;Landroid/os/Message;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->handleConnectTimeout()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleMessage no usable msg for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServiceManager"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final declared-synchronized notifyConnectFailed(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getAllCallbacks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/aiunit/core/service/g;

    invoke-direct {v2, v0, p1}, Lcom/oplus/aiunit/core/service/g;-><init>(Ljava/util/List;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final notifyConnectFailed$lambda$11(Ljava/util/List;I)V
    .locals 1

    const-string v0, "$cList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceConnectFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized notifyConnectSuccess()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getAllCallbacks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/aiunit/core/service/h;

    invoke-direct {v2, v0}, Lcom/oplus/aiunit/core/service/h;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static final notifyConnectSuccess$lambda$9(Ljava/util/List;)V
    .locals 1

    const-string v0, "$cList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    invoke-interface {v0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceConnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized notifyDisconnect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getAllCallbacks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/aiunit/core/service/f;

    invoke-direct {v2, v0}, Lcom/oplus/aiunit/core/service/f;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static final notifyDisconnect$lambda$13(Ljava/util/List;)V
    .locals 1

    const-string v0, "$cList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    invoke-interface {v0}, Lcom/oplus/aiunit/core/callback/ConnectionCallback;->onServiceDisconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized removeAllCallbacks()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static final removeConnectionCallback$lambda$4(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final removeDestroyUnit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/service/ServiceManager$removeDestroyUnit$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    new-instance p0, Lcom/oplus/aiunit/core/service/d;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/d;-><init>(Lw8/l;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method private static final removeDestroyUnit$lambda$21(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final removeStateCallback$lambda$5(Lw8/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final runLockAction(Ljava/lang/String;Lw8/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lw8/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->lockMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->lockMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->lockMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    monitor-enter v1

    :try_start_1
    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized unbind()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    if-eqz v0, :cond_2

    const-string v1, "ServiceManager"

    const-string v2, "unbind"

    invoke-static {v1, v2}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceConnection:Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_4
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iput-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_2
    :goto_6
    monitor-exit p0

    return-void

    :goto_7
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private final updateStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 2

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic updateStateCallback$default(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->updateStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    return-void
.end method


# virtual methods
.method public access(Lcom/oplus/aiunit/core/base/AIDetector;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">(",
            "Lcom/oplus/aiunit/core/base/AIDetector<",
            "TI;TO;>;)I"
        }
    .end annotation

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v1}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/base/AIDetector;->getProtocol()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package::sdk_version"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "package::sdk_version_name"

    const-string v3, "2.0.3-beta3eac8c9"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/base/AIDetector;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package::unit_name"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/base/AIDetector;->getApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package::unit_api_level"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMyAppVersion(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "package::package_version"

    invoke-virtual {v1, v2, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/base/AIDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setDetectorExtras(Landroid/os/Bundle;)V

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/oplus/aiunit/core/IService;->access(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorRemoteDead:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "access "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oplus/aiunit/core/base/AIDetector;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceManager"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public acquire(Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->acquire(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public declared-synchronized addConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager;->containConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addCallback: size = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceManager"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public attach(Lcom/oplus/aiunit/core/ConfigPackage;)I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->attach(Lcom/oplus/aiunit/core/ConfigPackage;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public authorize(Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->authorize(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final authorizeAfterConnect()Lcom/oplus/aiunit/core/ParamPackage;
    .locals 7

    const-string v0, "authorizeAfterConnect"

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    new-instance v2, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v2}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    const-string v3, "context"

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-static {v3}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "keySet(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->timeMonitor:Lcom/oplus/aiunit/core/utils/TimeMonitor;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/utils/TimeMonitor;->getStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "package::start_time"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->timeMonitor:Lcom/oplus/aiunit/core/utils/TimeMonitor;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/utils/TimeMonitor;->time()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "package::cost_time"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/oplus/aiunit/core/service/ServiceManager;->authorize(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authorizeAfterConnect occurred error. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "package::error_code"

    invoke-virtual {v2, v0, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public binderDied()V
    .locals 3

    const-string v0, "ServiceManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyDisconnect()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->authClient:Lcom/oplus/aiunit/auth/AuthClient;

    if-nez v1, :cond_1

    const-string v1, "authClient"

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {v1}, Lcom/oplus/aiunit/auth/AuthClient;->release()V

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mService:Lcom/oplus/aiunit/core/IService;

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy: state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connect size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceManager"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "ServiceManager"

    const-string v1, "skip destroy: current connect size > 1"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->isDisconnect()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->DISCONNECT:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->setState(Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->notifyDisconnect()V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->unbind()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeAllCallbacks()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->authClient:Lcom/oplus/aiunit/auth/AuthClient;

    if-nez v0, :cond_1

    const-string v0, "authClient"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/oplus/aiunit/auth/AuthClient;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public detach(Ljava/lang/String;)I
    .locals 1

    const-string v0, "configUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->detach(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public detach(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$detach$1;-><init>(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->runLockAction(Ljava/lang/String;Lw8/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public driveAndAttach(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I
    .locals 7

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "driveAndAttach "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ServiceManager"

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/oplus/aiunit/core/service/ServiceManager;->updateStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->driveUnit(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object v0

    const-string v3, "package::error_code"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/oplus/aiunit/core/ParamPackage;->getParamInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " driveCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v5}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v6

    if-ne v4, v6, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/IUnit;->attach(Lcom/oplus/aiunit/core/ConfigPackage;)I

    move-result v4

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/ParamPackage;->getParamInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNotReady:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v4

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attachCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unit: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p1

    if-ne v4, p1, :cond_6

    iget p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isTelAI(I)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-interface {v0, p0}, Lcom/oplus/aiunit/core/IUnit;->getRunningInfo(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRunningInfo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz p3, :cond_7

    sget-object p1, Lcom/oplus/aiunit/core/data/AIConfig;->Companion:Lcom/oplus/aiunit/core/data/AIConfig$Companion;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/data/AIConfig$Companion;->get(Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/AIConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/data/AIConfig;->setDetectName(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V

    goto :goto_4

    :cond_5
    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onStart()V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    const-string p0, "driveAndAttach failed"

    invoke-interface {p3, p2, v4, p0}, Lcom/oplus/aiunit/core/callback/DetectStateCallback;->onAllFail(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    :goto_4
    return v4
.end method

.method public getRunningUnitInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCLocal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit(Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IUnit;->getRunningInfo(Landroid/os/Bundle;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public infer(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->infer(Lcom/oplus/aiunit/core/FramePackage;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Lcom/oplus/aiunit/core/data/ServiceType;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->addConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    :cond_1
    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->authClient:Lcom/oplus/aiunit/auth/AuthClient;

    if-nez p1, :cond_3

    new-instance p1, Lcom/oplus/aiunit/auth/AuthClient;

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-direct {p1, v0}, Lcom/oplus/aiunit/auth/AuthClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->authClient:Lcom/oplus/aiunit/auth/AuthClient;

    :cond_3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ServiceManager"

    const-string p3, "init with service has connected."

    invoke-static {p1, p3}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/oplus/aiunit/core/service/b;

    invoke-direct {p3, p2}, Lcom/oplus/aiunit/core/service/b;-><init>(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ServiceManager"

    const-string p3, "init with service is connecting."

    invoke-static {p1, p3}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->executor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/oplus/aiunit/core/service/c;

    invoke-direct {p3, p2}, Lcom/oplus/aiunit/core/service/c;-><init>(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->isDisconnect()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p3}, Lcom/oplus/aiunit/core/service/ServiceManager;->connectService(Lcom/oplus/aiunit/core/data/ServiceType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectState:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;

    sget-object v1, Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;->CONNECTED:Lcom/oplus/aiunit/core/service/ServiceManager$ConnectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isStarted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit(Ljava/lang/String;Z)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->prepare(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_0
    return-void
.end method

.method public process(Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->process(Lcom/oplus/aiunit/core/FramePackage;)I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_0
    return p0
.end method

.method public process(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/String;)I
    .locals 10

    const-string v0, "detectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, p2, v0, v1, v2}, Lcom/oplus/aiunit/core/service/ServiceManager;->acquireExistUnit$default(Lcom/oplus/aiunit/core/service/ServiceManager;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object v0

    const-string v1, "ai::key::process_retry"

    const/4 v3, 0x1

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3
    const-string v4, "ServiceManager"

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDetectNotInit:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v1, v3}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "process failed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errCode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDetectNotInit:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    .line 8
    :cond_2
    iget v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {v5}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isGlobalDep(I)Z

    move-result v5

    const-string v6, "process "

    if-eqz v5, :cond_5

    .line 9
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-interface {v0, v5}, Lcom/oplus/aiunit/core/IUnit;->getRunningInfo(Landroid/os/Bundle;)V

    .line 11
    sget-object v7, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v7}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v8

    const-string v9, "package::error_code"

    invoke-virtual {v5, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "process: getRunningInfo errCode = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v7

    if-eq v5, v7, :cond_8

    .line 14
    invoke-direct {p0, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeDestroyUnit(Ljava/lang/String;)V

    .line 15
    invoke-static {v5}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    if-nez p1, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    :goto_1
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1, v1, v3}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errCode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x21

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 19
    :cond_5
    iget v5, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->serviceProtocol:I

    invoke-static {v5}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->isAIGCCloud(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Lcom/oplus/aiunit/core/IUnit;->isActive()Z

    move-result v5

    if-nez v5, :cond_8

    .line 20
    invoke-direct {p0, p2}, Lcom/oplus/aiunit/core/service/ServiceManager;->removeDestroyUnit(Ljava/lang/String;)V

    if-nez p1, :cond_6

    goto :goto_2

    .line 21
    :cond_6
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDetectNotAvailable:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    :goto_2
    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p1, v1, v3}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isActive = false!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorDetectNotAvailable:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    .line 25
    :cond_8
    sget-object p0, Lcom/oplus/aiunit/core/utils/AILog;->INSTANCE:Lcom/oplus/aiunit/core/utils/AILog;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/utils/AILog;->getDebugMode()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/utils/AILog;->isDebugging()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 26
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". acquire = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {v4, p0}, Lcom/oplus/aiunit/core/utils/AILog;->printD(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_b
    invoke-interface {v0, p1}, Lcom/oplus/aiunit/core/IUnit;->process(Lcom/oplus/aiunit/core/FramePackage;)I

    move-result p0

    return p0
.end method

.method public release(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->getService()Lcom/oplus/aiunit/core/IService;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->release(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    new-instance v1, Lcom/oplus/aiunit/core/service/ServiceManager$removeConnectionCallback$1;

    invoke-direct {v1, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$removeConnectionCallback$1;-><init>(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    new-instance p1, Lcom/oplus/aiunit/core/service/i;

    invoke-direct {p1, v1}, Lcom/oplus/aiunit/core/service/i;-><init>(Lw8/l;)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->connectionCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ServiceManager"

    const-string v0, "remove: connectionCallbackList is empty, could destroy"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectStateCallback:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;

    invoke-direct {p1, p2}, Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;-><init>(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    new-instance p2, Lcom/oplus/aiunit/core/service/a;

    invoke-direct {p2, p1}, Lcom/oplus/aiunit/core/service/a;-><init>(Lw8/l;)V

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeUnit(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "detectName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager;->detectorMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeUnit: detectName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceManager"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
