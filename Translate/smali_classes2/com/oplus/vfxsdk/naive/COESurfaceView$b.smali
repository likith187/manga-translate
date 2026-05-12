.class public final Lcom/oplus/vfxsdk/naive/COESurfaceView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/COESurfaceView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/COESurfaceView;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/COESurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;->a:Lcom/oplus/vfxsdk/naive/COESurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;->a:Lcom/oplus/vfxsdk/naive/COESurfaceView;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string p2, "getSurface(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/oplus/vfxsdk/naive/a;->x(Landroid/view/Surface;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;->a:Lcom/oplus/vfxsdk/naive/COESurfaceView;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "getSurface(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/vfxsdk/naive/a;->v(Landroid/view/Surface;II)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/COESurfaceView$b;->a:Lcom/oplus/vfxsdk/naive/COESurfaceView;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/COESurfaceView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->w(Landroid/view/Surface;)Z

    return-void
.end method
