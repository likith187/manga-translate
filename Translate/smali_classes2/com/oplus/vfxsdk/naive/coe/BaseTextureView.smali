.class public abstract Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$a;

.field public static final TAG:Ljava/lang/String; = "VFX:BaseTextureView"


# instance fields
.field private _autoGC:Z

.field private _autoStopWhenLock:Z

.field private _caps:I

.field private _renderer:Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

.field private coeEngineListener:Lh8/a;

.field private engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

.field private isPlaying:Z

.field private layers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private powerManager:Landroid/os/PowerManager;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private surface:Landroid/view/Surface;

.field private surfaceHeight:I

.field private surfaceHeightLimit:I

.field private surfaceSizeRadio:D

.field private surfaceTex:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private surfaceWidthLimit:I

.field private textureViewInitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->Companion:Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 4
    iput-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    .line 6
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    iput-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    .line 13
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    .line 14
    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setCaps(I)V

    .line 15
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 19
    iput-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    .line 21
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    .line 22
    invoke-direct {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setAttrsValues(Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    .line 26
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 27
    iput-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    const/4 p3, 0x1

    .line 28
    iput-boolean p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    .line 29
    iput-boolean p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    .line 30
    invoke-direct {p0, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setAttrsValues(Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->e(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V

    return-void
.end method

.method public static synthetic createRenderPass$default(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->createRenderPass(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createRenderPass"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createRenderPass$default(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->createRenderPass(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createRenderPass"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createTexture$default(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;Ljava/lang/String;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 0

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    sget-object p3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->createTexture(Ljava/lang/String;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createTexture"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final d(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->textureViewInitTime:J

    const-string v0, "init"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "VFX:BaseTextureView=>init"

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->initEngine()V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->powerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView$init$1;-><init>(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "VFX:BaseTextureView=>registerActivityLifecycleCallbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object p1, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->textureViewInitTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lf8/b;->d(I)V

    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->textureViewInitTime:J

    invoke-virtual {p1, v0, v1}, Lf8/b;->h(J)V

    :cond_1
    return-void
.end method

.method private static final e(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->refreshSurface()V

    return-void
.end method

.method private final setAttrsValues(Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "VFX:BaseTextureView"

    if-nez p1, :cond_0

    const-string p0, "Don\'t set custom attribute"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    sget v5, Lcom/oplus/vfxsdk/naive/R$attr;->caps:I

    if-ne v4, v5, :cond_1

    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setCaps(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getCaps()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: caps: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final createRenderPass(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;
    .locals 8

    .line 1
    const-string v0, "vertexFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p0, :cond_0

    .line 2
    new-instance v7, Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v1

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;-><init>(JLjava/lang/String;Ljava/lang/String;IZ)V

    return-object v7

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createRenderPass(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IZ)Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;
    .locals 9

    .line 3
    const-string v0, "vertexFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mesh"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p0, :cond_0

    .line 4
    new-instance v8, Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v1

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderPass;-><init>(JLjava/lang/String;Ljava/lang/String;IZLjava/nio/ByteBuffer;)V

    return-object v8

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createTexture(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 2

    .line 13
    const-string v0, "createInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-direct {v1, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final createTexture(Ljava/lang/String;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 7

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setTexturePath(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 6
    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "this as java.lang.String).substring(startIndex)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const-string p4, "getContext(...)"

    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p3, ".webp"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :sswitch_1
    const-string p3, ".astc"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    sget-object p2, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->ASTC_6x6_LDR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    invoke-virtual {v0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V

    .line 9
    sget-object p2, Lcom/oplus/vfxsdk/common/h;->a:Lcom/oplus/vfxsdk/common/h$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/oplus/vfxsdk/common/h$a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setRawBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 10
    :sswitch_2
    const-string p3, ".png"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :sswitch_3
    const-string p3, ".jpg"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    sget-object p2, Lcom/oplus/vfxsdk/common/h;->a:Lcom/oplus/vfxsdk/common/h$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/oplus/vfxsdk/common/h$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->createTexture(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1684f3 -> :sswitch_3
        0x169b3b -> :sswitch_2
        0x2b60f4f -> :sswitch_1
        0x2bfd8ca -> :sswitch_0
    .end sparse-switch
.end method

.method public final getAutoGC()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    return p0
.end method

.method public final getAutoStopWhenLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    return p0
.end method

.method public final getCaps()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_caps:I

    return p0
.end method

.method protected final getCoeEngineListener()Lh8/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    return-object p0
.end method

.method protected final getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    return-object p0
.end method

.method public getFeatures()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method protected final getMainHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected final getRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_renderer:Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    return-object p0
.end method

.method protected final getSurfaceHeight()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    return p0
.end method

.method protected final getSurfaceHeightLimit()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    return p0
.end method

.method protected final getSurfaceSizeRadio()D
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    return-wide v0
.end method

.method protected final getSurfaceWidth()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    return p0
.end method

.method protected final getSurfaceWidthLimit()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    return p0
.end method

.method public initEngine()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-nez v0, :cond_8

    const-string v0, "initEngine"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getCaps()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;-><init>(I)V

    iput-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->attachAssetManager(Landroid/content/res/AssetManager;)V

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->attachClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getFeatures()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->initEngine([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->initEngine()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->initRenderer()V

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lh8/a;->a()V

    :cond_3
    const-string v2, "COE_LOGGER"

    const-string v3, "VFX:BaseTextureView=>engine init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v4, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setViewport(II)V

    :cond_4
    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    :cond_5
    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget v4, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v5, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    iget-object v5, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lf8/b;->b(J)V

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v4, v0}, Lf8/b;->c(I)V

    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_8
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public abstract initRenderer()V
.end method

.method public final isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->isPlaying:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/a;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/naive/coe/a;-><init>(Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "COE_LOGGER"

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->releaseEngine()Ljava/lang/Integer;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VFX:BaseTextureView=>unregisterReceiver error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const-string v1, "VFX:BaseTextureView=>unregisterActivityLifecycleCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VFX:BaseTextureView=>unregisterActivityLifecycleCallbacks error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "VFX:BaseTextureView=>onDetachedFromWindow"

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getAutoGC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VFX:BaseTextureView=>onDetachedFromWindow, do auto destroy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "COE_LOGGER"

    const-string v1, "VFX:BaseTextureView=>onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    iput p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    int-to-double v4, p3

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setViewport(II)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setScreenSize(II)V

    :cond_2
    sget-object p1, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->textureViewInitTime:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lf8/b;->g(I)V

    :cond_3
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "COE_LOGGER"

    const-string v0, "VFX:BaseTextureView=>onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    const-string v0, "surfaceTexture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "COE_LOGGER"

    const-string v1, "VFX:BaseTextureView=>onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    if-eq v0, p3, :cond_5

    :cond_0
    iput p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    iput p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    int-to-double v4, p3

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setViewport(II)V

    :cond_1
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    :cond_2
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setScreenSize(II)V

    :cond_3
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lh8/a;->b()V

    :cond_4
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget p3, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final refreshSurface()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public releaseEngine()Ljava/lang/Integer;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onDestroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->destroyEngine()V

    :cond_1
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    invoke-virtual {v0, v2}, Lf8/b;->a(I)V

    :cond_2
    iput-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lh8/a;->c()V

    :cond_3
    iput-object v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    const-string v0, "COE_LOGGER"

    const-string v1, "VFX:BaseTextureView=>engine destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final setAutoGC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoGC:Z

    return-void
.end method

.method public final setAutoStopWhenLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_autoStopWhenLock:Z

    return-void
.end method

.method public final setCaps(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_caps:I

    return-void
.end method

.method protected final setCoeEngineListener(Lh8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    return-void
.end method

.method protected final setEngine(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    return-void
.end method

.method public final setEngineListener(Lh8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->coeEngineListener:Lh8/a;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lh8/a;->a()V

    :cond_0
    return-void
.end method

.method public final setFPS(I)Ln8/h0;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setFPS(I)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected final setLayers(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method protected final setRenderer(Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->_renderer:Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->addCallback(Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V

    :cond_0
    return-void
.end method

.method protected final setSurfaceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    return-void
.end method

.method protected final setSurfaceHeightLimit(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    return-void
.end method

.method public final setSurfaceRatio(D)V
    .locals 4

    iput-wide p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    iput v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeightLimit:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int p1, v2

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceTex:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setViewport(II)V

    :cond_1
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    :cond_2
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->layers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget v0, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    iget v1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected final setSurfaceSizeRadio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceSizeRadio:D

    return-void
.end method

.method protected final setSurfaceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidth:I

    return-void
.end method

.method protected final setSurfaceWidthLimit(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->surfaceWidthLimit:I

    return-void
.end method

.method public final start()Ln8/h0;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->startEngine()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->isPlaying:Z

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lf8/b;->e(I)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final stop()Ln8/h0;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->engine:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->stopEngine()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->isPlaying:Z

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/a;->a:Lcom/oplus/vfxsdk/naive/coe/engine/a$a;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/a$a;->a(J)Lf8/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lf8/b;->f(I)V

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    :goto_1
    monitor-exit p0

    throw v0
.end method
