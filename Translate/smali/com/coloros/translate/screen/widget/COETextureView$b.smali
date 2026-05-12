.class public final Lcom/coloros/translate/screen/widget/COETextureView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/COETextureView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/COETextureView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/COETextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/COETextureView$b;->a:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/COETextureView$b;->a:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/vfxsdk/naive/a;->v(Landroid/view/Surface;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/COETextureView$b;->a:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->w(Landroid/view/Surface;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/COETextureView$b;->a:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/vfxsdk/naive/a;->x(Landroid/view/Surface;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
