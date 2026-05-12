.class public abstract Lcom/oplus/aiunit/core/base/FrameDetector;
.super Lcom/oplus/aiunit/core/base/AIContext;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/base/AIDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
        "O:",
        "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
        ">",
        "Lcom/oplus/aiunit/core/base/AIContext;",
        "Lcom/oplus/aiunit/core/base/AIDetector<",
        "TI;TO;>;"
    }
.end annotation


# static fields
.field private static final IPC_NAME_CANCEL:Ljava/lang/String; = "process_cancel_callback"

.field private static final MAX_THREAD_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FrameDetector"

.field protected static volatile mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDetectName:Ljava/lang/String;

.field private final mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

.field private final mIpcCancel:Lcom/oplus/aiunit/core/callback/IProcessCallback;

.field private mMessenger:Lcom/oplus/aiunit/core/callback/IAIMessenger;

.field protected mParameters:Lcom/oplus/aiunit/core/data/Parameters;

.field private final mProcessCancelling:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

.field private final mStateCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/callback/DetectStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/AIContext;-><init>()V

    invoke-static {}, Lcom/oplus/aiunit/core/service/IServiceManager;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    new-instance v0, Lcom/oplus/aiunit/core/base/FrameDetector$1;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/base/FrameDetector$1;-><init>(Lcom/oplus/aiunit/core/base/FrameDetector;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mMessenger:Lcom/oplus/aiunit/core/callback/IAIMessenger;

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    new-instance v0, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;

    const-string v1, "process_cancel_callback"

    invoke-direct {v0, p0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector$InnerProcessCallback;-><init>(Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mIpcCancel:Lcom/oplus/aiunit/core/callback/IProcessCallback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mProcessCancelling:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "<init> "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameDetector"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;->lambda$applyFramePackage$2(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/aiunit/core/base/FrameDetector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/aiunit/core/base/FrameDetector;)I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->stopInternal()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/aiunit/core/base/FrameDetector;Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;->doIPC(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/oplus/aiunit/core/base/FrameDetector;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;->lambda$processAsync$0(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/aiunit/core/ParamPackage;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/aiunit/core/base/FrameDetector;->lambda$createConfigPackage$1(Lcom/oplus/aiunit/core/ParamPackage;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/aiunit/core/base/FrameDetector;)I
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->stopInternal()I

    move-result p0

    return p0
.end method

.method private doIPC(Ljava/lang/String;Lcom/oplus/aiunit/core/ParamPackage;)I
    .locals 2

    const-string v0, "process_cancel_callback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mProcessCancelling:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doIPC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameDetector"

    invoke-static {v0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "package::process_cancelling"

    invoke-virtual {p2, p1, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic e(Lcom/oplus/aiunit/core/base/FrameDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->lambda$startDetectAsync$3()V

    return-void
.end method

.method private static synthetic lambda$applyFramePackage$2(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createConfigPackage$1(Lcom/oplus/aiunit/core/ParamPackage;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processAsync$0(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createOutputSlot()Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/oplus/aiunit/core/callback/ProcessCallback;->onResult(Lcom/oplus/aiunit/core/base/FrameOutputSlot;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startDetectAsync$3()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->startDetectInternal(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    return-void
.end method

.method private removeInnerCallback()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-interface {v0, v1, p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->removeStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeInnerCallback "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameDetector"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDetectInternal(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDetectInternal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oplus/aiunit/toolkits/AISettings;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/DetectData;->isSupport()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/data/DetectData;->getState()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start remote not support for state = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/aiunit/core/data/UnitState;->toErrorCode(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    invoke-virtual {v3}, Lcom/oplus/aiunit/core/data/Parameters;->applyParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-interface {v2, v0, p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->driveAndAttach(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "start remote failed."

    invoke-static {v1, p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method

.method private startDetectInternalWithConfig(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-interface {v1, v0, p0, p1}, Lcom/oplus/aiunit/core/service/IServiceManager;->driveAndAttach(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "startDetectInternalWithConfig "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameDetector"

    invoke-static {p1, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorProcessFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method

.method private stopInternal()I
    .locals 5

    const-string v0, "stopInternal RemoteException "

    const-string v1, "stopInternal"

    const-string v2, "FrameDetector"

    invoke-static {v2, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mProcessCancelling:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->destroyConfigPackage()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/oplus/aiunit/core/service/IServiceManager;->detach(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeInnerCallback()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeInnerCallback()V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorInvalidServiceState:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0

    :goto_0
    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->removeInnerCallback()V

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 2

    invoke-super {p0}, Lcom/oplus/aiunit/core/base/AIContext;->getConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FrameDetector"

    const-string v1, "applyConfigPackage: need to recreate config package"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/Parameters;->applyParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/core/ParamPackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    :cond_0
    return-object v0
.end method

.method public applyFramePackage()Lcom/oplus/aiunit/core/FramePackage;
    .locals 4

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->applyConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-super {p0}, Lcom/oplus/aiunit/core/base/AIContext;->applyFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/oplus/aiunit/core/base/c;

    invoke-direct {v3, v0, v1}, Lcom/oplus/aiunit/core/base/c;-><init>(Lcom/oplus/aiunit/core/FramePackage;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/aiunit/core/ParamPackage;->setDetectorExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package::unit_api_level"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    const-string v1, "package::unit_name"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public checkActive()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->isStarted(Ljava/lang/String;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkActive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public clearCallbacks()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createConfigPackage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oplus/aiunit/core/base/AIContext;->createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/oplus/aiunit/core/base/d;

    invoke-direct {v4, v2, v1}, Lcom/oplus/aiunit/core/base/d;-><init>(Lcom/oplus/aiunit/core/ParamPackage;Landroid/os/Bundle;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setDetectorExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "package::unit_api_level"

    invoke-virtual {v2, v3, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    const-string v3, "package::unit_name"

    invoke-virtual {v2, v3, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    const-string v3, "package::detect_name"

    invoke-virtual {v2, v3, v1}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mMessenger:Lcom/oplus/aiunit/core/callback/IAIMessenger;

    if-eqz p0, :cond_0

    const-string v1, "package:client_messenger"

    invoke-virtual {v2, v1, p0}, Lcom/oplus/aiunit/core/ParamPackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public createInputSlot()Lcom/oplus/aiunit/core/base/FrameInputSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
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
            "()TO;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/aiunit/core/base/FrameOutputSlot;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;-><init>(Lcom/oplus/aiunit/core/base/AIContext;)V

    return-object v0
.end method

.method public getApiLevel()I
    .locals 0

    const/16 p0, 0xcb

    return p0
.end method

.method public getDetectData()Lcom/oplus/aiunit/core/data/DetectData;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/core/AIUnit;->getDetectData(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/aiunit/core/data/DetectData;

    move-result-object p0

    return-object p0
.end method

.method public getDetectorState()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/core/AIUnit;->getUnitState(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez p0, :cond_1

    const-class p0, Lcom/oplus/aiunit/core/base/FrameDetector;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oplus/aiunit/core/base/FrameDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/base/FrameDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/aiunit/core/protocol/AIProtocol;->getExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getApiLevel()I

    move-result p0

    const-string v1, "package::unit_api_level"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Lcom/oplus/aiunit/core/data/Parameters;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/data/Parameters;->clone()Lcom/oplus/aiunit/core/data/Parameters;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnstableRunningInfo()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/core/AIUnit;->getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getUnstableRunningType()I
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/AIUnit;->getUnstableRunningInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "ai::key::detect_data_run_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/core/AIUnit;->isDetectSupported(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSupported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameDetector"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public postProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 6

    const-string p0, "postProcess"

    const-string v0, "FrameDetector"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->readInOutBigDataFromShareMemory()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postProcess read some data from share memory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    if-nez v2, :cond_0

    const-string p0, "invalid frame tag."

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "invalid src unit after process"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;

    new-instance v5, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-direct {v5, v3, v4}, Lcom/oplus/aiunit/core/FrameUnit;-><init>(Lcom/oplus/aiunit/core/FrameUnit;Lcom/oplus/aiunit/core/protocol/common/FrameTag$FrameFragment;)V

    invoke-virtual {p2, v5}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->convertBitmap(Lcom/oplus/aiunit/core/FrameUnit;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;->getPackageOrder()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "invalid dst unit after process"

    invoke-static {v0, v2}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Lcom/oplus/aiunit/core/FrameUnit;->move(Lcom/oplus/aiunit/core/FrameUnit;)V

    invoke-virtual {p2, v3}, Lcom/oplus/aiunit/core/base/FrameOutputSlot;->convertBitmap(Lcom/oplus/aiunit/core/FrameUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-void

    :goto_3
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    throw p0
.end method

.method public preProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 11

    const-string p0, "preProcess"

    const-string v0, "FrameDetector"

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getJsonSource()Ljava/lang/String;

    move-result-object p0

    const-string v1, "package::json_source"

    invoke-virtual {p3, v1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frame list size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :cond_0
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

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Lcom/oplus/aiunit/core/base/FrameSlot;->findFragmentParent(Lcom/oplus/aiunit/core/FrameUnit;)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/oplus/aiunit/core/base/FrameSlot;->findFragmentChildList(Lcom/oplus/aiunit/core/FrameUnit;)Ljava/util/List;

    move-result-object v4

    if-eqz v5, :cond_0

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
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

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v3, v5}, Lcom/oplus/aiunit/core/FramePackage;->setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

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

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/oplus/aiunit/core/FramePackage;->getFrameUnitList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_2
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameListSize()I

    move-result p1

    if-ge v2, p1, :cond_7

    invoke-virtual {p2, v2}, Lcom/oplus/aiunit/core/base/FrameSlot;->getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;

    move-result-object p1

    if-eqz p1, :cond_6

    add-int v3, p0, v2

    invoke-virtual {p3, v3, p1}, Lcom/oplus/aiunit/core/FramePackage;->setFrameUnit(ILcom/oplus/aiunit/core/FrameUnit;)V

    new-instance v4, Lcom/oplus/aiunit/core/protocol/common/FrameTag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v6, "output"

    invoke-direct {v4, v3, v5, v6, p1}, Lcom/oplus/aiunit/core/protocol/common/FrameTag;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "output frame index "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string p2, "preProcess move some data to share memory "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public process(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)",
            "Lcom/oplus/aiunit/core/protocol/common/ErrorCode;"
        }
    .end annotation

    const-string v0, "FrameDetector"

    const-string v1, "process: errorCode = "

    const-string v2, "some error occurs at input slot,with code "

    const-string v3, "process failed. "

    .line 1
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 3
    :try_start_0
    iget-object v7, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mIpcCancel:Lcom/oplus/aiunit/core/callback/IProcessCallback;

    invoke-virtual {p1, v7}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->setProcessCallback(Lcom/oplus/aiunit/core/callback/IProcessCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->getConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->checkActive()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    .line 6
    :cond_0
    :goto_0
    const-string v7, "process start first"

    invoke-static {v0, v7}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v7, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-direct {p0, v7}, Lcom/oplus/aiunit/core/base/FrameDetector;->startDetectInternalWithConfig(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    move-result v7

    .line 8
    sget-object v8, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v8}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 9
    invoke-static {v7}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 11
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-object p0

    .line 12
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v7

    .line 13
    sget-object v8, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    if-eq v7, v8, :cond_2

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 16
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    return-object v7

    .line 17
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->applyFramePackage()Lcom/oplus/aiunit/core/FramePackage;

    move-result-object v6

    if-nez v6, :cond_4

    .line 18
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNotReady:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 20
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    :cond_3
    return-object p0

    .line 22
    :cond_4
    :try_start_3
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->getParamPackage()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v2}, Lcom/oplus/aiunit/core/data/Parameters;->applyParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameInputSlot;->getCustomParam()Lcom/oplus/aiunit/core/ParamPackage;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/oplus/aiunit/core/FramePackage;->mergeParam(Lcom/oplus/aiunit/core/ParamPackage;)V

    .line 25
    invoke-virtual {p0, p1, p2, v6}, Lcom/oplus/aiunit/core/base/FrameDetector;->preProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    .line 26
    invoke-virtual {p0, v6}, Lcom/oplus/aiunit/core/base/FrameDetector;->process(Lcom/oplus/aiunit/core/FramePackage;)V

    .line 27
    invoke-virtual {p0, p1, p2, v6}, Lcom/oplus/aiunit/core/base/FrameDetector;->postProcess(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/base/FrameOutputSlot;Lcom/oplus/aiunit/core/FramePackage;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 29
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cost time = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 32
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 33
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    return-object p0

    .line 34
    :goto_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 36
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    if-eqz v6, :cond_6

    .line 37
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    .line 38
    :cond_6
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    return-object p0

    .line 39
    :goto_2
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    .line 40
    invoke-virtual {p2}, Lcom/oplus/aiunit/core/base/FrameSlot;->cleanAutoFrameUnit()V

    if-eqz v6, :cond_7

    .line 41
    invoke-virtual {v6}, Lcom/oplus/aiunit/core/FramePackage;->clearJsonMemory()V

    .line 42
    :cond_7
    throw p0
.end method

.method public process(Lcom/oplus/aiunit/core/FramePackage;)V
    .locals 8

    const-string v0, "process retry but start fail for "

    const-string v1, "process retry and start because "

    const-string v2, "process code = "

    .line 43
    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    const-string v5, "FrameDetector"

    if-eq v3, v4, :cond_0

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "existing error occurred already,"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FramePackage;->getErrorCode()Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mProcessCancelling:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 46
    iget-object v3, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p1, v6}, Lcom/oplus/aiunit/core/service/IServiceManager;->process(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/String;)I

    move-result v3

    .line 47
    invoke-virtual {v4}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v6

    if-eq v3, v6, :cond_3

    .line 48
    const-string v6, "ai::key::process_retry"

    invoke-virtual {p1, v6}, Lcom/oplus/aiunit/core/FramePackage;->getParamInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oplus/aiunit/core/utils/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-direct {p0, v1}, Lcom/oplus/aiunit/core/base/FrameDetector;->startDetectInternalWithConfig(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    move-result v1

    .line 51
    invoke-virtual {v4}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 52
    invoke-static {v1}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->process(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v3}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->find(I)Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    .line 56
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 57
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process remote failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorRemoteDead:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/oplus/aiunit/core/FramePackage;->setErrorCode(Lcom/oplus/aiunit/core/protocol/common/ErrorCode;)V

    :goto_2
    return-void
.end method

.method public processAsync(Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/oplus/aiunit/core/callback/ProcessCallback<",
            "TO;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/core/base/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/aiunit/core/base/b;-><init>(Lcom/oplus/aiunit/core/base/FrameDetector;Lcom/oplus/aiunit/core/base/FrameInputSlot;Lcom/oplus/aiunit/core/callback/ProcessCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public query()Lcom/oplus/aiunit/core/data/DetectInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/aiunit/core/AIUnit;->queryDetectInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/aiunit/core/data/DetectInfo;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mStateCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUnit()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mServiceManager:Lcom/oplus/aiunit/core/service/IServiceManager;

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/oplus/aiunit/core/service/IServiceManager;->removeUnit(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setDetectStateCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->addCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorNone:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result p0

    return p0
.end method

.method public setMessenger(Lcom/oplus/aiunit/core/callback/IAIMessenger;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mMessenger:Lcom/oplus/aiunit/core/callback/IAIMessenger;

    return-void
.end method

.method public setParameters(Lcom/oplus/aiunit/core/data/Parameters;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mParameters:Lcom/oplus/aiunit/core/data/Parameters;

    return-void
.end method

.method public start()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mInnerStateCallback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    invoke-direct {p0, v0}, Lcom/oplus/aiunit/core/base/FrameDetector;->startDetectInternal(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I

    move-result p0

    return p0
.end method

.method public startDetectAsync(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startDetectAsync "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/FrameDetector;->mDetectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameDetector"

    invoke-static {v1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/base/FrameDetector;->addCallback(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/oplus/aiunit/core/base/a;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/base/a;-><init>(Lcom/oplus/aiunit/core/base/FrameDetector;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()I
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->checkMainThread()V

    invoke-direct {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->stopInternal()I

    move-result p0

    return p0
.end method

.method public stopAsync()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/FrameDetector;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/aiunit/core/base/e;

    invoke-direct {v1, p0}, Lcom/oplus/aiunit/core/base/e;-><init>(Lcom/oplus/aiunit/core/base/FrameDetector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
