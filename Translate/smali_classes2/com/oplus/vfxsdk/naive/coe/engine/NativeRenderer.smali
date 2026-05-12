.class public Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

.field private d:Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

.field private e:Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

.field private f:Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

.field private g:Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V
    .locals 4

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f:Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    iput-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g:Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v2, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v2, v3, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeInit(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setNativeObjectLocked(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->k(Z)V

    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p1, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->m(Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V

    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-direct {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Transform;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->p(Lcom/oplus/vfxsdk/naive/coe/engine/Transform;)V

    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-direct {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->l(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V

    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->a:I

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static native nativeAddComponent(JJ)V
.end method

.method private static native nativeAddParticleEffect(JJ)V
.end method

.method private static native nativeEnable(JZ)V
.end method

.method private static native nativeInit(JI)J
.end method

.method private static native nativeRemoveComponent(JJ)V
.end method

.method private static native nativeSetMaterial(JJ)V
.end method

.method private static native nativeSetMesh(JJ)V
.end method

.method private static native nativeSetParticleEmitter(JJ)V
.end method

.method private static native nativeSetPostProcessor(JJ)V
.end method

.method private static native nativeSetSortingOrder(JI)V
.end method

.method private static native nativeSetTransform(JJ)V
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-wide p0, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeAddComponent(JJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEffect;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v0, v0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-wide v2, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeAddParticleEffect(JJ)V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->d(Z)V

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

.method public d()Lcom/oplus/vfxsdk/naive/coe/engine/Material;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    return-object p0
.end method

.method public e()Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d:Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    return-object p0
.end method

.method public enableBlend(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c(IZ)V

    return-void
.end method

.method public f()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f:Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    return-object p0
.end method

.method public g()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->e:Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    return-object p0
.end method

.method public h(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-wide p0, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeRemoveComponent(JJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i(II)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setBlendDstFactor(I)V

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

.method public j(II)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->f(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setBlendSrcFactor(I)V

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

.method public k(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeEnable(JZ)V

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->b:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public l(Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetMaterial(JJ)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public m(Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetMesh(JJ)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->d:Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public n(Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetParticleEmitter(JJ)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g:Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public o(Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetPostProcessor(JJ)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f:Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public p(Lcom/oplus/vfxsdk/naive/coe/engine/Transform;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-wide v5, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetTransform(JJ)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->e:Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBlendDstFactor(I)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->i(II)V

    return-void
.end method

.method public setBlendSrcFactor(I)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->c:Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->j(II)V

    return-void
.end method

.method public setSortingOrder(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->nativeSetSortingOrder(JI)V

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->a:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
