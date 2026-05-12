.class public final Lcom/oplus/vfxsdk/common/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private animParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation
.end field

.field private blendDfactor:I

.field private blendDfactorAlpha:I

.field private blendSfactor:I

.field private blendSfactorAlpha:I

.field private enable:Z

.field private enableBlend:Z

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private order:I

.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation
.end field

.field private postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

.field private render:[Lcom/oplus/vfxsdk/common/RendPass;

.field private transform:Lcom/oplus/vfxsdk/common/TransformData;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/TransformData;",
            "[",
            "Lcom/oplus/vfxsdk/common/PostProcessorData;",
            "[",
            "Lcom/oplus/vfxsdk/common/RendPass;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;ZZIIIII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "id"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "type"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "render"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    .line 4
    iput-object v3, v0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    .line 7
    iput-object v4, v0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    move v1, p9

    .line 10
    iput-boolean v1, v0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    move/from16 v1, p10

    .line 11
    iput-boolean v1, v0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    move/from16 v1, p11

    .line 12
    iput v1, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    move/from16 v1, p12

    .line 13
    iput v1, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v12, v1

    goto :goto_0

    :cond_0
    move/from16 v12, p10

    :goto_0
    and-int/lit16 v1, v0, 0x400

    const/16 v2, 0x302

    if-eqz v1, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    move/from16 v13, p11

    :goto_1
    and-int/lit16 v1, v0, 0x800

    const/16 v3, 0x303

    if-eqz v1, :cond_2

    move v14, v3

    goto :goto_2

    :cond_2
    move/from16 v14, p12

    :goto_2
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3

    move v15, v2

    goto :goto_3

    :cond_3
    move/from16 v15, p13

    :goto_3
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4

    move/from16 v16, v3

    goto :goto_4

    :cond_4
    move/from16 v16, p14

    :goto_4
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_5

    :cond_5
    move/from16 v17, p15

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 17
    invoke-direct/range {v2 .. v17}, Lcom/oplus/vfxsdk/common/Layer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/vfxsdk/common/Layer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIIIILjava/lang/Object;)Lcom/oplus/vfxsdk/common/Layer;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    goto :goto_e

    :cond_e
    move/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/oplus/vfxsdk/common/Layer;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    return p0
.end method

.method public final component11()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    return p0
.end method

.method public final component12()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    return p0
.end method

.method public final component13()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    return p0
.end method

.method public final component14()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    return p0
.end method

.method public final component15()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/oplus/vfxsdk/common/TransformData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    return-object p0
.end method

.method public final component5()[Lcom/oplus/vfxsdk/common/PostProcessorData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    return-object p0
.end method

.method public final component6()[Lcom/oplus/vfxsdk/common/RendPass;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    return-object p0
.end method

.method public final component7()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    return-object p0
.end method

.method public final component8()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)Lcom/oplus/vfxsdk/common/Layer;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/TransformData;",
            "[",
            "Lcom/oplus/vfxsdk/common/PostProcessorData;",
            "[",
            "Lcom/oplus/vfxsdk/common/RendPass;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;ZZIIIII)",
            "Lcom/oplus/vfxsdk/common/Layer;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "render"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/common/Layer;

    move-object v1, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/oplus/vfxsdk/common/Layer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/vfxsdk/common/TransformData;[Lcom/oplus/vfxsdk/common/PostProcessorData;[Lcom/oplus/vfxsdk/common/RendPass;Ljava/util/HashMap;Ljava/util/HashMap;ZZIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/Layer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/Layer;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    iget-boolean v3, p1, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    iget v3, p1, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    iget p1, p1, Lcom/oplus/vfxsdk/common/Layer;->order:I

    if-eq p0, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAnimParams()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getBlendDfactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    return p0
.end method

.method public final getBlendDfactorAlpha()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    return p0
.end method

.method public final getBlendSfactor()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    return p0
.end method

.method public final getBlendSfactorAlpha()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    return p0
.end method

.method public final getEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    return p0
.end method

.method public final getEnableBlend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrder()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    return p0
.end method

.method public final getParams()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getPostProcessor()[Lcom/oplus/vfxsdk/common/PostProcessorData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    return-object p0
.end method

.method public final getRender()[Lcom/oplus/vfxsdk/common/RendPass;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    return-object p0
.end method

.method public final getTransform()Lcom/oplus/vfxsdk/common/TransformData;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/TransformData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setAnimParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/AnimatorValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    return-void
.end method

.method public final setBlendDfactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    return-void
.end method

.method public final setBlendDfactorAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    return-void
.end method

.method public final setBlendSfactor(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    return-void
.end method

.method public final setBlendSfactorAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    return-void
.end method

.method public final setEnableBlend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    return-void
.end method

.method public final setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    return-void
.end method

.method public final setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    return-void
.end method

.method public final setPostProcessor([Lcom/oplus/vfxsdk/common/PostProcessorData;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    return-void
.end method

.method public final setRender([Lcom/oplus/vfxsdk/common/RendPass;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    return-void
.end method

.method public final setTransform(Lcom/oplus/vfxsdk/common/TransformData;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/vfxsdk/common/Layer;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/vfxsdk/common/Layer;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/oplus/vfxsdk/common/Layer;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/oplus/vfxsdk/common/Layer;->transform:Lcom/oplus/vfxsdk/common/TransformData;

    iget-object v5, v0, Lcom/oplus/vfxsdk/common/Layer;->postProcessor:[Lcom/oplus/vfxsdk/common/PostProcessorData;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/oplus/vfxsdk/common/Layer;->render:[Lcom/oplus/vfxsdk/common/RendPass;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oplus/vfxsdk/common/Layer;->params:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/oplus/vfxsdk/common/Layer;->animParams:Ljava/util/HashMap;

    iget-boolean v9, v0, Lcom/oplus/vfxsdk/common/Layer;->enableBlend:Z

    iget-boolean v10, v0, Lcom/oplus/vfxsdk/common/Layer;->enable:Z

    iget v11, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactor:I

    iget v12, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactor:I

    iget v13, v0, Lcom/oplus/vfxsdk/common/Layer;->blendSfactorAlpha:I

    iget v14, v0, Lcom/oplus/vfxsdk/common/Layer;->blendDfactorAlpha:I

    iget v0, v0, Lcom/oplus/vfxsdk/common/Layer;->order:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p0, v0

    const-string v0, "Layer(id="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transform="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", postProcessor="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", render="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", params="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animParams="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enableBlend="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enable="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", blendSfactor="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blendDfactor="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blendSfactorAlpha="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blendDfactorAlpha="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", order="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
