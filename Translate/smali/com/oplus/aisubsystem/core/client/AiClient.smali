.class public abstract Lcom/oplus/aisubsystem/core/client/AiClient;
.super Lcom/oplus/aiunit/core/base/AIContext;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aisubsystem/core/client/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aisubsystem/core/client/AiClient$a;,
        Lcom/oplus/aisubsystem/core/client/AiClient$b;,
        Lcom/oplus/aisubsystem/core/client/AiClient$InferenceCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aisubsystem/core/client/AiClient$b;

.field private static final FRAME_TYPE_INPUT:Ljava/lang/String; = "input"

.field private static final FRAME_TYPE_OUTPUT:Ljava/lang/String; = "output"

.field private static final MAX_AWAIT_TIME:J = 0xbb8L

.field private static final PARAM_KEY_FRAME_TAG_GROUP:Ljava/lang/String; = "package::frame_tag_group"

.field private static final PARAM_KEY_JSON_RESULT:Ljava/lang/String; = "package::json_result"

.field private static final PARAM_KEY_JSON_SOURCE:Ljava/lang/String; = "package::json_source"

.field private static final PARAM_KEY_PROCESS_CANCELLING:Ljava/lang/String; = "package::process_cancelling"

.field private static final PARAM_KEY_STATISTICS:Ljava/lang/String; = "package::statistics"

.field private static final PROCESS_CANCEL_CALLBACK:Ljava/lang/String; = "process_cancel_callback"

.field private static final TAG:Ljava/lang/String; = "AiClient"


# instance fields
.field private final clientCallback$delegate:Ln8/j;

.field private final clientCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aisubsystem/core/client/AiClientCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionCallback$delegate:Ln8/j;

.field private final context:Landroid/content/Context;

.field private final framePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/core/FramePackage;",
            ">;"
        }
    .end annotation
.end field

.field private final inferenceCallback$delegate:Ln8/j;

.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final manager$delegate:Ln8/j;

.field private final oapApi:Ljava/lang/String;

.field private final settings:Lcom/oplus/aisubsystem/core/client/AiSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/aisubsystem/core/client/AiClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/aisubsystem/core/client/AiClient$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/aisubsystem/core/client/AiClient;->Companion:Lcom/oplus/aisubsystem/core/client/AiClient$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/aisubsystem/core/client/AiSettings;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oapApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/AIContext;-><init>()V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->settings:Lcom/oplus/aisubsystem/core/client/AiSettings;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/collection/a;

    invoke-direct {p1}, Landroidx/collection/a;-><init>()V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    sget-object p1, Lcom/oplus/aisubsystem/core/client/AiClient$g;->INSTANCE:Lcom/oplus/aisubsystem/core/client/AiClient$g;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->manager$delegate:Ln8/j;

    new-instance p1, Lcom/oplus/aisubsystem/core/client/AiClient$e;

    invoke-direct {p1, p0}, Lcom/oplus/aisubsystem/core/client/AiClient$e;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->connectionCallback$delegate:Ln8/j;

    new-instance p1, Lcom/oplus/aisubsystem/core/client/AiClient$d;

    invoke-direct {p1, p0}, Lcom/oplus/aisubsystem/core/client/AiClient$d;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallback$delegate:Ln8/j;

    new-instance p1, Lcom/oplus/aisubsystem/core/client/AiClient$f;

    invoke-direct {p1, p0}, Lcom/oplus/aisubsystem/core/client/AiClient$f;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->inferenceCallback$delegate:Ln8/j;

    return-void
.end method

