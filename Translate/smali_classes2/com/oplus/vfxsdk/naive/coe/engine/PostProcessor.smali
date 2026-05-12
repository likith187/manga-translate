.class public Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:[F


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 3

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->b:Ljava/lang/Boolean;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->c:[F

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v1, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->nativeInit(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setNativeObjectLocked(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native nativeAddEffect(JLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/Material;J)V
.end method

.method private static native nativeInit(J)J
.end method

.method private static native nativeSetBatchEnabled(JZ)V
.end method

.method private static native nativeSetStandalone(JZ)V
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
    .locals 8

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v6, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->nativeAddEffect(JLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/Material;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->nativeSetBatchEnabled(JZ)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->a:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->nativeSetStandalone(JZ)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->b:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
