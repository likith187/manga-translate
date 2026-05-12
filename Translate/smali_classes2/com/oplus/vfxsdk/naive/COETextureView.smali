.class public Lcom/oplus/vfxsdk/naive/COETextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/COETextureView$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/oplus/vfxsdk/naive/COETextureView$a;


# instance fields
.field private a:Lcom/oplus/vfxsdk/naive/a;

.field private b:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/COETextureView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/COETextureView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/COETextureView;->c:Lcom/oplus/vfxsdk/naive/COETextureView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COETextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COETextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COETextureView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v0, Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/oplus/vfxsdk/naive/a;-><init>(Landroid/content/Context;Li8/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    return-void
.end method

.method public final getEngine()Lcom/oplus/vfxsdk/naive/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->u()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-eqz p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/vfxsdk/naive/a;->v(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/a;->w(Landroid/view/Surface;)Z

    :cond_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->b:Landroid/view/Surface;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COETextureView;->a:Lcom/oplus/vfxsdk/naive/a;

    if-eqz p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/oplus/vfxsdk/naive/a;->x(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
