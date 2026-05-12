.class public Lcom/oplus/vfxsdk/cuieffect/PaintTextureView;
.super Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/cuieffect/PaintTextureView$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/vfxsdk/cuieffect/PaintTextureView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/cuieffect/PaintTextureView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/cuieffect/PaintTextureView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/cuieffect/PaintTextureView;->a:Lcom/oplus/vfxsdk/cuieffect/PaintTextureView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getFeatures()[Ljava/lang/String;
    .locals 0

    const-string p0, "PaintSystem"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRenderer()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setRenderer(Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->touchEvent(IFF)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
