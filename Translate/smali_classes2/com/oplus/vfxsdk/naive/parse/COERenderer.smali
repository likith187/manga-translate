.class public final Lcom/oplus/vfxsdk/naive/parse/COERenderer;
.super Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;,
        Lcom/oplus/vfxsdk/naive/parse/COERenderer$d;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private animListenedList:[Ljava/lang/String;

.field private animListener:Lcom/oplus/vfxsdk/naive/parse/COERenderer$d;

.field private animTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Lcom/oplus/vfxsdk/common/a;

.field private final builtinUpdate:Le8/e;

.field private final cacheData:Z

.field private final coeData:Lcom/oplus/vfxsdk/common/COEData;

.field private final height:F

.field private final iResolution:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/parse/SystemUniform;",
            ">;"
        }
    .end annotation
.end field

.field private final layerIndex:I

.field private final layout:[F

.field private layoutHeight:F

.field private layoutWidth:F

.field private renderListener:Lh8/a;

.field private final rotation:[F

.field private final rt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final scale:[F

.field private final statusAnim:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/naive/parse/StatusData;",
            ">;"
        }
    .end annotation
.end field

.field private final width:F


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p8

    const-string v5, "engine"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "coeData"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "linkProxy"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V

    move/from16 v5, p2

    .line 3
    iput v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->width:F

    move/from16 v5, p3

    .line 4
    iput v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->height:F

    move-object/from16 v5, p4

    .line 5
    iput-object v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    .line 6
    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    .line 7
    iput v3, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    move/from16 v2, p7

    .line 8
    iput-boolean v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->cacheData:Z

    .line 9
    const-string v2, "VFX:COERenderer"

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->statusAnim:Ljava/util/HashMap;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rt:Ljava/util/HashMap;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->iResolution:Ljava/util/ArrayList;

    const/high16 v2, 0x44870000    # 1080.0f

    .line 13
    iput v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutWidth:F

    const/high16 v2, 0x45160000    # 2400.0f

    .line 14
    iput v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutHeight:F

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 15
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    const/4 v3, 0x3

    .line 16
    new-array v5, v3, [F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    .line 17
    new-array v5, v3, [F

    :goto_1
    if-ge v6, v3, :cond_1

    aput v2, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput-object v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    .line 18
    new-instance v2, Lcom/oplus/vfxsdk/common/f;

    iget-object v3, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    iget v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    invoke-direct {v2, v3, v5}, Lcom/oplus/vfxsdk/common/f;-><init>(Lcom/oplus/vfxsdk/common/COEData;I)V

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animator:Lcom/oplus/vfxsdk/common/a;

    .line 19
    new-instance v2, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;

    invoke-direct {v2, v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$e;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->builtinUpdate:Le8/e;

    .line 20
    iget-object v2, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v2

    iget v3, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setLayer(Lcom/oplus/vfxsdk/common/Layer;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initRenderPass()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/a;->x()V

    .line 24
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/a;->r()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 25
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 27
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/vfxsdk/common/o;

    .line 29
    new-instance v9, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;

    invoke-direct {v9, v8, v0, v7}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$a;-><init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/naive/parse/COERenderer;I)V

    invoke-virtual {v8, v9}, Lcom/oplus/vfxsdk/common/o;->l(Le8/e;)V

    goto :goto_2

    .line 30
    :cond_4
    new-instance v11, Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;

    invoke-direct {v11, v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$f;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v10 .. v16}, Lcom/oplus/vfxsdk/common/a;->w(Lcom/oplus/vfxsdk/common/a;Le8/b;Landroid/animation/TimeInterpolator;JILjava/lang/Object;)Ljava/util/ArrayList;

    .line 32
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v4}, Lcom/oplus/vfxsdk/common/a;->L(Ld8/b;)V

    .line 33
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v6, v6, v5, v6}, Lcom/oplus/vfxsdk/common/a;->u(Lcom/oplus/vfxsdk/common/a;Le8/e;Le8/d;ILjava/lang/Object;)Ljava/util/HashMap;

    .line 34
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/a;->k()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;

    invoke-direct {v5, v0, v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$b;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/d;

    invoke-direct {v1, v5}, Lcom/oplus/vfxsdk/naive/parse/d;-><init>(Lw8/p;)V

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 35
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Layer;->getAnimParams()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimatorNative"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/oplus/vfxsdk/common/f;

    iget-object v5, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->builtinUpdate:Le8/e;

    invoke-virtual {v4, v1, v5}, Lcom/oplus/vfxsdk/common/f;->U(Ljava/util/HashMap;Le8/e;)V

    .line 36
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initTransform()V

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initParticle()V

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initPostProcessor()V

    .line 39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 40
    const-string v1, "onStart"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    iget-object v1, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lh8/a;->onStart()V

    .line 42
    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    sget-object v1, Lf8/e;->a:Lf8/e$a;

    iget-object v4, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 44
    invoke-virtual {v1}, Lf8/c;->a()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    long-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lf8/c;->g(I)V

    .line 45
    :cond_b
    iget-object v1, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>onStart time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COE_LOGGER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x44870000    # 1080.0f
        0x45160000    # 2400.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    :cond_1
    move/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    .line 1
    invoke-direct/range {v1 .. v9}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V

    return-void
.end method

.method private static final _init_$lambda$2(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->_init_$lambda$2(Lw8/p;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getLayout$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    return-object p0
.end method

.method public static final synthetic access$getRotation$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    return-object p0
.end method

.method public static final synthetic access$getScale$p(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)[F
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    return-object p0
.end method

.method public static final synthetic access$updateTransform(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateTransform()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->onAnimEnd$lambda$10(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->onAnimStart$lambda$6(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic createTexture$default(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 1
    sget-object p4, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->createTexture(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createTexture$default(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/nio/ByteBuffer;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;ILjava/lang/Object;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 4
    const-string p4, ""

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 5
    sget-object p5, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 6
    sget-object p6, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->createTexture(Ljava/nio/ByteBuffer;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->onAnimUpdate$lambda$7(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V

    return-void
.end method

.method private final initParticle()V
    .locals 8

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Particle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/RendPass;->getCs()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->n(Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEmitter;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-direct {p0, v1, v3}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateUniformValue(Lcom/oplus/vfxsdk/common/Uniform;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/RendPass;->getEffects()[Lcom/oplus/vfxsdk/common/Effect;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    new-instance v5, Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEffect;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v6

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/Effect;->getCs()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEffect;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->b(Lcom/oplus/vfxsdk/naive/coe/engine/ParticleEffect;)V

    :cond_2
    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/Effect;->getUniforms()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-direct {p0, v5, v3}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateUniformValue(Lcom/oplus/vfxsdk/common/Uniform;I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final initPostProcessor()V
    .locals 12

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getPostProcessor()[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getPostProcessor()[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v0

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->o(Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getPostProcessor()[Lcom/oplus/vfxsdk/common/PostProcessorData;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_a

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/PostProcessorData;->getProperties()Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    move v7, v6

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-direct {p0, v8, v2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateUniformValue(Lcom/oplus/vfxsdk/common/Uniform;I)V

    const-string v10, "batchEnabled"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_3
    const-string v10, "standalone"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    move-result-object v5

    const/4 v8, 0x1

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->b(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v8, v2

    :goto_5
    invoke-virtual {v5, v8}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->c(Z)V

    :goto_6
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->f()Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/PostProcessorData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getMaterial()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/PostProcessor;->a(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/Material;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_7
    return-void
.end method

.method private final initRenderPass()V
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "loadGLResources"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/vfxsdk/common/Layer;->getEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->k(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v8, v3, v6

    add-int/lit8 v9, v7, 0x1

    new-instance v15, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v11

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getVs()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getFs()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getOrder()I

    move-result v16

    move-object v10, v15

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v7, v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Layer;->getEnableBlend()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->d(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Layer;->getBlendSfactor()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setBlendSrcFactor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Layer;->getBlendDfactor()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setBlendDstFactor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Layer;->getBlendSfactorAlpha()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Layer;->getBlendDfactorAlpha()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->b(I)V

    :cond_0
    invoke-virtual {v0, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->addPass(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)I

    move-result v7

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    const-string v12, "<get-keys>(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oplus/vfxsdk/common/Uniform;

    if-eqz v12, :cond_1

    invoke-static {v12}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v12, v7}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateUniformValue(Lcom/oplus/vfxsdk/common/Uniform;I)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/oplus/vfxsdk/naive/parse/COERenderer$g;

    invoke-direct {v7, v5}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$g;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/Pass;)V

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/RendPass;->getStatus()[Lcom/oplus/vfxsdk/common/StatusAnim;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v8, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_5

    aget-object v12, v5, v10

    invoke-virtual {v12}, Lcom/oplus/vfxsdk/common/StatusAnim;->getAnims()[Lcom/oplus/vfxsdk/common/Anim;

    move-result-object v13

    array-length v13, v13

    new-array v14, v13, [Lcom/oplus/vfxsdk/naive/parse/StatusData;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_4

    invoke-virtual {v12}, Lcom/oplus/vfxsdk/common/StatusAnim;->getAnims()[Lcom/oplus/vfxsdk/common/Anim;

    move-result-object v16

    aget-object v16, v16, v15

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getBezier()[Ljava/lang/Float;

    move-result-object v18

    const/16 v17, 0x0

    aget-object v18, v18, v17

    move-object/from16 v30, v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getBezier()[Ljava/lang/Float;

    move-result-object v18

    const/16 v29, 0x1

    aget-object v18, v18, v29

    move/from16 v31, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getBezier()[Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v32, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getBezier()[Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v18, v18, v19

    move/from16 v33, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {v11, v3, v4, v5, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Int"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Le8/i;

    new-instance v4, Le8/f;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getUniformName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getDuration()J

    move-result-wide v22

    const/16 v27, 0x30

    const/16 v28, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v11

    invoke-direct/range {v18 .. v28}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4, v7}, Le8/i;-><init>(Le8/f;Le8/e;)V

    new-instance v4, Lcom/oplus/vfxsdk/naive/parse/StatusData;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/oplus/vfxsdk/naive/parse/StatusData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    new-instance v3, Le8/g;

    new-instance v4, Le8/f;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getUniformName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getDuration()J

    move-result-wide v22

    const/16 v27, 0x30

    const/16 v28, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v11

    invoke-direct/range {v18 .. v28}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4, v7}, Le8/g;-><init>(Le8/f;Le8/e;)V

    new-instance v4, Lcom/oplus/vfxsdk/naive/parse/StatusData;

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/vfxsdk/common/Anim;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/oplus/vfxsdk/naive/parse/StatusData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    aput-object v4, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v29

    move-object/from16 v3, v30

    move/from16 v4, v31

    move-object/from16 v5, v32

    move/from16 v8, v33

    goto/16 :goto_3

    :cond_4
    move-object/from16 v30, v3

    move/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v33, v8

    move/from16 v29, v11

    const/16 v17, 0x0

    iget-object v3, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->statusAnim:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/oplus/vfxsdk/common/StatusAnim;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_2

    :cond_5
    move-object/from16 v30, v3

    move/from16 v31, v4

    const/16 v17, 0x0

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    move-object/from16 v3, v30

    move/from16 v4, v31

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lf8/e;->a:Lf8/e$a;

    iget-object v0, v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf8/c;->b()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    long-to-int v1, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lf8/c;->i(I)V

    :cond_7
    return-void
.end method

.method private final initTransform()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/Layer;->getTransform()Lcom/oplus/vfxsdk/common/TransformData;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout_expr()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-eqz v4, :cond_9

    array-length v4, v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout_expr()[Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_1

    invoke-static {v6, v0}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_1
    move-object v6, v7

    :cond_2
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutExpr(Ljava/lang/String;F)F

    move-result v6

    aput v6, v4, v0

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout_expr()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6, v1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    :cond_3
    move-object v6, v7

    :cond_4
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutExpr(Ljava/lang/String;F)F

    move-result v6

    aput v6, v4, v1

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout_expr()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v6, v2}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_6

    :cond_5
    move-object v6, v7

    :cond_6
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutExpr(Ljava/lang/String;F)F

    move-result v6

    aput v6, v4, v2

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout_expr()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6, v5}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move-object v7, v6

    :cond_8
    :goto_0
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutExpr(Ljava/lang/String;F)F

    move-result v6

    aput v6, v4, v5

    goto :goto_2

    :cond_9
    :goto_1
    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v0

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v1

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v2

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getLayout()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v5

    :goto_2
    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getScale()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v0

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getScale()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v1

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getScale()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v2

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getRotate()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v0

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getRotate()[Ljava/lang/Float;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v4, v1

    iget-object v4, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/TransformData;->getRotate()[Ljava/lang/Float;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.oplus.vfxsdk.common.AnimatorNative"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/oplus/vfxsdk/common/f;

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/f;->Q()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v7, "builtin_translate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    aget v7, v6, v0

    aget v6, v6, v1

    new-array v8, v2, [F

    aput v7, v8, v0

    aput v6, v8, v1

    invoke-virtual {v4, v8}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_1
    const-string v7, "builtin_scale"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    aget v7, v6, v0

    aget v6, v6, v1

    new-array v8, v2, [F

    aput v7, v8, v0

    aput v6, v8, v1

    invoke-virtual {v4, v8}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_2
    const-string v7, "builtin_rotate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    aget v7, v6, v0

    aget v6, v6, v1

    new-array v8, v2, [F

    aput v7, v8, v0

    aput v6, v8, v1

    invoke-virtual {v4, v8}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_3
    const-string v7, "builtin_layout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    iget-object v6, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    aget v7, v6, v2

    aget v6, v6, v5

    new-array v8, v2, [F

    aput v7, v8, v0

    aput v6, v8, v1

    invoke-virtual {v4, v8}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_e
    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->updateTransform()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb79913a -> :sswitch_3
        -0x79af09 -> :sswitch_2
        0x210cb22e -> :sswitch_1
        0x38c38832 -> :sswitch_0
    .end sparse-switch
.end method

.method private final layoutExpr(Ljava/lang/String;F)F
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/COEData;->getExpressions()Lcom/oplus/vfxsdk/common/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p2}, Lcom/oplus/vfxsdk/common/k;->a(Ljava/lang/String;FF)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static final onAnimEnd$lambda$10(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static final onAnimStart$lambda$6(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static final onAnimUpdate$lambda$7(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$values"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final updateTransform()V
    .locals 13

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layout:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->scale:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutWidth:F

    div-float/2addr v5, v6

    const/4 v7, 0x3

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v3, v3, v8

    mul-float/2addr v3, v7

    iget v9, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutHeight:F

    div-float/2addr v3, v9

    iget-object v10, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rotation:[F

    aget v11, v10, v4

    aget v12, v10, v8

    aget v1, v10, v1

    aget v4, v0, v4

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v2, v10

    add-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    div-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v4, v6

    aget v0, v0, v8

    sub-float v0, v9, v0

    mul-float/2addr v7, v10

    sub-float/2addr v0, v7

    mul-float/2addr v0, v2

    div-float/2addr v0, v9

    sub-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5, v3, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/Transform;->c(FFF)V

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v11, v12, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Transform;->a(FFF)V

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getNativeRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeRenderer;->g()Lcom/oplus/vfxsdk/naive/coe/engine/Transform;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Transform;->b(FFF)V

    :cond_2
    return-void
.end method

.method private final updateUniformValue(Lcom/oplus/vfxsdk/common/Uniform;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getMaterial()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iResolution"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->height:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->iResolution:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    invoke-direct {v0, p2, p1}, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;-><init>(ILcom/oplus/vfxsdk/common/Uniform;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_1
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v1

    sget-object v2, Lcom/oplus/vfxsdk/common/u;->UseFBO:Lcom/oplus/vfxsdk/common/u;

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rt:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;

    if-eqz p0, :cond_22

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_2
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v1

    sget-object v2, Lcom/oplus/vfxsdk/common/u;->FBO:Lcom/oplus/vfxsdk/common/u;

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;II)V

    invoke-virtual {v0, v1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->j(Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;I)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rt:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v1

    sget-object v2, Lcom/oplus/vfxsdk/common/u;->Texture:Lcom/oplus/vfxsdk/common/u;

    if-ne v1, v2, :cond_1a

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getWrapMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x2901

    if-ne v4, v5, :cond_5

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    :goto_0
    move-object v6, v3

    goto :goto_5

    :cond_5
    :goto_1
    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x8370

    if-ne v4, v5, :cond_7

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->MIRROR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x812f

    if-ne v4, v5, :cond_9

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    goto :goto_0

    :cond_9
    :goto_3
    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x812d

    if-ne v3, v4, :cond_b

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->BORDER:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    goto :goto_0

    :cond_b
    :goto_4
    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    goto :goto_0

    :goto_5
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getFilterMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x2600

    if-ne v4, v5, :cond_d

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    :goto_6
    move-object v9, v3

    goto :goto_9

    :cond_d
    :goto_7
    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x2601

    if-ne v3, v4, :cond_f

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->LINEAR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    goto :goto_6

    :cond_f
    :goto_8
    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    goto :goto_6

    :goto_9
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getColorMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x8058

    if-ne v4, v5, :cond_11

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    :goto_a
    move-object v10, v3

    goto :goto_e

    :cond_11
    :goto_b
    if-nez v3, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x881a

    if-ne v4, v5, :cond_13

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA16SFloat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    goto :goto_a

    :cond_13
    :goto_c
    if-nez v3, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x8814

    if-ne v3, v4, :cond_15

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA32SFloat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    goto :goto_a

    :cond_15
    :goto_d
    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    goto :goto_a

    :goto_e
    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getFlip()Z

    move-result v7

    move-object v4, p0

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->createTexture(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v4

    filled-new-array {v4}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v4

    invoke-virtual {v0, p2, v3, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lf8/e;->a:Lf8/e$a;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lf8/c;->c()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_22

    new-instance p2, Lf8/d;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getMediaType()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-int v1, v3

    const/4 v2, -0x1

    invoke-direct {p2, v0, v2, p1, v1}, Lf8/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/COEData;->getCV()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v3, v3, v7

    const-string v11, "null cannot be cast to non-null type java.nio.ByteBuffer"

    if-nez v3, :cond_17

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "array(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getFlip()Z

    move-result v7

    move-object v4, p0

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->createTexture(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v3

    goto :goto_f

    :cond_17
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getFlip()Z

    move-result v7

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getMediaType()Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->createTexture(Ljava/nio/ByteBuffer;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v3

    :goto_f
    sget-object v4, Lf8/e;->a:Lf8/e$a;

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lf8/c;->c()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_18

    new-instance v4, Lf8/d;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    long-to-int v1, v8

    invoke-direct {v4, v5, v6, v7, v1}, Lf8/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_19
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "texture parse error uniformName:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_1a
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    if-eq p0, v1, :cond_21

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_1b

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_1c

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_1c
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Vec2:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_1d
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Range:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_1e
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_1f

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_1f
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->Int:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_20

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_20
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object p0

    sget-object v1, Lcom/oplus/vfxsdk/common/u;->fv:Lcom/oplus/vfxsdk/common/u;

    if-ne p0, v1, :cond_22

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_21
    :goto_10
    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Uniform;->getW()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v1, v2, v3, p1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_11
    return-void
.end method


# virtual methods
.method public final createTexture(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 4

    const-string v0, "base64"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterMode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/text/n;

    const-string v1, ","

    invoke-direct {v0, v1}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/n;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lkotlin/collections/o;->l0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    .line 9
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 10
    aget-object p1, p1, v2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v0, p1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    sget-object v3, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    invoke-virtual {v0, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    .line 14
    invoke-virtual {v0, p4}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    .line 15
    invoke-virtual {v0, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    .line 16
    invoke-virtual {v0, p5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V

    .line 17
    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V

    return-object p1
.end method

.method public final createTexture(Ljava/nio/ByteBuffer;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;ZLjava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 8

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=>createTexture mediaType:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COE_LOGGER"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 20
    const-string v6, "astc"

    const/4 v7, 0x0

    invoke-static {p4, v6, v7, v3, v5}, Lkotlin/text/r;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    new-instance v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v3, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>(Ljava/nio/ByteBuffer;)V

    .line 22
    sget-object p1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->ASTC_6x6_LDR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    invoke-virtual {v3, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    .line 26
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    sget-object v7, Ln8/h0;->INSTANCE:Ln8/h0;

    .line 27
    invoke-static {v3, v5, p1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 28
    new-instance v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v3, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    :goto_0
    invoke-virtual {v3, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    .line 30
    invoke-virtual {v3, p5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    .line 31
    invoke-virtual {v3, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    .line 32
    invoke-virtual {v3, p6}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V

    .line 33
    new-instance p1, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V

    .line 34
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->getRawBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {v3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->getRawBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " time:"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final forceReset(Ljava/lang/String;)V
    .locals 13

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/a;->m()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oplus/vfxsdk/common/PassParams;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/collections/i;->a0([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/collections/e0;

    invoke-virtual {v0}, Lkotlin/collections/e0;->a()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/collections/e0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/PassParams;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/PassParams;->getUniformPrams()[Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/a;->m()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    invoke-static {v7}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le8/c;

    instance-of v8, v7, Le8/g;

    if-eqz v8, :cond_4

    check-cast v7, Le8/g;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    const-string v8, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v7, v6}, Le8/a;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    instance-of v8, v7, Le8/i;

    if-eqz v8, :cond_5

    check-cast v7, Le8/i;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Le8/a;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    instance-of v8, v7, Le8/h;

    if-eqz v8, :cond_9

    check-cast v7, Le8/h;

    invoke-virtual {v6}, Lcom/oplus/vfxsdk/common/UniformValue;->getValues()[Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v6

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_8

    aget-object v11, v6, v10

    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_6

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    int-to-float v11, v11

    goto :goto_4

    :cond_6
    instance-of v12, v11, Ljava/lang/Float;

    if-eqz v12, :cond_7

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    :goto_4
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot convert"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v8}, Lkotlin/collections/o;->o0(Ljava/util/Collection;)[F

    move-result-object v6

    invoke-virtual {v7, v6}, Le8/a;->f(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public getAllTrigerState()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/collections/o;->r0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animator:Lcom/oplus/vfxsdk/common/a;

    return-object p0
.end method

.method public final getBuiltinUpdate()Le8/e;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->builtinUpdate:Le8/e;

    return-object p0
.end method

.method public final getCacheData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->cacheData:Z

    return p0
.end method

.method public final getCoeData()Lcom/oplus/vfxsdk/common/COEData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->height:F

    return p0
.end method

.method public getID()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    return p0
.end method

.method public final getIResolution()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/vfxsdk/naive/parse/SystemUniform;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->iResolution:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getLayerIndex()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layerIndex:I

    return p0
.end method

.method public final getRenderListener()Lh8/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    return-object p0
.end method

.method public final getRt()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/naive/coe/engine/RenderTexture;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->rt:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getStatusAnim()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/naive/parse/StatusData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->statusAnim:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->width:F

    return p0
.end method

.method public onAnimEnd(Ljava/lang/String;)V
    .locals 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->e(J)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->d(J)V

    sget-object v0, Lf8/e;->a:Lf8/e$a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->coeData:Lcom/oplus/vfxsdk/common/COEData;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/COEData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf8/e$a;->b(Ljava/lang/String;)Lf8/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v9, Lf8/a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->c()J

    move-result-wide v3

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->b()J

    move-result-wide v5

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->a()J

    move-result-wide v7

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lf8/a;-><init>(Ljava/lang/String;JJJ)V

    invoke-virtual {v0}, Lf8/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/e;

    invoke-direct {v1, p0, p1}, Lcom/oplus/vfxsdk/naive/parse/e;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimStart(Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animTracker:Ljava/util/HashMap;

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;

    invoke-direct {v1, p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$c;->f(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/c;

    invoke-direct {v1, p0, p1}, Lcom/oplus/vfxsdk/naive/parse/c;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs onAnimUpdate(Ljava/lang/String;D[F)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onAnimUpdate(Ljava/lang/String;D[F)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oplus/vfxsdk/naive/parse/f;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/vfxsdk/naive/parse/f;-><init>(Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;D[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "COE_LOGGER"

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>coeRenderer onDestroy"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onDestroy()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/a;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->cacheData:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/common/Layer;->setParams(Ljava/util/HashMap;)V

    :cond_2
    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public onLayoutChange()V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->initTransform()V

    return-void
.end method

.method public onRenderQuit()V
    .locals 2

    invoke-super {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;->onRenderQuit()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>onRenderQuit"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->onRenderQuit()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    return-void
.end method

.method public onRenderStart()V
    .locals 2

    invoke-super {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;->onRenderStart()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>onRenderStart"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lh8/a;->onRenderStart()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    iget-object p3, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->iResolution:Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getMaterial()Lcom/oplus/vfxsdk/naive/coe/engine/Material;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->getPassIndex()I

    move-result v1

    invoke-virtual {p4}, Lcom/oplus/vfxsdk/naive/parse/SystemUniform;->getUniform()Lcom/oplus/vfxsdk/common/Uniform;

    move-result-object p4

    invoke-virtual {p4}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object p4

    int-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, p4, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/Material;->h(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSurfaceChange(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutWidth:F

    iput p2, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->layoutHeight:F

    :cond_0
    return-void
.end method

.method public onTriger(Ljava/lang/String;ZLw8/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "stateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Layer;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/common/PassParams;

    if-eqz v0, :cond_4

    new-instance v1, Lkotlin/jvm/internal/a0;

    invoke-direct {v1}, Lkotlin/jvm/internal/a0;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/a0;

    invoke-direct {v2}, Lkotlin/jvm/internal/a0;-><init>()V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/i;->a0([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/collections/e0;

    invoke-virtual {v3}, Lkotlin/collections/e0;->a()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/collections/e0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/vfxsdk/common/PassParams;

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/common/PassParams;->getUniformPrams()[Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/oplus/vfxsdk/common/a;->m()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v8, v4}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/UniformValue;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le8/c;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;

    invoke-direct {v8, v1, p0, p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$h;-><init>(Lkotlin/jvm/internal/a0;Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Le8/c;->c(Lw8/a;)V

    new-instance v8, Lcom/oplus/vfxsdk/naive/parse/COERenderer$i;

    invoke-direct {v8, v2, p0, p1}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$i;-><init>(Lkotlin/jvm/internal/a0;Lcom/oplus/vfxsdk/naive/parse/COERenderer;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Le8/c;->b(Lw8/a;)V

    if-eqz p3, :cond_3

    new-instance v8, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;

    invoke-direct {v8, v2, p0, p3}, Lcom/oplus/vfxsdk/naive/parse/COERenderer$j;-><init>(Lkotlin/jvm/internal/a0;Lcom/oplus/vfxsdk/naive/parse/COERenderer;Lw8/a;)V

    invoke-interface {v7, v8}, Le8/c;->b(Lw8/a;)V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onTriger(Ljava/lang/String;ZLw8/a;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final setAnimListenedList([Ljava/lang/String;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animListenedList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setAnimListenedList([Ljava/lang/String;)V

    return-void
.end method

.method public final setAnimListener(Lcom/oplus/vfxsdk/naive/parse/COERenderer$d;)V
    .locals 0

    return-void
.end method

.method public setAnimator(Lcom/oplus/vfxsdk/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->animator:Lcom/oplus/vfxsdk/common/a;

    return-void
.end method

.method public final setRenderListener(Lh8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/COERenderer;->renderListener:Lh8/a;

    return-void
.end method
