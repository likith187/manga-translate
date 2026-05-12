.class public Lcom/oplus/vfxsdk/naive/coe/engine/Pass;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# instance fields
.field private a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 8

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->b:Ljava/lang/ref/WeakReference;

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

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeInit(JLjava/lang/String;Ljava/lang/String;ZILcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

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

.method private static native nativeInit(JLjava/lang/String;Ljava/lang/String;ZILcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)J
.end method

.method private static native nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V
.end method

.method private static native nativeSetRenderTexture(JJJ)V
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->setBlendDstFactorAlpha(I)V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->setBlendSrcFactorAlpha(I)V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->setBlendEnable(Z)V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e(Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;)V
    .locals 8

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckEngine()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-wide v4, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v6, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static/range {v2 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderTexture(JJJ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v5, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderTexture(JJJ)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBlendDstFactor(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->setBlendDstFactor(I)V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBlendSrcFactor(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;->setBlendSrcFactor(I)V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->a:Lcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;

    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->nativeSetRenderState(JLcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs setParameter(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->b:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

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
