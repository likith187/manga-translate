.class public final Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/naive/coe/api/ITask;


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/oplus/vfxsdk/naive/a;

.field final synthetic d:Z


# virtual methods
.method public doTask()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;->c:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;->d:Z

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COEEngine$createSurfaceTexture$coeSurfaceTextureInfo$1$1$task$1;->a:Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->bind()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->unbind()Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    throw v3

    :cond_3
    throw v3

    :cond_4
    :goto_1
    return-void
.end method
