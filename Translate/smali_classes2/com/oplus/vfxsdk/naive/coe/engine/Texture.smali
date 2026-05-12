.class public Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field protected inMainCtx:Z

.field protected texId:I

.field protected texType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texId:I

    const/4 v1, 0x3

    .line 3
    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texType:I

    .line 4
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->inMainCtx:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texId:I

    const/4 p2, 0x3

    .line 7
    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texType:I

    .line 8
    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->inMainCtx:Z

    return-void
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texId:I

    const/4 v1, 0x3

    .line 11
    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texType:I

    .line 12
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->inMainCtx:Z

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    .line 15
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v1, p1, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v1, v2, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->nativeInit(JLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setNativeObjectLocked(Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;)V

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->CheckHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v2, v2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->nativeGetTexId(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->setTexId(I)V

    .line 22
    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mEngine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-wide v2, v2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->nativeGetTexType(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->setTexType(I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    invoke-virtual {p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->getInMainCtx()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->inMainCtx:Z

    return-void

    .line 25
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 26
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static native nativeGetTexId(JJ)I
.end method

.method private static native nativeGetTexType(JJ)I
.end method

.method private static native nativeInit(JLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)J
.end method


# virtual methods
.method public getTexId()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texId:I

    return p0
.end method

.method public getTexType()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texType:I

    return p0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->inMainCtx:Z

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->releaseWithCtx(Z)V

    return-void
.end method

.method public setTexId(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texId:I

    return-void
.end method

.method public setTexType(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;->texType:I

    return-void
.end method
