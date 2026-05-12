.class public Lcom/oplus/vfxsdk/naive/parse/COEView;
.super Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/parse/COEView$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/vfxsdk/naive/parse/COEView$a;

.field public static final TAG:Ljava/lang/String; = "COEView"


# instance fields
.field private fileName:Ljava/lang/String;

.field private final notifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lw8/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/parse/COEView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/parse/COEView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/parse/COEView;->Companion:Lcom/oplus/vfxsdk/naive/parse/COEView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->notifiers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;I)V

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->notifiers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->notifiers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->notifiers:Ljava/util/Map;

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/parse/COEView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->loadFromStorageAsync$lambda$11$lambda$10(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/parse/COEView;Z)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->loadAsync$lambda$13$lambda$12(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic load$default(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->load(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: load"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic load$default(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/io/InputStream;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/parse/COEView;->load(Ljava/io/InputStream;ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: load"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadAsync$default(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->loadAsync(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final loadAsync$lambda$13$lambda$12(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$assetsFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->load(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;

    return-void
.end method

.method public static synthetic loadFromStorageAsync$default(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;ZILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->loadFromStorageAsync(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadFromStorageAsync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final loadFromStorageAsync$lambda$11$lambda$10(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/parse/COEView;Z)V
    .locals 9

    const-string v0, "$filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x2

    const/4 v6, 0x0

    const-string v7, ".coz"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8, v2, v6}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, v5, p0, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->load(Ljava/io/InputStream;ZZ)V

    iget-object p0, p1, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p1, Lf8/e;->a:Lf8/e$a;

    invoke-virtual {p1, p0}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object p0

    if-eqz p0, :cond_0

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lf8/c;->h(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lf8/c;->l(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRenderer()Lcom/oplus/vfxsdk/naive/parse/COERenderer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    return-object p0
.end method

.method public final getRenderer(I)Lcom/oplus/vfxsdk/naive/parse/COERenderer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    return-object p0
.end method

.method public initRenderer()V
    .locals 0

    return-void
.end method

.method public final load(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 9

    .line 1
    const-string v0, "assetsFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 5
    const-string v5, "COE_LOGGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COEView=>load assetFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string v5, ".coz"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, v5, v6, v7, v8}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, v2, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COEView;->load(Ljava/io/InputStream;ZZ)V

    .line 7
    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    sget-object p2, Lf8/e;->a:Lf8/e$a;

    invoke-virtual {p2, p1}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object p1

    if-eqz p1, :cond_0

    long-to-int p2, v3

    .line 9
    invoke-virtual {p1, p2}, Lf8/c;->h(I)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int p2, v3

    invoke-virtual {p1, p2}, Lf8/c;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v2, v8}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    return-object p0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 13
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final load(Ljava/io/InputStream;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "ins"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 16
    const-string v1, "COERenderer"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->resetScene()V

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    .line 21
    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onDestroy()V

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 24
    new-instance v1, Lcom/oplus/vfxsdk/common/COEParse;

    invoke-direct {v1}, Lcom/oplus/vfxsdk/common/COEParse;-><init>()V

    invoke-static/range {p1 .. p1}, Lkotlin/io/b;->c(Ljava/io/InputStream;)[B

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/oplus/vfxsdk/common/COEParse;->parse([BZ)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    .line 26
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0, v2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setLayers(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 27
    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 28
    new-instance v4, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v9, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v10, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getCoeEngineListener()Lh8/a;

    move-result-object v11

    new-instance v15, Lcom/oplus/vfxsdk/naive/parse/i;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iget-object v13, v0, Lcom/oplus/vfxsdk/naive/parse/COEView;->notifiers:Ljava/util/Map;

    invoke-direct {v15, v7, v12, v13}, Lcom/oplus/vfxsdk/naive/parse/i;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Ljava/util/Map;)V

    const/4 v14, 0x1

    move-object v7, v4

    move-object v12, v1

    move v13, v3

    invoke-direct/range {v7 .. v15}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->addCallback(Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->start()Ln8/h0;

    .line 32
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getCoeEngineListener()Lh8/a;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lh8/a;->d()V

    .line 33
    :cond_5
    sget-object v1, Lf8/e;->a:Lf8/e$a;

    iget-object v0, v0, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object v0

    if-eqz v0, :cond_6

    long-to-int v1, v5

    .line 34
    invoke-virtual {v0, v1}, Lf8/c;->j(I)V

    .line 35
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_7
    return-void
.end method

.method public final loadAsync(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 2

    const-string v0, "assetsFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/h;-><init>(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final loadFromStorageAsync(Ljava/lang/String;Z)Lcom/oplus/vfxsdk/naive/parse/COEView;
    .locals 2

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/g;

    invoke-direct {v1, p1, p0, p2}, Lcom/oplus/vfxsdk/naive/parse/g;-><init>(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/parse/COEView;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getLayers()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COEView;->fileName:Ljava/lang/String;

    return-void
.end method
