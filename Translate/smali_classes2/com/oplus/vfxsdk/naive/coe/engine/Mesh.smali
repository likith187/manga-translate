.class public Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# static fields
.field public static a:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/16 v4, 0x8

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v11, 0x12

    new-array v12, v11, [I

    fill-array-data v12, :array_3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_0

    aget v13, v3, v0

    sget-object v14, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v9

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v0, v8

    :goto_1
    if-ge v0, v4, :cond_1

    aget v1, v5, v0

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v9

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v0, v8

    :goto_2
    if-ge v0, v6, :cond_2

    aget v1, v7, v0

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v9

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    if-ge v8, v11, :cond_3

    aget v0, v12, v8

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/2addr v8, v9

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>()V

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

    invoke-static {v1, v2, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->nativeInit(JLjava/nio/ByteBuffer;)J

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

.method private static native nativeInit(JLjava/nio/ByteBuffer;)J
.end method

.method private static native nativeUpdateMesh(JLjava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public updateMesh(Ljava/nio/ByteBuffer;)V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->nativeUpdateMesh(JLjava/nio/ByteBuffer;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
