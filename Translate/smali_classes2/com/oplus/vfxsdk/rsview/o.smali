.class public abstract Lcom/oplus/vfxsdk/rsview/o;
.super Lcom/oplus/vfxsdk/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/rsview/o$a;
    }
.end annotation


# instance fields
.field private final p:Lcom/oplus/vfxsdk/rsview/p;

.field private final q:Ljava/lang/String;

.field private r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;)V
    .locals 1

    const-string v0, "coeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/common/a;-><init>(Lcom/oplus/vfxsdk/common/COEData;I)V

    iput-object p3, p0, Lcom/oplus/vfxsdk/rsview/o;->p:Lcom/oplus/vfxsdk/rsview/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getSimpleName(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/o;->q:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    return-void
.end method

.method private final R(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->l()Lcom/oplus/vfxsdk/common/COEData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Layer;->getBlendDfactor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final S(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->l()Lcom/oplus/vfxsdk/common/COEData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/Layer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/Layer;->getBlendSfactor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final V(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getOrDefault(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPorterDuffMode, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public static synthetic W(Lcom/oplus/vfxsdk/rsview/o;IILjava/lang/Object;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/rsview/o;->U(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPorterDuffMode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Z()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    const-string v1, "770+771"

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    const-string v1, "1+1"

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    const-string v1, "1+769"

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o;->r:Ljava/util/HashMap;

    const-string v0, "774+0"

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c0(Lcom/oplus/vfxsdk/rsview/o;Ljava/lang/String;Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/rsview/o;->b0(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateAnimValue"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final P(Lcom/oplus/vfxsdk/common/RendPass;Lcom/oplus/vfxsdk/rsview/p;)Landroid/graphics/RuntimeShader;
    .locals 16

    const-string v0, "passData"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=>translate start"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/vfxsdk/rsview/p;->b()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4, v3}, Lcom/oplus/vfxsdk/rsview/o;->W(Lcom/oplus/vfxsdk/rsview/o;IILjava/lang/Object;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    if-eq v6, v7, :cond_1

    move v6, v5

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/vfxsdk/rsview/p;->a()Z

    move-result v6

    :goto_0
    invoke-static {}, Lcom/oplus/vfxsdk/rsview/j;->a()V

    sget-object v7, Lcom/oplus/vfxsdk/common/i;->a:Lcom/oplus/vfxsdk/common/i$a;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/RendPass;->getFs()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/oplus/vfxsdk/common/i$a;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/vfxsdk/rsview/i;->a(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=>translate end"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "<get-keys>(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/vfxsdk/common/Uniform;

    if-eqz v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v10

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v12

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uniform name:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", x:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "u_resolution"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Texture:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_10

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getWrapMode()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x2901

    if-ne v8, v9, :cond_3

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x8370

    if-ne v8, v9, :cond_5

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x812f

    if-ne v8, v9, :cond_7

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v8, 0x812d

    if-ne v3, v8, :cond_9

    sget-object v3, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :goto_6
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/vfxsdk/rsview/p;->d()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v9, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v9

    const-string v10, "create HardwareBitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lkotlin/text/n;

    const-string v11, ","

    invoke-direct {v10, v11}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9, v5}, Lkotlin/text/n;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v10}, Ljava/util/ListIterator;->nextIndex()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v9, v10}, Lkotlin/collections/o;->l0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v9

    goto :goto_8

    :cond_c
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v9

    :goto_8
    new-array v10, v5, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-static {v9, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    const-string v10, "decode(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v9

    invoke-static {v9, v5, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/nio/ByteBuffer;

    if-eqz v9, :cond_e

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    invoke-static {v10, v11, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/vfxsdk/rsview/p;->c()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getFlip()Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Lcom/oplus/vfxsdk/rsview/b;->a:Lcom/oplus/vfxsdk/rsview/b$a;

    invoke-virtual {v9, v8, v4}, Lcom/oplus/vfxsdk/rsview/b$a;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_f
    new-instance v9, Landroid/graphics/BitmapShader;

    invoke-direct {v9, v8, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v9}, Lcom/oplus/vfxsdk/rsview/l;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;Landroid/graphics/Shader;)V

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_size"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v3, v7, v8}, Lcom/oplus/vfxsdk/rsview/e;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Color:Lcom/oplus/vfxsdk/common/u;

    if-eq v3, v8, :cond_16

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Vec4:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_11

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Vec3:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_12

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v9

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result v7

    invoke-static {v6, v3, v8, v9, v7}, Lcom/oplus/vfxsdk/rsview/n;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FFF)V

    goto/16 :goto_b

    :cond_12
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Vec2:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_13

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v8

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v7

    invoke-static {v6, v3, v8, v7}, Lcom/oplus/vfxsdk/rsview/e;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    goto/16 :goto_b

    :cond_13
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Range:Lcom/oplus/vfxsdk/common/u;

    const-string v9, "null cannot be cast to non-null type kotlin.Float"

    if-ne v3, v8, :cond_14

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_17

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v6, v3, v7}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    goto :goto_b

    :cond_14
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Float:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_15

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v6, v3, v7}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    goto :goto_b

    :cond_15
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getType()Lcom/oplus/vfxsdk/common/u;

    move-result-object v3

    sget-object v8, Lcom/oplus/vfxsdk/common/u;->Int:Lcom/oplus/vfxsdk/common/u;

    if-ne v3, v8, :cond_17

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getValue()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v3, v7}, Lcom/oplus/vfxsdk/rsview/k;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;I)V

    goto :goto_b

    :cond_16
    :goto_a
    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getX()F

    move-result v9

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getZ()F

    move-result v11

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/Uniform;->getW()F

    move-result v12

    move-object v7, v6

    invoke-static/range {v7 .. v12}, Lcom/oplus/vfxsdk/rsview/m;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FFFF)V

    :cond_17
    :goto_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "u_matResolution"

    invoke-static {v6, v2, v1}, Lcom/oplus/vfxsdk/rsview/f;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=>setUniform end"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final Q()V
    .locals 9

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/o;->Z()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->x()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->r()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/vfxsdk/common/o;

    new-instance v3, Lcom/oplus/vfxsdk/rsview/o$b;

    invoke-direct {v3, v2, p0}, Lcom/oplus/vfxsdk/rsview/o$b;-><init>(Lcom/oplus/vfxsdk/common/o;Lcom/oplus/vfxsdk/rsview/o;)V

    invoke-virtual {v2, v3}, Lcom/oplus/vfxsdk/common/o;->l(Le8/e;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->Y()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->r()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initUniformMap passSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/oplus/vfxsdk/rsview/o$c;

    invoke-direct {v3, p0}, Lcom/oplus/vfxsdk/rsview/o$c;-><init>(Lcom/oplus/vfxsdk/rsview/o;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/oplus/vfxsdk/common/a;->w(Lcom/oplus/vfxsdk/common/a;Le8/b;Landroid/animation/TimeInterpolator;JILjava/lang/Object;)Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/vfxsdk/rsview/o$d;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/rsview/o$d;-><init>(Lcom/oplus/vfxsdk/rsview/o;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/oplus/vfxsdk/common/a;->u(Lcom/oplus/vfxsdk/common/a;Le8/e;Le8/d;ILjava/lang/Object;)Ljava/util/HashMap;

    return-void
.end method

.method public final T()Lcom/oplus/vfxsdk/rsview/p;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o;->p:Lcom/oplus/vfxsdk/rsview/p;

    return-object p0
.end method

.method public final U(I)Landroid/graphics/PorterDuff$Mode;
    .locals 4

    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/rsview/o;->S(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/rsview/o;->R(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/o;->X()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPorterDuffMode srcFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", dstFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/oplus/vfxsdk/rsview/o;->V(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public X()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/o;->q:Ljava/lang/String;

    return-object p0
.end method

.method public abstract Y()V
.end method

.method public varargs a0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->q(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/o;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/o;->m(Z)V

    array-length v0, p2

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eq v0, p1, :cond_4

    aget-object p1, p2, v1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    array-length p1, p2

    new-array p1, p1, [I

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of p1, p1, Ljava/lang/Float;

    if-eqz p1, :cond_5

    array-length p1, p2

    new-array p1, p1, [F

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    aget-object p1, p2, v1

    const-string p2, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected final b0(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/a;->q(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/o;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/o;->m(Z)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/o;->h()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, [F

    if-eqz v0, :cond_1

    check-cast p1, [F

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, p1, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/common/o;->n(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final d0(Landroid/graphics/RuntimeShader;Ljava/util/HashMap;)V
    .locals 3

    const-string p0, "uniformsMap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->f()Lcom/oplus/vfxsdk/common/u;

    move-result-object v0

    sget-object v1, Lcom/oplus/vfxsdk/rsview/o$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/o;->h()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [F

    invoke-static {p1, v0, v1}, Lcom/oplus/vfxsdk/rsview/f;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/o;->h()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    goto :goto_1

    :pswitch_2
    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/o;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/o;->h()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oplus/vfxsdk/rsview/k;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/vfxsdk/common/o;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oplus/vfxsdk/common/o;->m(Z)V

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