.method private final a(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 5

    const-string v0, "addFramePackageCache: framePackageMap size = "

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    const-string v2, "package::request_id"

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    const-string v3, "package::request_id"

    invoke-virtual {v2, v3, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    const-string v4, "element"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "AiClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static final synthetic access$clearFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->d()V

    return-void
.end method

.method public static final synthetic access$getClientCallbackList$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getClientInferenceCallback(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)Lcom/oplus/aiunit/core/callback/IInferenceCallback;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->h(Ljava/lang/String;)Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFramePackageMap$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getInitLatch$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->m()V

    return-void
.end method

.method public static final synthetic access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isStarted$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isStopped$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$onInferenceCallback(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->n(Lcom/oplus/aiunit/core/FramePackage;)V

    return-void
.end method

.method public static final synthetic access$removeFramePackageCache(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->p(Ljava/lang/String;)V

    return-void
.end method

.method private final applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->getConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package::package_name"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMyAppVersion(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "package::package_version"

    invoke-virtual {v1, v2, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::sdk_version"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    sget-object v1, Lcom/oplus/aiunit/core/protocol/AIProtocol;->INSTANCE:Lcom/oplus/aiunit/core/protocol/AIProtocol;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getSdkName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::sdk_version_name"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "apply(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final b(Lcom/oplus/aiunit/core/base/FrameInputSlot;)Lcom/oplus/aiunit/core/FramePackage;
    .locals 2

    new-instance v0, Lcom/oplus/aisubsystem/core/client/AiClient$c;

    invoke-direct {v0, p0}, Lcom/oplus/aisubsystem/core/client/AiClient$c;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setProcessCallback(Lcom/oplus/aiunit/core/callback/IProcessCallback;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "some error occurs at input slot, with code "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AiClient"

    invoke-static {p1, p0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->applyFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-direct {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->i(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_1
    return-object v0
.end method

.method private final c(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/FramePackage;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-direct {p0, p2}, Lcom/oplus/aisubsystem/core/client/AiClient;->i(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    return-object p2

    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->b(Lcom/oplus/aiunit/core/base/FrameInputSlot;)Lcom/oplus/aiunit/core/FramePackage;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final e()Lcom/oplus/aisubsystem/core/client/AiClientCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallback$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    return-object p0
.end method

.method private final f(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 2

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object p0

    const-string v0, "package:client_messenger"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->getParamCallbackDirectly(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/callback/IAIMessenger;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private final g()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getClientConfigPackage$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->f(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getClientConfigPackage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getClientParamPackage$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/ParamPackage;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->i(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getClientParamPackage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final h(Ljava/lang/String;)Lcom/oplus/aiunit/core/callback/IInferenceCallback;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/FramePackage;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, p1

    :goto_0
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_1

    const-string p1, "package::client_inference_callback"

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamCallbackDirectly(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    :cond_1
    return-object p1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final i(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ParamPackage;
    .locals 3

    new-instance v0, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ParamPackage;-><init>()V

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->f(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::package_name"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/aiunit/core/utils/AIUtil;->getMyAppVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::package_version"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getClientProtocol()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::sdk_version"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/oplus/aiunit/core/protocol/AIProtocol;->INSTANCE:Lcom/oplus/aiunit/core/protocol/AIProtocol;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getSdkName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::sdk_version_name"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->g()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ai::key::detector_extras"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    const-string v2, "package::unit_name"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::client_pid"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::client_uid"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package::client_package_name"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "package::start_time"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->e()Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    move-result-object p0

    const-string v1, "package::unit_listener"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "package::config_package"

    invoke-virtual {v0, p0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParamParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static synthetic infer$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->infer(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: infer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final j()Lcom/oplus/aiunit/core/callback/ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->connectionCallback$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    return-object p0
.end method

.method private final k()Lcom/oplus/aiunit/core/callback/IInferenceCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->inferenceCallback$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    return-object p0
.end method

.method private final l()Lcom/oplus/aiunit/core/service/IServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->manager$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/service/IServiceManager;

    return-object p0
.end method

.method private final declared-synchronized m()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    sget-object v0, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->j()Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    move-result-object v2

    sget-object v3, Lz5/c;->INSTANCE:Lz5/c;

    invoke-virtual {v3}, Lz5/c;->d()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/aiunit/core/AIUnit$Companion;->init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->initLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initState: connect wait exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_2
    monitor-exit v0

    throw v1

    :cond_1
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState: isConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private final n(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 8

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    const-string v1, "package::request_id"

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lx5/c;->g:Lx5/c$b;

    invoke-virtual {v1}, Lx5/c$b;->a()Lx5/c;

    move-result-object v1

    invoke-virtual {v1}, Lx5/c;->c()Lkotlinx/coroutines/c0;

    move-result-object v2

    sget-object v1, Lkotlinx/coroutines/z;->e:Lkotlinx/coroutines/z$a;

    new-instance v3, Lcom/oplus/aisubsystem/core/client/AiClient$h;

    invoke-direct {v3, v1, p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient$h;-><init>(Lkotlinx/coroutines/z$a;Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;)V

    new-instance v5, Lcom/oplus/aisubsystem/core/client/AiClient$i;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v0, p1, v1}, Lcom/oplus/aisubsystem/core/client/AiClient$i;-><init>(Lcom/oplus/aisubsystem/core/client/AiClient;Ljava/lang/String;Lcom/oplus/aiunit/core/FramePackage;Lkotlin/coroutines/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final o(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 6

    const-string v0, "processInner: need to retry process, code = "

    const-string v1, "processInner: code = "

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v2

    sget-object v3, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    const-string v4, "AiClient"

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "processInner: existing error occurred already, code = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->process(Lcom/oplus/aiunit/core/FramePackage;)I

    move-result v2

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string v3, "ai::key::process_retry"

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/FramePackage;->getParamInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->process(Lcom/oplus/aiunit/core/FramePackage;)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processInner: remote dead = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorRemoteDead:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    :goto_2
    return-void
.end method

.method private final p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->framePackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/FramePackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic process$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: process"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final q(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->getSettings()Lcom/oplus/aisubsystem/core/client/AiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getRunningType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "package::running_type"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->getSettings()Lcom/oplus/aisubsystem/core/client/AiSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiSettings;->getRunningId()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "package::running_id"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic runConnectedAction$default(Lcom/oplus/aisubsystem/core/client/AiClient;ZLw8/a;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "AiClient"

    if-nez p4, :cond_5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p3, 0x0

    :try_start_0
    sget-object p4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p4, "runAction failed with exception: "

    invoke-static {v0, p4, p2}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move-object p3, p0

    :goto_4
    return-object p3

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: runConnectedAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            ">()TI;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/aiunit/core/base/FrameInputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/base/FrameInputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">()TO;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/oplus/aisubsystem/core/client/b$a;->a(Lcom/oplus/aisubsystem/core/client/b;Lcom/oplus/aiunit/core/ParamPackage;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getOapApi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    return-object p0
.end method

.method public getRunningInfo()Landroid/os/Bundle;
    .locals 9

    const-string v0, "AiClient"

    const-string v1, "getRunningInfo: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v4, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "runAction failed with exception: "

    invoke-static {v0, v3, v1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p0

    :goto_3
    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    return-object v2
.end method

.method public getRunningType()I
    .locals 9

    const-string v0, "AiClient"

    const-string v1, "getRunningType: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v4, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnstableRunningInfo$default(Lcom/oplus/aiunit/core/AIUnit$Companion;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "ai::key::detect_data_run_type"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "runAction failed with exception: "

    invoke-static {v0, v3, v1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p0

    :goto_3
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4

    :cond_3
    const/4 p0, -0x1

    :goto_4
    return p0
.end method

.method public getSettings()Lcom/oplus/aisubsystem/core/client/AiSettings;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->settings:Lcom/oplus/aisubsystem/core/client/AiSettings;

    return-object p0
.end method

.method public getUnitState()I
    .locals 5

    const-string v0, "AiClient"

    const-string v1, "getUnitState: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v3, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->g()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v3, v4, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "runAction failed with exception: "

    invoke-static {v0, v3, v1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p0

    :goto_3
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method public infer(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 8

    .line 1
    const-string v0, "AiClient"

    const-string v1, "infer: ParamPackage extra param = "

    const-string v2, "infer: costTime = "

    const-string v3, "infer: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    :try_start_0
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->i(Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v5

    const-string v6, "package::inference_callback"

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->k()Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->a(Lcom/oplus/aiunit/core/FramePackage;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/ParamPackage;->getParamExtra()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->infer(Lcom/oplus/aiunit/core/FramePackage;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "runAction failed with exception: "

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    return-void
.end method

.method public final infer(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">(TI;TO;",
            "Lcom/oplus/aiunit/core/FramePackage;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "AiClient"

    const-string v1, "infer: costTime = "

    const-string v2, "infer: runAction for "

    const-string v3, "inputSlot"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outputSlot"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->c(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/FramePackage;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "package::inference_callback"

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->k()Lcom/oplus/aiunit/core/callback/IInferenceCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->preProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-direct {p0, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->a(Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/oplus/aiunit/core/service/IServiceManager;->infer(Lcom/oplus/aiunit/core/FramePackage;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "runAction failed with exception: "

    invoke-static {v0, p2, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActive()Z
    .locals 4

    const-string v0, "AiClient"

    const-string v1, "isActive: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v1, v2}, Lcom/oplus/aisubsystem/core/client/AiClient;->getClientParamPackage$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/oplus/aiunit/core/service/IServiceManager;->isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "runAction failed with exception: "

    invoke-static {v0, v3, v1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p0

    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method public isSupported()Z
    .locals 5

    const-string v0, "AiClient"

    const-string v1, "isSupported: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    iget-object v3, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->g()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v3, v4, p0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "runAction failed with exception: "

    invoke-static {v0, v3, v1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, p0

    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_3
    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method public postProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 7

    const-string v0, "inputSlot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputSlot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "framePackage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AiClient"

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->readInOutBigDataFromShareMemory()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postProcess: read some data from share memory = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    invoke-virtual {p2, p3}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->setFramePackage(Lcom/oplus/aiunit/core/FramePackage;)V

    const-string p0, "package::json_result"

    invoke-virtual {p3, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->setJsonResult(Ljava/lang/String;)V

    const-string p0, "package::statistics"

    invoke-virtual {p3, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->setStatistics(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->clearBitmaps()V

    const-string p0, "package::frame_tag_group"

    invoke-virtual {p3, p0}, Lcom/oplus/aiunit/core/FramePackage;->getParamStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getOutputTags(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "postProcess: invalid frame tag for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :try_start_1
    invoke-virtual {p2, v2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v4

    if-nez v4, :cond_2

    const-string p0, "postProcess: invalid src unit after process"

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getFragments()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    new-instance v6, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-direct {v6, v4, v5}, Lcom/oplus/aiunit/core/FrameUnit;-><init>(Lcom/oplus/aiunit/core/FrameUnit;Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;)V

    invoke-virtual {p2, v6}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->convertBitmap(Lcom/oplus/aiunit/core/FrameUnit;)V

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->packageOrder:Ljava/lang/Integer;

    const-string v5, "packageOrder"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "postProcess: invalid dest unit after process"

    invoke-static {v0, v3}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3}, Lcom/oplus/aiunit/core/FrameUnit;->move(Lcom/oplus/aiunit/core/FrameUnit;)V

    invoke-virtual {p2, v4}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->convertBitmap(Lcom/oplus/aiunit/core/FrameUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    throw p0
.end method

.method public preProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 11

    const-string v0, "inputSlot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputSlot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "framePackage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preProcess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AiClient"

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getJsonSource()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "preProcess: jsonSource = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package::json_source"

    invoke-virtual {p3, v1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preProcess: frame list size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_5

    invoke-virtual {p1, v3}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/oplus/aiunit/core/FrameUnit;->isFragment()Z

    move-result v5

    const-string v6, "input"

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/FrameUnit;->isFragmentParent()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p3, v3, v4}, Lcom/oplus/aiunit/core/FramePackage;->setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V

    new-instance v5, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v7, v8, v6, v4}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Lcom/oplus/aiunit/core/base/FrameSlot;->findFragmentParent(Lcom/oplus/aiunit/core/FrameUnit;)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/oplus/aiunit/core/base/FrameSlot;->findFragmentChildList(Lcom/oplus/aiunit/core/FrameUnit;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnitList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v3, v5}, Lcom/oplus/aiunit/core/FramePackage;->setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v9}, Lcom/oplus/aiunit/core/FrameUnit;->getData()[B

    move-result-object v10

    invoke-virtual {v5, v10, v8}, Lcom/oplus/aiunit/core/FrameUnit;->setData([BI)V

    invoke-virtual {v7, v9, v8}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->addChildFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;I)V

    invoke-virtual {v9}, Lcom/oplus/aiunit/core/FrameUnit;->getFrameSize()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnitList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p1

    :goto_3
    if-ge v2, p1, :cond_7

    invoke-virtual {p2, v2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-eqz v3, :cond_6

    add-int v4, p0, v2

    invoke-virtual {p3, v4, v3}, Lcom/oplus/aiunit/core/FramePackage;->setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V

    new-instance v5, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v7, "output"

    invoke-direct {v5, v4, v6, v7, v3}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "output frame index "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorParamLengthMismatch:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p3, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    return-void

    :cond_7
    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->listToJson(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "package::frame_tag_group"

    invoke-virtual {p3, p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->moveInOutBigDataToShareMemory()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preProcess: move some data to share memory = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 4

    const-string v0, "AiClient"

    const-string v1, "prepare: costTime = "

    const-string v2, "prepare: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->prepare(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "runAction failed with exception: "

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    return-void
.end method

.method public final process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">(TI;TO;)I"
        }
    .end annotation

    .line 1
    const-string v0, "inputSlot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputSlot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)I

    move-result p0

    return p0
.end method

.method public final process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">(TI;TO;",
            "Lcom/oplus/aiunit/core/FramePackage;",
            ")I"
        }
    .end annotation

    .line 2
    const-string v0, "AiClient"

    const-string v1, "process: costTime = "

    const-string v2, "infer: runProcess for "

    const-string v3, "inputSlot"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outputSlot"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, p1, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->c(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/FramePackage;)Lcom/oplus/aiunit/core/FramePackage;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->preProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-direct {p0, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->o(Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/aisubsystem/core/client/AiClient;->postProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v2

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_0
    if-nez p0, :cond_3

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidParam:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    :cond_2
    throw p0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "runAction failed with exception: "

    invoke-static {v0, p2, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move-object v3, p0

    :goto_6
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_7

    :cond_7
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    :goto_7
    return p0
.end method

.method public process(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/oplus/aisubsystem/core/client/AiClient;->infer(Lcom/oplus/aiunit/core/FramePackage;)V

    return-void
.end method

.method public registerUnitStatus(Lcom/oplus/aisubsystem/core/client/AiClientCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 4

    const-string v0, "AiClient"

    const-string v1, "release: costTime = "

    const-string v2, "release: runAction for "

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$initState(Lcom/oplus/aisubsystem/core/client/AiClient;)V

    invoke-static {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->access$isConnected$p(Lcom/oplus/aisubsystem/core/client/AiClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz5/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->l()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->release(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    :goto_0
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "runAction failed with exception: "

    invoke-static {v0, v1, p1}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restoreFrameUnit(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 4

    const-string p0, "inputSlot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outputSlot"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "framePackage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p0

    sget-object v0, Lz5/c;->INSTANCE:Lz5/c;

    invoke-virtual {v0}, Lz5/c;->f()Z

    move-result v1

    const-string v2, "AiClient"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lz5/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restoreFrameUnit: inputFrameListSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lz5/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v3}, Lcom/oplus/aiunit/core/FramePackage;->restoreParcelableFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p0

    sget-object p1, Lz5/c;->INSTANCE:Lz5/c;

    invoke-virtual {p1}, Lz5/c;->f()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lz5/c;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "restoreFrameUnit: outputFrameListSize = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lz5/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    if-ge v0, p0, :cond_7

    invoke-virtual {p2, v0}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p3, p1}, Lcom/oplus/aiunit/core/FramePackage;->restoreParcelableFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final runAction(Lcom/oplus/aisubsystem/core/client/AiClient$a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/aisubsystem/core/client/AiClient$a;",
            ")TR;"
        }
    .end annotation

    const-string v0, "AiClient"

    const-string v1, "runAction: "

    const-string v2, "action"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->m()V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "runAction failed: service not connected!"

    invoke-static {v0, p0}, Lz5/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    const-string v1, "service not connected"

    invoke-interface {p1, p0, v1}, Lcom/oplus/aisubsystem/core/client/AiClient$a;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/oplus/aisubsystem/core/client/AiClient$a;->run()Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cost time "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :goto_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "runAction failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/oplus/aisubsystem/core/client/AiClient$a;->failure(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "runAction"

    invoke-static {v0, p1, p0}, Lz5/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public start(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 4

    iget-object v0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "AiClient"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start: need to start "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lcom/oplus/aisubsystem/core/client/AiClient;->getClientParamPackage$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->q(Lcom/oplus/aiunit/core/ParamPackage;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->prepare(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start: costTime = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "start: has been started!"

    invoke-static {v1, p1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->e()Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onStart()V

    :goto_0
    return-void
.end method

.method public stop(Lcom/oplus/aiunit/core/ParamPackage;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop: oap api = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->oapApi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiClient"

    invoke-static {v1, v0}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->getClientParamPackage$default(Lcom/oplus/aisubsystem/core/client/AiClient;Lcom/oplus/aiunit/core/FramePackage;ILjava/lang/Object;)Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->q(Lcom/oplus/aiunit/core/ParamPackage;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcom/oplus/aisubsystem/core/client/AiClient;->release(Lcom/oplus/aiunit/core/ParamPackage;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "stop: costTime = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lz5/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/aiunit/core/AIUnit;->Companion:Lcom/oplus/aiunit/core/AIUnit$Companion;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->j()Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/AIUnit$Companion;->remove(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/AiClient;->e()Lcom/oplus/aisubsystem/core/client/AiClientCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/aisubsystem/core/client/AiClientCallback;->onStop()V

    iget-object p1, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public unregisterUnitStatus(Lcom/oplus/aisubsystem/core/client/AiClientCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aisubsystem/core/client/AiClient;->clientCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
