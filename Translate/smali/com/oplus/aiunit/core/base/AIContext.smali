.class public abstract Lcom/oplus/aiunit/core/base/AIContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_USAGE:Ljava/lang/String; = "3_0_0"

.field private static final TAG:Ljava/lang/String; = "AIDetectorContext"


# instance fields
.field private mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

.field private mMemoryPool:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mMemoryPool:[I

    return-void
.end method


# virtual methods
.method public declared-synchronized applyFramePackage()Lcom/oplus/aiunit/core/FramePackage;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-nez v0, :cond_0

    const-string v0, "AIDetectorContext"

    const-string v1, "config package is null when applying package."

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/oplus/aiunit/core/FramePackage;

    iget-object v1, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/ConfigPackage;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/aiunit/core/FramePackage;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized applyFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "AIDetectorContext"

    const-string v0, "config package is null when applying frame unit"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/ConfigPackage;->applyShareMemoryHolder(I)Lcom/oplus/aiunit/core/ShareMemoryHolder;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "AIDetectorContext"

    const-string v0, "share memory holder apply failed."

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v0, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-direct {v0, p1}, Lcom/oplus/aiunit/core/FrameUnit;-><init>(Lcom/oplus/aiunit/core/ShareMemoryHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public checkMainThread()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The call must be in a worker thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized createConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-eqz v0, :cond_0

    const-string v0, "AIDetectorContext"

    const-string v1, "createConfigPackage destroy last"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->destroyConfigPackage()Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-direct {v0}, Lcom/oplus/aiunit/core/ConfigPackage;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/base/AIContext;->getConfigMemoryPool()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/aiunit/core/ConfigPackage;->allocateShareMemoryByFlagList([I)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized destroyConfigPackage()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AIDetectorContext"

    const-string v1, "destroyConfigPackage"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-nez v0, :cond_0

    const-string v0, "AIDetectorContext"

    const-string v1, "config package is null when destroying package"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->cleanSharedMemoryHolder()V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized freeAllShareMemoryHolder()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-nez v0, :cond_0

    const-string v0, "AIDetectorContext"

    const-string v1, "config package is null when free AllShareMemoryHolder"

    invoke-static {v0, v1}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/oplus/aiunit/core/ConfigPackage;->freeAllShareMemoryHolder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized freeFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-nez v0, :cond_0

    const-string p1, "AIDetectorContext"

    const-string v0, "config package is null when free frame unit"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "AIDetectorContext"

    const-string v0, "frame unit is null when free frame unit"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/oplus/aiunit/core/FrameUnit;->clear(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/ConfigPackage;->freeShareMemoryHolder(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized freeShareMemoryHolder(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;

    if-nez v0, :cond_0

    const-string p1, "AIDetectorContext"

    const-string v0, "config package is null when free ShareMemoryHolder"

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/oplus/aiunit/core/ConfigPackage;->freeShareMemoryHolder(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getConfigMemoryPool()[I
    .locals 1

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mMemoryPool:[I

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x400

    const/16 v0, 0xc00

    filled-new-array {p0, p0, v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getConfigPackage()Lcom/oplus/aiunit/core/ConfigPackage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/AIContext;->mConfigPackage:Lcom/oplus/aiunit/core/ConfigPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract process(Lcom/oplus/aiunit/core/FramePackage;)V
.end method

.method public setConfigMemoryPool([I)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/AIContext;->mMemoryPool:[I

    return-void
.end method
