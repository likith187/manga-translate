.class public Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VFX:NativeEngine"


# instance fields
.field final mRetainedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;",
            ">;"
        }
    .end annotation
.end field

.field final mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mRetainedObjects:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    .line 11
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    .line 13
    iput-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mRetainedObjects:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    .line 4
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    .line 6
    iput-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static enableRenderObject(JLcom/oplus/vfxsdk/naive/coe/engine/RenderPass;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeEnableRenderObject(JLcom/oplus/vfxsdk/naive/coe/engine/RenderPass;Z)V

    return-void
.end method

.method public static getRenderObjects(JLjava/lang/String;)[J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeGetRenderObjects(JLjava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method private static native nativeAddCallback(JLcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V
.end method

.method private static native nativeAddPass(JLcom/oplus/vfxsdk/naive/coe/engine/Material;Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)V
.end method

.method private static native nativeAttachAssetManager(JLandroid/content/res/AssetManager;)V
.end method

.method private static native nativeAttachClassLoader(JLjava/lang/ClassLoader;)V
.end method

.method private static native nativeBind(JZ)Z
.end method

.method private static native nativeCreate(I)J
.end method

.method private static native nativeCreateEffect(JLjava/lang/String;)J
.end method

.method private static native nativeCreateEmitter(JLjava/lang/String;)J
.end method

.method private static native nativeCreateMaterial(J)J
.end method

.method private static native nativeCreateMesh(JLjava/nio/ByteBuffer;)J
.end method

.method private static native nativeCreatePass(JLjava/lang/String;Ljava/lang/String;ZILcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)J
.end method

.method private static native nativeCreatePostProcessor(J)J
.end method

.method private static native nativeCreateRenderObject(JLjava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J
.end method

.method private static native nativeCreateRenderTexture(J[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
.end method

.method private static native nativeCreateRenderer(JIZ)J
.end method

.method private static native nativeCreateTexture1(JLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
.end method

.method private static native nativeCreateTransform(J[F)J
.end method

.method private static native nativeCreateWindowSurface(JLandroid/view/Surface;)J
.end method

.method private static native nativeDestroyEngine(J)V
.end method

.method private static native nativeEnableBlend(JLcom/oplus/vfxsdk/naive/coe/engine/RenderPass;ZII)V
.end method

.method private static native nativeEnableRenderObject(JLcom/oplus/vfxsdk/naive/coe/engine/RenderPass;Z)V
.end method

.method private static native nativeGetRenderObjects(JLjava/lang/String;)[J
.end method

.method private static native nativeInitEngine(J[Ljava/lang/String;)V
.end method

.method private static native nativeOnAnimEnd(JILjava/lang/String;)V
.end method

.method private static native nativeOnAnimStart(JILjava/lang/String;)V
.end method

.method private static native nativePostDraw(J)V
.end method

.method private static native nativePostTask(JLcom/oplus/vfxsdk/naive/coe/api/ITask;Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;)V
.end method

.method private static native nativeProcessFrame(JD)V
.end method

.method private static native nativeReleaseObject(JJ)V
.end method

.method private static native nativeRemoveCallbacks(J)V
.end method

.method private static native nativeResetScene(J)V
.end method

.method private static native nativeSendMessage(JLcom/oplus/vfxsdk/naive/coe/engine/Message;)V
.end method

.method private static native nativeSetAnimListenedList(J[Ljava/lang/String;)V
.end method

.method private static native nativeSetBitmap(JLandroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method private static native nativeSetCOEEngineLocked(J)J
.end method

.method private static native nativeSetCOEEngineUnlocked(JJ)V
.end method

.method private static native nativeSetFPS(JI)V
.end method

.method private static native nativeSetMaterial(JLcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
.end method

.method private static native nativeSetMesh(JLcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V
.end method

.method private static native nativeSetProperty(JLcom/oplus/vfxsdk/naive/coe/engine/Material;ILjava/lang/String;[Ljava/lang/Object;)V
.end method

.method private static native nativeSetRenderTexture(JLcom/oplus/vfxsdk/naive/coe/engine/Pass;Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;)V
.end method

.method private static native nativeSetRenderThreadName(JLjava/lang/String;)V
.end method

.method private static native nativeSetRotateMode(JI)V
.end method

.method private static native nativeSetSceneOutputRtSize(JII)V
.end method

.method private static native nativeSetScreenSize(JII)V
.end method

.method private static native nativeSetSortingOrder(JLcom/oplus/vfxsdk/naive/coe/engine/RenderPass;II)V
.end method

.method private static native nativeSetSurface(JLandroid/view/Surface;)V
.end method

.method private static native nativeSetViewport(JII)V
.end method

.method private static native nativeStartEngine(J)V
.end method

.method private static native nativeStopEngine(J)V
.end method

.method private static native nativeTouchEvent(JIFF)V
.end method

.method private static native nativeUnbind(J)Z
.end method


# virtual methods
.method public addCallback(Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeAddCallback(JLcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V

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

.method public addPass(Lcom/oplus/vfxsdk/naive/coe/engine/Material;Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeAddPass(JLcom/oplus/vfxsdk/naive/coe/engine/Material;Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)V

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

.method public attachAssetManager(Landroid/content/res/AssetManager;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeAttachAssetManager(JLandroid/content/res/AssetManager;)V

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

.method public attachClassLoader(Ljava/lang/ClassLoader;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeAttachClassLoader(JLjava/lang/ClassLoader;)V

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

.method public bind()Z
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->bind(Z)Z

    move-result p0

    return p0
.end method

.method public bind(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 3
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeBind(JZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bindScene()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createMaterial()J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateMaterial(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createMesh(Ljava/nio/ByteBuffer;)J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateMesh(JLjava/nio/ByteBuffer;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createParticleEffect(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateEffect(JLjava/lang/String;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createParticleEmitter(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateEmitter(JLjava/lang/String;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createPass(Ljava/lang/String;Ljava/lang/String;ZILcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)J
    .locals 8

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreatePass(JLjava/lang/String;Ljava/lang/String;ZILcom/oplus/vfxsdk/naive/coe/engine/RenderStateInfo;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createPostProcessor()J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreatePostProcessor(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createRenderObject(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->createRenderObject(Ljava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public createRenderObject(Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->createRenderObject(Ljava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public createRenderObject(Ljava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;)J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->createRenderObject(Ljava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public createRenderObject(Ljava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-wide v2, v0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 3
    invoke-static/range {v2 .. v10}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateRenderObject(JLjava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v1

    return-wide v4

    .line 5
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createRenderTexture(II)J
    .locals 3

    .line 6
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    filled-new-array {v0}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWidth(I)V

    .line 8
    aget-object p1, v0, v1

    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setHeight(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->createRenderTexture([Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public createRenderTexture([Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 3
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateRenderTexture(J[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-wide v3

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createRenderer(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-static {v1, v2, p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateRenderer(JIZ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-wide v3

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createRenderer(IZ)J
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 8
    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateRenderer(JIZ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-wide v3

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createSurfaceRenderTexture(Landroid/view/Surface;)J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateWindowSurface(JLandroid/view/Surface;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createTexture1(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateTexture1(JLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-wide v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createTransform()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-static {v1, v2, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateTransform(J[F)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-wide v3

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createTransform([F)J
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 8
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeCreateTransform(J[F)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-wide v3

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyEngine()V
    .locals 6

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->releaseNativeObjects()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeDestroyEngine(J)V

    iput-wide v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

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

.method public initEngine()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->initEngine([Ljava/lang/String;)V

    return-void
.end method

.method public initEngine([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 3
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeInitEngine(J[Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
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

.method public isSceneInBinding()Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs javaSetProperty(Lcom/oplus/vfxsdk/naive/coe/engine/Material;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/vfxsdk/naive/coe/engine/Material;",
            "I",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setProperty(Lcom/oplus/vfxsdk/naive/coe/engine/Material;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimEnd(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeOnAnimEnd(JILjava/lang/String;)V

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

.method public onAnimStart(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeOnAnimStart(JILjava/lang/String;)V

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

.method public postDraw()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativePostDraw(J)V

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

.method public postTask(Lcom/oplus/vfxsdk/naive/coe/api/ITask;Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativePostTask(JLcom/oplus/vfxsdk/naive/coe/api/ITask;Lcom/oplus/vfxsdk/naive/coe/api/TaskOptions;)V

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

.method public processFrame(D)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeProcessFrame(JD)V

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

.method public releaseNativeObjects()V
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

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetCOEEngineLocked(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mRetainedObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->release()V

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v3, v4, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetCOEEngineUnlocked(JJ)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mRetainedObjects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseObject(J)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    cmp-long p0, p1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeReleaseObject(JJ)V

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

.method public removeCallbacks()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeRemoveCallbacks(J)V

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

.method public resetScene()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->d()V

    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeResetScene(J)V

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

.method public sendMessage(Lcom/oplus/vfxsdk/naive/coe/engine/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSendMessage(JLcom/oplus/vfxsdk/naive/coe/engine/Message;)V

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

.method public setAnimListenedList([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetAnimListenedList(J[Ljava/lang/String;)V

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

.method public setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetBitmap(JLandroid/graphics/Bitmap;Ljava/lang/String;)V

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

.method public setFPS(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetFPS(JI)V

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

.method public setMaterial(Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetMaterial(JLcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V

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

.method public setMesh(Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetMesh(JLcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V

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

.method public setNativeObjectLocked(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->a(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mRetainedObjects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setProperty(Lcom/oplus/vfxsdk/naive/coe/engine/Material;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetProperty(JLcom/oplus/vfxsdk/naive/coe/engine/Material;ILjava/lang/String;[Ljava/lang/Object;)V

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

.method public setRenderTexture(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetRenderTexture(JLcom/oplus/vfxsdk/naive/coe/engine/Pass;Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;)V

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

.method public setRenderThreadName(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetRenderThreadName(JLjava/lang/String;)V

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

.method public setRotateMode(I)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetRotateMode(JI)V

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

.method public setSceneOutputRtSize(II)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetSceneOutputRtSize(JII)V

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

.method public setScreenSize(II)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetScreenSize(JII)V

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

.method public setSurface(Landroid/view/Surface;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetSurface(JLandroid/view/Surface;)V

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

.method public setViewport(II)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeSetViewport(JII)V

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

.method public startEngine()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeStartEngine(J)V

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

.method public stopEngine()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeStopEngine(J)V

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

.method public touchEvent(IFF)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeTouchEvent(JIFF)V

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

.method public unbind()Z
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->nativeUnbind(J)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unbindScene()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->mScene:Lcom/oplus/vfxsdk/naive/coe/engine/b;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/b;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
