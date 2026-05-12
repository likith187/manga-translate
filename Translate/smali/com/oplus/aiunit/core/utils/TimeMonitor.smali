.class public Lcom/oplus/aiunit/core/utils/TimeMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile duration:J

.field private volatile startTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/oplus/aiunit/core/utils/TimeMonitor;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oplus/aiunit/core/utils/TimeMonitor;->start()J

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/aiunit/core/utils/TimeMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->duration:J

    return-wide v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->startTime:J

    return-wide v0
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->duration:J

    return-void
.end method

.method public final declared-synchronized start()J
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->duration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->startTime:J

    iget-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->startTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stop()J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->startTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->duration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final time()J
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/utils/TimeMonitor;->stop()J

    iget-wide v0, p0, Lcom/oplus/aiunit/core/utils/TimeMonitor;->duration:J

    return-wide v0
.end method
