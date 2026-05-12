.class public Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;
.super Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "naiveEngine:1.2.0"
.end annotation


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;II)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;-><init>(J)V

    return-void
.end method


# virtual methods
.method public detachEngineHandle()V
    .locals 0

    return-void
.end method

.method public enable(Z)V
    .locals 0

    return-void
.end method

.method public enableBlend(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public enableBlend(ZII)V
    .locals 0

    .line 2
    return-void
.end method

.method public setBlendDstFactor(I)V
    .locals 0

    return-void
.end method

.method public setBlendSrcFactor(I)V
    .locals 0

    return-void
.end method

.method public setLayerSortingOrder(I)V
    .locals 0

    return-void
.end method

.method public final varargs setParameter(Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    return-void
.end method

.method public final varargs setParameter(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    return-void
.end method

.method public setSortingOrder(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSortingOrder(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public updateMesh(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method
