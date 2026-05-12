.class public final Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;
.super Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V
    .locals 1

    iput-object p1, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;->a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;

    invoke-static {p1}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->g(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;->b(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V

    return-void
.end method

.method private static final b(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "circleTextureOnStart"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onStart()V

    const-string v0, "BaseRenderer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v0

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v2

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->m(Lcom/oplus/vfxsdk/naive/coe/engine/Mesh;)V

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    const-string v6, "circle/shaders/pass0.vs"

    const-string v7, "circle/shaders/pass0.fs"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-static {p1}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->h(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->addPass(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->ASTC_6x6_LDR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    invoke-virtual {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V

    sget-object v2, Lcom/oplus/vfxsdk/common/h;->a:Lcom/oplus/vfxsdk/common/h$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "colorful8x8.astc"

    invoke-virtual {v2, v3, v4}, Lcom/oplus/vfxsdk/common/h$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setRawBuffer(Ljava/nio/ByteBuffer;)V

    new-instance v2, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-direct {v2, p0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V

    const-string p0, "iChannel0"

    filled-new-array {v2}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p0, 0x43480000    # 200.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Float;

    move-result-object p0

    const-string v1, "rect_margin"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "rect_padding"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x3f266666    # 0.65f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "rect_base_scale"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_padding_alpha"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_corner"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v2, 0x43c00000    # 384.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_size"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_center"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rect_progress"

    invoke-virtual {v0, v4, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/Float;

    move-result-object v4

    const-string v5, "rect_padding_zoom_in"

    invoke-virtual {v0, v5, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_padding_zoom_out"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_zoom_in_speed"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rect_zoom_out_speed"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x3f333333    # 0.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v4, -0x40cccccd    # -0.7f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v2, v3, v1, v4}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "color_speed"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3fe66666    # 1.8f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "color_shake_speed"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "color_scale"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "color_alpha"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x3cf5c28f    # 0.03f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3ca3d70a    # 0.02f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "color_shake_displacement"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "selected"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "u_resolution"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Float;

    move-result-object v1

    const-string v2, "u_surfScreenRatio"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Float;

    move-result-object p0

    const-string v1, "fadeInOutProgress"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Float;

    move-result-object p0

    const-string v1, "fadeInOutMargin"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->f(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lh8/a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lh8/a;->onStart()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getPass(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;->a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Float;

    move-result-object p0

    const-string p1, "u_surfScreenRatio"

    invoke-virtual {p2, p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;->a:Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;

    new-instance v2, Lg8/a;

    invoke-direct {v2, p0, v1}, Lg8/a;-><init>(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
