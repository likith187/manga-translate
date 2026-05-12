.class public Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;
.super Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;II)V
    .locals 3

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>()V

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

    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    filled-new-array {p1}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWidth(I)V

    aget-object p2, p1, v1

    invoke-virtual {p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setHeight(I)V

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide p2, p2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {p2, p3, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;->nativeInit(J[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J

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

.method private static native nativeInit(J[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->releaseWithCtx(Z)V

    return-void
.end method
